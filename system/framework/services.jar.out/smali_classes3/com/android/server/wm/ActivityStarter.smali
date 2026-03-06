.class Lcom/android/server/wm/ActivityStarter;
.super Ljava/lang/Object;
.source "ActivityStarter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityStarter$Request;,
        Lcom/android/server/wm/ActivityStarter$IntentRedirectErrorCode;,
        Lcom/android/server/wm/ActivityStarter$DefaultFactory;,
        Lcom/android/server/wm/ActivityStarter$Factory;,
        Lcom/android/server/wm/ActivityStarter$MoveToFrontCode;
    }
.end annotation


# static fields
.field static final ASM_RESTRICTIONS:J = 0xdbe868aL

.field static final ENABLE_PENDING_INTENT_BAL_OPTION:J = 0xb76e480L

.field private static final ENABLE_PREVENT_INTENT_REDIRECT_TAKE_ACTION:J = 0x1c40476L

.field static final INTENT_REDIRECT_ABORT_INTENT_FIREWALL_START_ACTIVITY:I = 0x5

.field static final INTENT_REDIRECT_ABORT_PERMISSION_POLICY_START_ACTIVITY:I = 0x6

.field static final INTENT_REDIRECT_ABORT_START_ANY_ACTIVITY_PERMISSION:I = 0x4

.field static final INTENT_REDIRECT_EXCEPTION_GRANT_URI_PERMISSION:I = 0x2

.field static final INTENT_REDIRECT_EXCEPTION_MISSING_OR_INVALID_TOKEN:I = 0x1

.field static final INTENT_REDIRECT_EXCEPTION_START_ANY_ACTIVITY_PERMISSION:I = 0x3

.field private static final INVALID_LAUNCH_MODE:I = -0x1

.field private static final MAX_TASK_WEIGHT_FOR_ADDING_ACTIVITY:J = 0x12cL

.field private static final MOVE_TO_FRONT_ALLOWED:I = 0x0

.field private static final MOVE_TO_FRONT_AVOID_LEGACY:I = 0x2

.field private static final MOVE_TO_FRONT_AVOID_PI_ONLY_CREATOR_ALLOWS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_FOCUS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field mAddingToTask:Z

.field private mAddingToTaskFragment:Lcom/android/server/wm/TaskFragment;

.field private mBalCode:I

.field private mCallingUid:I

.field private mCanMoveToFrontCode:I

.field private final mController:Lcom/android/server/wm/ActivityStartController;

.field private mDisplayLockAndOccluded:Z

.field private mDoResume:Z

.field private mFrozeTaskList:Z

.field private mInTask:Lcom/android/server/wm/Task;

.field private mInTaskFragment:Lcom/android/server/wm/TaskFragment;

.field private mIntent:Landroid/content/Intent;

.field private mIntentDelivered:Z

.field private final mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

.field private mIsTaskCleared:Z

.field private mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field private mLastStartActivityResult:I

.field private mLastStartActivityTimeMs:J

.field private mLastStartReason:Ljava/lang/String;

.field private mLaunchFlags:I

.field private mLaunchMode:I

.field private mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

.field private mLaunchTaskBehind:Z

.field private mMovedToFront:Z

.field mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

.field private mNoAnimation:Z

.field private mNotTop:Lcom/android/server/wm/ActivityRecord;

.field private mOptions:Landroid/app/ActivityOptions;

.field private mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field private mPreferredWindowingMode:I

.field private mPriorAboveTask:Lcom/android/server/wm/Task;

.field private mRealCallingUid:I

.field mRequest:Lcom/android/server/wm/ActivityStarter$Request;

.field private final mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mSourceRecord:Lcom/android/server/wm/ActivityRecord;

.field private mSourceRootTask:Lcom/android/server/wm/Task;

.field mStartActivity:Lcom/android/server/wm/ActivityRecord;

.field private mStartFlags:I

.field private final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field private mTargetRootTask:Lcom/android/server/wm/Task;

.field private mTargetTask:Lcom/android/server/wm/Task;

.field private mTransientLaunch:Z

.field private mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field private mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method public static synthetic $r8$lambda$VpzkeOnQfVl_Vv7TzBnE2MNG_dM(Lcom/android/server/wm/ActivityStarter;Lcom/android/server/wm/ActivityRecord;)Landroid/content/IntentSender;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStarter;->lambda$isAllowedToStart$0(Lcom/android/server/wm/ActivityRecord;)Landroid/content/IntentSender;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityStartController;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStartInterceptor;)V
    .locals 1
    .param p1, "controller"    # Lcom/android/server/wm/ActivityStartController;
    .param p2, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p3, "supervisor"    # Lcom/android/server/wm/ActivityTaskSupervisor;
    .param p4, "interceptor"    # Lcom/android/server/wm/ActivityStartInterceptor;

    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    new-instance v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 299
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 330
    new-instance v0, Lcom/android/server/wm/ActivityStarter$Request;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityStarter$Request;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 760
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    .line 761
    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 762
    iget-object v0, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 763
    iput-object p3, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 764
    iput-object p4, p0, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    .line 765
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStarter;->reset(Z)V

    .line 766
    return-void
.end method

.method private addOrReparentStartingActivity(Lcom/android/server/wm/Task;Ljava/lang/String;)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "reason"    # Ljava/lang/String;

    .line 3365
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->acquireActivityBoost()V

    .line 3367
    move-object v0, p1

    .line 3368
    .local v0, "newParent":Lcom/android/server/wm/TaskFragment;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-eqz v1, :cond_1

    .line 3369
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1, v2, p1}, Lcom/android/server/wm/ActivityStarter;->canEmbedActivity(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v1

    .line 3370
    .local v1, "embeddingCheckResult":I
    if-nez v1, :cond_0

    .line 3371
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 3372
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 3373
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/ActivityRecord;->mRequestedLaunchingTaskFragmentToken:Landroid/os/IBinder;

    goto :goto_0

    .line 3376
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/ActivityStarter;->sendCanNotEmbedActivityError(Lcom/android/server/wm/TaskFragment;I)V

    .line 3378
    .end local v1    # "embeddingCheckResult":I
    :goto_0
    goto :goto_1

    .line 3379
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 3380
    .local v1, "candidateTf":Lcom/android/server/wm/TaskFragment;
    if-nez v1, :cond_2

    .line 3381
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStarter;->findCandidateTaskFragment(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    .line 3383
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3384
    invoke-static {v1, v2, p1}, Lcom/android/server/wm/ActivityStarter;->canEmbedActivity(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v2

    if-nez v2, :cond_3

    .line 3387
    move-object v0, v1

    .line 3390
    .end local v1    # "candidateTf":Lcom/android/server/wm/TaskFragment;
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    nop

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3391
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    if-ne v1, v0, :cond_4

    goto :goto_2

    .line 3394
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v0, v2, p2}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V

    goto :goto_3

    .line 3392
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskFragment;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 3396
    :goto_3
    return-void
.end method

.method private adjustLaunchFlagsToDocumentMode(Lcom/android/server/wm/ActivityRecord;ZZI)I
    .locals 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "launchSingleInstance"    # Z
    .param p3, "launchSingleTask"    # Z
    .param p4, "launchFlags"    # I

    .line 3486
    const/high16 v0, 0x80000

    and-int v1, p4, v0

    const v2, -0x8080001

    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 3489
    :cond_0
    const-string v0, "ActivityTaskManager"

    const-string v1, "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\""

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3491
    and-int/2addr p4, v2

    goto :goto_0

    .line 3494
    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 3504
    :pswitch_0
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 3510
    and-int/2addr v0, p4

    if-eqz v0, :cond_3

    .line 3511
    and-int/2addr p4, v2

    goto :goto_0

    .line 3517
    :cond_2
    and-int/2addr p4, v2

    goto :goto_0

    .line 3501
    :pswitch_1
    or-int/2addr p4, v0

    .line 3502
    goto :goto_0

    .line 3498
    :pswitch_2
    or-int/2addr p4, v0

    .line 3499
    goto :goto_0

    .line 3496
    :pswitch_3
    nop

    .line 3523
    :cond_3
    :goto_0
    return p4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private avoidMoveToFront()Z
    .locals 1

    .line 1837
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private avoidMoveToFrontPIOnlyCreatorAllows()Z
    .locals 2

    .line 1841
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static canEmbedActivity(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I
    .locals 2
    .param p0, "taskFragment"    # Lcom/android/server/wm/TaskFragment;
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "targetTask"    # Lcom/android/server/wm/Task;

    .line 2501
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2503
    .local v0, "hostTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    if-eq p2, v0, :cond_1

    :cond_0
    goto :goto_0

    .line 2506
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivity(Lcom/android/server/wm/ActivityRecord;)I

    move-result v1

    return v1

    .line 2504
    :goto_0
    const/4 v1, 0x3

    return v1
.end method

.method private complyActivityFlags(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V
    .locals 10
    .param p1, "targetTask"    # Lcom/android/server/wm/Task;
    .param p2, "reusedActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 2666
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2667
    .local v0, "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 2669
    .local v3, "resetTask":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 2670
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v0, v5}, Lcom/android/server/wm/Task;->resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2673
    :cond_1
    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v5, 0x10008000

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_2

    .line 2682
    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->performClearTaskForReuse(Z)V

    .line 2684
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2685
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2686
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    goto/16 :goto_4

    .line 2687
    :cond_2
    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x4000000

    and-int/2addr v4, v5

    nop

    if-nez v4, :cond_e

    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2688
    invoke-static {v4}, Lcom/android/server/wm/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v4

    nop

    if-nez v4, :cond_e

    .line 2689
    const/4 v4, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x4

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(III)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_2

    .line 2729
    :cond_3
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v5

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-nez v1, :cond_6

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x20000

    and-int/2addr v1, v4

    if-eqz v1, :cond_6

    .line 2734
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v4, v4, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 2735
    invoke-virtual {p1, v1, v4}, Lcom/android/server/wm/Task;->findActivityInHistory(Landroid/content/ComponentName;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2737
    .local v1, "act":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_5

    .line 2738
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 2739
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v2, v1}, Lcom/android/server/wm/Task;->moveActivityToFront(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    .line 2740
    .local v4, "actuallyMoved":Z
    if-eqz v4, :cond_4

    .line 2742
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2744
    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 2745
    invoke-direct {p0, v1, p3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    .line 2746
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    .line 2747
    .end local v2    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "actuallyMoved":Z
    goto :goto_1

    .line 2748
    :cond_5
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2750
    .end local v1    # "act":Lcom/android/server/wm/ActivityRecord;
    :goto_1
    goto/16 :goto_4

    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2751
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-ne p1, v1, :cond_7

    goto/16 :goto_4

    .line 2754
    :cond_7
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x20000000

    and-int/2addr v1, v4

    if-nez v1, :cond_8

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v2, v1, :cond_a

    :cond_8
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 2756
    invoke-virtual {v1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_a

    .line 2762
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2763
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2765
    :cond_9
    invoke-direct {p0, v0, p3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    goto/16 :goto_4

    .line 2766
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->isSameIntentFilter(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2769
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_4

    .line 2770
    :cond_b
    if-nez p2, :cond_15

    .line 2771
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_4

    .line 2773
    :cond_c
    if-nez v3, :cond_d

    .line 2778
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_4

    .line 2779
    :cond_d
    iget-boolean v1, p1, Lcom/android/server/wm/Task;->rootWasReset:Z

    if-nez v1, :cond_15

    .line 2785
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_4

    .line 2694
    :cond_e
    :goto_2
    new-array v4, v2, [I

    .line 2695
    .local v4, "finishCount":[I
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v6, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {p1, v5, v6, v4}, Lcom/android/server/wm/Task;->performClearTop(Lcom/android/server/wm/ActivityRecord;I[I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 2698
    .local v5, "clearTop":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_11

    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v6, :cond_11

    .line 2699
    aget v1, v4, v1

    if-lez v1, :cond_f

    .line 2701
    iput-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2703
    :cond_f
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2706
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2708
    :cond_10
    invoke-direct {p0, v5, p3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    goto :goto_3

    .line 2713
    :cond_11
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2716
    if-eqz v5, :cond_12

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    if-eqz v6, :cond_12

    .line 2717
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 2718
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 2720
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-nez v6, :cond_14

    .line 2723
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2725
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-boolean v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    xor-int/2addr v7, v2

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_13

    move v1, v2

    :cond_13
    invoke-virtual {v6, p1, v7, v1}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;ZZ)V

    .line 2729
    .end local v4    # "finishCount":[I
    .end local v5    # "clearTop":Lcom/android/server/wm/ActivityRecord;
    :cond_14
    :goto_3
    nop

    .line 2787
    :cond_15
    :goto_4
    return-void
.end method

.method private computeLaunchParams(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V
    .locals 10
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "targetTask"    # Lcom/android/server/wm/Task;

    .line 2370
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v1

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    move-object v4, p1

    move-object v5, p2

    move-object v2, p3

    .end local p1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local p2    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .end local p3    # "targetTask":Lcom/android/server/wm/Task;
    .local v2, "targetTask":Lcom/android/server/wm/Task;
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    .local v5, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 2374
    invoke-static {}, Lcom/android/server/wm/NtServicePopUpViewHelper;->getInstance()Lcom/android/server/wm/NtServicePopUpViewHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object p3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, p2, p3, v2}, Lcom/android/server/wm/NtServicePopUpViewHelper;->computeLaunchParams(Lcom/android/server/wm/LaunchParamsController$LaunchParams;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)V

    .line 2376
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {p1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasPreferredTaskDisplayArea()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2377
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object p1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_0

    .line 2378
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 2379
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget p1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iput p1, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 2380
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object p1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mNeedsSafeRegionBounds:Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    .line 2381
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object p1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mNeedsSafeRegionBounds:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v4, p1}, Lcom/android/server/wm/ActivityRecord;->setNeedsSafeRegionBounds(Z)V

    .line 2383
    :cond_1
    return-void
.end method

.method private computeLaunchingTaskFlags()V
    .locals 11

    .line 3032
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/high16 v5, 0x10000000

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3033
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3034
    .local v0, "baseIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 3035
    .local v6, "root":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_5

    .line 3043
    invoke-direct {p0, v3, v2}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3044
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3049
    if-nez v6, :cond_0

    goto :goto_0

    .line 3050
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 3051
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller with mInTask "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has root "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but target is singleInstance/Task"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3045
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 3046
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to launch singleInstance/Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " into different task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3058
    :cond_2
    :goto_0
    if-nez v6, :cond_3

    .line 3059
    const v7, 0x18082000

    .line 3061
    .local v7, "flagsOfInterest":I
    iget v8, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v9, -0x18082001

    and-int/2addr v8, v9

    .line 3062
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v9

    const v10, 0x18082000

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    iput v8, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 3063
    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v9, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3064
    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v8, v9}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 3065
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 3070
    .end local v7    # "flagsOfInterest":I
    goto :goto_1

    :cond_3
    iget v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v7, v5

    if-eqz v7, :cond_4

    .line 3071
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto :goto_1

    .line 3074
    :cond_4
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 3076
    .end local v0    # "baseIntent":Landroid/content/Intent;
    .end local v6    # "root":Lcom/android/server/wm/ActivityRecord;
    :goto_1
    goto :goto_2

    .line 3036
    .restart local v0    # "baseIntent":Landroid/content/Intent;
    .restart local v6    # "root":Lcom/android/server/wm/ActivityRecord;
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 3037
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching into task without base intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3077
    .end local v0    # "baseIntent":Landroid/content/Intent;
    .end local v6    # "root":Lcom/android/server/wm/ActivityRecord;
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 3080
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 3081
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3082
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 3086
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_a

    .line 3087
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_8

    .line 3090
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v0, v5

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_a

    .line 3091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3093
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v5

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    goto :goto_3

    .line 3095
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    if-ne v0, v3, :cond_9

    .line 3099
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v5

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    goto :goto_3

    .line 3100
    :cond_9
    invoke-direct {p0, v3, v2}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3103
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v5

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 3107
    :cond_a
    :goto_3
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_f

    .line 3108
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_b

    move v1, v4

    .line 3109
    .local v1, "hasNewTaskFlag":Z
    :cond_b
    const-string v0, "WindowManager"

    if-eqz v1, :cond_c

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_e

    .line 3111
    :cond_c
    if-nez v1, :cond_d

    .line 3112
    const-string v2, "Launch adjacent ignored due to missing NEW_TASK"

    goto :goto_4

    .line 3113
    :cond_d
    const-string v2, "Launch adjacent ignored due to missing source activity"

    .line 3111
    :goto_4
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3114
    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v2, v2, -0x1001

    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 3117
    :cond_e
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 3118
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isLaunchAdjacentDisabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3119
    const-string v2, "Launch adjacent blocked by source task or ancestor"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3120
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 3124
    .end local v1    # "hasNewTaskFlag":Z
    :cond_f
    return-void
.end method

.method static computeResolveFilterUid(III)I
    .locals 1
    .param p0, "customCallingUid"    # I
    .param p1, "actualCallingUid"    # I
    .param p2, "filterCallingUid"    # I

    .line 1780
    const/16 v0, -0x2710

    if-eq p2, v0, :cond_0

    .line 1781
    move v0, p2

    goto :goto_0

    .line 1782
    :cond_0
    if-ltz p0, :cond_1

    move v0, p0

    goto :goto_0

    :cond_1
    move v0, p1

    .line 1780
    :goto_0
    return v0
.end method

.method private computeSuggestedLaunchDisplayArea(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/TaskDisplayArea;
    .locals 10
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "source"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "options"    # Landroid/app/ActivityOptions;

    .line 2387
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v1

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "task":Lcom/android/server/wm/Task;
    .end local p2    # "source":Lcom/android/server/wm/ActivityRecord;
    .end local p3    # "options":Landroid/app/ActivityOptions;
    .local v2, "task":Lcom/android/server/wm/Task;
    .local v5, "source":Lcom/android/server/wm/ActivityRecord;
    .local v6, "options":Landroid/app/ActivityOptions;
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 2389
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {p1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasPreferredTaskDisplayArea()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2390
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object p1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_0

    .line 2391
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    .line 2389
    :goto_0
    return-object p1
.end method

.method private computeTargetTask()Lcom/android/server/wm/Task;
    .locals 4

    .line 2340
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    .line 2343
    return-object v1

    .line 2344
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    .line 2345
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0

    .line 2346
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_3

    .line 2348
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2351
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    .line 2353
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    return-object v0

    .line 2355
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2357
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 2358
    .local v2, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_4

    .line 2359
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    return-object v1

    .line 2362
    :cond_4
    const-string v3, "computeTargetTask"

    invoke-virtual {v0, v3}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    .line 2365
    .end local v0    # "rootTask":Lcom/android/server/wm/Task;
    .end local v2    # "top":Lcom/android/server/wm/ActivityRecord;
    return-object v1
.end method

.method private createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 22
    .param p1, "auxiliaryResponse"    # Landroid/content/pm/AuxiliaryResolveInfo;
    .param p2, "originalIntent"    # Landroid/content/Intent;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callingFeatureId"    # Ljava/lang/String;
    .param p5, "verificationBundle"    # Landroid/os/Bundle;
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "userId"    # I

    .line 1697
    move-object/from16 v1, p1

    if-eqz v1, :cond_0

    iget-boolean v0, v1, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v0, :cond_0

    .line 1699
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 1700
    .local v0, "packageManager":Landroid/content/pm/PackageManagerInternal;
    move-object/from16 v13, p3

    move/from16 v8, p7

    invoke-virtual {v0, v13, v8}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v6

    .line 1701
    .local v6, "isRequesterInstantApp":Z
    move-object/from16 v2, p2

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move-object/from16 v3, p6

    move-object v4, v13

    invoke-virtual/range {v0 .. v8}, Landroid/content/pm/PackageManagerInternal;->requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;I)V

    goto :goto_0

    .line 1697
    .end local v0    # "packageManager":Landroid/content/pm/PackageManagerInternal;
    .end local v6    # "isRequesterInstantApp":Z
    :cond_0
    move-object/from16 v9, p0

    .line 1705
    :goto_0
    nop

    .line 1707
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v11

    .line 1708
    const/4 v0, 0x0

    if-nez v1, :cond_1

    move-object v12, v0

    goto :goto_1

    :cond_1
    iget-object v2, v1, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    move-object v12, v2

    .line 1714
    :goto_1
    if-nez v1, :cond_2

    move-object/from16 v18, v0

    goto :goto_2

    :cond_2
    iget-object v2, v1, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    move-object/from16 v18, v2

    .line 1715
    :goto_2
    if-nez v1, :cond_3

    move-object/from16 v19, v0

    goto :goto_3

    :cond_3
    iget-object v2, v1, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    move-object/from16 v19, v2

    :goto_3
    if-eqz v1, :cond_4

    iget-boolean v2, v1, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_4
    move/from16 v20, v2

    goto :goto_5

    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    .line 1717
    :goto_5
    if-nez v1, :cond_5

    :goto_6
    move-object/from16 v21, v0

    goto :goto_7

    :cond_5
    iget-object v0, v1, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    goto :goto_6

    .line 1705
    :goto_7
    move-object/from16 v10, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move/from16 v17, p7

    invoke-static/range {v10 .. v21}, Lcom/android/server/pm/InstantAppResolver;->buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V
    .locals 10
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 3350
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    if-eqz v0, :cond_0

    .line 3351
    return-void

    .line 3354
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/16 v1, 0x7533

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/ActivityRecord;->logStartActivity(ILcom/android/server/wm/Task;)V

    .line 3355
    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v7, v0, Lcom/android/server/wm/ActivityRecord;->mShareIdentity:Z

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v8, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3358
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    .line 3355
    move-object v2, p1

    move-object v5, p2

    .end local p1    # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local p2    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    .local v5, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/wm/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;ZII)V

    .line 3359
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 3360
    return-void
.end method

.method private deliverToCurrentTopIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)I
    .locals 12
    .param p1, "topRootTask"    # Lcom/android/server/wm/Task;
    .param p2, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 2616
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2617
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    const/4 v2, 0x1

    nop

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 2618
    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v4, v4, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v3, v4, :cond_2

    .line 2620
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x20000000

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v2, v3, :cond_2

    .line 2626
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-ne v3, v4, :cond_2

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    nop

    .line 2627
    .local v3, "dontStart":Z
    if-nez v3, :cond_3

    .line 2628
    return v1

    .line 2632
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    .line 2633
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v1, :cond_4

    .line 2634
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 2636
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2637
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    .line 2640
    return v2

    .line 2643
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_6

    .line 2644
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v7, v1, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;)V

    .line 2647
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 2650
    :cond_6
    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    .line 2654
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget v4, v4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v1, v2, v4, v5, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;)V

    .line 2657
    const/4 v1, 0x3

    return v1
.end method

.method private executeRequest(Lcom/android/server/wm/ActivityStarter$Request;)I
    .locals 72
    .param p1, "request"    # Lcom/android/server/wm/ActivityStarter$Request;

    .line 1084
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 1087
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 1088
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 1090
    iget-object v9, v15, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 1091
    .local v9, "caller":Landroid/app/IApplicationThread;
    iget-object v4, v15, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 1092
    .local v4, "intent":Landroid/content/Intent;
    iget-object v10, v15, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 1093
    .local v10, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    iget-object v6, v15, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 1094
    .local v6, "resolvedType":Ljava/lang/String;
    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1095
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v11, v15, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 1096
    .local v11, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v12, v15, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 1097
    .local v12, "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    iget-object v13, v15, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 1098
    .local v13, "resultTo":Landroid/os/IBinder;
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 1099
    .local v0, "resultWho":Ljava/lang/String;
    iget v3, v15, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 1100
    .local v3, "requestCode":I
    iget v5, v15, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 1101
    .local v5, "callingPid":I
    iget v7, v15, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 1102
    .local v7, "callingUid":I
    iget v8, v15, Lcom/android/server/wm/ActivityStarter$Request;->intentCreatorUid:I

    .line 1103
    .local v8, "intentCreatorUid":I
    iget-object v14, v15, Lcom/android/server/wm/ActivityStarter$Request;->intentCreatorPackage:Ljava/lang/String;

    .line 1104
    .local v14, "intentCreatorPackage":Ljava/lang/String;
    move-object/from16 v16, v0

    .end local v0    # "resultWho":Ljava/lang/String;
    .local v16, "resultWho":Ljava/lang/String;
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 1105
    .local v0, "callingPackage":Ljava/lang/String;
    move/from16 v17, v3

    .end local v3    # "requestCode":I
    .local v17, "requestCode":I
    iget-object v3, v15, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 1106
    .local v3, "callingFeatureId":Ljava/lang/String;
    move-object/from16 v30, v10

    .end local v10    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v30, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    iget v10, v15, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 1107
    .local v10, "realCallingPid":I
    move/from16 v31, v10

    .end local v10    # "realCallingPid":I
    .local v31, "realCallingPid":I
    iget v10, v15, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 1108
    .local v10, "realCallingUid":I
    move-object/from16 v32, v11

    .end local v11    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v32, "rInfo":Landroid/content/pm/ResolveInfo;
    iget v11, v15, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 1109
    .local v11, "startFlags":I
    move/from16 v33, v11

    .end local v11    # "startFlags":I
    .local v33, "startFlags":I
    iget-object v11, v15, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 1110
    .local v11, "options":Lcom/android/server/wm/SafeActivityOptions;
    move-object/from16 v34, v12

    .end local v12    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .local v34, "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    iget-object v12, v15, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    .line 1111
    .local v12, "inTask":Lcom/android/server/wm/Task;
    move-object/from16 v35, v14

    .end local v14    # "intentCreatorPackage":Ljava/lang/String;
    .local v35, "intentCreatorPackage":Ljava/lang/String;
    iget-object v14, v15, Lcom/android/server/wm/ActivityStarter$Request;->inTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 1113
    .local v14, "inTaskFragment":Lcom/android/server/wm/TaskFragment;
    const/16 v18, 0x0

    .line 1116
    .local v18, "err":I
    move-object/from16 v36, v14

    .end local v14    # "inTaskFragment":Lcom/android/server/wm/TaskFragment;
    .local v36, "inTaskFragment":Lcom/android/server/wm/TaskFragment;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Lcom/android/server/wm/SafeActivityOptions;->popAppVerificationBundle()Landroid/os/Bundle;

    move-result-object v19

    goto :goto_0

    :cond_0
    const/16 v19, 0x0

    :goto_0
    move-object/from16 v37, v19

    .line 1118
    .local v37, "verificationBundle":Landroid/os/Bundle;
    const/16 v19, 0x0

    .line 1119
    .local v19, "callerApp":Lcom/android/server/wm/WindowProcessController;
    const-string v14, "ActivityTaskManager"

    if-eqz v9, :cond_2

    .line 1120
    move-object/from16 v20, v3

    .end local v3    # "callingFeatureId":Ljava/lang/String;
    .local v20, "callingFeatureId":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3, v9}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    .line 1121
    .end local v19    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v3, "callerApp":Lcom/android/server/wm/WindowProcessController;
    if-eqz v3, :cond_1

    .line 1122
    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v5

    .line 1123
    move/from16 v19, v5

    .end local v5    # "callingPid":I
    .local v19, "callingPid":I
    iget-object v5, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v22, v3

    move/from16 v5, v19

    goto :goto_1

    .line 1125
    .end local v19    # "callingPid":I
    .restart local v5    # "callingPid":I
    :cond_1
    move-object/from16 v19, v3

    .end local v3    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v19, "callerApp":Lcom/android/server/wm/WindowProcessController;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v7

    .end local v7    # "callingUid":I
    .local v21, "callingUid":I
    const-string v7, "Unable to find app for caller "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " (pid="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") when starting: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1125
    invoke-static {v14, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    const/16 v18, -0x5e

    move-object/from16 v22, v19

    move/from16 v7, v21

    goto :goto_1

    .line 1119
    .end local v20    # "callingFeatureId":Ljava/lang/String;
    .end local v21    # "callingUid":I
    .local v3, "callingFeatureId":Ljava/lang/String;
    .restart local v7    # "callingUid":I
    :cond_2
    move-object/from16 v20, v3

    move/from16 v21, v7

    .end local v3    # "callingFeatureId":Ljava/lang/String;
    .end local v7    # "callingUid":I
    .restart local v20    # "callingFeatureId":Ljava/lang/String;
    .restart local v21    # "callingUid":I
    move-object/from16 v22, v19

    .line 1131
    .end local v19    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v21    # "callingUid":I
    .restart local v7    # "callingUid":I
    .local v22, "callerApp":Lcom/android/server/wm/WindowProcessController;
    :goto_1
    if-eqz v2, :cond_3

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_3

    .line 1132
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    move/from16 v19, v3

    goto :goto_2

    :cond_3
    const/16 v19, 0x0

    :goto_2
    move/from16 v3, v19

    .line 1133
    .local v3, "userId":I
    if-eqz v2, :cond_4

    move-object/from16 v52, v9

    .end local v9    # "caller":Landroid/app/IApplicationThread;
    .local v52, "caller":Landroid/app/IApplicationThread;
    iget v9, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    goto :goto_3

    .end local v52    # "caller":Landroid/app/IApplicationThread;
    .restart local v9    # "caller":Landroid/app/IApplicationThread;
    :cond_4
    move-object/from16 v52, v9

    .end local v9    # "caller":Landroid/app/IApplicationThread;
    .restart local v52    # "caller":Landroid/app/IApplicationThread;
    const/4 v9, 0x0

    :goto_3
    move/from16 v53, v9

    .line 1134
    .local v53, "launchMode":I
    const-string v9, " pid "

    move-object/from16 v39, v12

    .end local v12    # "inTask":Lcom/android/server/wm/Task;
    .local v39, "inTask":Lcom/android/server/wm/Task;
    const-string v12, " {"

    move-object/from16 v54, v11

    .end local v11    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .local v54, "options":Lcom/android/server/wm/SafeActivityOptions;
    const-string v11, "START u"

    move/from16 v40, v8

    .end local v8    # "intentCreatorUid":I
    .local v40, "intentCreatorUid":I
    const-string v8, ")"

    move-object/from16 v41, v6

    .end local v6    # "resolvedType":Ljava/lang/String;
    .local v41, "resolvedType":Ljava/lang/String;
    if-nez v18, :cond_5

    .line 1135
    iget-object v6, v15, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    move/from16 v44, v3

    move-object/from16 v56, v11

    move-object/from16 v55, v12

    const/4 v11, 0x1

    const/4 v12, 0x0

    .end local v3    # "userId":I
    .local v44, "userId":I
    invoke-virtual {v4, v11, v11, v11, v12}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    const-string v3, "} with "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v53 .. v53}, Landroid/content/pm/ActivityInfo;->launchModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    const-string v3, " from uid "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1145
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    if-eq v7, v10, :cond_6

    const/4 v3, -0x1

    if-eq v10, v3, :cond_6

    .line 1149
    iget-object v3, v15, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    const-string v6, " (realCallingUid="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1134
    .end local v44    # "userId":I
    .restart local v3    # "userId":I
    :cond_5
    move/from16 v44, v3

    move-object/from16 v56, v11

    move-object/from16 v55, v12

    .line 1155
    .end local v3    # "userId":I
    .restart local v44    # "userId":I
    :cond_6
    :goto_4
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v11, v11, v12}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v3

    .line 1156
    .local v3, "callingIntentInString":Ljava/lang/String;
    if-eqz v0, :cond_7

    if-eqz v3, :cond_7

    .line 1157
    const-string v6, "com.whatsapp"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    if-eqz v6, :cond_7

    .line 1158
    const-string v6, "cmp=com.android.settings/com.nothing.settings.NtSettings$GlyphsRingtoneSelectorActivity"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    nop

    if-eqz v6, :cond_7

    .line 1159
    const-string v6, "act=android.intent.action.RINGTONE_PICKER"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1160
    const-string v6, "android.intent.extra.ringtone.TYPE"

    const/4 v11, -0x1

    invoke-virtual {v4, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 1161
    .local v12, "ringtoneType":I
    const/4 v11, 0x7

    if-ne v12, v11, :cond_7

    .line 1162
    const/4 v11, 0x2

    invoke-virtual {v4, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1163
    const-string v6, "change ringtoneType of RINGTONE_PICKER to notification"

    invoke-static {v14, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    .end local v12    # "ringtoneType":I
    :cond_7
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v11, v11, v12}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v6

    .line 1172
    .local v6, "intentInString":Ljava/lang/String;
    sget-object v11, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_CONFIG_LIST_SERVICE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v11}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/nothing/server/ex/INtConfigListService;

    .line 1173
    invoke-interface {v11, v6}, Lcom/nothing/server/ex/INtConfigListService;->isStartingAppForbidden(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1174
    const/16 v8, -0x5e

    return v8

    .line 1180
    :cond_8
    if-eqz v6, :cond_9

    const-string v11, "com.nothing.camera"

    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1181
    sget-object v11, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_MEMORY_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v11}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/INtMemoryManager;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/android/server/am/INtMemoryManager;->boostCamera(Z)V

    goto :goto_5

    .line 1180
    :cond_9
    const/4 v12, 0x0

    .line 1185
    :goto_5
    const/4 v11, 0x0

    .line 1186
    .local v11, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    const/16 v19, 0x0

    .line 1187
    .local v19, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v13, :cond_d

    .line 1188
    invoke-static {v13}, Lcom/android/server/wm/ActivityRecord;->isInAnyTask(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    .line 1189
    sget-boolean v21, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v21, :cond_a

    .line 1190
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v0

    .end local v0    # "callingPackage":Ljava/lang/String;
    .local v21, "callingPackage":Ljava/lang/String;
    const-string v0, "Will send result to "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1189
    .end local v21    # "callingPackage":Ljava/lang/String;
    .restart local v0    # "callingPackage":Ljava/lang/String;
    :cond_a
    move-object/from16 v21, v0

    .line 1192
    .end local v0    # "callingPackage":Ljava/lang/String;
    .restart local v21    # "callingPackage":Ljava/lang/String;
    :goto_6
    if-eqz v11, :cond_c

    .line 1193
    if-ltz v17, :cond_b

    iget-boolean v0, v11, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_b

    .line 1194
    move-object/from16 v19, v11

    .line 1195
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    const-string v12, " (rr="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1197
    :cond_b
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    const-string v12, " (sr="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1199
    :goto_7
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v45, v3

    .end local v3    # "callingIntentInString":Ljava/lang/String;
    .local v45, "callingIntentInString":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1192
    .end local v45    # "callingIntentInString":Ljava/lang/String;
    .restart local v3    # "callingIntentInString":Ljava/lang/String;
    :cond_c
    move-object/from16 v45, v3

    .end local v3    # "callingIntentInString":Ljava/lang/String;
    .restart local v45    # "callingIntentInString":Ljava/lang/String;
    goto :goto_8

    .line 1187
    .end local v21    # "callingPackage":Ljava/lang/String;
    .end local v45    # "callingIntentInString":Ljava/lang/String;
    .restart local v0    # "callingPackage":Ljava/lang/String;
    .restart local v3    # "callingIntentInString":Ljava/lang/String;
    :cond_d
    move-object/from16 v21, v0

    move-object/from16 v45, v3

    .line 1203
    .end local v0    # "callingPackage":Ljava/lang/String;
    .end local v3    # "callingIntentInString":Ljava/lang/String;
    .restart local v21    # "callingPackage":Ljava/lang/String;
    .restart local v45    # "callingIntentInString":Ljava/lang/String;
    :goto_8
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v57

    .line 1204
    .local v57, "launchFlags":I
    const/high16 v0, 0x2000000

    and-int v0, v57, v0

    if-eqz v0, :cond_14

    if-eqz v11, :cond_14

    .line 1207
    if-ltz v17, :cond_e

    .line 1208
    invoke-static/range {v54 .. v54}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1209
    const/16 v0, -0x5d

    return v0

    .line 1211
    :cond_e
    iget-object v0, v11, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1212
    .end local v19    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .local v0, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked()Z

    move-result v3

    if-nez v3, :cond_f

    .line 1213
    const/4 v0, 0x0

    .line 1215
    :cond_f
    iget-object v3, v11, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 1216
    .end local v16    # "resultWho":Ljava/lang/String;
    .local v3, "resultWho":Ljava/lang/String;
    iget v12, v11, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 1217
    .end local v17    # "requestCode":I
    .local v12, "requestCode":I
    move/from16 v23, v5

    const/4 v5, 0x0

    .end local v5    # "callingPid":I
    .local v23, "callingPid":I
    iput-object v5, v11, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1218
    if-eqz v0, :cond_10

    .line 1219
    invoke-virtual {v0, v11, v3, v12}, Lcom/android/server/wm/ActivityRecord;->removeResultsLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    .line 1221
    :cond_10
    iget v5, v11, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    if-ne v5, v7, :cond_12

    .line 1230
    iget-object v5, v11, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1231
    .local v5, "launchedFromPackage":Ljava/lang/String;
    if-eqz v5, :cond_11

    .line 1232
    move-object/from16 v19, v0

    .end local v0    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v19    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1233
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 1234
    .local v0, "pmInternal":Landroid/content/pm/PackageManagerInternal;
    nop

    .line 1236
    move-object/from16 v16, v3

    .end local v3    # "resultWho":Ljava/lang/String;
    .restart local v16    # "resultWho":Ljava/lang/String;
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1234
    move/from16 v17, v12

    move-object/from16 v58, v13

    .end local v12    # "requestCode":I
    .end local v13    # "resultTo":Landroid/os/IBinder;
    .restart local v17    # "requestCode":I
    .local v58, "resultTo":Landroid/os/IBinder;
    const-wide/16 v12, 0x0

    invoke-virtual {v0, v5, v12, v13, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    .line 1239
    .local v3, "packageUid":I
    invoke-static {v3, v7}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 1240
    move-object v12, v5

    .line 1241
    .end local v21    # "callingPackage":Ljava/lang/String;
    .local v12, "callingPackage":Ljava/lang/String;
    iget-object v13, v11, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    move-object/from16 v24, v13

    move-object/from16 v61, v16

    move/from16 v62, v17

    move-object/from16 v59, v19

    .end local v20    # "callingFeatureId":Ljava/lang/String;
    .local v13, "callingFeatureId":Ljava/lang/String;
    goto :goto_a

    .line 1231
    .end local v16    # "resultWho":Ljava/lang/String;
    .end local v17    # "requestCode":I
    .end local v19    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v58    # "resultTo":Landroid/os/IBinder;
    .local v0, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .local v3, "resultWho":Ljava/lang/String;
    .local v12, "requestCode":I
    .local v13, "resultTo":Landroid/os/IBinder;
    .restart local v20    # "callingFeatureId":Ljava/lang/String;
    .restart local v21    # "callingPackage":Ljava/lang/String;
    :cond_11
    move-object/from16 v19, v0

    move-object/from16 v16, v3

    move/from16 v17, v12

    move-object/from16 v58, v13

    .end local v0    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "resultWho":Ljava/lang/String;
    .end local v12    # "requestCode":I
    .end local v13    # "resultTo":Landroid/os/IBinder;
    .restart local v16    # "resultWho":Ljava/lang/String;
    .restart local v17    # "requestCode":I
    .restart local v19    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v58    # "resultTo":Landroid/os/IBinder;
    goto :goto_9

    .line 1221
    .end local v5    # "launchedFromPackage":Ljava/lang/String;
    .end local v16    # "resultWho":Ljava/lang/String;
    .end local v17    # "requestCode":I
    .end local v19    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v58    # "resultTo":Landroid/os/IBinder;
    .restart local v0    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v3    # "resultWho":Ljava/lang/String;
    .restart local v12    # "requestCode":I
    .restart local v13    # "resultTo":Landroid/os/IBinder;
    :cond_12
    move-object/from16 v19, v0

    move-object/from16 v16, v3

    move/from16 v17, v12

    move-object/from16 v58, v13

    .line 1247
    .end local v0    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "resultWho":Ljava/lang/String;
    .end local v12    # "requestCode":I
    .end local v13    # "resultTo":Landroid/os/IBinder;
    .restart local v16    # "resultWho":Ljava/lang/String;
    .restart local v17    # "requestCode":I
    .restart local v19    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v58    # "resultTo":Landroid/os/IBinder;
    :cond_13
    :goto_9
    move-object/from16 v61, v16

    move/from16 v62, v17

    move-object/from16 v59, v19

    move-object/from16 v24, v20

    move-object/from16 v12, v21

    goto :goto_a

    .line 1204
    .end local v23    # "callingPid":I
    .end local v58    # "resultTo":Landroid/os/IBinder;
    .local v5, "callingPid":I
    .restart local v13    # "resultTo":Landroid/os/IBinder;
    :cond_14
    move/from16 v23, v5

    move-object/from16 v58, v13

    .end local v5    # "callingPid":I
    .end local v13    # "resultTo":Landroid/os/IBinder;
    .restart local v23    # "callingPid":I
    .restart local v58    # "resultTo":Landroid/os/IBinder;
    goto :goto_9

    .line 1247
    .end local v16    # "resultWho":Ljava/lang/String;
    .end local v17    # "requestCode":I
    .end local v19    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v20    # "callingFeatureId":Ljava/lang/String;
    .end local v21    # "callingPackage":Ljava/lang/String;
    .local v12, "callingPackage":Ljava/lang/String;
    .local v24, "callingFeatureId":Ljava/lang/String;
    .local v59, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .local v61, "resultWho":Ljava/lang/String;
    .local v62, "requestCode":I
    :goto_a
    if-nez v18, :cond_15

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_15

    .line 1250
    const/16 v18, -0x5b

    .line 1253
    :cond_15
    if-nez v18, :cond_16

    if-nez v2, :cond_16

    .line 1255
    const/16 v18, -0x5c

    .line 1257
    invoke-static {}, Lcom/android/server/pm/PackageArchiver;->isArchivingEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1258
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1259
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 1260
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getPackageArchiver()Lcom/android/server/pm/PackageArchiver;

    move-result-object v0

    .line 1261
    .local v0, "packageArchiver":Lcom/android/server/pm/PackageArchiver;
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    invoke-virtual {v0, v4, v3}, Lcom/android/server/pm/PackageArchiver;->isIntentResolvedToArchivedApp(Landroid/content/Intent;I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1262
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 1263
    invoke-virtual {v0, v4, v12, v3, v10}, Lcom/android/server/pm/PackageArchiver;->requestUnarchiveOnActivityStart(Landroid/content/Intent;Ljava/lang/String;II)I

    move-result v18

    .line 1269
    .end local v0    # "packageArchiver":Lcom/android/server/pm/PackageArchiver;
    :cond_16
    const-string v3, "Failure checking voice capabilities"

    if-nez v18, :cond_1a

    if-eqz v11, :cond_1a

    .line 1270
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_19

    .line 1275
    const/high16 v0, 0x10000000

    and-int v0, v57, v0

    if-nez v0, :cond_18

    iget-object v0, v11, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v5, :cond_18

    .line 1278
    :try_start_0
    const-string v0, "android.intent.category.VOICE"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1279
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1280
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1279
    move-object/from16 v19, v2

    move-object/from16 v13, v41

    move/from16 v2, v44

    .end local v41    # "resolvedType":Ljava/lang/String;
    .end local v44    # "userId":I
    .local v2, "userId":I
    .local v13, "resolvedType":Ljava/lang/String;
    .local v19, "aInfo":Landroid/content/pm/ActivityInfo;
    :try_start_1
    invoke-interface {v0, v5, v4, v13, v2}, Landroid/content/pm/IPackageManager;->activitySupportsIntentAsUser(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity being started in current voice task does not support voice: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1283
    const/16 v18, -0x61

    goto :goto_b

    .line 1285
    :catch_0
    move-exception v0

    goto :goto_c

    .line 1288
    :cond_17
    :goto_b
    goto :goto_d

    .line 1285
    .end local v13    # "resolvedType":Ljava/lang/String;
    .end local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v41    # "resolvedType":Ljava/lang/String;
    .restart local v44    # "userId":I
    :catch_1
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v13, v41

    move/from16 v2, v44

    .end local v41    # "resolvedType":Ljava/lang/String;
    .end local v44    # "userId":I
    .local v2, "userId":I
    .restart local v13    # "resolvedType":Ljava/lang/String;
    .restart local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_c
    nop

    .line 1286
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v14, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1287
    const/16 v18, -0x61

    goto :goto_d

    .line 1275
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v13    # "resolvedType":Ljava/lang/String;
    .end local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v41    # "resolvedType":Ljava/lang/String;
    .restart local v44    # "userId":I
    :cond_18
    move-object/from16 v19, v2

    move-object/from16 v13, v41

    move/from16 v2, v44

    .end local v41    # "resolvedType":Ljava/lang/String;
    .end local v44    # "userId":I
    .local v2, "userId":I
    .restart local v13    # "resolvedType":Ljava/lang/String;
    .restart local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_d

    .line 1270
    .end local v13    # "resolvedType":Ljava/lang/String;
    .end local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v41    # "resolvedType":Ljava/lang/String;
    .restart local v44    # "userId":I
    :cond_19
    move-object/from16 v19, v2

    move-object/from16 v13, v41

    move/from16 v2, v44

    .end local v41    # "resolvedType":Ljava/lang/String;
    .end local v44    # "userId":I
    .local v2, "userId":I
    .restart local v13    # "resolvedType":Ljava/lang/String;
    .restart local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_d

    .line 1269
    .end local v13    # "resolvedType":Ljava/lang/String;
    .end local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v41    # "resolvedType":Ljava/lang/String;
    .restart local v44    # "userId":I
    :cond_1a
    move-object/from16 v19, v2

    move-object/from16 v13, v41

    move/from16 v2, v44

    .line 1292
    .end local v41    # "resolvedType":Ljava/lang/String;
    .end local v44    # "userId":I
    .local v2, "userId":I
    .restart local v13    # "resolvedType":Ljava/lang/String;
    .restart local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_d
    if-nez v18, :cond_1c

    if-eqz v34, :cond_1c

    .line 1296
    :try_start_2
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1297
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 1296
    invoke-interface {v0, v5, v4, v13, v2}, Landroid/content/pm/IPackageManager;->activitySupportsIntentAsUser(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity being started in new voice task does not support: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1300
    const/16 v18, -0x61

    goto :goto_e

    .line 1302
    :catch_2
    move-exception v0

    goto :goto_f

    .line 1305
    :cond_1b
    :goto_e
    move/from16 v67, v18

    goto :goto_10

    .line 1302
    :goto_f
    nop

    .line 1303
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {v14, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1304
    const/16 v18, -0x61

    move/from16 v67, v18

    goto :goto_10

    .line 1308
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    move/from16 v67, v18

    .end local v18    # "err":I
    .local v67, "err":I
    :goto_10
    if-nez v59, :cond_1d

    .line 1309
    const/16 v29, 0x0

    goto :goto_11

    :cond_1d
    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    move-object/from16 v29, v0

    .line 1311
    .local v29, "resultRootTask":Lcom/android/server/wm/Task;
    :goto_11
    if-eqz v67, :cond_1f

    .line 1312
    if-eqz v59, :cond_1e

    .line 1313
    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v60, -0x1

    const/16 v63, 0x0

    const/16 v64, 0x0

    invoke-virtual/range {v59 .. v66}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;)V

    .line 1316
    :cond_1e
    invoke-static/range {v54 .. v54}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1317
    return v67

    .line 1322
    :cond_1f
    :try_start_3
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean v3, v15, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_9

    if-eqz v39, :cond_20

    const/16 v26, 0x1

    goto :goto_12

    :cond_20
    const/16 v26, 0x0

    :goto_12
    move-object/from16 v16, v0

    move/from16 v25, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v19

    move-object/from16 v27, v22

    move/from16 v21, v23

    move-object/from16 v28, v59

    move-object/from16 v19, v61

    move/from16 v20, v62

    move/from16 v22, v7

    move-object/from16 v23, v12

    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "callingUid":I
    .end local v12    # "callingPackage":Ljava/lang/String;
    .end local v59    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v61    # "resultWho":Ljava/lang/String;
    .end local v62    # "requestCode":I
    .local v17, "intent":Landroid/content/Intent;
    .local v18, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v19, "resultWho":Ljava/lang/String;
    .local v20, "requestCode":I
    .local v21, "callingPid":I
    .local v22, "callingUid":I
    .local v23, "callingPackage":Ljava/lang/String;
    .local v27, "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v28, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    :try_start_4
    invoke-virtual/range {v16 .. v29}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_8

    move-object/from16 v41, v8

    move-object/from16 v12, v18

    move-object/from16 v8, v23

    move-object/from16 v44, v24

    move-object/from16 v22, v27

    move/from16 v23, v21

    .end local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v19    # "resultWho":Ljava/lang/String;
    .end local v20    # "requestCode":I
    .end local v21    # "callingPid":I
    .end local v24    # "callingFeatureId":Ljava/lang/String;
    .end local v27    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v28    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v7    # "callingUid":I
    .local v8, "callingPackage":Ljava/lang/String;
    .local v12, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v22, "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v23, "callingPid":I
    .local v44, "callingFeatureId":Ljava/lang/String;
    .restart local v59    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v61    # "resultWho":Ljava/lang/String;
    .restart local v62    # "requestCode":I
    const/16 v43, 0x1

    xor-int/lit8 v0, v0, 0x1

    .line 1347
    .local v0, "abort":Z
    nop

    .line 1348
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    move v4, v7

    .end local v7    # "callingUid":I
    .local v4, "callingUid":I
    iget-object v7, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v5, v43

    move/from16 v43, v10

    move v10, v5

    move/from16 v42, v2

    move-object v2, v3

    move-object/from16 v69, v6

    move-object v6, v13

    move-object/from16 v3, v17

    move-object/from16 v13, v22

    move/from16 v5, v23

    move-object/from16 v68, v45

    const/16 v38, 0x0

    .end local v2    # "userId":I
    .end local v10    # "realCallingUid":I
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v22    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v23    # "callingPid":I
    .end local v45    # "callingIntentInString":Ljava/lang/String;
    .local v3, "intent":Landroid/content/Intent;
    .restart local v5    # "callingPid":I
    .local v6, "resolvedType":Ljava/lang/String;
    .local v13, "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v42, "userId":I
    .local v43, "realCallingUid":I
    .local v68, "callingIntentInString":Ljava/lang/String;
    .local v69, "intentInString":Ljava/lang/String;
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    move v7, v4

    move/from16 v46, v5

    move-object/from16 v45, v6

    move-object v4, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "callingPid":I
    .end local v6    # "resolvedType":Ljava/lang/String;
    .local v4, "intent":Landroid/content/Intent;
    .restart local v7    # "callingUid":I
    .local v45, "resolvedType":Ljava/lang/String;
    .local v46, "callingPid":I
    xor-int/2addr v2, v10

    or-int/2addr v0, v2

    .line 1350
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getPermissionPolicyInternal()Lcom/android/server/policy/PermissionPolicyInternal;

    move-result-object v2

    invoke-virtual {v2, v4, v7, v8}, Lcom/android/server/policy/PermissionPolicyInternal;->checkStartActivity(Landroid/content/Intent;ILjava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v10

    or-int v47, v0, v2

    .line 1353
    .end local v0    # "abort":Z
    .local v47, "abort":Z
    move/from16 v5, v40

    const/4 v3, -0x1

    .end local v40    # "intentCreatorUid":I
    .local v5, "intentCreatorUid":I
    if-eq v5, v3, :cond_25

    .line 1355
    :try_start_5
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string v24, ""

    iget-boolean v2, v15, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_6

    if-eqz v39, :cond_21

    move/from16 v26, v10

    goto :goto_13

    :cond_21
    move/from16 v26, v38

    :goto_13
    const/16 v27, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v0

    move/from16 v25, v2

    move-object/from16 v17, v4

    move/from16 v22, v5

    move-object/from16 v18, v12

    move-object/from16 v23, v35

    move-object/from16 v28, v59

    move-object/from16 v19, v61

    move/from16 v20, v62

    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "intentCreatorUid":I
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v35    # "intentCreatorPackage":Ljava/lang/String;
    .end local v59    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v61    # "resultWho":Ljava/lang/String;
    .end local v62    # "requestCode":I
    .restart local v17    # "intent":Landroid/content/Intent;
    .restart local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v19    # "resultWho":Ljava/lang/String;
    .restart local v20    # "requestCode":I
    .local v22, "intentCreatorUid":I
    .local v23, "intentCreatorPackage":Ljava/lang/String;
    .restart local v28    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    :try_start_6
    invoke-virtual/range {v16 .. v29}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_5

    move-object/from16 v6, v23

    .end local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v19    # "resultWho":Ljava/lang/String;
    .end local v20    # "requestCode":I
    .end local v22    # "intentCreatorUid":I
    .end local v23    # "intentCreatorPackage":Ljava/lang/String;
    .end local v28    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v5    # "intentCreatorUid":I
    .local v6, "intentCreatorPackage":Ljava/lang/String;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v59    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v61    # "resultWho":Ljava/lang/String;
    .restart local v62    # "requestCode":I
    if-nez v0, :cond_22

    .line 1359
    :try_start_7
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_4

    const/4 v3, 0x4

    move/from16 v28, v10

    move-object/from16 v4, v17

    move-object/from16 v10, v41

    .end local v17    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    :try_start_8
    invoke-static/range {v2 .. v8}, Lcom/android/server/wm/ActivityStarter;->logAndAbortForIntentRedirect(Landroid/content/Context;ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_3

    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v17    # "intent":Landroid/content/Intent;
    move/from16 v47, v0

    goto :goto_14

    .line 1364
    .end local v17    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    :catch_3
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v23, v0

    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v17    # "intent":Landroid/content/Intent;
    goto :goto_15

    :catch_4
    move-exception v0

    move/from16 v28, v10

    move-object/from16 v10, v41

    move-object/from16 v23, v0

    goto :goto_15

    .line 1355
    :cond_22
    move/from16 v28, v10

    move-object/from16 v10, v41

    .line 1369
    :goto_14
    move-object/from16 v35, v6

    move/from16 v21, v7

    goto :goto_16

    .line 1364
    .end local v5    # "intentCreatorUid":I
    .end local v6    # "intentCreatorPackage":Ljava/lang/String;
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v59    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v61    # "resultWho":Ljava/lang/String;
    .end local v62    # "requestCode":I
    .restart local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v19    # "resultWho":Ljava/lang/String;
    .restart local v20    # "requestCode":I
    .restart local v22    # "intentCreatorUid":I
    .restart local v23    # "intentCreatorPackage":Ljava/lang/String;
    .restart local v28    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    :catch_5
    move-exception v0

    move-object/from16 v12, v18

    move-object/from16 v61, v19

    move/from16 v62, v20

    move/from16 v5, v22

    move-object/from16 v6, v23

    move-object/from16 v59, v28

    move/from16 v28, v10

    move-object/from16 v10, v41

    move-object/from16 v23, v0

    .end local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v19    # "resultWho":Ljava/lang/String;
    .end local v20    # "requestCode":I
    .end local v22    # "intentCreatorUid":I
    .end local v23    # "intentCreatorPackage":Ljava/lang/String;
    .end local v28    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v5    # "intentCreatorUid":I
    .restart local v6    # "intentCreatorPackage":Ljava/lang/String;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v59    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v61    # "resultWho":Ljava/lang/String;
    .restart local v62    # "requestCode":I
    goto :goto_15

    .end local v6    # "intentCreatorPackage":Ljava/lang/String;
    .end local v17    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v35    # "intentCreatorPackage":Ljava/lang/String;
    :catch_6
    move-exception v0

    move-object/from16 v17, v4

    move/from16 v28, v10

    move-object/from16 v6, v35

    move-object/from16 v10, v41

    move-object/from16 v23, v0

    .end local v4    # "intent":Landroid/content/Intent;
    .end local v35    # "intentCreatorPackage":Ljava/lang/String;
    .restart local v6    # "intentCreatorPackage":Ljava/lang/String;
    .restart local v17    # "intent":Landroid/content/Intent;
    :goto_15
    nop

    .line 1365
    .local v23, "e":Ljava/lang/SecurityException;
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v4, v17

    .end local v17    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    const/16 v17, 0x3

    move-object/from16 v16, v0

    move-object/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v21, v7

    move-object/from16 v22, v8

    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "intentCreatorUid":I
    .end local v6    # "intentCreatorPackage":Ljava/lang/String;
    .end local v7    # "callingUid":I
    .end local v8    # "callingPackage":Ljava/lang/String;
    .local v18, "intent":Landroid/content/Intent;
    .local v19, "intentCreatorUid":I
    .local v20, "intentCreatorPackage":Ljava/lang/String;
    .local v21, "callingUid":I
    .local v22, "callingPackage":Ljava/lang/String;
    invoke-static/range {v16 .. v23}, Lcom/android/server/wm/ActivityStarter;->logAndThrowExceptionForIntentRedirect(Landroid/content/Context;ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;Ljava/lang/SecurityException;)V

    move-object/from16 v17, v18

    move-object/from16 v35, v20

    .line 1370
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v19    # "intentCreatorUid":I
    .end local v20    # "intentCreatorPackage":Ljava/lang/String;
    .end local v22    # "callingPackage":Ljava/lang/String;
    .end local v23    # "e":Ljava/lang/SecurityException;
    .restart local v5    # "intentCreatorUid":I
    .restart local v8    # "callingPackage":Ljava/lang/String;
    .restart local v17    # "intent":Landroid/content/Intent;
    .restart local v35    # "intentCreatorPackage":Ljava/lang/String;
    :goto_16
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    move/from16 v19, v5

    .end local v5    # "intentCreatorUid":I
    .restart local v19    # "intentCreatorUid":I
    const/4 v5, 0x0

    iget-object v7, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v3, v17

    move/from16 v4, v19

    move-object/from16 v6, v45

    .end local v17    # "intent":Landroid/content/Intent;
    .end local v19    # "intentCreatorUid":I
    .end local v45    # "resolvedType":Ljava/lang/String;
    .restart local v3    # "intent":Landroid/content/Intent;
    .local v4, "intentCreatorUid":I
    .local v6, "resolvedType":Ljava/lang/String;
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    move v5, v4

    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "intentCreatorUid":I
    .end local v6    # "resolvedType":Ljava/lang/String;
    .restart local v5    # "intentCreatorUid":I
    .restart local v17    # "intent":Landroid/content/Intent;
    .restart local v45    # "resolvedType":Ljava/lang/String;
    if-nez v0, :cond_23

    .line 1372
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x5

    move-object/from16 v4, v17

    move/from16 v7, v21

    move-object/from16 v6, v35

    .end local v17    # "intent":Landroid/content/Intent;
    .end local v21    # "callingUid":I
    .end local v35    # "intentCreatorPackage":Ljava/lang/String;
    .local v4, "intent":Landroid/content/Intent;
    .local v6, "intentCreatorPackage":Ljava/lang/String;
    .restart local v7    # "callingUid":I
    invoke-static/range {v2 .. v8}, Lcom/android/server/wm/ActivityStarter;->logAndAbortForIntentRedirect(Landroid/content/Context;ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Z

    move-result v0

    move/from16 v47, v0

    .end local v47    # "abort":Z
    .restart local v0    # "abort":Z
    goto :goto_17

    .line 1370
    .end local v0    # "abort":Z
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "intentCreatorPackage":Ljava/lang/String;
    .end local v7    # "callingUid":I
    .restart local v17    # "intent":Landroid/content/Intent;
    .restart local v21    # "callingUid":I
    .restart local v35    # "intentCreatorPackage":Ljava/lang/String;
    .restart local v47    # "abort":Z
    :cond_23
    move-object/from16 v4, v17

    move/from16 v7, v21

    move-object/from16 v6, v35

    .line 1377
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v21    # "callingUid":I
    .end local v35    # "intentCreatorPackage":Ljava/lang/String;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v6    # "intentCreatorPackage":Ljava/lang/String;
    .restart local v7    # "callingUid":I
    :goto_17
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPermissionPolicyInternal()Lcom/android/server/policy/PermissionPolicyInternal;

    move-result-object v0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/policy/PermissionPolicyInternal;->checkStartActivity(Landroid/content/Intent;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 1379
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x6

    invoke-static/range {v2 .. v8}, Lcom/android/server/wm/ActivityStarter;->logAndAbortForIntentRedirect(Landroid/content/Context;ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Z

    move-result v47

    move/from16 v35, v5

    move-object/from16 v70, v6

    .end local v5    # "intentCreatorUid":I
    .end local v6    # "intentCreatorPackage":Ljava/lang/String;
    .local v35, "intentCreatorUid":I
    .local v70, "intentCreatorPackage":Ljava/lang/String;
    goto :goto_18

    .line 1377
    .end local v35    # "intentCreatorUid":I
    .end local v70    # "intentCreatorPackage":Ljava/lang/String;
    .restart local v5    # "intentCreatorUid":I
    .restart local v6    # "intentCreatorPackage":Ljava/lang/String;
    :cond_24
    move/from16 v35, v5

    move-object/from16 v70, v6

    .end local v5    # "intentCreatorUid":I
    .end local v6    # "intentCreatorPackage":Ljava/lang/String;
    .restart local v35    # "intentCreatorUid":I
    .restart local v70    # "intentCreatorPackage":Ljava/lang/String;
    goto :goto_18

    .line 1353
    .end local v70    # "intentCreatorPackage":Ljava/lang/String;
    .restart local v5    # "intentCreatorUid":I
    .local v35, "intentCreatorPackage":Ljava/lang/String;
    :cond_25
    move/from16 v28, v10

    move-object/from16 v70, v35

    move-object/from16 v10, v41

    move/from16 v35, v5

    .line 1384
    .end local v5    # "intentCreatorUid":I
    .local v35, "intentCreatorUid":I
    .restart local v70    # "intentCreatorPackage":Ljava/lang/String;
    :goto_18
    invoke-virtual {v4}, Landroid/content/Intent;->removeCreatorToken()V

    .line 1387
    if-eqz v54, :cond_26

    .line 1388
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    move-object/from16 v2, v54

    .end local v54    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .local v2, "options":Lcom/android/server/wm/SafeActivityOptions;
    invoke-virtual {v2, v4, v12, v13, v0}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    move-object/from16 v27, v0

    goto :goto_19

    .end local v2    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v54    # "options":Lcom/android/server/wm/SafeActivityOptions;
    :cond_26
    move-object/from16 v2, v54

    .end local v54    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v2    # "options":Lcom/android/server/wm/SafeActivityOptions;
    const/16 v27, 0x0

    .line 1391
    .local v27, "checkedOptions":Landroid/app/ActivityOptions;
    :goto_19
    if-nez v47, :cond_27

    .line 1393
    const-wide/16 v5, 0x20

    :try_start_9
    const-string v0, "shouldAbortBackgroundActivityStart"

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1395
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1396
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getBackgroundActivityLaunchController()Lcom/android/server/wm/BackgroundActivityStartController;

    move-result-object v16

    .line 1397
    .local v16, "balController":Lcom/android/server/wm/BackgroundActivityStartController;
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    iget-boolean v3, v15, Lcom/android/server/wm/ActivityStarter$Request;->allowBalExemptionForSystemProcess:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1398
    move-object/from16 v23, v0

    move/from16 v24, v3

    move-object/from16 v26, v4

    move/from16 v17, v7

    move-object/from16 v19, v8

    move-object/from16 v22, v13

    move/from16 v21, v31

    move/from16 v20, v43

    move/from16 v18, v46

    move-object/from16 v25, v59

    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "callingUid":I
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v13    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v31    # "realCallingPid":I
    .end local v43    # "realCallingUid":I
    .end local v46    # "callingPid":I
    .end local v59    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .local v17, "callingUid":I
    .local v18, "callingPid":I
    .local v19, "callingPackage":Ljava/lang/String;
    .local v20, "realCallingUid":I
    .local v21, "realCallingPid":I
    .local v22, "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v25, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .local v26, "intent":Landroid/content/Intent;
    :try_start_a
    invoke-virtual/range {v16 .. v27}, Lcom/android/server/wm/BackgroundActivityStartController;->checkBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/app/ActivityOptions;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object/from16 v17, v26

    move-object/from16 v3, v27

    .line 1410
    .end local v18    # "callingPid":I
    .end local v19    # "callingPackage":Ljava/lang/String;
    .end local v21    # "realCallingPid":I
    .end local v22    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v25    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v26    # "intent":Landroid/content/Intent;
    .end local v27    # "checkedOptions":Landroid/app/ActivityOptions;
    .local v0, "balVerdict":Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .local v3, "checkedOptions":Landroid/app/ActivityOptions;
    .restart local v7    # "callingUid":I
    .restart local v8    # "callingPackage":Ljava/lang/String;
    .restart local v13    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v17, "intent":Landroid/content/Intent;
    .restart local v31    # "realCallingPid":I
    .restart local v46    # "callingPid":I
    .restart local v59    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    :try_start_b
    iget-object v4, v15, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-wide/from16 v18, v5

    :try_start_c
    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1412
    nop

    .end local v16    # "balController":Lcom/android/server/wm/BackgroundActivityStartController;
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 1413
    move-object v10, v0

    goto :goto_1b

    .line 1412
    .end local v0    # "balVerdict":Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    :catchall_0
    move-exception v0

    goto :goto_1a

    :catchall_1
    move-exception v0

    move-wide/from16 v18, v5

    goto :goto_1a

    .end local v3    # "checkedOptions":Landroid/app/ActivityOptions;
    .end local v7    # "callingUid":I
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v13    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v31    # "realCallingPid":I
    .end local v46    # "callingPid":I
    .end local v59    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .local v17, "callingUid":I
    .restart local v18    # "callingPid":I
    .restart local v19    # "callingPackage":Ljava/lang/String;
    .restart local v21    # "realCallingPid":I
    .restart local v22    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v25    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v26    # "intent":Landroid/content/Intent;
    .restart local v27    # "checkedOptions":Landroid/app/ActivityOptions;
    :catchall_2
    move-exception v0

    move/from16 v7, v17

    move/from16 v46, v18

    move-object/from16 v8, v19

    move/from16 v31, v21

    move-object/from16 v13, v22

    move-object/from16 v59, v25

    move-object/from16 v17, v26

    move-object/from16 v3, v27

    move-wide/from16 v18, v5

    .end local v18    # "callingPid":I
    .end local v19    # "callingPackage":Ljava/lang/String;
    .end local v21    # "realCallingPid":I
    .end local v22    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v25    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v26    # "intent":Landroid/content/Intent;
    .end local v27    # "checkedOptions":Landroid/app/ActivityOptions;
    .restart local v3    # "checkedOptions":Landroid/app/ActivityOptions;
    .restart local v7    # "callingUid":I
    .restart local v8    # "callingPackage":Ljava/lang/String;
    .restart local v13    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v17, "intent":Landroid/content/Intent;
    .restart local v31    # "realCallingPid":I
    .restart local v46    # "callingPid":I
    .restart local v59    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    goto :goto_1a

    .end local v3    # "checkedOptions":Landroid/app/ActivityOptions;
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v20    # "realCallingUid":I
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v27    # "checkedOptions":Landroid/app/ActivityOptions;
    .restart local v43    # "realCallingUid":I
    :catchall_3
    move-exception v0

    move-object/from16 v17, v4

    move-wide/from16 v18, v5

    move-object/from16 v3, v27

    move/from16 v20, v43

    .end local v4    # "intent":Landroid/content/Intent;
    .end local v27    # "checkedOptions":Landroid/app/ActivityOptions;
    .end local v43    # "realCallingUid":I
    .restart local v3    # "checkedOptions":Landroid/app/ActivityOptions;
    .restart local v17    # "intent":Landroid/content/Intent;
    .restart local v20    # "realCallingUid":I
    :goto_1a
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 1413
    throw v0

    .line 1416
    .end local v3    # "checkedOptions":Landroid/app/ActivityOptions;
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v20    # "realCallingUid":I
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v27    # "checkedOptions":Landroid/app/ActivityOptions;
    .restart local v43    # "realCallingUid":I
    :cond_27
    move-object/from16 v17, v4

    move-object/from16 v3, v27

    move/from16 v20, v43

    .end local v4    # "intent":Landroid/content/Intent;
    .end local v27    # "checkedOptions":Landroid/app/ActivityOptions;
    .end local v43    # "realCallingUid":I
    .restart local v3    # "checkedOptions":Landroid/app/ActivityOptions;
    .restart local v17    # "intent":Landroid/content/Intent;
    .restart local v20    # "realCallingUid":I
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->ALLOW_BY_DEFAULT:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-object v10, v0

    .line 1419
    .local v10, "balVerdict":Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    :goto_1b
    iget-boolean v0, v15, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    if-eqz v0, :cond_28

    .line 1420
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    .line 1421
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStartController;->getPendingRemoteAnimationRegistry()Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    move-result-object v0

    .line 1422
    invoke-virtual {v0, v8, v3}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->overrideOptionsIfNeeded(Ljava/lang/String;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v27

    move-object/from16 v3, v27

    .line 1424
    :cond_28
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_29

    .line 1428
    :try_start_d
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    .line 1429
    .local v0, "watchIntent":Landroid/content/Intent;
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v5, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v0, v5}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v4
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_7

    xor-int/lit8 v4, v4, 0x1

    or-int v47, v47, v4

    .line 1433
    .end local v0    # "watchIntent":Landroid/content/Intent;
    move/from16 v0, v47

    goto :goto_1c

    .line 1431
    :catch_7
    move-exception v0

    .line 1432
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 1436
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_29
    move/from16 v0, v47

    .end local v47    # "abort":Z
    .local v0, "abort":Z
    :goto_1c
    nop

    .line 1437
    move-object/from16 v4, v39

    .end local v39    # "inTask":Lcom/android/server/wm/Task;
    .local v4, "inTask":Lcom/android/server/wm/Task;
    invoke-direct {v1, v4, v11, v3}, Lcom/android/server/wm/ActivityStarter;->computeSuggestedLaunchDisplayArea(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v26

    .line 1438
    .local v26, "suggestedLaunchDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    move-object/from16 v18, v5

    move-object/from16 v23, v8

    move/from16 v21, v20

    move/from16 v20, v31

    move/from16 v22, v33

    move/from16 v19, v42

    move-object/from16 v24, v44

    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v31    # "realCallingPid":I
    .end local v33    # "startFlags":I
    .end local v42    # "userId":I
    .end local v44    # "callingFeatureId":Ljava/lang/String;
    .local v19, "userId":I
    .local v20, "realCallingPid":I
    .local v21, "realCallingUid":I
    .local v22, "startFlags":I
    .local v23, "callingPackage":Ljava/lang/String;
    .restart local v24    # "callingFeatureId":Ljava/lang/String;
    invoke-virtual/range {v18 .. v24}, Lcom/android/server/wm/ActivityStartInterceptor;->setStates(IIIILjava/lang/String;Ljava/lang/String;)V

    .line 1441
    move-object/from16 v18, v12

    move/from16 v8, v19

    move/from16 v12, v21

    move/from16 v5, v22

    move-object/from16 v41, v23

    move-object/from16 v42, v24

    .end local v19    # "userId":I
    .end local v20    # "realCallingPid":I
    .end local v21    # "realCallingUid":I
    .end local v22    # "startFlags":I
    .end local v23    # "callingPackage":Ljava/lang/String;
    .end local v24    # "callingFeatureId":Ljava/lang/String;
    .local v5, "startFlags":I
    .local v8, "userId":I
    .local v12, "realCallingUid":I
    .local v18, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v31    # "realCallingPid":I
    .local v41, "callingPackage":Ljava/lang/String;
    .local v42, "callingFeatureId":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    move/from16 v33, v0

    .end local v0    # "abort":Z
    .local v33, "abort":Z
    iget-boolean v0, v15, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    move/from16 v27, v0

    move-object/from16 v25, v3

    move-object/from16 v21, v4

    move-object/from16 v16, v6

    move/from16 v24, v7

    move-object/from16 v19, v18

    move-object/from16 v18, v32

    move-object/from16 v22, v36

    move-object/from16 v20, v45

    move/from16 v23, v46

    .end local v3    # "checkedOptions":Landroid/app/ActivityOptions;
    .end local v4    # "inTask":Lcom/android/server/wm/Task;
    .end local v7    # "callingUid":I
    .end local v32    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v36    # "inTaskFragment":Lcom/android/server/wm/TaskFragment;
    .end local v45    # "resolvedType":Ljava/lang/String;
    .end local v46    # "callingPid":I
    .local v18, "rInfo":Landroid/content/pm/ResolveInfo;
    .local v19, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v20, "resolvedType":Ljava/lang/String;
    .local v21, "inTask":Lcom/android/server/wm/Task;
    .local v22, "inTaskFragment":Lcom/android/server/wm/TaskFragment;
    .local v23, "callingPid":I
    .local v24, "callingUid":I
    .local v25, "checkedOptions":Landroid/app/ActivityOptions;
    invoke-virtual/range {v16 .. v27}, Lcom/android/server/wm/ActivityStartInterceptor;->intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;IILandroid/app/ActivityOptions;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v0

    move-object/from16 v18, v19

    .end local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v20    # "resolvedType":Ljava/lang/String;
    .end local v21    # "inTask":Lcom/android/server/wm/Task;
    .end local v22    # "inTaskFragment":Lcom/android/server/wm/TaskFragment;
    .end local v24    # "callingUid":I
    .restart local v4    # "inTask":Lcom/android/server/wm/Task;
    .restart local v7    # "callingUid":I
    .local v18, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v32    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v36    # "inTaskFragment":Lcom/android/server/wm/TaskFragment;
    .restart local v45    # "resolvedType":Ljava/lang/String;
    if-eqz v0, :cond_2a

    .line 1446
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 1447
    .end local v17    # "intent":Landroid/content/Intent;
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 1448
    .end local v32    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v3, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v6, v6, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 1449
    .end local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v6, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v16, v0

    .end local v0    # "intent":Landroid/content/Intent;
    .local v16, "intent":Landroid/content/Intent;
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 1450
    .end local v45    # "resolvedType":Ljava/lang/String;
    .local v0, "resolvedType":Ljava/lang/String;
    move-object/from16 v17, v0

    .end local v0    # "resolvedType":Ljava/lang/String;
    .local v17, "resolvedType":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    .line 1451
    .end local v4    # "inTask":Lcom/android/server/wm/Task;
    .local v0, "inTask":Lcom/android/server/wm/Task;
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget v4, v4, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 1452
    .end local v23    # "callingPid":I
    .local v4, "callingPid":I
    move-object/from16 v18, v0

    .end local v0    # "inTask":Lcom/android/server/wm/Task;
    .local v18, "inTask":Lcom/android/server/wm/Task;
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 1453
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 1457
    .end local v25    # "checkedOptions":Landroid/app/ActivityOptions;
    .local v0, "checkedOptions":Landroid/app/ActivityOptions;
    const/16 v19, 0x0

    move-object/from16 v32, v3

    move-object/from16 v30, v19

    move-object v3, v0

    move v0, v4

    move-object/from16 v4, v16

    move-object/from16 v16, v18

    .end local v30    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v19, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    goto :goto_1d

    .line 1441
    .end local v0    # "checkedOptions":Landroid/app/ActivityOptions;
    .end local v3    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v19    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v4, "inTask":Lcom/android/server/wm/Task;
    .local v17, "intent":Landroid/content/Intent;
    .local v18, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v23    # "callingPid":I
    .restart local v25    # "checkedOptions":Landroid/app/ActivityOptions;
    .restart local v30    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v32    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v45    # "resolvedType":Ljava/lang/String;
    :cond_2a
    move-object/from16 v16, v4

    move-object/from16 v4, v17

    move-object/from16 v6, v18

    move/from16 v0, v23

    move-object/from16 v3, v25

    move-object/from16 v17, v45

    .line 1460
    .end local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v23    # "callingPid":I
    .end local v25    # "checkedOptions":Landroid/app/ActivityOptions;
    .end local v45    # "resolvedType":Ljava/lang/String;
    .local v0, "callingPid":I
    .local v3, "checkedOptions":Landroid/app/ActivityOptions;
    .local v4, "intent":Landroid/content/Intent;
    .restart local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v16, "inTask":Lcom/android/server/wm/Task;
    .local v17, "resolvedType":Ljava/lang/String;
    :goto_1d
    if-eqz v33, :cond_2c

    .line 1461
    if-eqz v59, :cond_2b

    .line 1462
    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v60, -0x1

    const/16 v63, 0x0

    const/16 v64, 0x0

    invoke-virtual/range {v59 .. v66}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;)V

    .line 1467
    :cond_2b
    invoke-static {v3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1468
    const/16 v9, 0x66

    return v9

    .line 1474
    :cond_2c
    move-object/from16 v25, v10

    move-object/from16 v27, v11

    move-object/from16 v11, v59

    move-object/from16 v10, v61

    .end local v59    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v61    # "resultWho":Ljava/lang/String;
    .local v10, "resultWho":Ljava/lang/String;
    .local v11, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .local v25, "balVerdict":Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .local v27, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v54, v2

    .end local v2    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v54    # "options":Lcom/android/server/wm/SafeActivityOptions;
    invoke-static {}, Lcom/android/server/wm/NtServicePopUpViewHelper;->getInstance()Lcom/android/server/wm/NtServicePopUpViewHelper;

    move-result-object v2

    .line 1475
    invoke-virtual {v2, v3, v0, v7, v4}, Lcom/android/server/wm/NtServicePopUpViewHelper;->getSavedActivityOptions(Landroid/app/ActivityOptions;IILandroid/content/Intent;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v2

    .line 1476
    .local v2, "savedOptions":Lcom/android/server/wm/SafeActivityOptions;
    if-eqz v2, :cond_2d

    .line 1477
    move/from16 v18, v0

    .end local v0    # "callingPid":I
    .local v18, "callingPid":I
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2, v4, v6, v13, v0}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v3

    move-object v0, v3

    goto :goto_1e

    .line 1476
    .end local v18    # "callingPid":I
    .restart local v0    # "callingPid":I
    :cond_2d
    move/from16 v18, v0

    .end local v0    # "callingPid":I
    .restart local v18    # "callingPid":I
    move-object v0, v3

    .line 1484
    .end local v3    # "checkedOptions":Landroid/app/ActivityOptions;
    .local v0, "checkedOptions":Landroid/app/ActivityOptions;
    :goto_1e
    if-eqz v6, :cond_33

    .line 1485
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    move-object/from16 v59, v2

    .end local v2    # "savedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .local v59, "savedOptions":Lcom/android/server/wm/SafeActivityOptions;
    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2, v8}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1487
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object/from16 v39, v2

    move/from16 v3, v28

    new-array v2, v3, [Landroid/content/Intent;

    aput-object v4, v2, v38

    filled-new-array/range {v17 .. v17}, [Ljava/lang/String;

    move-result-object v49

    const/high16 v50, 0x50000000

    const/16 v51, 0x0

    const/16 v40, 0x2

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    move-object/from16 v48, v2

    move/from16 v43, v7

    move/from16 v44, v8

    .end local v7    # "callingUid":I
    .end local v8    # "userId":I
    .local v43, "callingUid":I
    .local v44, "userId":I
    invoke-virtual/range {v39 .. v51}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v2

    .line 1494
    .end local v44    # "userId":I
    .local v2, "target":Landroid/content/IIntentSender;
    .restart local v8    # "userId":I
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1496
    .local v3, "newIntent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v7

    .line 1497
    .local v7, "flags":I
    const/high16 v19, 0x800000

    or-int v7, v7, v19

    .line 1508
    const/high16 v19, 0x10080000

    and-int v19, v7, v19

    if-eqz v19, :cond_2e

    .line 1509
    const/high16 v19, 0x8000000

    or-int v7, v7, v19

    .line 1511
    :cond_2e
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1513
    move-object/from16 v19, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .local v19, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.PACKAGE_NAME"

    move/from16 v39, v7

    .end local v7    # "flags":I
    .local v39, "flags":I
    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1514
    new-instance v4, Landroid/content/IntentSender;

    invoke-direct {v4, v2}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string v7, "android.intent.extra.INTENT"

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1515
    if-eqz v11, :cond_2f

    .line 1516
    const-string v4, "android.intent.extra.RESULT_NEEDED"

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1518
    :cond_2f
    move-object/from16 v19, v3

    .line 1522
    const/16 v30, 0x0

    .line 1524
    const/16 v20, 0x0

    .line 1525
    .end local v17    # "resolvedType":Ljava/lang/String;
    .restart local v20    # "resolvedType":Ljava/lang/String;
    move v7, v12

    .line 1526
    .end local v43    # "callingUid":I
    .local v7, "callingUid":I
    move/from16 v4, v31

    .line 1528
    .end local v18    # "callingPid":I
    .local v4, "callingPid":I
    move-object/from16 v40, v2

    .end local v2    # "target":Landroid/content/IIntentSender;
    .local v40, "target":Landroid/content/IIntentSender;
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    move-object/from16 v18, v2

    iget v2, v15, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 1529
    invoke-static {v7, v12, v2}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v23

    .line 1528
    const/16 v22, 0x0

    move/from16 v21, v8

    move/from16 v24, v31

    .end local v8    # "userId":I
    .end local v31    # "realCallingPid":I
    .local v21, "userId":I
    .local v24, "realCallingPid":I
    invoke-virtual/range {v18 .. v24}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1532
    move-object/from16 v21, v3

    move v3, v8

    move-object/from16 v8, v19

    .end local v19    # "intent":Landroid/content/Intent;
    .end local v24    # "realCallingPid":I
    .end local v32    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v2, "rInfo":Landroid/content/pm/ResolveInfo;
    .local v3, "userId":I
    .local v8, "intent":Landroid/content/Intent;
    .local v21, "newIntent":Landroid/content/Intent;
    .restart local v31    # "realCallingPid":I
    move-object/from16 v22, v6

    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v22, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    move/from16 v24, v12

    const/4 v12, 0x0

    .end local v12    # "realCallingUid":I
    .local v24, "realCallingUid":I
    invoke-virtual {v6, v8, v2, v5, v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 1535
    .end local v22    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    sget-boolean v12, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    if-eqz v12, :cond_31

    .line 1536
    iget-object v12, v1, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1537
    invoke-virtual {v12}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v12

    .line 1538
    .local v12, "focusedRootTask":Lcom/android/server/wm/Task;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v2

    move-object/from16 v2, v56

    .end local v2    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v17, "rInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v55

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v44, v3

    move/from16 v2, v38

    const/4 v3, 0x1

    move/from16 v38, v5

    .end local v3    # "userId":I
    .end local v5    # "startFlags":I
    .local v38, "startFlags":I
    .restart local v44    # "userId":I
    invoke-virtual {v8, v3, v3, v3, v2}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "} from uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " on display "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    if-nez v12, :cond_30

    move v3, v2

    goto :goto_1f

    .line 1548
    :cond_30
    invoke-virtual {v12}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v3

    :goto_1f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1538
    invoke-static {v14, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 1535
    .end local v12    # "focusedRootTask":Lcom/android/server/wm/Task;
    .end local v17    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v38    # "startFlags":I
    .end local v44    # "userId":I
    .restart local v2    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "userId":I
    .restart local v5    # "startFlags":I
    :cond_31
    move-object/from16 v17, v2

    move/from16 v44, v3

    move/from16 v2, v38

    move/from16 v38, v5

    .line 1557
    .end local v2    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v3    # "userId":I
    .end local v5    # "startFlags":I
    .end local v21    # "newIntent":Landroid/content/Intent;
    .end local v39    # "flags":I
    .end local v40    # "target":Landroid/content/IIntentSender;
    .restart local v17    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v38    # "startFlags":I
    .restart local v44    # "userId":I
    :goto_20
    move/from16 v18, v4

    move-object/from16 v22, v6

    move/from16 v43, v7

    move-object/from16 v19, v8

    move-object/from16 v9, v17

    move-object/from16 v7, v20

    goto :goto_22

    .line 1485
    .end local v20    # "resolvedType":Ljava/lang/String;
    .end local v24    # "realCallingUid":I
    .end local v38    # "startFlags":I
    .end local v44    # "userId":I
    .local v4, "intent":Landroid/content/Intent;
    .restart local v5    # "startFlags":I
    .local v8, "userId":I
    .local v12, "realCallingUid":I
    .local v17, "resolvedType":Ljava/lang/String;
    .restart local v18    # "callingPid":I
    .restart local v32    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_32
    move-object/from16 v19, v4

    move-object/from16 v22, v6

    move/from16 v43, v7

    move/from16 v44, v8

    move/from16 v24, v12

    move/from16 v2, v38

    move/from16 v38, v5

    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "startFlags":I
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v7    # "callingUid":I
    .end local v8    # "userId":I
    .end local v12    # "realCallingUid":I
    .restart local v19    # "intent":Landroid/content/Intent;
    .restart local v22    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v24    # "realCallingUid":I
    .restart local v38    # "startFlags":I
    .restart local v43    # "callingUid":I
    .restart local v44    # "userId":I
    goto :goto_21

    .line 1484
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v22    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v24    # "realCallingUid":I
    .end local v38    # "startFlags":I
    .end local v43    # "callingUid":I
    .end local v44    # "userId":I
    .end local v59    # "savedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .local v2, "savedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "startFlags":I
    .restart local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "callingUid":I
    .restart local v8    # "userId":I
    .restart local v12    # "realCallingUid":I
    :cond_33
    move-object/from16 v59, v2

    move-object/from16 v19, v4

    move-object/from16 v22, v6

    move/from16 v43, v7

    move/from16 v44, v8

    move/from16 v24, v12

    move/from16 v2, v38

    move/from16 v38, v5

    .line 1557
    .end local v2    # "savedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "startFlags":I
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v7    # "callingUid":I
    .end local v8    # "userId":I
    .end local v12    # "realCallingUid":I
    .restart local v19    # "intent":Landroid/content/Intent;
    .restart local v22    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v24    # "realCallingUid":I
    .restart local v38    # "startFlags":I
    .restart local v43    # "callingUid":I
    .restart local v44    # "userId":I
    .restart local v59    # "savedOptions":Lcom/android/server/wm/SafeActivityOptions;
    :goto_21
    move-object/from16 v7, v17

    move-object/from16 v9, v32

    .end local v17    # "resolvedType":Ljava/lang/String;
    .end local v32    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v7, "resolvedType":Ljava/lang/String;
    .local v9, "rInfo":Landroid/content/pm/ResolveInfo;
    :goto_22
    if-eqz v9, :cond_34

    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    if-eqz v1, :cond_34

    .line 1558
    move v12, v2

    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v3, v15, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    move/from16 v1, v38

    move/from16 v38, v12

    move v12, v1

    move-object/from16 v1, p0

    move-object/from16 v6, v37

    move-object/from16 v4, v41

    move-object/from16 v5, v42

    move/from16 v8, v44

    .end local v37    # "verificationBundle":Landroid/os/Bundle;
    .end local v38    # "startFlags":I
    .end local v41    # "callingPackage":Ljava/lang/String;
    .end local v42    # "callingFeatureId":Ljava/lang/String;
    .end local v44    # "userId":I
    .local v4, "callingPackage":Ljava/lang/String;
    .local v5, "callingFeatureId":Ljava/lang/String;
    .local v6, "verificationBundle":Landroid/os/Bundle;
    .restart local v8    # "userId":I
    .local v12, "startFlags":I
    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/ActivityStarter;->createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 1561
    move-object v3, v4

    move-object v4, v5

    move-object/from16 v20, v6

    .end local v5    # "callingFeatureId":Ljava/lang/String;
    .end local v6    # "verificationBundle":Landroid/os/Bundle;
    .end local v19    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    .local v3, "callingPackage":Ljava/lang/String;
    .local v4, "callingFeatureId":Ljava/lang/String;
    .local v20, "verificationBundle":Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 1562
    move/from16 v43, v24

    .line 1563
    move/from16 v18, v31

    .line 1567
    const/16 v30, 0x0

    .line 1569
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v9, v12, v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v22

    move-object v5, v7

    move-object v7, v2

    move-object v2, v5

    move/from16 v5, v18

    move-object/from16 v14, v22

    move/from16 v6, v43

    goto :goto_23

    .line 1557
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "callingPackage":Ljava/lang/String;
    .end local v4    # "callingFeatureId":Ljava/lang/String;
    .end local v8    # "userId":I
    .end local v12    # "startFlags":I
    .end local v20    # "verificationBundle":Landroid/os/Bundle;
    .restart local v19    # "intent":Landroid/content/Intent;
    .restart local v37    # "verificationBundle":Landroid/os/Bundle;
    .restart local v38    # "startFlags":I
    .restart local v41    # "callingPackage":Ljava/lang/String;
    .restart local v42    # "callingFeatureId":Ljava/lang/String;
    .restart local v44    # "userId":I
    :cond_34
    move-object/from16 v1, p0

    move-object/from16 v20, v37

    move/from16 v12, v38

    move-object/from16 v3, v41

    move-object/from16 v4, v42

    move/from16 v8, v44

    const/4 v6, 0x0

    move/from16 v38, v2

    .line 1573
    .end local v37    # "verificationBundle":Landroid/os/Bundle;
    .end local v38    # "startFlags":I
    .end local v41    # "callingPackage":Ljava/lang/String;
    .end local v42    # "callingFeatureId":Ljava/lang/String;
    .end local v44    # "userId":I
    .restart local v3    # "callingPackage":Ljava/lang/String;
    .restart local v4    # "callingFeatureId":Ljava/lang/String;
    .restart local v8    # "userId":I
    .restart local v12    # "startFlags":I
    .restart local v20    # "verificationBundle":Landroid/os/Bundle;
    move-object v2, v7

    move-object/from16 v7, v19

    move/from16 v5, v18

    move-object/from16 v14, v22

    move/from16 v6, v43

    .end local v18    # "callingPid":I
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v22    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v43    # "callingUid":I
    .local v2, "resolvedType":Ljava/lang/String;
    .local v5, "callingPid":I
    .local v6, "callingUid":I
    .local v7, "intent":Landroid/content/Intent;
    .local v14, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_23
    if-nez v13, :cond_35

    if-lez v31, :cond_35

    .line 1574
    move/from16 v44, v8

    .end local v8    # "userId":I
    .restart local v44    # "userId":I
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    move-object/from16 v17, v9

    move/from16 v9, v31

    .end local v31    # "realCallingPid":I
    .local v9, "realCallingPid":I
    .local v17, "rInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v8

    .line 1575
    .local v8, "wpc":Lcom/android/server/wm/WindowProcessController;
    if-eqz v8, :cond_36

    .line 1576
    move-object/from16 v22, v8

    .end local v13    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v22, "callerApp":Lcom/android/server/wm/WindowProcessController;
    goto :goto_24

    .line 1573
    .end local v17    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v22    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v44    # "userId":I
    .local v8, "userId":I
    .local v9, "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v13    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v31    # "realCallingPid":I
    :cond_35
    move/from16 v44, v8

    move-object/from16 v17, v9

    move/from16 v9, v31

    .line 1579
    .end local v8    # "userId":I
    .end local v31    # "realCallingPid":I
    .local v9, "realCallingPid":I
    .restart local v17    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v44    # "userId":I
    :cond_36
    move-object v8, v13

    .end local v13    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v8, "callerApp":Lcom/android/server/wm/WindowProcessController;
    :goto_24
    new-instance v13, Lcom/android/server/wm/ActivityRecord$Builder;

    move/from16 v31, v9

    .end local v9    # "realCallingPid":I
    .restart local v31    # "realCallingPid":I
    iget-object v9, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v13, v9}, Lcom/android/server/wm/ActivityRecord$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 1580
    invoke-virtual {v13, v8}, Lcom/android/server/wm/ActivityRecord$Builder;->setCaller(Lcom/android/server/wm/WindowProcessController;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v9

    .line 1581
    invoke-virtual {v9, v5}, Lcom/android/server/wm/ActivityRecord$Builder;->setLaunchedFromPid(I)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v9

    .line 1582
    invoke-virtual {v9, v6}, Lcom/android/server/wm/ActivityRecord$Builder;->setLaunchedFromUid(I)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v9

    .line 1583
    invoke-virtual {v9, v3}, Lcom/android/server/wm/ActivityRecord$Builder;->setLaunchedFromPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v9

    .line 1584
    invoke-virtual {v9, v4}, Lcom/android/server/wm/ActivityRecord$Builder;->setLaunchedFromFeature(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v9

    .line 1585
    invoke-virtual {v9, v7}, Lcom/android/server/wm/ActivityRecord$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v9

    .line 1586
    invoke-virtual {v9, v2}, Lcom/android/server/wm/ActivityRecord$Builder;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v9

    .line 1587
    invoke-virtual {v9, v14}, Lcom/android/server/wm/ActivityRecord$Builder;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v9

    iget-object v13, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1588
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/android/server/wm/ActivityRecord$Builder;->setConfiguration(Landroid/content/res/Configuration;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v9

    .line 1589
    invoke-virtual {v9, v11}, Lcom/android/server/wm/ActivityRecord$Builder;->setResultTo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v9

    .line 1590
    invoke-virtual {v9, v10}, Lcom/android/server/wm/ActivityRecord$Builder;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v9

    .line 1591
    move/from16 v13, v62

    .end local v62    # "requestCode":I
    .local v13, "requestCode":I
    invoke-virtual {v9, v13}, Lcom/android/server/wm/ActivityRecord$Builder;->setRequestCode(I)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v9

    move-object/from16 v18, v2

    .end local v2    # "resolvedType":Ljava/lang/String;
    .local v18, "resolvedType":Ljava/lang/String;
    iget-boolean v2, v15, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 1592
    invoke-virtual {v9, v2}, Lcom/android/server/wm/ActivityRecord$Builder;->setComponentSpecified(Z)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v2

    if-eqz v34, :cond_37

    const/4 v9, 0x1

    goto :goto_25

    :cond_37
    move/from16 v9, v38

    .line 1593
    :goto_25
    invoke-virtual {v2, v9}, Lcom/android/server/wm/ActivityRecord$Builder;->setRootVoiceInteraction(Z)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v2

    .line 1594
    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityRecord$Builder;->setActivityOptions(Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v2

    .line 1595
    move-object/from16 v9, v27

    .end local v27    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v9, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v2, v9}, Lcom/android/server/wm/ActivityRecord$Builder;->setSourceRecord(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v2

    .line 1596
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord$Builder;->build()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1600
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v19, v0

    .end local v0    # "checkedOptions":Landroid/app/ActivityOptions;
    .local v19, "checkedOptions":Landroid/app/ActivityOptions;
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/server/wm/ActivityRecord;->mReason:Ljava/lang/String;

    .line 1602
    iput-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1604
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-nez v0, :cond_38

    if-eqz v9, :cond_38

    .line 1607
    iget-object v0, v9, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    iput-object v0, v2, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 1616
    :cond_38
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    .line 1617
    .local v0, "homeProcess":Lcom/android/server/wm/WindowProcessController;
    if-eqz v0, :cond_39

    move-object/from16 v23, v3

    .end local v3    # "callingPackage":Ljava/lang/String;
    .local v23, "callingPackage":Ljava/lang/String;
    iget-object v3, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v42, v4

    .end local v4    # "callingFeatureId":Ljava/lang/String;
    .restart local v42    # "callingFeatureId":Ljava/lang/String;
    iget v4, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    if-ne v3, v4, :cond_3a

    const/4 v3, 0x1

    goto :goto_26

    .end local v23    # "callingPackage":Ljava/lang/String;
    .end local v42    # "callingFeatureId":Ljava/lang/String;
    .restart local v3    # "callingPackage":Ljava/lang/String;
    .restart local v4    # "callingFeatureId":Ljava/lang/String;
    :cond_39
    move-object/from16 v23, v3

    move-object/from16 v42, v4

    .end local v3    # "callingPackage":Ljava/lang/String;
    .end local v4    # "callingFeatureId":Ljava/lang/String;
    .restart local v23    # "callingPackage":Ljava/lang/String;
    .restart local v42    # "callingFeatureId":Ljava/lang/String;
    :cond_3a
    move/from16 v3, v38

    :goto_26
    move/from16 v21, v3

    .line 1619
    .local v21, "isHomeProcess":Z
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v3

    if-eqz v3, :cond_3b

    if-nez v21, :cond_3b

    .line 1620
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->resumeAppSwitches()V

    .line 1624
    :cond_3b
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskPositioningController;->cancelNtWindowPositionerInputEvent()V

    .line 1629
    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 1630
    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/TransitionController;->createAndStartCollecting(I)Lcom/android/server/wm/Transition;

    move-result-object v3

    goto :goto_27

    :cond_3c
    const/4 v4, 0x1

    const/4 v3, 0x0

    :goto_27
    move-object/from16 v22, v3

    .line 1634
    .local v22, "newTransition":Lcom/android/server/wm/Transition;
    if-eqz v22, :cond_3d

    move v3, v4

    goto :goto_28

    :cond_3d
    move/from16 v3, v38

    .line 1635
    .local v3, "isIndependent":Z
    :goto_28
    if-eqz v3, :cond_3e

    move-object/from16 v4, v22

    goto :goto_29

    .line 1636
    :cond_3e
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v4

    :goto_29
    nop

    .line 1638
    .local v4, "transition":Lcom/android/server/wm/Transition;
    move/from16 v27, v5

    .end local v5    # "callingPid":I
    .local v27, "callingPid":I
    iget-object v5, v15, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v28, v19

    move-object/from16 v19, v7

    move-object/from16 v7, v28

    move/from16 v43, v6

    move-object/from16 v61, v10

    move-object/from16 v28, v11

    move v6, v12

    move/from16 v62, v13

    move-object/from16 v41, v23

    move/from16 v12, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v30

    move/from16 v71, v44

    move-object v13, v4

    move-object/from16 v23, v8

    move-object/from16 v8, v16

    move-object/from16 v4, v34

    move-object/from16 v16, v14

    move v14, v3

    move-object v3, v9

    move-object/from16 v9, v36

    .end local v24    # "realCallingUid":I
    .end local v25    # "balVerdict":Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .end local v30    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v34    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .end local v36    # "inTaskFragment":Lcom/android/server/wm/TaskFragment;
    .end local v44    # "userId":I
    .local v3, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v4, "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .local v6, "startFlags":I
    .local v7, "checkedOptions":Landroid/app/ActivityOptions;
    .local v8, "inTask":Lcom/android/server/wm/Task;
    .local v9, "inTaskFragment":Lcom/android/server/wm/TaskFragment;
    .local v10, "balVerdict":Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .local v11, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v12, "realCallingUid":I
    .local v13, "transition":Lcom/android/server/wm/Transition;
    .local v14, "isIndependent":Z
    .local v16, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v19, "intent":Landroid/content/Intent;
    .local v23, "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v28    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v41    # "callingPackage":Ljava/lang/String;
    .restart local v43    # "callingUid":I
    .restart local v61    # "resultWho":Ljava/lang/String;
    .restart local v62    # "requestCode":I
    .local v71, "userId":I
    invoke-direct/range {v1 .. v14}, Lcom/android/server/wm/ActivityStarter;->startActivityUnchecked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/uri/NeededUriGrants;ILcom/android/server/wm/Transition;Z)I

    move-result v5

    .end local v4    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .end local v9    # "inTaskFragment":Lcom/android/server/wm/TaskFragment;
    .end local v10    # "balVerdict":Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .restart local v25    # "balVerdict":Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .restart local v34    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .restart local v36    # "inTaskFragment":Lcom/android/server/wm/TaskFragment;
    iput v5, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    .line 1643
    iget-object v4, v15, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_3f

    .line 1644
    iget-object v4, v15, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    aput-object v5, v4, v38

    .line 1647
    :cond_3f
    iget v4, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    return v4

    .line 1326
    .end local v0    # "homeProcess":Lcom/android/server/wm/WindowProcessController;
    .end local v3    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v7    # "checkedOptions":Landroid/app/ActivityOptions;
    .end local v8    # "inTask":Lcom/android/server/wm/Task;
    .end local v12    # "realCallingUid":I
    .end local v14    # "isIndependent":Z
    .end local v16    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v25    # "balVerdict":Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .end local v26    # "suggestedLaunchDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v41    # "callingPackage":Ljava/lang/String;
    .end local v42    # "callingFeatureId":Ljava/lang/String;
    .end local v43    # "callingUid":I
    .end local v59    # "savedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v61    # "resultWho":Ljava/lang/String;
    .end local v62    # "requestCode":I
    .end local v68    # "callingIntentInString":Ljava/lang/String;
    .end local v69    # "intentInString":Ljava/lang/String;
    .end local v70    # "intentCreatorPackage":Ljava/lang/String;
    .end local v71    # "userId":I
    .local v2, "userId":I
    .local v6, "intentInString":Ljava/lang/String;
    .local v10, "realCallingUid":I
    .local v11, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v13, "resolvedType":Ljava/lang/String;
    .local v17, "intent":Landroid/content/Intent;
    .local v18, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v19, "resultWho":Ljava/lang/String;
    .local v20, "requestCode":I
    .local v21, "callingPid":I
    .local v22, "callingUid":I
    .local v23, "callingPackage":Ljava/lang/String;
    .local v24, "callingFeatureId":Ljava/lang/String;
    .local v27, "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v30    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v32    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v33, "startFlags":I
    .local v35, "intentCreatorPackage":Ljava/lang/String;
    .restart local v37    # "verificationBundle":Landroid/os/Bundle;
    .local v39, "inTask":Lcom/android/server/wm/Task;
    .local v40, "intentCreatorUid":I
    .local v45, "callingIntentInString":Ljava/lang/String;
    :catch_8
    move-exception v0

    move/from16 v71, v2

    move-object/from16 v69, v6

    move v12, v10

    move-object v3, v11

    move-object/from16 v61, v19

    move/from16 v62, v20

    move/from16 v7, v22

    move-object/from16 v41, v23

    move-object/from16 v42, v24

    move/from16 v6, v33

    move-object/from16 v70, v35

    move-object/from16 v20, v37

    move-object/from16 v4, v39

    move/from16 v35, v40

    move-object/from16 v68, v45

    move-object/from16 v45, v13

    move/from16 v23, v21

    move-object/from16 v13, v27

    .end local v2    # "userId":I
    .end local v10    # "realCallingUid":I
    .end local v11    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v19    # "resultWho":Ljava/lang/String;
    .end local v21    # "callingPid":I
    .end local v22    # "callingUid":I
    .end local v24    # "callingFeatureId":Ljava/lang/String;
    .end local v27    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v33    # "startFlags":I
    .end local v37    # "verificationBundle":Landroid/os/Bundle;
    .end local v39    # "inTask":Lcom/android/server/wm/Task;
    .end local v40    # "intentCreatorUid":I
    .restart local v3    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v4, "inTask":Lcom/android/server/wm/Task;
    .local v6, "startFlags":I
    .local v7, "callingUid":I
    .restart local v12    # "realCallingUid":I
    .local v13, "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v20, "verificationBundle":Landroid/os/Bundle;
    .local v23, "callingPid":I
    .local v35, "intentCreatorUid":I
    .restart local v41    # "callingPackage":Ljava/lang/String;
    .restart local v42    # "callingFeatureId":Ljava/lang/String;
    .local v45, "resolvedType":Ljava/lang/String;
    .restart local v61    # "resultWho":Ljava/lang/String;
    .restart local v62    # "requestCode":I
    .restart local v68    # "callingIntentInString":Ljava/lang/String;
    .restart local v69    # "intentInString":Ljava/lang/String;
    .restart local v70    # "intentCreatorPackage":Ljava/lang/String;
    .restart local v71    # "userId":I
    goto :goto_2a

    .end local v3    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v20    # "verificationBundle":Landroid/os/Bundle;
    .end local v28    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v41    # "callingPackage":Ljava/lang/String;
    .end local v42    # "callingFeatureId":Ljava/lang/String;
    .end local v68    # "callingIntentInString":Ljava/lang/String;
    .end local v69    # "intentInString":Ljava/lang/String;
    .end local v70    # "intentCreatorPackage":Ljava/lang/String;
    .end local v71    # "userId":I
    .restart local v2    # "userId":I
    .local v4, "intent":Landroid/content/Intent;
    .local v6, "intentInString":Ljava/lang/String;
    .restart local v10    # "realCallingUid":I
    .restart local v11    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v12, "callingPackage":Ljava/lang/String;
    .local v13, "resolvedType":Ljava/lang/String;
    .local v19, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v22, "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v24    # "callingFeatureId":Ljava/lang/String;
    .restart local v33    # "startFlags":I
    .local v35, "intentCreatorPackage":Ljava/lang/String;
    .restart local v37    # "verificationBundle":Landroid/os/Bundle;
    .restart local v39    # "inTask":Lcom/android/server/wm/Task;
    .restart local v40    # "intentCreatorUid":I
    .local v45, "callingIntentInString":Ljava/lang/String;
    .local v59, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    :catch_9
    move-exception v0

    move/from16 v71, v2

    move-object/from16 v17, v4

    move-object/from16 v69, v6

    move-object v3, v11

    move-object/from16 v41, v12

    move-object/from16 v18, v19

    move-object/from16 v42, v24

    move/from16 v6, v33

    move-object/from16 v70, v35

    move-object/from16 v20, v37

    move-object/from16 v4, v39

    move/from16 v35, v40

    move-object/from16 v68, v45

    move-object/from16 v28, v59

    move v12, v10

    move-object/from16 v45, v13

    move-object/from16 v13, v22

    .line 1329
    .end local v2    # "userId":I
    .end local v10    # "realCallingUid":I
    .end local v11    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v22    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v24    # "callingFeatureId":Ljava/lang/String;
    .end local v33    # "startFlags":I
    .end local v37    # "verificationBundle":Landroid/os/Bundle;
    .end local v39    # "inTask":Lcom/android/server/wm/Task;
    .end local v40    # "intentCreatorUid":I
    .end local v59    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .local v0, "e":Ljava/lang/SecurityException;
    .restart local v3    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v4, "inTask":Lcom/android/server/wm/Task;
    .local v6, "startFlags":I
    .local v12, "realCallingUid":I
    .local v13, "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v17    # "intent":Landroid/content/Intent;
    .restart local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v20    # "verificationBundle":Landroid/os/Bundle;
    .restart local v28    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .local v35, "intentCreatorUid":I
    .restart local v41    # "callingPackage":Ljava/lang/String;
    .restart local v42    # "callingFeatureId":Ljava/lang/String;
    .local v45, "resolvedType":Ljava/lang/String;
    .restart local v68    # "callingIntentInString":Ljava/lang/String;
    .restart local v69    # "intentInString":Ljava/lang/String;
    .restart local v70    # "intentCreatorPackage":Ljava/lang/String;
    .restart local v71    # "userId":I
    :goto_2a
    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 1330
    .local v2, "originalIntent":Landroid/content/Intent;
    if-eqz v2, :cond_45

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_41

    .line 1331
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_40

    goto :goto_2b

    :cond_40
    move-object/from16 v59, v28

    move/from16 v9, v71

    goto :goto_2e

    .line 1332
    :cond_41
    :goto_2b
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_42

    .line 1333
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_2c

    .line 1334
    :cond_42
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    :goto_2c
    nop

    .line 1335
    .local v5, "targetPackageName":Ljava/lang/String;
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v8

    .line 1336
    move/from16 v9, v71

    .end local v71    # "userId":I
    .local v9, "userId":I
    invoke-virtual {v8, v5, v7, v9}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_44

    .line 1337
    if-eqz v28, :cond_43

    .line 1338
    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v60, -0x1

    const/16 v63, 0x0

    const/16 v64, 0x0

    move-object/from16 v59, v28

    .end local v28    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v59    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual/range {v59 .. v66}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;)V

    goto :goto_2d

    .line 1337
    .end local v59    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v28    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_43
    move-object/from16 v59, v28

    .line 1342
    .end local v28    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v59    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    :goto_2d
    invoke-static/range {v54 .. v54}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1343
    const/16 v8, -0x5c

    return v8

    .line 1336
    .end local v59    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v28    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_44
    move-object/from16 v59, v28

    .end local v28    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v59    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    goto :goto_2e

    .line 1330
    .end local v5    # "targetPackageName":Ljava/lang/String;
    .end local v9    # "userId":I
    .end local v59    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v28    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v71    # "userId":I
    :cond_45
    move-object/from16 v59, v28

    move/from16 v9, v71

    .line 1346
    .end local v28    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v71    # "userId":I
    .restart local v9    # "userId":I
    .restart local v59    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    :goto_2e
    throw v0

    .line 1085
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v2    # "originalIntent":Landroid/content/Intent;
    .end local v3    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "inTask":Lcom/android/server/wm/Task;
    .end local v6    # "startFlags":I
    .end local v7    # "callingUid":I
    .end local v9    # "userId":I
    .end local v12    # "realCallingUid":I
    .end local v13    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v20    # "verificationBundle":Landroid/os/Bundle;
    .end local v23    # "callingPid":I
    .end local v29    # "resultRootTask":Lcom/android/server/wm/Task;
    .end local v30    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v31    # "realCallingPid":I
    .end local v32    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v34    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .end local v35    # "intentCreatorUid":I
    .end local v36    # "inTaskFragment":Lcom/android/server/wm/TaskFragment;
    .end local v41    # "callingPackage":Ljava/lang/String;
    .end local v42    # "callingFeatureId":Ljava/lang/String;
    .end local v45    # "resolvedType":Ljava/lang/String;
    .end local v52    # "caller":Landroid/app/IApplicationThread;
    .end local v53    # "launchMode":I
    .end local v54    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local v57    # "launchFlags":I
    .end local v58    # "resultTo":Landroid/os/IBinder;
    .end local v59    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v61    # "resultWho":Ljava/lang/String;
    .end local v62    # "requestCode":I
    .end local v67    # "err":I
    .end local v68    # "callingIntentInString":Ljava/lang/String;
    .end local v69    # "intentInString":Ljava/lang/String;
    .end local v70    # "intentCreatorPackage":Ljava/lang/String;
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Need to specify a reason."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findCandidateTaskFragment(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskFragment;
    .locals 7
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 3405
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3406
    .local v0, "sourceTaskFragment":Lcom/android/server/wm/TaskFragment;
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_9

    .line 3407
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 3408
    .local v3, "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 3409
    .local v4, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_2

    .line 3410
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_1

    .line 3411
    goto :goto_2

    .line 3414
    :cond_1
    return-object v1

    .line 3416
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    .line 3417
    .local v5, "taskFragment":Lcom/android/server/wm/TaskFragment;
    nop

    nop

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->isRemovalRequested()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3419
    goto :goto_2

    .line 3421
    :cond_3
    new-instance v6, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-nez v6, :cond_4

    .line 3423
    goto :goto_2

    .line 3425
    :cond_4
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->isIsolatedNav()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3427
    return-object v1

    .line 3429
    :cond_5
    if-eqz v0, :cond_6

    if-ne v0, v5, :cond_6

    .line 3431
    return-object v5

    .line 3433
    :cond_6
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->isPinned()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3435
    goto :goto_2

    .line 3437
    :cond_7
    return-object v5

    .line 3406
    .end local v3    # "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v4    # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local v5    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    :cond_8
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_9
    nop

    .line 3439
    .end local v2    # "i":I
    return-object v1
.end method

.method static getExternalResult(I)I
    .locals 1
    .param p0, "result"    # I

    .line 1676
    const/16 v0, 0x66

    if-eq p0, v0, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static getIntentRedirectErrorMessageFromCode(I)Ljava/lang/String;
    .locals 2
    .param p0, "errorCode"    # I

    .line 3893
    packed-switch p0, :pswitch_data_0

    .line 3912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3910
    :pswitch_0
    const-string v0, "INTENT_REDIRECT_ABORT_PERMISSION_POLICY_START_ACTIVITY (Creator PermissionPolicyService.checkStartActivity, abort)"

    goto :goto_0

    .line 3907
    :pswitch_1
    const-string v0, "INTENT_REDIRECT_ABORT_INTENT_FIREWALL_START_ACTIVITY (Creator IntentFirewall.checkStartActivity, abort)"

    goto :goto_0

    .line 3904
    :pswitch_2
    const-string v0, "INTENT_REDIRECT_ABORT_START_ANY_ACTIVITY_PERMISSION (Creator checkStartAnyActivityPermission, abort)"

    goto :goto_0

    .line 3901
    :pswitch_3
    const-string v0, "INTENT_REDIRECT_ABORT_START_ANY_ACTIVITY_PERMISSION (Creator checkStartAnyActivityPermission, throw exception)"

    goto :goto_0

    .line 3898
    :pswitch_4
    const-string v0, "INTENT_REDIRECT_EXCEPTION_GRANT_URI_PERMISSION (Creator URI permission grant throw exception.)"

    goto :goto_0

    .line 3895
    :pswitch_5
    const-string v0, "INTENT_REDIRECT_EXCEPTION_MISSING_OR_INVALID_TOKEN (Unparceled intent does not have a creator token set, throw exception.)"

    .line 3893
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getIntentRedirectPreventedLogMessage(ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "errorCode"    # I
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "intentCreatorUid"    # I
    .param p3, "intentCreatorPackage"    # Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;

    .line 3885
    invoke-static {p0}, Lcom/android/server/wm/ActivityStarter;->getIntentRedirectErrorMessageFromCode(I)Ljava/lang/String;

    move-result-object v0

    .line 3886
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IntentRedirect Hardening] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " intentCreatorUid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; intentCreatorPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; callingUid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; callingPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;
    .locals 9
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "launchFlags"    # I
    .param p3, "task"    # Lcom/android/server/wm/Task;
    .param p4, "aOptions"    # Landroid/app/ActivityOptions;

    .line 3528
    if-eqz p4, :cond_0

    .line 3529
    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    .line 3530
    .local v6, "onTop":Z
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    :goto_1
    move-object v5, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 3531
    .local v5, "sourceTask":Lcom/android/server/wm/Task;
    :goto_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    move-object v2, p1

    move v8, p2

    move-object v4, p3

    move-object v3, p4

    .end local p1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local p2    # "launchFlags":I
    .end local p3    # "task":Lcom/android/server/wm/Task;
    .end local p4    # "aOptions":Landroid/app/ActivityOptions;
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    .local v3, "aOptions":Landroid/app/ActivityOptions;
    .local v4, "task":Lcom/android/server/wm/Task;
    .local v8, "launchFlags":I
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/RootWindowContainer;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;I)Lcom/android/server/wm/Task;

    move-result-object p1

    return-object p1
.end method

.method private handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 10
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1657
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1658
    .local v0, "abort":Z
    if-nez v0, :cond_0

    .line 1659
    const/4 v1, 0x0

    return v1

    .line 1661
    :cond_0
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1662
    .local v2, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 1663
    .local v4, "resultWho":Ljava/lang/String;
    iget v5, p1, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 1664
    .local v5, "requestCode":I
    if-eqz v2, :cond_1

    .line 1665
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;)V

    .line 1670
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOptions()Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-static {v3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1671
    return v1
.end method

.method private handleStartResult(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;IZLandroid/window/RemoteTransition;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/Task;
    .locals 17
    .param p1, "started"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "result"    # I
    .param p4, "isIndependentLaunch"    # Z
    .param p5, "remoteTransition"    # Landroid/window/RemoteTransition;
    .param p6, "transition"    # Lcom/android/server/wm/Transition;

    .line 1853
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p6

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 1854
    .local v4, "userLeaving":Z
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 1855
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 1857
    .local v5, "currentRootTask":Lcom/android/server/wm/Task;
    if-eqz v5, :cond_0

    move-object v7, v5

    goto :goto_0

    :cond_0
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 1859
    .local v7, "startedActivityRootTask":Lcom/android/server/wm/Task;
    :goto_0
    invoke-static {v2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v8

    const/4 v10, 0x1

    if-eqz v8, :cond_17

    if-nez v7, :cond_1

    move-object/from16 v8, p5

    goto/16 :goto_8

    .line 1883
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1884
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->computeInitialCallerInfo()V

    .line 1889
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getTaskAlwaysOnTop()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1890
    invoke-virtual {v7, v10}, Lcom/android/server/wm/Task;->setAlwaysOnTop(Z)V

    .line 1893
    :cond_3
    const-string v8, "ActivityTaskManager"

    if-eqz p4, :cond_4

    iget-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-nez v11, :cond_4

    invoke-direct {v0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    if-nez v11, :cond_4

    .line 1894
    invoke-virtual {v1, v10}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(Z)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1895
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Abort "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " of invisible launch "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    invoke-virtual {v3}, Lcom/android/server/wm/Transition;->abort()V

    .line 1897
    return-object v7

    .line 1903
    :cond_4
    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    .line 1904
    .local v11, "currentTop":Lcom/android/server/wm/ActivityRecord;
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->shouldUpdateConfigForDisplayChanged()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1905
    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v13, v11, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12, v11, v13, v6}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;Z)V

    .line 1909
    :cond_5
    invoke-direct {v0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v12

    if-nez v12, :cond_6

    iget-boolean v12, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v12, :cond_6

    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1910
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v12

    iget v13, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v12, v13}, Lcom/android/server/pm/UserManagerInternal;->isVisibleBackgroundFullUser(I)Z

    move-result v12

    nop

    if-nez v12, :cond_6

    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v13, v1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 1911
    invoke-virtual {v12, v13}, Lcom/android/server/wm/RootWindowContainer;->hasVisibleWindowAboveButDoesNotOwnNotificationShade(I)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1917
    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityTaskManagerService;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v12

    .line 1918
    .local v12, "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v12, :cond_6

    .line 1920
    invoke-interface {v12}, Lcom/android/server/statusbar/StatusBarManagerInternal;->collapsePanels()V

    .line 1925
    .end local v12    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_6
    iget-object v12, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 1926
    .local v12, "transitionController":Lcom/android/server/wm/TransitionController;
    if-eqz v2, :cond_7

    const/4 v13, 0x2

    if-ne v2, v13, :cond_8

    :cond_7
    goto :goto_1

    :cond_8
    move v13, v6

    goto :goto_2

    :goto_1
    move v13, v10

    .line 1927
    .local v13, "isStarted":Z
    :goto_2
    if-eqz p2, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getTransientLaunch()Z

    move-result v14

    if-eqz v14, :cond_9

    move v14, v10

    goto :goto_3

    :cond_9
    move v14, v6

    .line 1931
    .local v14, "isTransientLaunch":Z
    :goto_3
    if-eqz v14, :cond_a

    iget-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    if-eqz v15, :cond_a

    iget-boolean v15, v0, Lcom/android/server/wm/ActivityStarter;->mDisplayLockAndOccluded:Z

    if-eqz v15, :cond_a

    move v15, v10

    goto :goto_4

    :cond_a
    move v15, v6

    .line 1935
    .local v15, "forceTransientTransition":Z
    :goto_4
    sget-boolean v16, Landroid/os/Build;->DEBUG_NOTHING:Z

    if-eqz v16, :cond_b

    .line 1936
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleStartResult: result="

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", isTransientLaunch="

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", forceTransientTransition="

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", startedActivityRootTask="

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", mMovedToTopActivity="

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", hasOrderChanges="

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1941
    invoke-virtual {v12}, Lcom/android/server/wm/TransitionController;->hasOrderChanges()Z

    move-result v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isTransientHide="

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1942
    invoke-virtual {v12, v7}, Lcom/android/server/wm/TransitionController;->isTransientHide(Lcom/android/server/wm/Task;)Z

    move-result v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1936
    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    :cond_b
    if-eqz v13, :cond_c

    .line 1948
    invoke-virtual {v12, v1}, Lcom/android/server/wm/TransitionController;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    .line 1951
    if-eqz p4, :cond_e

    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1952
    nop

    .line 1953
    invoke-static {}, Lcom/android/server/wm/NtServicePopUpViewHelper;->getInstance()Lcom/android/server/wm/NtServicePopUpViewHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/NtServicePopUpViewHelper;->getEnterPinnedWindowRunnable()Ljava/lang/Runnable;

    move-result-object v6

    .line 1952
    invoke-virtual {v3, v6}, Lcom/android/server/wm/Transition;->addTransitionEndedListener(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 1956
    :cond_c
    const/4 v6, 0x3

    if-ne v2, v6, :cond_e

    if-eqz p4, :cond_e

    .line 1965
    invoke-virtual {v12}, Lcom/android/server/wm/TransitionController;->hasOrderChanges()Z

    move-result v6

    if-nez v6, :cond_e

    .line 1966
    invoke-virtual {v12, v7}, Lcom/android/server/wm/TransitionController;->isTransientHide(Lcom/android/server/wm/Task;)Z

    move-result v6

    nop

    if-nez v6, :cond_e

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1967
    invoke-virtual {v3, v6}, Lcom/android/server/wm/Transition;->hasChanged(Lcom/android/server/wm/WindowContainer;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 1969
    if-nez v15, :cond_e

    .line 1979
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v6, :cond_d

    .line 1980
    invoke-virtual {v3}, Lcom/android/server/wm/Transition;->abort()V

    .line 1981
    const/4 v3, 0x0

    .line 1982
    .end local p6    # "transition":Lcom/android/server/wm/Transition;
    .local v3, "transition":Lcom/android/server/wm/Transition;
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1983
    invoke-static {}, Lcom/android/server/wm/NtServicePopUpViewHelper;->getInstance()Lcom/android/server/wm/NtServicePopUpViewHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/NtServicePopUpViewHelper;->enterPinnedWindowWindowingMode()Z

    goto :goto_5

    .line 1986
    .end local v3    # "transition":Lcom/android/server/wm/Transition;
    .restart local p6    # "transition":Lcom/android/server/wm/Transition;
    :cond_d
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1987
    nop

    .line 1988
    invoke-static {}, Lcom/android/server/wm/NtServicePopUpViewHelper;->getInstance()Lcom/android/server/wm/NtServicePopUpViewHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/NtServicePopUpViewHelper;->getEnterPinnedWindowRunnable()Ljava/lang/Runnable;

    move-result-object v6

    .line 1987
    invoke-virtual {v3, v6}, Lcom/android/server/wm/Transition;->addTransitionEndedListener(Ljava/lang/Runnable;)V

    .line 1994
    .end local p6    # "transition":Lcom/android/server/wm/Transition;
    .restart local v3    # "transition":Lcom/android/server/wm/Transition;
    :cond_e
    :goto_5
    if-eqz v15, :cond_f

    if-eqz v3, :cond_f

    .line 1995
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v6}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1996
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    invoke-virtual {v3, v6}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1999
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    invoke-virtual {v3, v6, v8}, Lcom/android/server/wm/Transition;->setTransientLaunch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    .line 2000
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    .line 2002
    .local v6, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v8, v6, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v8}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    .line 2004
    invoke-virtual {v3, v6, v10}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 2006
    .end local v6    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_f
    if-nez v4, :cond_10

    if-eqz v3, :cond_10

    .line 2008
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/server/wm/Transition;->setCanPipOnFinish(Z)V

    .line 2010
    :cond_10
    invoke-direct {v0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v6

    if-eqz v6, :cond_11

    if-eqz v3, :cond_11

    .line 2011
    const/high16 v6, 0x10000

    invoke-virtual {v3, v6}, Lcom/android/server/wm/Transition;->addFlag(I)V

    .line 2013
    :cond_11
    if-eqz p4, :cond_13

    if-eqz v3, :cond_13

    .line 2014
    nop

    .line 2015
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    if-nez v6, :cond_12

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    goto :goto_6

    :cond_12
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 2014
    :goto_6
    move-object/from16 v8, p5

    const/4 v9, 0x0

    invoke-virtual {v12, v3, v6, v8, v9}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    goto :goto_7

    .line 2013
    :cond_13
    move-object/from16 v8, p5

    .line 2017
    if-nez v2, :cond_14

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    sget-object v9, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v6, v9}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v6

    if-eqz v6, :cond_14

    goto :goto_7

    .line 2019
    :cond_14
    if-eqz v13, :cond_16

    iget v6, v0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    const/16 v9, 0x7f

    if-ne v6, v9, :cond_15

    iget-boolean v6, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v6, :cond_16

    .line 2021
    :cond_15
    if-eqz v3, :cond_16

    .line 2022
    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 2025
    :cond_16
    :goto_7
    return-object v7

    .line 1859
    .end local v3    # "transition":Lcom/android/server/wm/Transition;
    .end local v11    # "currentTop":Lcom/android/server/wm/ActivityRecord;
    .end local v12    # "transitionController":Lcom/android/server/wm/TransitionController;
    .end local v13    # "isStarted":Z
    .end local v14    # "isTransientLaunch":Z
    .end local v15    # "forceTransientTransition":Z
    .restart local p6    # "transition":Lcom/android/server/wm/Transition;
    :cond_17
    move-object/from16 v8, p5

    .line 1863
    :goto_8
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v6, :cond_18

    .line 1864
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v9, "startActivity"

    invoke-virtual {v6, v9, v10}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    goto :goto_9

    .line 1865
    :cond_18
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    if-eqz v6, :cond_19

    .line 1866
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6, v9}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1870
    :cond_19
    :goto_9
    if-eqz v7, :cond_1a

    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1871
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->hasActivity()Z

    move-result v6

    if-nez v6, :cond_1a

    .line 1872
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v6

    if-nez v6, :cond_1a

    iget-boolean v6, v7, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v6, :cond_1a

    .line 1874
    const-string v6, "handleStartResult"

    invoke-virtual {v7, v6}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    .line 1876
    :cond_1a
    nop

    nop

    if-eqz p4, :cond_1b

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1877
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1878
    invoke-virtual {v3}, Lcom/android/server/wm/Transition;->abort()V

    .line 1880
    :cond_1b
    const/16 v16, 0x0

    return-object v16
.end method

.method static isDocumentLaunchesIntoExisting(I)Z
    .locals 1
    .param p0, "flags"    # I

    .line 3544
    const/high16 v0, 0x80000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/high16 v0, 0x8000000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLaunchModeOneOf(II)Z
    .locals 1
    .param p1, "mode1"    # I
    .param p2, "mode2"    # I

    .line 3536
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne p2, v0, :cond_1

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

.method private isLaunchModeOneOf(III)Z
    .locals 1
    .param p1, "mode1"    # I
    .param p2, "mode2"    # I
    .param p3, "mode3"    # I

    .line 3540
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-eq p2, v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne p3, v0, :cond_1

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

.method private synthetic lambda$isAllowedToStart$0(Lcom/android/server/wm/ActivityRecord;)Landroid/content/IntentSender;
    .locals 13
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2460
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iget v5, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const/4 v1, 0x1

    new-array v9, v1, [Landroid/content/Intent;

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    aput-object v6, v9, v1

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v10

    .line 2466
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v12, v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    .line 2460
    :goto_1
    const/4 v1, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v11, 0x50000000

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 2467
    .local v0, "target":Landroid/content/IIntentSender;
    new-instance v1, Landroid/content/IntentSender;

    invoke-direct {v1, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v1
.end method

.method private static synthetic lambda$logAndAbortForIntentRedirect$2(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 3873
    const-string v0, "Activity launch blocked. go/report-bug-intentRedir to report a bug"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 3875
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3873
    return-void
.end method

.method private static synthetic lambda$logAndThrowExceptionForIntentRedirect$1(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 3853
    const-string v0, "Activity launch blocked. go/report-bug-intentRedir to report a bug"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 3855
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3853
    return-void
.end method

.method private static logAndAbortForIntentRedirect(Landroid/content/Context;ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errorCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "intentCreatorUid"    # I
    .param p4, "intentCreatorPackage"    # Ljava/lang/String;
    .param p5, "callingUid"    # I
    .param p6, "callingPackage"    # Ljava/lang/String;

    .line 3867
    invoke-static/range {p1 .. p6}, Lcom/android/server/wm/ActivityStarter;->getIntentRedirectPreventedLogMessage(ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3869
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3870
    const/16 v1, 0x40d

    invoke-static {v1, p3, p5, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 3871
    nop

    .line 3877
    const-wide/32 v1, 0x1c40476

    invoke-static {v1, v2, p5}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static logAndThrowExceptionForIntentRedirect(Landroid/content/Context;ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;Ljava/lang/SecurityException;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errorCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "intentCreatorUid"    # I
    .param p4, "intentCreatorPackage"    # Ljava/lang/String;
    .param p5, "callingUid"    # I
    .param p6, "callingPackage"    # Ljava/lang/String;
    .param p7, "originalException"    # Ljava/lang/SecurityException;

    .line 3847
    invoke-static/range {p1 .. p6}, Lcom/android/server/wm/ActivityStarter;->getIntentRedirectPreventedLogMessage(ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3849
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3850
    const/16 v1, 0x40d

    invoke-static {v1, p3, p5, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 3851
    nop

    .line 3857
    const-wide/32 v1, 0x1c40476

    invoke-static {v1, v2, p5}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3861
    return-void

    .line 3859
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0, p7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private logPIOnlyCreatorAllowsBAL()V
    .locals 3

    .line 2312
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFrontPIOnlyCreatorAllows()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2313
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 2314
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 2315
    .local v0, "realCallingPackage":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2318
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Without Android 15 BAL hardening this activity would be moved to the foreground. The activity is started by a PendingIntent. However, only the creator of the PendingIntent allows BAL while the sender does not allow BAL. realCallingPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; callingPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; mTargetRootTask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; mIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; mTargetRootTask.getTopNonFinishingActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2326
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; mTargetRootTask.getRootActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2327
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2318
    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    return-void
.end method

.method private onExecutionComplete()V
    .locals 1

    .line 1684
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityStartController;->onExecutionComplete(Lcom/android/server/wm/ActivityStarter;)V

    .line 1685
    return-void
.end method

.method private onExecutionStarted()V
    .locals 1

    .line 1688
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStartController;->onExecutionStarted()V

    .line 1689
    return-void
.end method

.method private recordTransientLaunchIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2331
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 2332
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2333
    .local v0, "controller":Lcom/android/server/wm/TransitionController;
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->isTransientCollect(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2334
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/TransitionController;->setTransientLaunch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    .line 2336
    :cond_2
    return-void

    .line 2331
    .end local v0    # "controller":Lcom/android/server/wm/TransitionController;
    :goto_0
    return-void
.end method

.method private resolveReusableTask(Z)Lcom/android/server/wm/Task;
    .locals 10
    .param p1, "includeLaunchedFromBubble"    # Z

    .line 3135
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 3136
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3137
    .local v0, "launchTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3138
    return-object v0

    .line 3140
    :cond_0
    return-object v1

    .line 3148
    .end local v0    # "launchTask":Lcom/android/server/wm/Task;
    :cond_1
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000000

    and-int/2addr v0, v2

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v6, 0x8000000

    and-int/2addr v0, v6

    if-eqz v0, :cond_3

    .line 3150
    :cond_2
    invoke-direct {p0, v3, v2}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v5

    .line 3154
    .local v0, "putIntoExistingTask":Z
    :goto_0
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v6, :cond_5

    move v6, v4

    goto :goto_1

    :cond_5
    move v6, v5

    :goto_1
    and-int/2addr v0, v6

    .line 3155
    const/4 v6, 0x0

    .line 3156
    .local v6, "intentActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_9

    .line 3157
    iget v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v3, v7, :cond_6

    .line 3160
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/RootWindowContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 3164
    if-eqz v6, :cond_9

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3165
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    if-nez v2, :cond_9

    .line 3166
    const-string v2, "Removes redundant singleInstance"

    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    .line 3167
    const/4 v6, 0x0

    goto :goto_3

    .line 3169
    :cond_6
    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_8

    .line 3172
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v9, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-eq v2, v9, :cond_7

    goto :goto_2

    :cond_7
    move v4, v5

    :goto_2
    invoke-virtual {v3, v7, v8, v4}, Lcom/android/server/wm/RootWindowContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    goto :goto_3

    .line 3176
    :cond_8
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 3177
    invoke-virtual {v2, v3, v4, p1}, Lcom/android/server/wm/RootWindowContainer;->findTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 3182
    :cond_9
    :goto_3
    if-eqz v6, :cond_a

    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_a

    .line 3183
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 3187
    const/4 v6, 0x0

    .line 3190
    :cond_a
    nop

    nop

    if-eqz v6, :cond_c

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3191
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3192
    :cond_b
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eq v2, v3, :cond_c

    .line 3194
    const/4 v6, 0x0

    .line 3197
    :cond_c
    if-eqz v6, :cond_d

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    :cond_d
    return-object v1
.end method

.method private resolveToHeavyWeightSwitcherIfNeeded()I
    .locals 18

    .line 986
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHasHeavyWeightFeature:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    :cond_0
    goto/16 :goto_2

    .line 992
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 994
    return v2

    .line 997
    :cond_2
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 998
    .local v1, "heavy":Lcom/android/server/wm/WindowProcessController;
    nop

    nop

    if-eqz v1, :cond_9

    iget-object v3, v1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    nop

    if-ne v3, v4, :cond_3

    iget-object v3, v1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 999
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_1

    .line 1003
    :cond_3
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 1004
    .local v3, "appCallingUid":I
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_5

    .line 1005
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v4

    .line 1006
    .local v4, "callerApp":Lcom/android/server/wm/WindowProcessController;
    if-eqz v4, :cond_4

    .line 1007
    iget-object v5, v4, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move v9, v3

    goto :goto_0

    .line 1009
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find app for caller "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (pid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") when starting: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 1010
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1009
    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    invoke-static {v2}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1012
    const/16 v2, -0x5e

    return v2

    .line 1004
    .end local v4    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_5
    move v9, v3

    .line 1016
    .end local v3    # "appCallingUid":I
    .local v9, "appCallingUid":I
    :goto_0
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v10, v3, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    const/4 v3, 0x1

    new-array v14, v3, [Landroid/content/Intent;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    aput-object v4, v14, v2

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v15

    const/high16 v16, 0x50000000

    const/16 v17, 0x0

    const/4 v6, 0x2

    const-string v7, "android"

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v5 .. v17}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v4

    .line 1024
    .local v4, "target":Landroid/content/IIntentSender;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1025
    .local v5, "newIntent":Landroid/content/Intent;
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v6, v6, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    if-ltz v6, :cond_6

    .line 1027
    const-string v6, "has_result"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1029
    :cond_6
    new-instance v6, Landroid/content/IntentSender;

    invoke-direct {v6, v4}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string v7, "intent"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1030
    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowProcessController;->updateIntentForHeavyWeightActivity(Landroid/content/Intent;)V

    .line 1031
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v6, v6, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, "new_app"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1033
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v6, v6, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1034
    const-class v6, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    .line 1035
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1034
    const-string v7, "android"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1036
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object v5, v6, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 1037
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 1038
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object v7, v6, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 1039
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    iput v8, v6, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 1040
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    iput v8, v6, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 1041
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean v3, v6, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 1042
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v11, v6, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v13, v6, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v6, v6, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v12, v12, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 1044
    invoke-static {v6, v8, v12}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v15

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v6, v6, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 1042
    const/4 v12, 0x0

    const/4 v14, 0x0

    move/from16 v16, v6

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iput-object v6, v3, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 1046
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1047
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v6, v6, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v6, :cond_7

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v6, v6, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_7
    iput-object v7, v3, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1048
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_8

    .line 1049
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    invoke-virtual {v6, v7, v8}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iput-object v6, v3, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1053
    :cond_8
    return v2

    .line 1000
    .end local v4    # "target":Landroid/content/IIntentSender;
    .end local v5    # "newIntent":Landroid/content/Intent;
    .end local v9    # "appCallingUid":I
    :cond_9
    :goto_1
    return v2

    .line 989
    .end local v1    # "heavy":Lcom/android/server/wm/WindowProcessController;
    :goto_2
    return v2
.end method

.method private resumeTargetRootTaskIfNeeded()V
    .locals 6

    .line 3315
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_2

    .line 3316
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3318
    .local v0, "next":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    .line 3319
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->setCurrentLaunchCanTurnScreenOn(Z)V

    .line 3321
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3322
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    goto :goto_0

    .line 3325
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 3327
    .end local v0    # "next":Lcom/android/server/wm/ActivityRecord;
    :goto_0
    goto :goto_1

    .line 3328
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 3330
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/RootWindowContainer;->updateUserRootTask(ILcom/android/server/wm/Task;)V

    .line 3331
    return-void
.end method

.method private sendCanNotEmbedActivityError(Lcom/android/server/wm/TaskFragment;I)V
    .locals 9
    .param p1, "taskFragment"    # Lcom/android/server/wm/TaskFragment;
    .param p2, "result"    # I

    .line 3449
    const/4 v0, 0x1

    .line 3450
    .local v0, "fatalError":Z
    const-string v1, "Cannot embed "

    packed-switch p2, :pswitch_data_0

    .line 3470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled embed result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "errMsg":Ljava/lang/String;
    goto/16 :goto_0

    .line 3452
    .end local v1    # "errMsg":Ljava/lang/String;
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " that launched on another task,mLaunchMode="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 3453
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->launchModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mLaunchFlag="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 3454
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3456
    .restart local v1    # "errMsg":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3457
    goto :goto_0

    .line 3460
    .end local v1    # "errMsg":Ljava/lang/String;
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". TaskFragment\'s bounds:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3461
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minimum dimensions:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3462
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getMinDimensions()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3463
    .restart local v1    # "errMsg":Ljava/lang/String;
    goto :goto_0

    .line 3466
    .end local v1    # "errMsg":Ljava/lang/String;
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The app:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "is not trusted to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3467
    .restart local v1    # "errMsg":Ljava/lang/String;
    nop

    .line 3472
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isOrganized()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3473
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 3474
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v2, Lcom/android/server/wm/ActivityStarter$Request;->errorCallbackToken:Landroid/os/IBinder;

    .line 3476
    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    move-object v8, v2

    goto :goto_1

    .line 3477
    :cond_0
    new-instance v2, Landroid/os/OperationCanceledException;

    invoke-direct {v2, v1}, Landroid/os/OperationCanceledException;-><init>(Ljava/lang/String;)V

    move-object v8, v2

    .line 3473
    :goto_1
    const/4 v7, 0x2

    move-object v6, p1

    .end local p1    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    .local v6, "taskFragment":Lcom/android/server/wm/TaskFragment;
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    goto :goto_2

    .line 3480
    .end local v6    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    .restart local p1    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    :cond_1
    move-object v6, p1

    .end local p1    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    .restart local v6    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    const-string p1, "ActivityTaskManager"

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3482
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendNewTaskResultRequestIfNeeded()V
    .locals 9

    .line 3016
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 3021
    const-string v0, "ActivityTaskManager"

    const-string v1, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3022
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v4, v0, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;)V

    .line 3025
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 3027
    :cond_0
    return-void
.end method

.method private setInitialState(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;ILcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;II)V
    .locals 16
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "inTask"    # Lcom/android/server/wm/Task;
    .param p4, "inTaskFragment"    # Lcom/android/server/wm/TaskFragment;
    .param p5, "startFlags"    # I
    .param p6, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p7, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p9, "balCode"    # I
    .param p10, "realCallingUid"    # I

    .line 2846
    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move/from16 v10, p5

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lcom/android/server/wm/ActivityStarter;->reset(Z)V

    .line 2848
    iput-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2849
    iget-object v1, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 2850
    move-object/from16 v6, p2

    iput-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2851
    iget v1, v4, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 2852
    move/from16 v12, p10

    iput v12, v0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    .line 2853
    move-object/from16 v5, p6

    iput-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2854
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v13, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v13

    :goto_0
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    .line 2855
    move-object/from16 v14, p7

    iput-object v14, v0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 2856
    move-object/from16 v15, p8

    iput-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 2857
    move/from16 v1, p9

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    .line 2859
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v2}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 2863
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v2

    iget-object v3, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    move-object v1, v2

    move-object/from16 v2, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 2865
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasPreferredTaskDisplayArea()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2866
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_1

    .line 2867
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    :goto_1
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 2868
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 2870
    iget v1, v4, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 2872
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v3, 0x3

    const/4 v5, 0x1

    if-ne v3, v1, :cond_2

    move v1, v5

    goto :goto_2

    :cond_2
    move v1, v11

    :goto_2
    iget v6, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v7, 0x2

    if-ne v7, v6, :cond_3

    move v6, v5

    goto :goto_3

    :cond_3
    move v6, v11

    :goto_3
    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 2874
    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v8

    .line 2872
    invoke-direct {v0, v4, v1, v6, v8}, Lcom/android/server/wm/ActivityStarter;->adjustLaunchFlagsToDocumentMode(Lcom/android/server/wm/ActivityRecord;ZZI)I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2875
    iget-boolean v1, v4, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    const/high16 v6, 0x80000

    nop

    if-eqz v1, :cond_4

    .line 2876
    invoke-direct {v0, v7, v3}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_4

    move v1, v5

    goto :goto_4

    :cond_4
    move v1, v11

    :goto_4
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 2879
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v3, 0x4

    const/high16 v8, 0x10000000

    if-ne v1, v3, :cond_5

    .line 2882
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v1, v8

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2885
    :cond_5
    iget-object v1, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_6

    iget-object v1, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    .line 2886
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2891
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v1, v8

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2894
    :cond_6
    invoke-direct {v0}, Lcom/android/server/wm/ActivityStarter;->sendNewTaskResultRequestIfNeeded()V

    .line 2896
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_7

    iget-object v1, v4, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_7

    .line 2897
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v1, v8

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2902
    :cond_7
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v8

    if-eqz v1, :cond_9

    .line 2903
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v1, :cond_8

    iget-object v1, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-ne v1, v7, :cond_9

    .line 2905
    :cond_8
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x8000000

    or-int/2addr v1, v3

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2911
    :cond_9
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v3, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v6, 0x40000

    and-int/2addr v3, v6

    if-nez v3, :cond_a

    move v3, v5

    goto :goto_5

    :cond_a
    move v3, v11

    :goto_5
    iput-boolean v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 2912
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    const-string v3, "ActivityTaskManager"

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startActivity() => mUserLeaving="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean v6, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    :cond_b
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    move-result v1

    .line 2919
    .local v1, "canShowActivity":Z
    if-nez v1, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t resume non-current user r="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    :cond_c
    if-eqz v1, :cond_d

    iget-boolean v6, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v6, :cond_e

    :cond_d
    goto :goto_6

    .line 2924
    :cond_e
    iput-boolean v5, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    goto :goto_7

    .line 2921
    :goto_6
    iput-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    .line 2922
    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2927
    :goto_7
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v6, :cond_13

    .line 2928
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_10

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getTaskOverlay()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 2929
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityRecord;->setTaskOverlay(Z)V

    .line 2930
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->canTaskOverlayResume()Z

    move-result v6

    if-nez v6, :cond_11

    .line 2931
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2932
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v8

    .line 2931
    invoke-virtual {v6, v8}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v6

    .line 2933
    .local v6, "task":Lcom/android/server/wm/Task;
    if-eqz v6, :cond_f

    invoke-virtual {v6, v4}, Lcom/android/server/wm/TaskFragment;->canBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 2937
    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2938
    iput v7, v0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 2940
    .end local v6    # "task":Lcom/android/server/wm/Task;
    :cond_f
    goto :goto_8

    .line 2941
    :cond_10
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2942
    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2943
    iput v7, v0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 2945
    :cond_11
    :goto_8
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getTransientLaunch()Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    .line 2946
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v6

    .line 2947
    .local v6, "kc":Lcom/android/server/wm/KeyguardController;
    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v8}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v8

    .line 2948
    .local v8, "displayId":I
    invoke-virtual {v6, v8}, Lcom/android/server/wm/KeyguardController;->isKeyguardOccluded(I)Z

    move-result v9

    iput-boolean v9, v0, Lcom/android/server/wm/ActivityStarter;->mDisplayLockAndOccluded:Z

    .line 2950
    iget-boolean v9, v0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    if-eqz v9, :cond_12

    iget-boolean v9, v0, Lcom/android/server/wm/ActivityStarter;->mDisplayLockAndOccluded:Z

    if-eqz v9, :cond_12

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2951
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 2952
    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2953
    iput v7, v0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 2955
    :cond_12
    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2957
    if-nez p4, :cond_13

    .line 2958
    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2959
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getLaunchTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v9

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2958
    invoke-static {v9, v5}, Lcom/android/server/wm/TaskFragment;->fromTaskFragmentToken(Landroid/os/IBinder;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    .line 2960
    .end local p4    # "inTaskFragment":Lcom/android/server/wm/TaskFragment;
    .local v5, "inTaskFragment":Lcom/android/server/wm/TaskFragment;
    if-eqz v5, :cond_14

    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result v9

    if-eqz v9, :cond_14

    .line 2962
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can not start activity in TaskFragment in PIP: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    const/4 v5, 0x0

    goto :goto_9

    .line 2969
    .end local v5    # "inTaskFragment":Lcom/android/server/wm/TaskFragment;
    .end local v6    # "kc":Lcom/android/server/wm/KeyguardController;
    .end local v8    # "displayId":I
    .restart local p4    # "inTaskFragment":Lcom/android/server/wm/TaskFragment;
    :cond_13
    move-object/from16 v5, p4

    .end local p4    # "inTaskFragment":Lcom/android/server/wm/TaskFragment;
    .restart local v5    # "inTaskFragment":Lcom/android/server/wm/TaskFragment;
    :cond_14
    :goto_9
    iget v6, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v8, 0x1000000

    and-int/2addr v6, v8

    if-eqz v6, :cond_15

    move-object/from16 v6, p6

    goto :goto_a

    :cond_15
    move-object v6, v13

    :goto_a
    iput-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 2971
    iput-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 2976
    if-eqz v2, :cond_16

    iget-boolean v6, v2, Lcom/android/server/wm/Task;->inRecents:Z

    if-nez v6, :cond_16

    .line 2977
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Starting activity in task not in recents: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2978
    iput-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 2981
    :cond_16
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-eqz v6, :cond_17

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    iget-object v8, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6, v8}, Lcom/android/server/wm/Task;->isSameRequiredDisplayCategory(Landroid/content/pm/ActivityInfo;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 2982
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Starting activity in task with different display category: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    iput-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 2986
    :cond_17
    iput-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 2988
    iput v10, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 2992
    and-int/lit8 v3, v10, 0x1

    if-eqz v3, :cond_1a

    .line 2993
    move-object/from16 v3, p6

    .line 2994
    .local v3, "checkedCaller":Lcom/android/server/wm/ActivityRecord;
    if-nez v3, :cond_18

    .line 2995
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v6

    .line 2996
    .local v6, "topFocusedRootTask":Lcom/android/server/wm/Task;
    if-eqz v6, :cond_18

    .line 2997
    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6, v8}, Lcom/android/server/wm/Task;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 3000
    .end local v6    # "topFocusedRootTask":Lcom/android/server/wm/Task;
    :cond_18
    nop

    nop

    if-eqz v3, :cond_19

    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v8, v4, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 3001
    invoke-virtual {v6, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    .line 3003
    :cond_19
    iget v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/lit8 v6, v6, -0x2

    iput v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 3007
    .end local v3    # "checkedCaller":Lcom/android/server/wm/ActivityRecord;
    :cond_1a
    iget v3, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v6, 0x10000

    and-int/2addr v3, v6

    if-eqz v3, :cond_1b

    const/4 v3, 0x1

    goto :goto_b

    :cond_1b
    const/4 v3, 0x0

    :goto_b
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 3009
    iget v3, v0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    const/16 v6, 0x7f

    if-ne v3, v6, :cond_1c

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 3010
    iput v7, v0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 3011
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 3013
    :cond_1c
    return-void
.end method

.method private setNewTask(Lcom/android/server/wm/Task;)V
    .locals 12
    .param p1, "taskToAffiliate"    # Lcom/android/server/wm/Task;

    .line 3334
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v8, v0

    .line 3335
    .local v8, "toTop":Z
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v10, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v11, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/wm/Task;->reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3338
    .local v0, "task":Lcom/android/server/wm/Task;
    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/TransitionController;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    .line 3339
    const-string v3, "setTaskFromReuseOrCreateNewTask"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    .line 3341
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_TASKS_enabled:[Z

    aget-boolean v2, v3, v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam1":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x1e660f29cd5dc2c7L    # -1.458816009883848E162

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v5, v6, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 3344
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    .line 3345
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V

    .line 3347
    :cond_2
    return-void
.end method

.method private setTargetRootTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 22
    .param p1, "intentActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 3208
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    .line 3209
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3212
    .local v3, "intentTask":Lcom/android/server/wm/Task;
    const/4 v2, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    move-object v10, v4

    .line 3214
    .local v10, "origRootTask":Lcom/android/server/wm/Task;
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-nez v4, :cond_2

    .line 3216
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    if-eqz v4, :cond_1

    .line 3219
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    invoke-static {v4}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    goto :goto_1

    .line 3221
    :cond_1
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v5, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {v0, v4, v5, v3, v6}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 3226
    :cond_2
    :goto_1
    nop

    .line 3228
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    move-object/from16 v21, v4

    move-object v4, v3

    move-object/from16 v3, v21

    .end local v3    # "intentTask":Lcom/android/server/wm/Task;
    .local v4, "intentTask":Lcom/android/server/wm/Task;
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-object v3, v4

    .line 3234
    .end local v4    # "intentTask":Lcom/android/server/wm/Task;
    .restart local v3    # "intentTask":Lcom/android/server/wm/Task;
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ne v4, v5, :cond_8

    .line 3235
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v4, v4, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 3236
    .local v4, "focusRootTask":Lcom/android/server/wm/Task;
    if-nez v4, :cond_3

    .line 3237
    move-object v5, v2

    goto :goto_2

    :cond_3
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/Task;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 3238
    .local v5, "curTop":Lcom/android/server/wm/ActivityRecord;
    :goto_2
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    goto :goto_3

    :cond_4
    move-object v6, v2

    .line 3239
    .local v6, "topTask":Lcom/android/server/wm/Task;
    :goto_3
    nop

    nop

    if-ne v6, v3, :cond_7

    if-eqz v4, :cond_5

    .line 3240
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v7

    if-ne v6, v7, :cond_7

    :cond_5
    if-eqz v4, :cond_6

    if-eq v4, v10, :cond_6

    goto :goto_4

    :cond_6
    move v7, v12

    goto :goto_5

    :cond_7
    :goto_4
    move v7, v11

    :goto_5
    nop

    .line 3242
    .end local v4    # "focusRootTask":Lcom/android/server/wm/Task;
    .end local v5    # "curTop":Lcom/android/server/wm/ActivityRecord;
    .end local v6    # "topTask":Lcom/android/server/wm/Task;
    .local v7, "differentTopTask":Z
    move v13, v7

    goto :goto_6

    .line 3244
    .end local v7    # "differentTopTask":Z
    :cond_8
    const/4 v7, 0x1

    move v13, v7

    .line 3247
    .local v13, "differentTopTask":Z
    :goto_6
    if-eqz v13, :cond_f

    invoke-direct {v0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v4

    if-nez v4, :cond_f

    .line 3248
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v5, 0x400000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3250
    iget-boolean v4, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v4, :cond_9

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_9

    .line 3251
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V

    .line 3254
    :cond_9
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3257
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    nop

    if-eq v4, v3, :cond_a

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 3258
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eq v4, v5, :cond_a

    .line 3259
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    const v5, 0x7fffffff

    invoke-virtual {v4, v5, v3, v12}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 3261
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    move-object v15, v3

    goto :goto_7

    .line 3266
    :cond_a
    move-object v15, v3

    .end local v3    # "intentTask":Lcom/android/server/wm/Task;
    .local v15, "intentTask":Lcom/android/server/wm/Task;
    :goto_7
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3267
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v3

    nop

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 3268
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    nop

    if-ne v1, v3, :cond_b

    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 3269
    invoke-virtual {v3, v4}, Lcom/android/server/wm/TransitionController;->isTransientHide(Lcom/android/server/wm/Task;)Z

    move-result v3

    if-nez v3, :cond_b

    move v3, v11

    goto :goto_8

    :cond_b
    move v3, v12

    :goto_8
    nop

    .line 3276
    .local v3, "wasTopOfVisibleRootTask":Z
    iget-object v14, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-boolean v4, v0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const/16 v19, 0x1

    const-string v20, "bringingFoundTaskToFront"

    move/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    invoke-virtual/range {v14 .. v20}, Lcom/android/server/wm/Task;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V

    .line 3279
    if-nez v3, :cond_c

    move v4, v11

    goto :goto_9

    :cond_c
    move v4, v12

    :goto_9
    iput-boolean v4, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 3280
    .end local v3    # "wasTopOfVisibleRootTask":Z
    move-object v3, v15

    goto :goto_a

    .end local v15    # "intentTask":Lcom/android/server/wm/Task;
    .local v3, "intentTask":Lcom/android/server/wm/Task;
    :cond_d
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_e

    .line 3285
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/4 v8, 0x1

    const-string v9, "reparentToTargetRootTask"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)Z

    .line 3287
    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 3289
    :cond_e
    :goto_a
    iput-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 3291
    :cond_f
    if-eqz v13, :cond_10

    .line 3292
    invoke-direct {v0}, Lcom/android/server/wm/ActivityStarter;->logPIOnlyCreatorAllowsBAL()V

    .line 3296
    :cond_10
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    if-eqz v2, :cond_11

    .line 3297
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    iput-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    .line 3298
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v2, v2, v11

    if-eqz v2, :cond_11

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam1":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    int-to-long v5, v5

    .local v5, "protoLogParam2":J
    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v2, v4, v8}, [Ljava/lang/Object;

    move-result-object v8

    const-wide v14, 0x437c906691e03227L    # 1.2864111290162443E17

    const/16 v9, 0x10

    invoke-static {v7, v14, v15, v9, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 3303
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    .end local v4    # "protoLogParam1":Ljava/lang/String;
    .end local v5    # "protoLogParam2":J
    :cond_11
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    if-eqz v2, :cond_12

    .line 3304
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    iput-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    .line 3309
    :cond_12
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 3310
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 3311
    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 3310
    invoke-virtual {v2, v3, v12, v4, v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;)V

    .line 3312
    return-void
.end method

.method private startActivityUnchecked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/uri/NeededUriGrants;ILcom/android/server/wm/Transition;Z)I
    .locals 9
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "options"    # Landroid/app/ActivityOptions;
    .param p7, "inTask"    # Lcom/android/server/wm/Task;
    .param p8, "inTaskFragment"    # Lcom/android/server/wm/TaskFragment;
    .param p9, "balVerdict"    # Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .param p10, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;
    .param p11, "realCallingUid"    # I
    .param p12, "transition"    # Lcom/android/server/wm/Transition;
    .param p13, "isIndependentLaunch"    # Z

    .line 1797
    move-object/from16 v7, p12

    const/16 v4, -0x60

    .line 1800
    .local v4, "result":I
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->takeRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v6

    .line 1802
    .local v6, "remoteTransition":Landroid/window/RemoteTransition;
    if-eqz p13, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->freezeScreen:Z

    if-eqz v0, :cond_1

    .line 1803
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasPreferredTaskDisplayArea()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1804
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_0

    .line 1805
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    :goto_0
    nop

    .line 1806
    .local v0, "tda":Lcom/android/server/wm/TaskDisplayArea;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1807
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v2

    .line 1806
    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 1808
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_1

    .line 1809
    invoke-virtual {v7, v1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1810
    invoke-virtual {v7, v1}, Lcom/android/server/wm/Transition;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    .line 1814
    .end local v0    # "tda":Lcom/android/server/wm/TaskDisplayArea;
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 1815
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1817
    const-wide/16 v1, 0x20

    :try_start_1
    const-string v0, "startActivityInner"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1818
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/wm/ActivityStarter;->startActivityInner(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/uri/NeededUriGrants;I)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v4, v0

    .line 1824
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1825
    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move/from16 v5, p13

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/ActivityStarter;->handleStartResult(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;IZLandroid/window/RemoteTransition;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/Task;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1827
    .local v0, "startedActivityRootTask":Lcom/android/server/wm/Task;
    :goto_1
    goto :goto_2

    .line 1829
    .end local v0    # "startedActivityRootTask":Lcom/android/server/wm/Task;
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 1824
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 1821
    :catch_0
    move-exception v0

    nop

    .line 1822
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "ActivityTaskManager"

    const-string v5, "Exception on startActivityInner"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1824
    .end local v0    # "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1825
    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move-object/from16 v7, p12

    move/from16 v5, p13

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/ActivityStarter;->handleStartResult(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;IZLandroid/window/RemoteTransition;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/Task;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1829
    .local v0, "startedActivityRootTask":Lcom/android/server/wm/Task;
    :goto_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1830
    nop

    .line 1831
    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/wm/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;)V

    .line 1833
    return v4

    .line 1824
    .end local v0    # "startedActivityRootTask":Lcom/android/server/wm/Task;
    :goto_3
    :try_start_5
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1825
    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move-object/from16 v7, p12

    move/from16 v5, p13

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/ActivityStarter;->handleStartResult(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;IZLandroid/window/RemoteTransition;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/Task;

    move-result-object v8

    .line 1827
    .local v8, "startedActivityRootTask":Lcom/android/server/wm/Task;
    nop

    .end local v4    # "result":I
    .end local v6    # "remoteTransition":Landroid/window/RemoteTransition;
    .end local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    .end local p1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local p2    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .end local p3    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .end local p4    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    .end local p5    # "startFlags":I
    .end local p6    # "options":Landroid/app/ActivityOptions;
    .end local p7    # "inTask":Lcom/android/server/wm/Task;
    .end local p8    # "inTaskFragment":Lcom/android/server/wm/TaskFragment;
    .end local p9    # "balVerdict":Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .end local p10    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local p11    # "realCallingUid":I
    .end local p12    # "transition":Lcom/android/server/wm/Transition;
    .end local p13    # "isIndependentLaunch":Z
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1829
    .end local v8    # "startedActivityRootTask":Lcom/android/server/wm/Task;
    .restart local v4    # "result":I
    .restart local v6    # "remoteTransition":Landroid/window/RemoteTransition;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    .restart local p1    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local p2    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local p3    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .restart local p4    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    .restart local p5    # "startFlags":I
    .restart local p6    # "options":Landroid/app/ActivityOptions;
    .restart local p7    # "inTask":Lcom/android/server/wm/Task;
    .restart local p8    # "inTaskFragment":Lcom/android/server/wm/TaskFragment;
    .restart local p9    # "balVerdict":Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .restart local p10    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local p11    # "realCallingUid":I
    .restart local p12    # "transition":Lcom/android/server/wm/Transition;
    .restart local p13    # "isIndependentLaunch":Z
    :goto_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1830
    throw v0
.end method

.method private waitResultIfNeeded(Landroid/app/WaitResult;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)I
    .locals 3
    .param p1, "waitResult"    # Landroid/app/WaitResult;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "launchingState"    # Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 1061
    iget v0, p1, Landroid/app/WaitResult;->result:I

    .line 1062
    .local v0, "res":I
    const/4 v1, 0x3

    nop

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v2, p2, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 1063
    invoke-virtual {p2, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1070
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->waitActivityVisibleOrLaunched(Landroid/app/WaitResult;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)V

    .line 1071
    if-nez v0, :cond_1

    iget v2, p1, Landroid/app/WaitResult;->result:I

    if-ne v2, v1, :cond_1

    .line 1073
    return v1

    .line 1075
    :cond_1
    return v0

    .line 1065
    :cond_2
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/app/WaitResult;->timeout:Z

    .line 1066
    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v1, p1, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 1067
    const-wide/16 v1, 0x0

    iput-wide v1, p1, Landroid/app/WaitResult;->totalTime:J

    .line 1068
    return v0
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 3770
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3771
    const-string v0, "mCurrentUser="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3772
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v0, v0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3773
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3774
    const-string v0, "mLastStartReason="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3775
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3776
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3777
    const-string v0, "mLastStartActivityTimeMs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3778
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3779
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3780
    const-string v0, "mLastStartActivityResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3781
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3782
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x1

    const-string v2, "  "

    if-eqz v0, :cond_0

    .line 3783
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3784
    const-string v0, "mLastStartActivityRecord:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3785
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3, v1}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3787
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    .line 3788
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3789
    const-string v0, "mStartActivity:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3790
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3792
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 3793
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3794
    const-string v0, "mIntent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3795
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3797
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_3

    .line 3798
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3799
    const-string v0, "mOptions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3800
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3802
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3803
    const-string v0, "mLaunchMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3804
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->launchModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3805
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3806
    const-string v0, "mLaunchFlags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3807
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3808
    const-string v0, " mDoResume="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3809
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3810
    const-string v0, " mAddingToTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3811
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3812
    const-string v0, " mInTaskFragment="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3813
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3814
    return-void
.end method

.method execute()I
    .locals 24

    .line 832
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 833
    .local v2, "callerActivityName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 835
    .local v3, "launchingRecord":Lcom/android/server/wm/ActivityRecord;
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    invoke-direct {v1}, Lcom/android/server/wm/ActivityStarter;->onExecutionStarted()V

    .line 837
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 839
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_0

    .line 844
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->removeExtendedFlags(I)V

    goto :goto_0

    .line 962
    :catchall_0
    move-exception v0

    move-object v13, v2

    goto/16 :goto_18

    .line 840
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v8, "File descriptors passed in Intent"

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "callerActivityName":Ljava/lang/String;
    .end local v3    # "launchingRecord":Lcom/android/server/wm/ActivityRecord;
    .end local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    throw v0

    .line 848
    .restart local v2    # "callerActivityName":Ljava/lang/String;
    .restart local v3    # "launchingRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 849
    :try_start_1
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 850
    .local v0, "caller":Lcom/android/server/wm/ActivityRecord;
    iget-object v9, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v9, v9, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    if-ne v9, v4, :cond_2

    .line 851
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    goto :goto_1

    .line 855
    .end local v0    # "caller":Lcom/android/server/wm/ActivityRecord;
    :catchall_1
    move-exception v0

    goto/16 :goto_17

    .line 851
    .restart local v0    # "caller":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    iget-object v9, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v9, v9, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    :goto_1
    nop

    .line 852
    .local v9, "callingUid":I
    iget-object v10, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v11, v11, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v10, v11, v0, v9}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    move-result-object v10

    move-object v12, v10

    .line 854
    .local v12, "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    if-eqz v0, :cond_3

    iget-object v10, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :cond_3
    move-object v10, v5

    :goto_2
    move-object/from16 v18, v10

    .line 855
    .end local v0    # "caller":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "callerActivityName":Ljava/lang/String;
    .end local v9    # "callingUid":I
    .local v18, "callerActivityName":Ljava/lang/String;
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 857
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_5

    .line 858
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_4

    move v8, v6

    goto :goto_3

    :cond_4
    move v8, v7

    :goto_3
    or-int/2addr v2, v8

    iput-boolean v2, v0, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    goto :goto_4

    .line 962
    .end local v12    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    :catchall_2
    move-exception v0

    move-object/from16 v13, v18

    goto/16 :goto_18

    .line 865
    .restart local v12    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    :cond_5
    :goto_4
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_6

    .line 866
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter$Request;->resolveActivity(Lcom/android/server/wm/ActivityTaskSupervisor;)V

    .line 871
    :cond_6
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_DUAL_APPS_SERVICE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/server/ext/INtDualAppsService;

    new-instance v2, Lcom/android/server/wm/NtWmWrapper;

    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-direct {v2, v8}, Lcom/android/server/wm/NtWmWrapper;-><init>(Ljava/lang/Object;)V

    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 872
    invoke-interface {v0, v2, v8}, Lcom/nothing/server/ext/INtDualAppsService;->overrideRequestIfNeeded(Lcom/android/server/wm/NtWmWrapper;Lcom/android/server/wm/ActivityTaskSupervisor;)V

    .line 876
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_PRIVATE_SPACE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/server/ext/INtPrivateSpaceService;

    new-instance v2, Lcom/android/server/wm/NtWmWrapper;

    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-direct {v2, v8}, Lcom/android/server/wm/NtWmWrapper;-><init>(Ljava/lang/Object;)V

    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 877
    invoke-interface {v0, v2, v8}, Lcom/nothing/server/ext/INtPrivateSpaceService;->overrideRequestIfNeeded(Lcom/android/server/wm/NtWmWrapper;Lcom/android/server/wm/ActivityTaskSupervisor;)V

    .line 882
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_8

    .line 883
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 884
    .local v0, "intentAction":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 885
    .local v2, "callingPackage":Ljava/lang/String;
    if-eqz v0, :cond_8

    if-eqz v2, :cond_8

    const-string v8, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    .line 886
    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "android.intent.action.ACTION_SHUTDOWN"

    .line 887
    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "android.intent.action.REBOOT"

    .line 888
    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 889
    :cond_7
    invoke-static {v0, v2, v5}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    .end local v0    # "intentAction":Ljava/lang/String;
    .end local v2    # "callingPackage":Ljava/lang/String;
    :cond_8
    const/16 v2, -0x60

    .line 894
    .local v2, "res":I
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 895
    :try_start_4
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 896
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v9, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v9, v9, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v9}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v6

    goto :goto_5

    .line 958
    :catchall_3
    move-exception v0

    goto/16 :goto_16

    .line 896
    :cond_9
    move v0, v7

    :goto_5
    move v9, v0

    .line 897
    .local v9, "globalConfigWillChange":Z
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    move-object v10, v0

    .line 898
    .local v10, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v10, :cond_a

    .line 899
    iput-boolean v9, v10, Lcom/android/server/wm/Task;->mConfigWillChange:Z

    .line 901
    :cond_a
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_b

    move v0, v9

    .local v0, "protoLogParam0":Z
    sget-object v11, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    const-wide v14, 0x171dc0871351371bL

    const/4 v4, 0x3

    invoke-static {v11, v14, v15, v4, v13}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 904
    .end local v0    # "protoLogParam0":Z
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-wide/from16 v22, v13

    .line 906
    .local v22, "origId":J
    :try_start_5
    invoke-direct {v1}, Lcom/android/server/wm/ActivityStarter;->resolveToHeavyWeightSwitcherIfNeeded()I

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    move v2, v0

    .line 907
    if-eqz v2, :cond_11

    .line 908
    nop

    .line 913
    :try_start_6
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 914
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    const-string v4, " result code="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 915
    const-string v0, "ActivityTaskManager"

    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 962
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v13, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 963
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v14

    if-eqz v3, :cond_c

    move v15, v6

    goto :goto_6

    :cond_c
    move v15, v7

    .line 967
    :goto_6
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_7

    :cond_d
    move-object/from16 v16, v5

    :goto_7
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 971
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_e

    .line 972
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v4

    goto :goto_8

    :cond_e
    const/16 v19, -0x1

    .line 974
    :goto_8
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_f

    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_f
    move-object/from16 v20, v5

    if-eqz v3, :cond_10

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_10

    move/from16 v21, v6

    goto :goto_9

    :cond_10
    move/from16 v21, v7

    .line 962
    :goto_9
    move/from16 v17, v0

    invoke-interface/range {v13 .. v21}, Lcom/android/server/uri/UriGrantsManagerInternal;->notifyActivityLaunchRequestCompleted(IZLjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 977
    invoke-direct {v1}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 908
    return v2

    .line 911
    :cond_11
    :try_start_7
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-direct {v1, v0}, Lcom/android/server/wm/ActivityStarter;->executeRequest(Lcom/android/server/wm/ActivityStarter$Request;)I

    move-result v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 913
    .end local v2    # "res":I
    .local v13, "res":I
    :try_start_8
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 914
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    const-string v2, " result code="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 915
    const-string v0, "ActivityTaskManager"

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 917
    nop

    .line 919
    if-eqz v9, :cond_14

    .line 924
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v2, "android.permission.CHANGE_CONFIGURATION"

    const-string v4, "updateConfiguration()"

    invoke-virtual {v0, v2, v4}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    if-eqz v10, :cond_12

    .line 928
    iput-boolean v7, v10, Lcom/android/server/wm/Task;->mConfigWillChange:Z

    goto :goto_a

    .line 958
    .end local v9    # "globalConfigWillChange":Z
    .end local v10    # "rootTask":Lcom/android/server/wm/Task;
    .end local v22    # "origId":J
    :catchall_4
    move-exception v0

    move v2, v13

    goto/16 :goto_16

    .line 930
    .restart local v9    # "globalConfigWillChange":Z
    .restart local v10    # "rootTask":Lcom/android/server/wm/Task;
    .restart local v22    # "origId":J
    :cond_12
    :goto_a
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_13

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v14, 0x41e4c7b09dde3f7aL    # 2.7890495829452486E9

    invoke-static {v0, v14, v15, v7, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 933
    :cond_13
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v2, v5, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z

    .line 938
    :cond_14
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    if-eqz v0, :cond_15

    .line 939
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    invoke-virtual {v0}, Lcom/android/server/wm/SafeActivityOptions;->getOriginalOptions()Landroid/app/ActivityOptions;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_b

    :cond_15
    move-object/from16 v16, v5

    :goto_b
    nop

    .line 941
    .local v16, "originalOptions":Landroid/app/ActivityOptions;
    iget-boolean v0, v1, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-nez v0, :cond_17

    invoke-static {v13}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 942
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_c

    .line 946
    :cond_16
    move-object v15, v3

    goto :goto_d

    .line 943
    :cond_17
    :goto_c
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object v3, v0

    move-object v15, v3

    .line 946
    .end local v3    # "launchingRecord":Lcom/android/server/wm/ActivityRecord;
    .local v15, "launchingRecord":Lcom/android/server/wm/ActivityRecord;
    :goto_d
    :try_start_9
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, v15, :cond_18

    move v14, v6

    goto :goto_e

    :cond_18
    move v14, v7

    .line 950
    .local v14, "newActivityCreated":Z
    :goto_e
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v11

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    move v2, v14

    move-object v3, v15

    move-object/from16 v0, v16

    .line 952
    .end local v14    # "newActivityCreated":Z
    .end local v15    # "launchingRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v16    # "originalOptions":Landroid/app/ActivityOptions;
    .local v0, "originalOptions":Landroid/app/ActivityOptions;
    .local v2, "newActivityCreated":Z
    .restart local v3    # "launchingRecord":Lcom/android/server/wm/ActivityRecord;
    :try_start_a
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    if-eqz v4, :cond_19

    .line 953
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iput v13, v4, Landroid/app/WaitResult;->result:I

    .line 954
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {v1, v4, v11, v12}, Lcom/android/server/wm/ActivityStarter;->waitResultIfNeeded(Landroid/app/WaitResult;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)I

    move-result v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .end local v13    # "res":I
    .local v4, "res":I
    goto :goto_f

    .line 952
    .end local v4    # "res":I
    .restart local v13    # "res":I
    :cond_19
    move v4, v13

    .line 957
    .end local v13    # "res":I
    .restart local v4    # "res":I
    :goto_f
    :try_start_b
    invoke-static {v4}, Lcom/android/server/wm/ActivityStarter;->getExternalResult(I)I

    move-result v11

    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 962
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v13, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 963
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v14

    if-eqz v3, :cond_1a

    move v15, v6

    goto :goto_10

    :cond_1a
    move v15, v7

    .line 967
    :goto_10
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v8, :cond_1b

    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v16, v8

    goto :goto_11

    :cond_1b
    move-object/from16 v16, v5

    :goto_11
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 971
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_1c

    .line 972
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v5

    :goto_12
    const/4 v5, 0x0

    goto :goto_13

    :cond_1c
    const/16 v19, -0x1

    goto :goto_12

    .line 974
    :goto_13
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_1d

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v5

    goto :goto_14

    :cond_1d
    const/16 v20, 0x0

    :goto_14
    if-eqz v3, :cond_1e

    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_1e

    move/from16 v21, v6

    goto :goto_15

    :cond_1e
    move/from16 v21, v7

    .line 962
    :goto_15
    move/from16 v17, v8

    invoke-interface/range {v13 .. v21}, Lcom/android/server/uri/UriGrantsManagerInternal;->notifyActivityLaunchRequestCompleted(IZLjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 977
    invoke-direct {v1}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 957
    return v11

    .line 958
    .end local v0    # "originalOptions":Landroid/app/ActivityOptions;
    .end local v2    # "newActivityCreated":Z
    .end local v9    # "globalConfigWillChange":Z
    .end local v10    # "rootTask":Lcom/android/server/wm/Task;
    .end local v22    # "origId":J
    :catchall_5
    move-exception v0

    move v2, v4

    goto :goto_16

    .end local v3    # "launchingRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "res":I
    .restart local v13    # "res":I
    .restart local v15    # "launchingRecord":Lcom/android/server/wm/ActivityRecord;
    :catchall_6
    move-exception v0

    move-object v3, v15

    move v2, v13

    .end local v15    # "launchingRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v3    # "launchingRecord":Lcom/android/server/wm/ActivityRecord;
    goto :goto_16

    .line 913
    .end local v13    # "res":I
    .local v2, "res":I
    .restart local v9    # "globalConfigWillChange":Z
    .restart local v10    # "rootTask":Lcom/android/server/wm/Task;
    .restart local v22    # "origId":J
    :catchall_7
    move-exception v0

    :try_start_c
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 914
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    const-string v5, " result code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 915
    const-string v4, "ActivityTaskManager"

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 917
    nop

    .end local v2    # "res":I
    .end local v3    # "launchingRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v12    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .end local v18    # "callerActivityName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    throw v0

    .line 958
    .end local v9    # "globalConfigWillChange":Z
    .end local v10    # "rootTask":Lcom/android/server/wm/Task;
    .end local v22    # "origId":J
    .restart local v2    # "res":I
    .restart local v3    # "launchingRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v12    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .restart local v18    # "callerActivityName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    :goto_16
    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v3    # "launchingRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v18    # "callerActivityName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 855
    .end local v2    # "res":I
    .end local v12    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .restart local v3    # "launchingRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v18    # "callerActivityName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    :catchall_8
    move-exception v0

    move-object/from16 v2, v18

    .end local v18    # "callerActivityName":Ljava/lang/String;
    .local v2, "callerActivityName":Ljava/lang/String;
    :goto_17
    :try_start_e
    monitor-exit v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v2    # "callerActivityName":Ljava/lang/String;
    .end local v3    # "launchingRecord":Lcom/android/server/wm/ActivityRecord;
    .end local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 962
    .restart local v3    # "launchingRecord":Lcom/android/server/wm/ActivityRecord;
    .local v13, "callerActivityName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    :goto_18
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 963
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v9

    if-eqz v3, :cond_1f

    move v10, v6

    goto :goto_19

    :cond_1f
    move v10, v7

    .line 967
    :goto_19
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_20

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto :goto_1a

    :cond_20
    const/4 v11, 0x0

    :goto_1a
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v12, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 971
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_21

    .line 972
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move v14, v4

    goto :goto_1b

    :cond_21
    const/4 v14, -0x1

    .line 974
    :goto_1b
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_22

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object v15, v5

    goto :goto_1c

    :cond_22
    const/4 v15, 0x0

    :goto_1c
    if-eqz v3, :cond_23

    iget-object v2, v3, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_23

    move/from16 v16, v6

    goto :goto_1d

    :cond_23
    move/from16 v16, v7

    .line 962
    :goto_1d
    invoke-interface/range {v8 .. v16}, Lcom/android/server/uri/UriGrantsManagerInternal;->notifyActivityLaunchRequestCompleted(IZLjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 977
    invoke-direct {v1}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 978
    throw v0
.end method

.method getIntent()Landroid/content/Intent;
    .locals 1

    .line 3554
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method isAllowedToStart(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/Task;)I
    .locals 24
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "targetTask"    # Lcom/android/server/wm/Task;

    .line 2396
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    iget-object v1, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2397
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2398
    const/16 v1, -0x5c

    return v1

    .line 2404
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v1

    const/4 v2, 0x1

    const-string v4, "ActivityTaskManager"

    if-eqz v1, :cond_1

    .line 2405
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v1, v5, v7, v2}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot launch home on display area "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    const/16 v1, -0x60

    return v1

    .line 2415
    :cond_1
    const/4 v12, 0x0

    nop

    if-nez p2, :cond_3

    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 2416
    invoke-virtual {v6, v1}, Lcom/android/server/wm/Task;->isUidPresent(I)Z

    move-result v1

    nop

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    iget v5, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v1, v5, :cond_2

    .line 2417
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v12

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    :goto_1
    move v13, v1

    .line 2419
    .local v13, "blockBalInTask":Z
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    const/16 v5, 0x7f

    const/16 v14, 0x66

    if-ne v1, v5, :cond_4

    if-eqz v13, :cond_4

    .line 2420
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/ActivityStarter;->handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Abort background activity starts from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    return v14

    .line 2428
    :cond_4
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v5, 0x10008000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v12

    :goto_2
    move v15, v1

    .line 2431
    .local v15, "isNewClearTask":Z
    const/16 v1, 0x65

    const-string v5, "Attempted Lock Task Mode violation r="

    if-nez p2, :cond_6

    .line 2432
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v7

    invoke-virtual {v7, v6, v15}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    return v1

    .line 2438
    :cond_6
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/server/wm/LockTaskController;->isNewTaskLockTaskModeViolation(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    return v1

    .line 2448
    :cond_7
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v1, :cond_b

    .line 2449
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 2450
    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v5

    .line 2449
    invoke-virtual {v1, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2451
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_b

    .line 2452
    if-eqz v6, :cond_8

    .line 2453
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    :goto_3
    move/from16 v19, v5

    .line 2455
    .local v19, "targetWindowingMode":I
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_9

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v5

    move/from16 v20, v5

    goto :goto_4

    :cond_9
    move/from16 v20, v12

    .line 2456
    .local v20, "launchingFromDisplayId":I
    :goto_4
    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_a

    move/from16 v22, v2

    goto :goto_5

    :cond_a
    move/from16 v22, v12

    .line 2457
    .local v22, "isResultExpected":Z
    :goto_5
    const/4 v2, 0x0

    .line 2458
    .local v2, "intentSender":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/IntentSender;>;"
    nop

    .line 2459
    new-instance v5, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, v3}, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ActivityStarter;Lcom/android/server/wm/ActivityRecord;)V

    move-object/from16 v23, v5

    .line 2470
    .end local v2    # "intentSender":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/IntentSender;>;"
    .local v23, "intentSender":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/IntentSender;>;"
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2471
    move/from16 v21, p2

    move-object/from16 v16, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    invoke-virtual/range {v16 .. v23}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->canActivityBeLaunched(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;IIZZLjava/util/function/Supplier;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 2473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Abort to launch "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " on display area "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    return v14

    .line 2480
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v19    # "targetWindowingMode":I
    .end local v20    # "launchingFromDisplayId":I
    .end local v22    # "isResultExpected":Z
    .end local v23    # "intentSender":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/IntentSender;>;"
    :cond_b
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getBackgroundActivityLaunchController()Lcom/android/server/wm/BackgroundActivityStartController;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2481
    invoke-direct {v0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v5

    iget v7, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget v8, v0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    iget v9, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iget v10, v0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 2480
    move/from16 v4, p2

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/wm/BackgroundActivityStartController;->checkActivityAllowedToStart(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLcom/android/server/wm/Task;IIIILcom/android/server/wm/TaskDisplayArea;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 2483
    return v14

    .line 2486
    :cond_c
    return v12
.end method

.method postStartActivityProcessing(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "result"    # I
    .param p3, "startedActivityRootTask"    # Lcom/android/server/wm/Task;

    .line 1722
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1723
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    if-eqz v0, :cond_0

    .line 1727
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->resetFreezeTaskListReorderingOnTimeout()V

    .line 1730
    :cond_0
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultFatalError(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1731
    return-void

    .line 1739
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->reportWaitingActivityLaunchedIfNeeded(Lcom/android/server/wm/ActivityRecord;I)V

    .line 1741
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1742
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_0

    .line 1743
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    :goto_0
    nop

    .line 1745
    .local v0, "targetTask":Lcom/android/server/wm/Task;
    if-eqz p3, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    goto :goto_2

    .line 1750
    :cond_4
    const/4 v1, 0x2

    if-eq p2, v1, :cond_5

    const/4 v1, 0x3

    if-ne p2, v1, :cond_8

    .line 1754
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1755
    .local v1, "rootHomeTask":Lcom/android/server/wm/Task;
    const/4 v2, 0x0

    const/4 v3, 0x1

    nop

    if-eqz v1, :cond_6

    .line 1756
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v3

    goto :goto_1

    :cond_6
    move v4, v2

    :goto_1
    nop

    .line 1757
    .local v4, "homeTaskVisible":Z
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 1758
    .local v5, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_7

    move v2, v3

    .line 1759
    .local v2, "visible":Z
    :cond_7
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v3

    .line 1760
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    .line 1759
    invoke-virtual {v3, v6, v4, v7, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V

    .line 1763
    .end local v1    # "rootHomeTask":Lcom/android/server/wm/Task;
    .end local v2    # "visible":Z
    .end local v4    # "homeTaskVisible":Z
    .end local v5    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_8
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1764
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/ActivityStartInterceptor;->onActivityLaunched(Landroid/app/TaskInfo;Lcom/android/server/wm/ActivityRecord;)V

    .line 1766
    :cond_9
    return-void

    .line 1747
    :goto_2
    return-void
.end method

.method recycleTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)I
    .locals 10
    .param p1, "targetTask"    # Lcom/android/server/wm/Task;
    .param p2, "targetTaskTop"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "reusedTask"    # Lcom/android/server/wm/Task;
    .param p4, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;
    .param p5, "balVerdict"    # Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 2520
    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const/4 v3, 0x1

    const/4 v8, 0x0

    if-eq v0, v2, :cond_0

    .line 2521
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2522
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2523
    return v8

    .line 2526
    :cond_0
    if-eqz p3, :cond_4

    .line 2527
    iget-object v0, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 2531
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_1

    .line 2533
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2534
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/16 v2, 0x4000

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v8

    .line 2535
    .local v0, "taskOnHome":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 2536
    iget-object v4, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 2538
    :cond_3
    iget-object v4, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v2}, Landroid/content/Intent;->removeFlags(I)V

    .line 2543
    .end local v0    # "taskOnHome":Z
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v8, p2}, Lcom/android/server/wm/RootWindowContainer;->startPowerModeLaunchIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 2546
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityStarter;->setTargetRootTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 2550
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    nop

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    nop

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2552
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isNoDisplay()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2553
    :cond_5
    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2556
    :cond_6
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/2addr v0, v3

    const-string v2, "intentActivityFound"

    if-eqz v0, :cond_9

    .line 2560
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_8

    .line 2561
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_TASKS_enabled:[Z

    aget-boolean v0, v0, v8

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam1":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v6, -0xa2fdae6a8ccd9L

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2563
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v4    # "protoLogParam1":Ljava/lang/String;
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 2566
    :cond_8
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->resumeTargetRootTaskIfNeeded()V

    .line 2567
    return v3

    .line 2569
    :cond_9
    nop

    .line 2570
    if-eqz p3, :cond_a

    invoke-virtual {p3}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    .line 2569
    :goto_2
    move-object v9, p4

    invoke-direct {p0, p1, v0, p4}, Lcom/android/server/wm/ActivityStarter;->complyActivityFlags(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    .line 2572
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-eqz v0, :cond_b

    .line 2573
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getBackgroundActivityLaunchController()Lcom/android/server/wm/BackgroundActivityStartController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iget v5, p0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    iget v6, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget v7, p0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/BackgroundActivityStartController;->clearTopIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;IIII)V

    .line 2576
    return v8

    .line 2579
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_c

    .line 2580
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

    .end local p2    # "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    .local v0, "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    goto :goto_3

    .line 2579
    .end local v0    # "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    .restart local p2    # "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    :cond_c
    move-object v0, p2

    .line 2585
    .end local p2    # "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    .restart local v0    # "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    :goto_3
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_d

    .line 2586
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_4

    .line 2587
    :cond_d
    move-object v1, v0

    :goto_4
    nop

    .line 2589
    .end local v0    # "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    .local v1, "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    if-eqz v0, :cond_e

    .line 2591
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Z)V

    goto :goto_5

    .line 2592
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_f

    .line 2594
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 2598
    :cond_f
    :goto_5
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->resumeTargetRootTaskIfNeeded()V

    .line 2602
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2603
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2604
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v2

    .line 2603
    const-string v3, "recycleTask#turnScreenOnFlag"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->wakeUp(ILjava/lang/String;)V

    .line 2607
    :cond_10
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2608
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x2

    goto :goto_6

    :cond_11
    const/4 v0, 0x3

    :goto_6
    return v0
.end method

.method relatedToPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 820
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    nop

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 821
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    nop

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 822
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 820
    :goto_0
    return v0
.end method

.method reset(Z)V
    .locals 3
    .param p1, "clearRequest"    # Z

    .line 2794
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2795
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 2796
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 2797
    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    .line 2798
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2799
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    .line 2801
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 2802
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2803
    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 2805
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 2807
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 2808
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2809
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 2810
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2811
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 2812
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 2814
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 2815
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 2816
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 2817
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2818
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2819
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    .line 2821
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2822
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 2823
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    .line 2824
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 2825
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 2826
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 2827
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 2828
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    .line 2829
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    .line 2830
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mDisplayLockAndOccluded:Z

    .line 2832
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 2833
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 2835
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 2837
    if-eqz p1, :cond_0

    .line 2838
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter$Request;->reset()V

    .line 2840
    :cond_0
    return-void
.end method

.method set(Lcom/android/server/wm/ActivityStarter;)V
    .locals 2
    .param p1, "starter"    # Lcom/android/server/wm/ActivityStarter;

    .line 774
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 775
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 776
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 777
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    .line 778
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 779
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    .line 781
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 782
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 783
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 785
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v1, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 787
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 788
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 789
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 790
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 791
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 792
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 794
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 795
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 796
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 798
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    .line 800
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 801
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 802
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    .line 803
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 804
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 805
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 806
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 808
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 809
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 811
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 812
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    .line 813
    iget-wide v0, p1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    iput-wide v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 814
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 816
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, p1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter$Request;->set(Lcom/android/server/wm/ActivityStarter$Request;)V

    .line 817
    return-void
.end method

.method setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 3578
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3579
    return-object p0
.end method

.method setActivityOptions(Landroid/os/Bundle;II)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "bOptions"    # Landroid/os/Bundle;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I

    .line 3690
    invoke-static {p1, p2, p3}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;II)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    return-object v0
.end method

.method setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "options"    # Lcom/android/server/wm/SafeActivityOptions;

    .line 3685
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 3686
    return-object p0
.end method

.method setAllowBalExemptionForSystemProcess(Z)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "allowBalExemptionForSystemProcess"    # Z

    .line 3755
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->allowBalExemptionForSystemProcess:Z

    .line 3756
    return-object p0
.end method

.method setAllowPendingRemoteAnimationRegistryLookup(Z)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "allowLookup"    # Z

    .line 3744
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    .line 3745
    return-object p0
.end method

.method setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "caller"    # Landroid/app/IApplicationThread;

    .line 3568
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 3569
    return-object p0
.end method

.method setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "callingFeatureId"    # Ljava/lang/String;

    .line 3641
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 3642
    return-object p0
.end method

.method setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 3636
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 3637
    return-object p0
.end method

.method setCallingPid(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "pid"    # I

    .line 3621
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 3622
    return-object p0
.end method

.method setCallingUid(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "uid"    # I

    .line 3631
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 3632
    return-object p0
.end method

.method setComponentSpecified(Z)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "componentSpecified"    # Z

    .line 3704
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 3705
    return-object p0
.end method

.method setErrorCallbackToken(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "errorCallbackToken"    # Landroid/os/IBinder;

    .line 3765
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->errorCallbackToken:Landroid/os/IBinder;

    .line 3766
    return-object p0
.end method

.method setFilterCallingUid(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "filterCallingUid"    # I

    .line 3699
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 3700
    return-object p0
.end method

.method setFreezeScreen(Z)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "freezeScreen"    # Z

    .line 3760
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->freezeScreen:Z

    .line 3761
    return-object p0
.end method

.method setGlobalConfiguration(Landroid/content/res/Configuration;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 3734
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 3735
    return-object p0
.end method

.method setIgnoreTargetSecurity(Z)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "ignoreTargetSecurity"    # Z

    .line 3694
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 3695
    return-object p0
.end method

.method setInTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "inTask"    # Lcom/android/server/wm/Task;

    .line 3714
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    .line 3715
    return-object p0
.end method

.method setInTaskFragment(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "taskFragment"    # Lcom/android/server/wm/TaskFragment;

    .line 3719
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->inTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 3720
    return-object p0
.end method

.method setIntent(Landroid/content/Intent;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 3549
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 3550
    return-object p0
.end method

.method setIntentCreatorPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "intentCreatorPackage"    # Ljava/lang/String;

    .line 3651
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->intentCreatorPackage:Ljava/lang/String;

    .line 3652
    return-object p0
.end method

.method setIntentCreatorUid(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "uid"    # I

    .line 3646
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->intentCreatorUid:I

    .line 3647
    return-object p0
.end method

.method setIntentGrants(Lcom/android/server/uri/NeededUriGrants;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 3558
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 3559
    return-object p0
.end method

.method setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;

    .line 3749
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    .line 3750
    return-object p0
.end method

.method setOutActivity([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "outActivity"    # [Lcom/android/server/wm/ActivityRecord;

    .line 3709
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    .line 3710
    return-object p0
.end method

.method setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "info"    # Landroid/app/ProfilerInfo;

    .line 3729
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 3730
    return-object p0
.end method

.method setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "pid"    # I

    .line 3665
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 3666
    return-object p0
.end method

.method setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "uid"    # I

    .line 3675
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 3676
    return-object p0
.end method

.method setReason(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 3563
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 3564
    return-object p0
.end method

.method setRequestCode(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "requestCode"    # I

    .line 3608
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 3609
    return-object p0
.end method

.method setResolveInfo(Landroid/content/pm/ResolveInfo;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .line 3583
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 3584
    return-object p0
.end method

.method setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 3573
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 3574
    return-object p0
.end method

.method setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "resultTo"    # Landroid/os/IBinder;

    .line 3598
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 3599
    return-object p0
.end method

.method setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "resultWho"    # Ljava/lang/String;

    .line 3603
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 3604
    return-object p0
.end method

.method setStartFlags(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "startFlags"    # I

    .line 3680
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 3681
    return-object p0
.end method

.method setUserId(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "userId"    # I

    .line 3739
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 3740
    return-object p0
.end method

.method setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 3593
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 3594
    return-object p0
.end method

.method setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;

    .line 3588
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 3589
    return-object p0
.end method

.method setWaitResult(Landroid/app/WaitResult;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "result"    # Landroid/app/WaitResult;

    .line 3724
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 3725
    return-object p0
.end method

.method startActivityInner(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/uri/NeededUriGrants;I)I
    .locals 28
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "options"    # Landroid/app/ActivityOptions;
    .param p7, "inTask"    # Lcom/android/server/wm/Task;
    .param p8, "inTaskFragment"    # Lcom/android/server/wm/TaskFragment;
    .param p9, "balVerdict"    # Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .param p10, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;
    .param p11, "realCallingUid"    # I

    .line 2042
    nop

    .line 2043
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->getCode()I

    move-result v9

    .line 2042
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v5, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Lcom/android/server/wm/ActivityStarter;->setInitialState(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;ILcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;II)V

    .line 2045
    move-object v7, v1

    invoke-direct {v0}, Lcom/android/server/wm/ActivityStarter;->computeLaunchingTaskFlags()V

    .line 2046
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v2, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2048
    const/4 v1, 0x0

    .line 2049
    .local v1, "dreamStopping":Z
    nop

    .line 2050
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 2051
    .local v3, "stoppingActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 2053
    const/4 v1, 0x1

    .line 2054
    move v8, v1

    goto :goto_1

    .line 2051
    :cond_0
    nop

    .line 2056
    .end local v3    # "stoppingActivity":Lcom/android/server/wm/ActivityRecord;
    goto :goto_0

    .line 2060
    :cond_1
    move v8, v1

    .end local v1    # "dreamStopping":Z
    .local v8, "dreamStopping":Z
    :goto_1
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v9

    .line 2061
    .local v9, "prevTopRootTask":Lcom/android/server/wm/Task;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    move-object v11, v1

    .line 2062
    .local v11, "prevTopTask":Lcom/android/server/wm/Task;
    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v6, :cond_3

    .line 2063
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getLaunchedFromBubble()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v13

    goto :goto_3

    :cond_3
    move v1, v12

    :goto_3
    move v14, v1

    .line 2067
    .local v14, "sourceActivityLaunchedFromBubble":Z
    nop

    .line 2068
    move v15, v14

    .line 2069
    .local v15, "includeLaunchedFromBubble":Z
    invoke-direct {v0, v15}, Lcom/android/server/wm/ActivityStarter;->resolveReusableTask(Z)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2072
    .local v3, "reusedTask":Lcom/android/server/wm/Task;
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->freezeRecentTasksReordering()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget v2, v7, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 2073
    invoke-virtual {v1, v2}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v1

    nop

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 2074
    invoke-virtual {v1}, Lcom/android/server/wm/RecentTasks;->isFreezeTaskListReorderingSet()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2075
    iput-boolean v13, v0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 2076
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v1}, Lcom/android/server/wm/RecentTasks;->setFreezeTaskListReordering()V

    .line 2080
    :cond_4
    if-eqz v3, :cond_5

    move-object v1, v3

    goto :goto_4

    :cond_5
    invoke-direct {v0}, Lcom/android/server/wm/ActivityStarter;->computeTargetTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2081
    .local v1, "targetTask":Lcom/android/server/wm/Task;
    :goto_4
    if-nez v1, :cond_6

    move v2, v13

    goto :goto_5

    :cond_6
    move v2, v12

    .line 2083
    .local v2, "newTask":Z
    :goto_5
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 2085
    invoke-direct {v0, v7, v6, v1}, Lcom/android/server/wm/ActivityStarter;->computeLaunchParams(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    .line 2088
    invoke-virtual {v0, v7, v2, v1}, Lcom/android/server/wm/ActivityStarter;->isAllowedToStart(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/Task;)I

    move-result v16

    .line 2089
    .local v16, "startResult":I
    if-eqz v16, :cond_8

    .line 2090
    iget-object v4, v7, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_7

    .line 2091
    iget-object v4, v7, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v7, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v10, v7, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v18, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v4

    move-object/from16 v19, v5

    move/from16 v20, v10

    invoke-virtual/range {v17 .. v24}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;)V

    .line 2094
    :cond_7
    return v16

    .line 2097
    :cond_8
    if-eqz v1, :cond_e

    .line 2098
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTreeWeight()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v17, 0x12c

    cmp-long v4, v4, v17

    if-lez v4, :cond_9

    .line 2099
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remove "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " because it has contained too many activities or windows (abort starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " from uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    const-string v4, "bulky-task"

    invoke-virtual {v1, v4}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    .line 2103
    const/16 v4, 0x66

    return v4

    .line 2107
    :cond_9
    invoke-direct {v0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v4, :cond_a

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    iget v4, v4, Lcom/android/server/wm/WindowProcessController;->mUid:I

    move/from16 v5, p11

    if-eq v4, v5, :cond_c

    :goto_6
    goto :goto_7

    :cond_a
    move/from16 v5, p11

    goto :goto_6

    :goto_7
    if-eqz v11, :cond_c

    .line 2109
    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v4

    nop

    if-eqz v4, :cond_c

    iget-object v4, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2110
    invoke-virtual {v4, v1}, Lcom/android/server/wm/TransitionController;->isTransientHide(Lcom/android/server/wm/Task;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2111
    const/4 v4, 0x2

    iput v4, v0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    goto :goto_8

    .line 2107
    :cond_b
    move/from16 v5, p11

    .line 2117
    :cond_c
    :goto_8
    invoke-direct {v0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v4

    if-nez v4, :cond_d

    .line 2118
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->onlyCreatorAllows()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2119
    iput v13, v0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 2121
    :cond_d
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    goto :goto_9

    .line 2097
    :cond_e
    move/from16 v5, p11

    .line 2124
    :goto_9
    if-eqz v2, :cond_f

    .line 2125
    const/4 v4, 0x0

    goto :goto_a

    :cond_f
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 2126
    .local v4, "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    :goto_a
    if-eqz v4, :cond_14

    .line 2129
    const/4 v10, 0x3

    iget v13, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v10, v13, :cond_11

    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v10, :cond_11

    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2130
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v10

    if-ne v1, v10, :cond_10

    .line 2131
    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    move/from16 v19, v2

    .end local v2    # "newTask":Z
    .local v19, "newTask":Z
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v10, v13, v2, v12}, Lcom/android/server/wm/RootWindowContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 2133
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v10

    if-eq v10, v1, :cond_12

    .line 2134
    const-string v10, "Removes redundant singleInstance"

    invoke-virtual {v2, v10}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    goto :goto_b

    .line 2130
    .end local v19    # "newTask":Z
    .local v2, "newTask":Z
    :cond_10
    move/from16 v19, v2

    .end local v2    # "newTask":Z
    .restart local v19    # "newTask":Z
    goto :goto_b

    .line 2129
    .end local v19    # "newTask":Z
    .restart local v2    # "newTask":Z
    :cond_11
    move/from16 v19, v2

    .line 2137
    .end local v2    # "newTask":Z
    .restart local v19    # "newTask":Z
    :cond_12
    :goto_b
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_13

    .line 2138
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mLaunchSourceType:I

    iput v2, v4, Lcom/android/server/wm/ActivityRecord;->mLaunchSourceType:I

    .line 2140
    :cond_13
    invoke-direct {v0, v4}, Lcom/android/server/wm/ActivityStarter;->recordTransientLaunchIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 2142
    nop

    .line 2143
    move-object/from16 v5, p9

    move-object v2, v4

    move-object/from16 v4, p10

    .end local v4    # "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    .local v2, "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStarter;->recycleTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)I

    move-result v16

    .line 2144
    move-object v10, v0

    move-object v0, v1

    move-object/from16 v21, v2

    move-object/from16 v20, v3

    move-object v13, v4

    .end local v1    # "targetTask":Lcom/android/server/wm/Task;
    .end local v2    # "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "reusedTask":Lcom/android/server/wm/Task;
    .local v0, "targetTask":Lcom/android/server/wm/Task;
    .local v20, "reusedTask":Lcom/android/server/wm/Task;
    .local v21, "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    if-eqz v16, :cond_15

    .line 2145
    return v16

    .line 2148
    .end local v0    # "targetTask":Lcom/android/server/wm/Task;
    .end local v19    # "newTask":Z
    .end local v20    # "reusedTask":Lcom/android/server/wm/Task;
    .end local v21    # "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    .restart local v1    # "targetTask":Lcom/android/server/wm/Task;
    .local v2, "newTask":Z
    .restart local v3    # "reusedTask":Lcom/android/server/wm/Task;
    .restart local v4    # "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    :cond_14
    move-object/from16 v13, p10

    move-object v10, v0

    move-object v0, v1

    move/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    .end local v1    # "targetTask":Lcom/android/server/wm/Task;
    .end local v2    # "newTask":Z
    .end local v3    # "reusedTask":Lcom/android/server/wm/Task;
    .end local v4    # "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    .restart local v0    # "targetTask":Lcom/android/server/wm/Task;
    .restart local v19    # "newTask":Z
    .restart local v20    # "reusedTask":Lcom/android/server/wm/Task;
    .restart local v21    # "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2153
    :cond_15
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 2154
    .local v2, "topRootTask":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_16

    .line 2155
    invoke-direct {v10, v2, v13}, Lcom/android/server/wm/ActivityStarter;->deliverToCurrentTopIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)I

    move-result v16

    .line 2156
    if-eqz v16, :cond_16

    .line 2157
    return v16

    .line 2161
    :cond_16
    nop

    .line 2162
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v12, v3}, Lcom/android/server/wm/RootWindowContainer;->startPowerModeLaunchIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 2166
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-nez v1, :cond_17

    .line 2167
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v3, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v4, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {v10, v1, v3, v0, v4}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v1

    iput-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2170
    :cond_17
    if-eqz v19, :cond_1a

    .line 2171
    iget-boolean v1, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_18

    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_18

    .line 2172
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_c

    :cond_18
    const/4 v1, 0x0

    :goto_c
    nop

    .line 2173
    .local v1, "taskToAffiliate":Lcom/android/server/wm/Task;
    invoke-direct {v10, v1}, Lcom/android/server/wm/ActivityStarter;->setNewTask(Lcom/android/server/wm/Task;)V

    .line 2174
    .end local v1    # "taskToAffiliate":Lcom/android/server/wm/Task;
    :cond_19
    goto :goto_d

    :cond_1a
    iget-boolean v1, v10, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-eqz v1, :cond_19

    .line 2175
    const-string v1, "adding to task"

    invoke-direct {v10, v0, v1}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    .line 2179
    :goto_d
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {v10, v1}, Lcom/android/server/wm/ActivityStarter;->recordTransientLaunchIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 2181
    iget-boolean v1, v10, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v1, :cond_1e

    .line 2182
    invoke-direct {v10}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 2183
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const-string v3, "reuseOrNewTask"

    invoke-virtual {v1, v3, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 2186
    nop

    .line 2193
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v1

    nop

    if-nez v1, :cond_1b

    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2194
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_1b

    if-nez v8, :cond_1b

    const/4 v1, 0x1

    goto :goto_e

    :cond_1b
    move v1, v12

    :goto_e
    nop

    .line 2198
    .local v1, "launchBehindDream":Z
    if-eqz v1, :cond_1c

    .line 2202
    const/4 v3, 0x1

    iput-boolean v3, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 2203
    iput-boolean v3, v7, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    goto :goto_f

    .line 2198
    :cond_1c
    const/4 v3, 0x1

    .line 2205
    .end local v1    # "launchBehindDream":Z
    :goto_f
    goto :goto_10

    .line 2206
    :cond_1d
    const/4 v3, 0x1

    invoke-direct {v10}, Lcom/android/server/wm/ActivityStarter;->logPIOnlyCreatorAllowsBAL()V

    goto :goto_10

    .line 2181
    :cond_1e
    const/4 v3, 0x1

    .line 2210
    :goto_10
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v4, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2211
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v4

    .line 2210
    invoke-interface {v1, v13, v4}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    .line 2212
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_20

    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_20

    .line 2214
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2215
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    .line 2216
    .local v1, "pmInternal":Landroid/content/pm/PackageManagerInternal;
    iget-object v4, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v5, v5, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    move/from16 v18, v12

    const-wide/16 v12, 0x0

    invoke-virtual {v1, v4, v12, v13, v5}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v26

    .line 2219
    .local v26, "resultToUid":I
    iget-object v4, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v4, v4, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v5, v10, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v12, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v12, v12, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2220
    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v25

    .line 2219
    const/16 v27, 0x1

    move-object/from16 v22, v1

    move/from16 v23, v4

    move-object/from16 v24, v5

    .end local v1    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .local v22, "pmInternal":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual/range {v22 .. v27}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    .line 2222
    .end local v22    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v26    # "resultToUid":I
    :cond_1f
    goto :goto_11

    .line 2212
    :cond_20
    move/from16 v18, v12

    .line 2222
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityRecord;->mShareIdentity:Z

    if-eqz v1, :cond_1f

    .line 2223
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2224
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v22

    .line 2225
    .restart local v22    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v4, v10, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v5, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2226
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v25

    iget v5, v7, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 2225
    const/16 v27, 0x1

    move/from16 v23, v1

    move-object/from16 v24, v4

    move/from16 v26, v5

    invoke-virtual/range {v22 .. v27}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    .line 2229
    .end local v22    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    :goto_11
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v12

    .line 2230
    .local v12, "startedTask":Lcom/android/server/wm/Task;
    if-eqz v19, :cond_21

    .line 2231
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v4, v12, Lcom/android/server/wm/Task;->mTaskId:I

    .line 2232
    invoke-virtual {v12}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v5

    invoke-virtual {v12}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v13

    .line 2231
    invoke-static {v1, v4, v5, v13}, Lcom/android/server/wm/EventLogTags;->writeWmCreateTask(IIII)V

    .line 2234
    :cond_21
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/16 v4, 0x7535

    invoke-virtual {v1, v4, v12}, Lcom/android/server/wm/ActivityRecord;->logStartActivity(ILcom/android/server/wm/Task;)V

    .line 2236
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    .line 2238
    nop

    .line 2243
    if-eq v12, v11, :cond_22

    move v4, v3

    goto :goto_12

    :cond_22
    move/from16 v4, v18

    .line 2244
    .local v4, "isTaskSwitch":Z
    :goto_12
    move-object v1, v0

    .end local v0    # "targetTask":Lcom/android/server/wm/Task;
    .local v1, "targetTask":Lcom/android/server/wm/Task;
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    move-object v3, v1

    .end local v1    # "targetTask":Lcom/android/server/wm/Task;
    .local v3, "targetTask":Lcom/android/server/wm/Task;
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    move-object v13, v3

    move/from16 v3, v19

    .end local v19    # "newTask":Z
    .local v3, "newTask":Z
    .local v13, "targetTask":Lcom/android/server/wm/Task;
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/Task;->startActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;ZZLandroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V

    .line 2246
    .end local v3    # "newTask":Z
    .restart local v19    # "newTask":Z
    iget-boolean v0, v10, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_27

    .line 2247
    invoke-virtual {v12}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2254
    .local v0, "topTaskActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isTopActivityFocusableOrNtPinWindow()Z

    move-result v1

    if-eqz v1, :cond_26

    if-eqz v0, :cond_23

    .line 2256
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v1, v0, :cond_23

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    goto :goto_14

    .line 2276
    :cond_23
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isTopActivityFocusable()Z

    move-result v1

    nop

    if-eqz v1, :cond_25

    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2277
    invoke-virtual {v1, v3}, Lcom/android/server/wm/RootWindowContainer;->isTopDisplayFocusedRootTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 2278
    invoke-direct {v10}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v1

    if-nez v1, :cond_24

    .line 2279
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const-string v3, "startActivityInner"

    invoke-virtual {v1, v3}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    goto :goto_13

    .line 2281
    :cond_24
    invoke-direct {v10}, Lcom/android/server/wm/ActivityStarter;->logPIOnlyCreatorAllowsBAL()V

    .line 2284
    :cond_25
    :goto_13
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v5, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    move-object/from16 v22, v0

    .end local v0    # "topTaskActivity":Lcom/android/server/wm/ActivityRecord;
    .local v22, "topTaskActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    move-object/from16 v23, v2

    .end local v2    # "topRootTask":Lcom/android/server/wm/Task;
    .local v23, "topRootTask":Lcom/android/server/wm/Task;
    iget-boolean v2, v10, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    invoke-virtual {v1, v3, v5, v0, v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    goto :goto_15

    .line 2254
    .end local v22    # "topTaskActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v23    # "topRootTask":Lcom/android/server/wm/Task;
    .restart local v0    # "topTaskActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "topRootTask":Lcom/android/server/wm/Task;
    :cond_26
    move-object/from16 v22, v0

    move-object/from16 v23, v2

    .line 2266
    .end local v0    # "topTaskActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "topRootTask":Lcom/android/server/wm/Task;
    .restart local v22    # "topTaskActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v23    # "topRootTask":Lcom/android/server/wm/Task;
    :goto_14
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;)V

    .line 2269
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    goto :goto_15

    .line 2246
    .end local v22    # "topTaskActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v23    # "topRootTask":Lcom/android/server/wm/Task;
    .restart local v2    # "topRootTask":Lcom/android/server/wm/Task;
    :cond_27
    move-object/from16 v23, v2

    .line 2288
    .end local v2    # "topRootTask":Lcom/android/server/wm/Task;
    .restart local v23    # "topRootTask":Lcom/android/server/wm/Task;
    :goto_15
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/RootWindowContainer;->updateUserRootTask(ILcom/android/server/wm/Task;)V

    .line 2291
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, v12}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 2292
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v1, v10, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v12, v1, v2, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;)V

    .line 2297
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_28

    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->isLaunchIntoPip()Z

    move-result v0

    if-eqz v0, :cond_28

    if-eqz v6, :cond_28

    .line 2298
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-ne v0, v1, :cond_28

    .line 2299
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2300
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v2, "launch-into-pip"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->moveActivityToPinnedRootTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 2304
    :cond_28
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getBackgroundActivityLaunchController()Lcom/android/server/wm/BackgroundActivityStartController;

    move-result-object v0

    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2305
    invoke-virtual {v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->onNewActivityLaunched(Lcom/android/server/wm/ActivityRecord;)V

    .line 2307
    return v18
.end method
