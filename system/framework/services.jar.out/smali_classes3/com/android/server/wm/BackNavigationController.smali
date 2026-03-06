.class Lcom/android/server/wm/BackNavigationController;
.super Ljava/lang/Object;
.source "BackNavigationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BackNavigationController$NavigationMonitor;,
        Lcom/android/server/wm/BackNavigationController$AnimationHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CoreBackPreview"

.field private static sDefaultAnimationResId:I

.field static final sPredictBackEnable:Z


# instance fields
.field private mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

.field private mBackAnimationInProgress:Z

.field private mGestureRequest:Landroid/os/RemoteCallback;

.field private mLastBackType:I

.field private final mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

.field private mPendingAnimation:Ljava/lang/Runnable;

.field private mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

.field private mShowWallpaper:Z

.field private final mTmpCloseApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpOpenApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$215ni5GJfzB6JnTiAe5jina3K8U(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController;->lambda$getAnimatablePrevActivities$10(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$3_KWrE8HBx9sWqaF7TUbrvEMTM8(Lcom/android/server/wm/BackNavigationController;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/BackNavigationController;->lambda$startBackNavigation$1(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4RPHvfTcBDG5Z6_KRwS6AnFslPc(Lcom/android/server/wm/BackNavigationController;ILandroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/BackNavigationController;->lambda$startBackNavigation$5(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LDsgZED95si_YuaneGxl1yKhuh8(Ljava/util/ArrayList;Lcom/android/server/wm/TaskFragment;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/BackNavigationController;->lambda$findAdjacentActivityIfExist$12(Ljava/util/ArrayList;Lcom/android/server/wm/TaskFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZCtslvvxUjFH4cVHNYqw1ecGwX8([Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/BackNavigationController;->lambda$getAnimatablePrevActivities$9([Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZWcHyBw4KQ0liM5RskEDFSCfIrs(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController;->lambda$getAnimatablePrevActivities$7(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_sV-s730ojBqnLYMHc-ZKLBxF6k(Lcom/android/server/wm/ActivityRecord;)Landroid/content/ComponentName;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController;->lambda$startBackNavigation$3(Lcom/android/server/wm/ActivityRecord;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$g_ByDeNVNXPA9YaYHzGXMOjxL_o(Lcom/android/server/wm/Task;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController;->lambda$startBackNavigation$2(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$htgbUa_wC-W6B_B6msCBKC0uhfE(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController;->lambda$startBackNavigation$4(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$jtdGhPvR6R8BpMfaHPUFhfbu-Xk(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController;->lambda$getAnimatablePrevActivities$6(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mF74DH2d0MR6aEa1hZ5Su4VxFXQ(Lcom/android/server/wm/BackNavigationController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/BackNavigationController;->lambda$registerBackGestureDelegate$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$uwxWddRXHXUNOfR012FpyZ3Xaeo(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController;->lambda$getAnimatablePrevActivities$8(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wZnKn59QnlfoXAa4iMtTL8EgJyo(Ljava/util/ArrayList;Lcom/android/server/wm/TaskFragment;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/BackNavigationController;->lambda$addPreviousAdjacentActivityIfExist$11(Ljava/util/ArrayList;Lcom/android/server/wm/TaskFragment;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAnimationHandler(Lcom/android/server/wm/BackNavigationController;)Lcom/android/server/wm/BackNavigationController$AnimationHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWindowManagerService(Lcom/android/server/wm/BackNavigationController;)Lcom/android/server/wm/WindowManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcanCancelAnimations(Lcom/android/server/wm/BackNavigationController;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/BackNavigationController;->canCancelAnimations()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcancelPendingAnimation(Lcom/android/server/wm/BackNavigationController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/BackNavigationController;->cancelPendingAnimation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetTopOpenActivities([Lcom/android/server/wm/WindowContainer;)[Lcom/android/server/wm/ActivityRecord;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController;->getTopOpenActivities([Lcom/android/server/wm/WindowContainer;)[Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smrestoreLaunchBehind(Lcom/android/server/wm/ActivityRecord;ZZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/wm/BackNavigationController;->restoreLaunchBehind(Lcom/android/server/wm/ActivityRecord;ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smsetLaunchBehind([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/Transition;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController;->setLaunchBehind([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/Transition;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smvalidateAnimationTargets([Landroid/view/RemoteAnimationTarget;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController;->validateAnimationTargets([Landroid/view/RemoteAnimationTarget;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 112
    nop

    .line 113
    const-string v0, "persist.wm.debug.predictive_back"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/BackNavigationController;->sPredictBackEnable:Z

    .line 112
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;-><init>(Lcom/android/server/wm/BackNavigationController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    return-void
.end method

.method private static addPreviousAdjacentActivityIfExist(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)V
    .locals 2
    .param p0, "prevActivity"    # Lcom/android/server/wm/ActivityRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ActivityRecord;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .line 607
    .local p1, "outPrevActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    .line 608
    .local v0, "prevTF":Lcom/android/server/wm/TaskFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_0

    .line 612
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v1

    if-nez v1, :cond_2

    .line 613
    return-void

    .line 615
    :cond_2
    new-instance v1, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda14;

    invoke-direct {v1, p1}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda14;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Consumer;)V

    .line 622
    return-void

    .line 609
    :goto_0
    return-void
.end method

.method private static allActivitiesHaveProcesses(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .line 654
    .local p0, "prevActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 655
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 656
    .local v2, "test":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v3

    if-nez v3, :cond_0

    .line 657
    const/4 v1, 0x0

    return v1

    .line 656
    :cond_0
    nop

    .line 654
    .end local v2    # "test":Lcom/android/server/wm/ActivityRecord;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 660
    .end local v0    # "i":I
    return v1
.end method

.method private canCancelAnimations()Z
    .locals 1

    .line 2203
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->-$$Nest$fgetmPreparedOpenTransition(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;)Lcom/android/server/wm/Transition;

    move-result-object v0

    if-nez v0, :cond_1

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

.method private cancelPendingAnimation()V
    .locals 3

    .line 1114
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    if-nez v0, :cond_0

    .line 1115
    return-void

    .line 1118
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mBackAnimationAdapter:Landroid/window/BackAnimationAdapter;

    invoke-virtual {v0}, Landroid/window/BackAnimationAdapter;->getRunner()Landroid/window/IBackAnimationRunner;

    move-result-object v0

    invoke-interface {v0}, Landroid/window/IBackAnimationRunner;->onAnimationCancelled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1121
    goto :goto_0

    .line 1119
    :catch_0
    move-exception v0

    .line 1120
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CoreBackPreview"

    const-string v2, "Remote animation gone"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1122
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    .line 1123
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-virtual {v0}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->stopMonitorTransition()V

    .line 1124
    return-void
.end method

.method private static collectAnimatableTarget(Lcom/android/server/wm/Transition;ILcom/android/server/wm/WindowContainer;Z)V
    .locals 1
    .param p0, "transition"    # Lcom/android/server/wm/Transition;
    .param p1, "switchType"    # I
    .param p2, "animatingTarget"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "isTop"    # Z

    .line 943
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 944
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_1

    .line 945
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 947
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    nop

    if-eqz v0, :cond_2

    .line 948
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 949
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/Transition;->setBackGestureAnimation(Lcom/android/server/wm/WindowContainer;Z)V

    .line 951
    :cond_2
    return-void
.end method

.method private static findAdjacentActivityIfExist(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)V
    .locals 2
    .param p0, "mainActivity"    # Lcom/android/server/wm/ActivityRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ActivityRecord;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .line 626
    .local p1, "outList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    .line 627
    .local v0, "mainTF":Lcom/android/server/wm/TaskFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    goto :goto_0

    .line 630
    :cond_1
    new-instance v1, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda5;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Consumer;)V

    .line 636
    return-void

    .line 628
    :goto_0
    return-void
.end method

.method private static findNextTaskFragment(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragment;
    .locals 3
    .param p0, "currentTask"    # Lcom/android/server/wm/Task;
    .param p1, "topTF"    # Lcom/android/server/wm/TaskFragment;

    .line 589
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 590
    .local v0, "topIndex":I
    if-gtz v0, :cond_0

    .line 591
    const/4 v1, 0x0

    return-object v1

    .line 593
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 594
    .local v1, "next":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    return-object v2
.end method

.method static getAnimatablePrevActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z
    .locals 11
    .param p0, "currentTask"    # Lcom/android/server/wm/Task;
    .param p1, "currentActivity"    # Lcom/android/server/wm/ActivityRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/Task;",
            "Lcom/android/server/wm/ActivityRecord;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .line 500
    .local p2, "outPrevActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 502
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 501
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskOrganizerController;->shouldInterceptBackPressedOnRootTask(Lcom/android/server/wm/Task;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 504
    return v1

    .line 506
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 508
    .local v2, "root":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_1

    invoke-static {p1, v2}, Lcom/android/server/wm/ActivityClientController;->shouldMoveTaskToBack(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 509
    return v0

    .line 513
    :cond_1
    new-instance v3, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v3, p1, v1, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 515
    .local v3, "prevActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    .line 516
    .local v4, "currTF":Lcom/android/server/wm/TaskFragment;
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-nez v5, :cond_a

    .line 518
    if-eqz v3, :cond_2

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 520
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    return v0

    .line 523
    :cond_2
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v5

    if-nez v5, :cond_5

    .line 524
    invoke-static {p0, v4}, Lcom/android/server/wm/BackNavigationController;->findNextTaskFragment(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    .line 525
    .local v5, "nextTF":Lcom/android/server/wm/TaskFragment;
    invoke-static {v4, v5}, Lcom/android/server/wm/BackNavigationController;->isSecondCompanionToFirst(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 533
    new-instance v6, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v5, v6, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 535
    .local v6, "bottomActivityInCompanion":Lcom/android/server/wm/ActivityRecord;
    new-instance v7, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v7, v6, v1, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 538
    .local v1, "underPrevious":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_3

    .line 539
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    invoke-static {v1, p2}, Lcom/android/server/wm/BackNavigationController;->addPreviousAdjacentActivityIfExist(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)V

    .line 542
    :cond_3
    return v0

    .line 525
    .end local v1    # "underPrevious":Lcom/android/server/wm/ActivityRecord;
    .end local v6    # "bottomActivityInCompanion":Lcom/android/server/wm/ActivityRecord;
    :cond_4
    nop

    .line 544
    .end local v5    # "nextTF":Lcom/android/server/wm/TaskFragment;
    goto :goto_1

    .line 546
    :cond_5
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragments()Lcom/android/server/wm/TaskFragment$AdjacentSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment$AdjacentSet;->size()I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_9

    .line 550
    new-array v5, v0, [Lcom/android/server/wm/TaskFragment;

    .line 551
    .local v5, "tmpAdjacent":[Lcom/android/server/wm/TaskFragment;
    new-instance v6, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;

    invoke-direct {v6, v5}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;-><init>([Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {v4, v6}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Predicate;)Z

    .line 555
    aget-object v6, v5, v1

    .line 556
    .local v6, "adjacentTF":Lcom/android/server/wm/TaskFragment;
    invoke-static {v4, v6}, Lcom/android/server/wm/BackNavigationController;->isSecondCompanionToFirst(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 559
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    .line 561
    .local v7, "commonParent":Lcom/android/server/wm/WindowContainer;
    iget-object v8, v7, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    .line 560
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    iget-object v9, v7, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    .line 561
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 562
    move-object v8, v4

    goto :goto_0

    :cond_6
    move-object v8, v6

    .line 563
    .local v8, "lowerTF":Lcom/android/server/wm/TaskFragment;
    :goto_0
    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    .line 567
    .local v9, "lowerActivity":Lcom/android/server/wm/ActivityRecord;
    new-instance v10, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda4;

    invoke-direct {v10}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v10, v9, v1, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    if-nez v10, :cond_7

    move v1, v0

    :cond_7
    return v1

    .line 572
    .end local v7    # "commonParent":Lcom/android/server/wm/WindowContainer;
    .end local v8    # "lowerTF":Lcom/android/server/wm/TaskFragment;
    .end local v9    # "lowerActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_8
    return v1

    .line 547
    .end local v5    # "tmpAdjacent":[Lcom/android/server/wm/TaskFragment;
    .end local v6    # "adjacentTF":Lcom/android/server/wm/TaskFragment;
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not yet support 3+ adjacent for non-Task TFs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_a
    :goto_1
    if-nez v3, :cond_b

    .line 579
    return v0

    .line 582
    :cond_b
    invoke-static {v3, p2}, Lcom/android/server/wm/BackNavigationController;->addPreviousAdjacentActivityIfExist(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)V

    .line 583
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    return v0
.end method

.method static getSnapshot(Lcom/android/server/wm/WindowContainer;[Lcom/android/server/wm/ActivityRecord;)Landroid/window/TaskSnapshot;
    .locals 5
    .param p0, "w"    # Lcom/android/server/wm/WindowContainer;
    .param p1, "visibleOpenActivities"    # [Lcom/android/server/wm/ActivityRecord;

    .line 2247
    const/4 v0, 0x0

    .line 2248
    .local v0, "snapshot":Landroid/window/TaskSnapshot;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const-string v2, "CoreBackPreview"

    const-string v3, "com.android.settings"

    if-eqz v1, :cond_1

    .line 2249
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2255
    .local v1, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getBasePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2256
    const-string v3, "Skip task snapshot for settings"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2258
    :cond_0
    iget-object v2, v1, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget v3, v1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object v0

    .line 2262
    .end local v1    # "task":Lcom/android/server/wm/Task;
    :goto_0
    goto :goto_1

    .line 2263
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2264
    .local v1, "ar":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2265
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2267
    :cond_2
    if-eqz v1, :cond_4

    .line 2275
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2276
    const-string v3, "Skip activity snapshot for settings"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2278
    :cond_3
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget-object v2, v2, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    .line 2279
    invoke-virtual {v2, p1}, Lcom/android/server/wm/ActivitySnapshotController;->getSnapshot([Lcom/android/server/wm/ActivityRecord;)Landroid/window/TaskSnapshot;

    move-result-object v0

    .line 2285
    .end local v1    # "ar":Lcom/android/server/wm/ActivityRecord;
    :cond_4
    :goto_1
    invoke-static {v0, p1}, Lcom/android/server/wm/BackNavigationController;->isSnapshotCompatible(Landroid/window/TaskSnapshot;[Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v0

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    return-object v1
.end method

.method private static getTopOpenActivities([Lcom/android/server/wm/WindowContainer;)[Lcom/android/server/wm/ActivityRecord;
    .locals 7
    .param p0, "openWindows"    # [Lcom/android/server/wm/WindowContainer;

    .line 2059
    const/4 v0, 0x0

    .line 2060
    .local v0, "openActivities":[Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    aget-object v1, p0, v1

    .line 2061
    .local v1, "mainTarget":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2062
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2063
    .local v2, "inTaskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2064
    .local v3, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 2065
    .local v4, "tmpPreActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_0

    .line 2066
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2067
    invoke-static {v4, v2}, Lcom/android/server/wm/BackNavigationController;->findAdjacentActivityIfExist(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)V

    .line 2070
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Lcom/android/server/wm/ActivityRecord;

    .line 2071
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_1

    .line 2072
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    aput-object v6, v0, v5

    .line 2071
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 2074
    .end local v2    # "inTaskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "tmpPreActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v5    # "i":I
    :cond_2
    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2075
    array-length v2, p0

    .line 2076
    .local v2, "size":I
    new-array v0, v2, [Lcom/android/server/wm/ActivityRecord;

    .line 2077
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_4

    .line 2078
    aget-object v4, p0, v3

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    aput-object v4, v0, v3

    .line 2077
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2081
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_4
    :goto_2
    return-object v0
.end method

.method private static hasTranslucentActivity(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z
    .locals 4
    .param p0, "currentActivity"    # Lcom/android/server/wm/ActivityRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ActivityRecord;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .line 640
    .local p1, "prevActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_2

    .line 643
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 644
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 645
    .local v2, "test":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->hasWallpaper()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    goto :goto_1

    .line 643
    .end local v2    # "test":Lcom/android/server/wm/ActivityRecord;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 646
    .restart local v2    # "test":Lcom/android/server/wm/ActivityRecord;
    :goto_1
    return v1

    .line 643
    .end local v2    # "test":Lcom/android/server/wm/ActivityRecord;
    :cond_4
    nop

    .line 649
    .end local v0    # "i":I
    const/4 v0, 0x0

    return v0

    .line 641
    :goto_2
    return v1
.end method

.method private static isAllActivitiesCanShowWhenLocked(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .line 665
    .local p0, "prevActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 666
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 667
    const/4 v1, 0x0

    return v1

    .line 665
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 670
    .end local v0    # "i":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static isAllActivitiesCreated(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .line 675
    .local p0, "prevActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 676
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 677
    .local v1, "check":Lcom/android/server/wm/ActivityRecord;
    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 678
    const/4 v2, 0x0

    return v2

    .line 677
    :cond_0
    nop

    .line 675
    .end local v1    # "check":Lcom/android/server/wm/ActivityRecord;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 681
    .end local v0    # "i":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static isCustomizeExitAnimation(Lcom/android/server/wm/WindowState;)Z
    .locals 6
    .param p0, "window"    # Lcom/android/server/wm/WindowState;

    .line 732
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string v1, "android"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 733
    return v1

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v0, :cond_3

    .line 736
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 738
    .local v0, "transitionAnimation":Lcom/android/internal/policy/TransitionAnimation;
    const/4 v2, 0x7

    .line 740
    .local v2, "attr":I
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x7

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/internal/policy/TransitionAnimation;->getAnimationResId(Landroid/view/WindowManager$LayoutParams;II)I

    move-result v3

    .line 742
    .local v3, "appResId":I
    invoke-static {v3}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 743
    sget v5, Lcom/android/server/wm/BackNavigationController;->sDefaultAnimationResId:I

    if-nez v5, :cond_1

    .line 744
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/policy/TransitionAnimation;->getDefaultAnimationResId(II)I

    move-result v4

    sput v4, Lcom/android/server/wm/BackNavigationController;->sDefaultAnimationResId:I

    .line 747
    :cond_1
    sget v4, Lcom/android/server/wm/BackNavigationController;->sDefaultAnimationResId:I

    if-eq v4, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 750
    .end local v0    # "transitionAnimation":Lcom/android/internal/policy/TransitionAnimation;
    .end local v2    # "attr":I
    .end local v3    # "appResId":I
    :cond_3
    return v1
.end method

.method private static isSecondCompanionToFirst(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment;)Z
    .locals 1
    .param p0, "first"    # Lcom/android/server/wm/TaskFragment;
    .param p1, "second"    # Lcom/android/server/wm/TaskFragment;

    .line 602
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getCompanionTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isSnapshotCompatible(Landroid/window/TaskSnapshot;[Lcom/android/server/wm/ActivityRecord;)Z
    .locals 7
    .param p0, "snapshot"    # Landroid/window/TaskSnapshot;
    .param p1, "visibleOpenActivities"    # [Lcom/android/server/wm/ActivityRecord;

    .line 2290
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2291
    return v0

    .line 2293
    :cond_0
    const/4 v1, 0x0

    .line 2294
    .local v1, "oneComponentMatch":Z
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 2295
    aget-object v3, p1, v2

    .line 2296
    .local v3, "ar":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v3, p0}, Lcom/android/server/wm/ActivityRecord;->isSnapshotOrientationCompatible(Landroid/window/TaskSnapshot;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2297
    return v0

    .line 2299
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    .line 2301
    .local v4, "appNightMode":I
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->getUiMode()I

    move-result v5

    and-int/lit8 v5, v5, 0x30

    .line 2302
    .local v5, "snapshotNightMode":I
    if-eq v4, v5, :cond_2

    .line 2303
    return v0

    .line 2305
    :cond_2
    invoke-virtual {v3, p0}, Lcom/android/server/wm/ActivityRecord;->isSnapshotComponentCompatible(Landroid/window/TaskSnapshot;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 2294
    .end local v3    # "ar":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "appNightMode":I
    .end local v5    # "snapshotNightMode":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    nop

    .line 2307
    .end local v2    # "i":I
    return v1
.end method

.method private static synthetic lambda$addPreviousAdjacentActivityIfExist$11(Ljava/util/ArrayList;Lcom/android/server/wm/TaskFragment;)V
    .locals 1
    .param p0, "outPrevActivities"    # Ljava/util/ArrayList;
    .param p1, "prevTFAdjacent"    # Lcom/android/server/wm/TaskFragment;

    .line 616
    nop

    .line 617
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 618
    .local v0, "prevActivityAdjacent":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    .line 619
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    :cond_0
    return-void
.end method

.method private static synthetic lambda$findAdjacentActivityIfExist$12(Ljava/util/ArrayList;Lcom/android/server/wm/TaskFragment;)V
    .locals 1
    .param p0, "outList"    # Ljava/util/ArrayList;
    .param p1, "adjacentTF"    # Lcom/android/server/wm/TaskFragment;

    .line 631
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 632
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    .line 633
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    :cond_0
    return-void
.end method

.method private static synthetic lambda$getAnimatablePrevActivities$10(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "below"    # Lcom/android/server/wm/ActivityRecord;

    .line 567
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static synthetic lambda$getAnimatablePrevActivities$6(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "below"    # Lcom/android/server/wm/ActivityRecord;

    .line 513
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static synthetic lambda$getAnimatablePrevActivities$7(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "below"    # Lcom/android/server/wm/ActivityRecord;

    .line 534
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static synthetic lambda$getAnimatablePrevActivities$8(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "below"    # Lcom/android/server/wm/ActivityRecord;

    .line 536
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static synthetic lambda$getAnimatablePrevActivities$9([Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment;)Z
    .locals 1
    .param p0, "tmpAdjacent"    # [Lcom/android/server/wm/TaskFragment;
    .param p1, "tf"    # Lcom/android/server/wm/TaskFragment;

    .line 552
    const/4 v0, 0x0

    aput-object p1, p0, v0

    .line 553
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic lambda$registerBackGestureDelegate$0()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 133
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mGestureRequest:Landroid/os/RemoteCallback;

    .line 134
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private synthetic lambda$startBackNavigation$1(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Bundle;

    .line 298
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/BackNavigationController;->onBackNavigationDone(Landroid/os/Bundle;I)V

    return-void
.end method

.method private static synthetic lambda$startBackNavigation$2(Lcom/android/server/wm/Task;)Z
    .locals 3
    .param p0, "t"    # Lcom/android/server/wm/Task;

    .line 366
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->showToCurrentUser()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 368
    .local v0, "ar":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 370
    .end local v0    # "ar":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    return v1
.end method

.method private static synthetic lambda$startBackNavigation$3(Lcom/android/server/wm/ActivityRecord;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 406
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method private static synthetic lambda$startBackNavigation$4(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 441
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 442
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 441
    const-string v1, "com.nothing.wallpaper/com.android.wallpaper.picker.CustomizationPickerActivity"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$startBackNavigation$5(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "finalBackType"    # I
    .param p2, "result"    # Landroid/os/Bundle;

    .line 481
    invoke-direct {p0, p2, p1}, Lcom/android/server/wm/BackNavigationController;->onBackNavigationDone(Landroid/os/Bundle;I)V

    return-void
.end method

.method private onBackNavigationDone(Landroid/os/Bundle;I)V
    .locals 9
    .param p1, "result"    # Landroid/os/Bundle;
    .param p2, "backType"    # I

    .line 2225
    if-nez p1, :cond_0

    .line 2226
    return-void

    .line 2228
    :cond_0
    const-string v0, "NavigationFinished"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2229
    const-string v0, "NavigationFinished"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2231
    .local v0, "triggerBack":Z
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    move v3, v0

    .local v3, "protoLogParam1":Z
    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v1, v5}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v6, 0x3b7efecc2bb300dL

    const/16 v8, 0xc

    invoke-static {v4, v6, v7, v8, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2234
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":Z
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 2235
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-virtual {v3}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->stopMonitorForRemote()V

    .line 2236
    iput-boolean v2, p0, Lcom/android/server/wm/BackNavigationController;->mBackAnimationInProgress:Z

    .line 2237
    iput-boolean v2, p0, Lcom/android/server/wm/BackNavigationController;->mShowWallpaper:Z

    .line 2239
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Ljava/lang/Runnable;

    .line 2240
    iput-object v2, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    .line 2241
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 2243
    .end local v0    # "triggerBack":Z
    :cond_2
    :goto_0
    return-void
.end method

.method private static restoreLaunchBehind(Lcom/android/server/wm/ActivityRecord;ZZ)V
    .locals 6
    .param p0, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "cancel"    # Z
    .param p2, "finishTransition"    # Z

    .line 2168
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2170
    return-void

    .line 2172
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 2173
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x3da5c2b6b5a7cc04L    # -4.5078945212881226E11

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v3, v4, v0, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2176
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_3

    .line 2178
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2179
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZZ)V

    .line 2183
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget-object v0, v0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    .line 2184
    invoke-virtual {v0}, Lcom/android/server/wm/ActivitySnapshotController;->clearOnBackPressedActivities()V

    .line 2186
    :cond_3
    return-void
.end method

.method private scheduleAnimation(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;)V
    .locals 1
    .param p1, "builder"    # Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    .line 694
    invoke-virtual {p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->build()Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Ljava/lang/Runnable;

    .line 695
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->-$$Nest$fgetmPreparedOpenTransition(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;)Lcom/android/server/wm/Transition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController;->startAnimation()V

    goto :goto_0

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 700
    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController;->mShowWallpaper:Z

    if-eqz v0, :cond_1

    .line 701
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 702
    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    .line 705
    :cond_1
    :goto_0
    return-void
.end method

.method private static setLaunchBehind([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/Transition;
    .locals 13
    .param p0, "activities"    # [Lcom/android/server/wm/ActivityRecord;

    .line 2121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2122
    .local v0, "affects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2123
    aget-object v3, p0, v1

    .line 2124
    .local v3, "activity":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v4, v3, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    nop

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2125
    goto :goto_1

    .line 2127
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2122
    .end local v3    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 2129
    .end local v1    # "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 2130
    return-object v3

    .line 2133
    :cond_3
    const/4 v1, 0x0

    aget-object v4, p0, v1

    iget-object v4, v4, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2134
    .local v4, "tc":Lcom/android/server/wm/TransitionController;
    nop

    .line 2135
    move-object v5, v3

    .line 2137
    .local v5, "prepareOpen":Lcom/android/server/wm/Transition;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v2

    .local v6, "i":I
    :goto_2
    if-ltz v6, :cond_6

    .line 2138
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    .line 2139
    .local v7, "activity":Lcom/android/server/wm/ActivityRecord;
    iget-object v8, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v8, v8, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget-object v8, v8, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    .line 2140
    invoke-virtual {v8, v7}, Lcom/android/server/wm/ActivitySnapshotController;->addOnBackPressedActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 2141
    iput-boolean v2, v7, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 2143
    sget-object v8, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v8, v8, v1

    if-eqz v8, :cond_4

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam0":Ljava/lang/String;
    sget-object v9, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v10, 0x1cd3c640fb4335b0L    # 8.187030472293235E-170

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v9, v10, v11, v1, v12}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2145
    .end local v8    # "protoLogParam0":Ljava/lang/String;
    :cond_4
    iget-object v8, v7, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2147
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2148
    invoke-virtual {v7, v2}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(Z)Z

    .line 2149
    invoke-virtual {v7, v3, v2}, Lcom/android/server/wm/ActivityRecord;->makeVisibleIfNeeded(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 2137
    .end local v7    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_6
    nop

    .line 2152
    .end local v6    # "i":I
    if-eqz v5, :cond_8

    .line 2153
    invoke-virtual {v5}, Lcom/android/server/wm/Transition;->hasChanges()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2154
    invoke-virtual {v4, v5, v3, v3, v3}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 2157
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v5, v1, v2}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 2158
    return-object v5

    .line 2160
    :cond_7
    invoke-virtual {v5}, Lcom/android/server/wm/Transition;->abort()V

    .line 2163
    :cond_8
    return-object v3
.end method

.method private static validateAnimationTargets([Landroid/view/RemoteAnimationTarget;)Z
    .locals 4
    .param p0, "apps"    # [Landroid/view/RemoteAnimationTarget;

    .line 2038
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    :cond_0
    goto :goto_1

    .line 2041
    :cond_1
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 2042
    aget-object v3, p0, v1

    iget-object v3, v3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2043
    return v0

    .line 2041
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    nop

    .line 2046
    .end local v1    # "i":I
    return v2

    .line 2039
    :goto_1
    return v0
.end method


# virtual methods
.method checkAnimationReady(Lcom/android/server/wm/WallpaperController;)V
    .locals 3
    .param p1, "wallpaperController"    # Lcom/android/server/wm/WallpaperController;

    .line 2189
    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController;->mBackAnimationInProgress:Z

    if-nez v0, :cond_0

    .line 2190
    return-void

    .line 2193
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController;->mShowWallpaper:Z

    if-eqz v0, :cond_2

    .line 2194
    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2195
    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperController;->wallpaperTransitionReady()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    nop

    .line 2196
    .local v0, "wallpaperReady":Z
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 2197
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    new-instance v2, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/wm/BackNavigationController;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowAnimator;->addAfterPrepareSurfacesRunnable(Ljava/lang/Runnable;)V

    .line 2199
    :cond_3
    return-void
.end method

.method clearBackAnimations(Z)V
    .locals 1
    .param p1, "cancel"    # Z

    .line 1046
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->clearBackAnimateTarget(Z)V

    .line 1047
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-virtual {v0}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->stopMonitorTransition()V

    .line 1048
    return-void
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 2324
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2325
    .local v0, "token":J
    const-wide v2, 0x10800000001L

    iget-boolean v4, p0, Lcom/android/server/wm/BackNavigationController;->mBackAnimationInProgress:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2326
    const-wide v2, 0x10500000002L

    iget v4, p0, Lcom/android/server/wm/BackNavigationController;->mLastBackType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2327
    const-wide v2, 0x10800000003L

    iget-boolean v4, p0, Lcom/android/server/wm/BackNavigationController;->mShowWallpaper:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2328
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v2

    const-wide v3, 0x10900000004L

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 2330
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenActivities(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)[Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/ActivityRecord;->writeNameToProto(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_0

    .line 2333
    :cond_0
    const-string v2, ""

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2336
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmWaitTransition(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v5, 0x1

    :cond_2
    const-wide v2, 0x10800000005L

    invoke-virtual {p1, v2, v3, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2338
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2339
    return-void
.end method

.method hasFixedRotationAnimation(Lcom/android/server/wm/DisplayContent;)Z
    .locals 3
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 708
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 709
    return v1

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenActivities(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)[Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    aget-object v0, v0, v1

    .line 712
    .local v0, "openActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne p1, v2, :cond_1

    .line 713
    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->isFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 712
    :goto_0
    return v1
.end method

.method isKeyguardOccluded(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p1, "focusWindow"    # Lcom/android/server/wm/WindowState;

    .line 717
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 718
    .local v0, "kc":Lcom/android/server/wm/KeyguardController;
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    .line 719
    .local v1, "displayId":I
    invoke-virtual {v0, v1}, Lcom/android/server/wm/KeyguardController;->isKeyguardOccluded(I)Z

    move-result v2

    return v2
.end method

.method isMonitorTransitionTarget(Lcom/android/server/wm/WindowContainer;)Z
    .locals 4
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 1021
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1022
    return v1

    .line 1024
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmSwitchType(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1025
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmSwitchType(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 1027
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    nop

    if-eqz v0, :cond_3

    .line 1028
    :cond_2
    return v1

    .line 1030
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isTarget(Lcom/android/server/wm/WindowContainer;Z)Z

    move-result v0

    nop

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 1031
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isTarget(Lcom/android/server/wm/WindowContainer;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v1, v2

    .line 1030
    :cond_5
    return v1
.end method

.method isMonitoringFinishTransition()Z
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-virtual {v0}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->isMonitorForRemote()Z

    move-result v0

    if-eqz v0, :cond_1

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

.method isMonitoringPrepareTransition(Lcom/android/server/wm/Transition;)Z
    .locals 1
    .param p1, "transition"    # Lcom/android/server/wm/Transition;

    .line 689
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->-$$Nest$fgetmPreparedOpenTransition(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;)Lcom/android/server/wm/Transition;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isStartingSurfaceShown(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p1, "openActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 758
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isStartingSurfaceDrawn(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    return v0
.end method

.method isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 2317
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController;->mShowWallpaper:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2319
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isTarget(Lcom/android/server/wm/WindowContainer;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2317
    :goto_0
    return v1
.end method

.method onAppVisibilityChanged(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 11
    .param p1, "ar"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "visible"    # Z

    .line 890
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 891
    return-void

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->-$$Nest$fgetmPreparedOpenTransition(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;)Lcom/android/server/wm/Transition;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 897
    .local v0, "openingTransition":Z
    :goto_0
    if-eqz v0, :cond_7

    if-nez p2, :cond_7

    iget-object v3, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {v3, p1, v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isTarget(Lcom/android/server/wm/WindowContainer;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 898
    invoke-virtual {v3, p1}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 899
    iget-object v3, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 900
    .local v3, "controller":Lcom/android/server/wm/TransitionController;
    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v4

    .line 901
    .local v4, "transition":Lcom/android/server/wm/Transition;
    iget-object v5, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v5}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v5, v5, v1

    invoke-static {v5}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmSwitchType(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)I

    move-result v5

    .line 902
    .local v5, "switchType":I
    const/4 v6, 0x0

    .line 903
    .local v6, "collectTask":Z
    const/4 v7, 0x0

    .line 904
    .local v7, "changedActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v8, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v8}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenActivities(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)[Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    array-length v8, v8

    sub-int/2addr v8, v2

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_3

    .line 905
    iget-object v9, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v9}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenActivities(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)[Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    aget-object v9, v9, v8

    .line 906
    .local v9, "next":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v10, v9, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-eqz v10, :cond_2

    .line 908
    invoke-virtual {v3, v9}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 909
    const/4 v6, 0x1

    .line 910
    invoke-static {v9, v2, v1}, Lcom/android/server/wm/BackNavigationController;->restoreLaunchBehind(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 911
    move-object v7, v9

    .line 904
    .end local v9    # "next":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_3
    nop

    .line 914
    .end local v8    # "i":I
    nop

    .line 915
    iget-object v8, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v8}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    array-length v8, v8

    sub-int/2addr v8, v2

    .restart local v8    # "i":I
    :goto_2
    if-ltz v8, :cond_4

    .line 916
    iget-object v9, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v9}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v9, v9, v8

    invoke-static {v9}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    invoke-static {v4, v5, v9, v1}, Lcom/android/server/wm/BackNavigationController;->collectAnimatableTarget(Lcom/android/server/wm/Transition;ILcom/android/server/wm/WindowContainer;Z)V

    .line 915
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_4
    nop

    .line 920
    .end local v8    # "i":I
    iget-object v8, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v8}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmCloseAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    invoke-static {v4, v5, v8, v2}, Lcom/android/server/wm/BackNavigationController;->collectAnimatableTarget(Lcom/android/server/wm/Transition;ILcom/android/server/wm/WindowContainer;Z)V

    .line 923
    if-eqz v6, :cond_6

    if-ne v5, v2, :cond_6

    .line 924
    iget-object v8, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v8}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v8, v8, v1

    invoke-virtual {v8}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->getTopTask()Lcom/android/server/wm/Task;

    move-result-object v8

    .line 925
    .local v8, "topTask":Lcom/android/server/wm/Task;
    if-eqz v8, :cond_6

    .line 926
    iget-object v9, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v9}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenActivities(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)[Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    aget-object v1, v9, v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 927
    .local v1, "parent":Lcom/android/server/wm/WindowContainer;
    :goto_3
    if-eq v1, v8, :cond_5

    invoke-virtual {v1, v8}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 928
    invoke-virtual {v3, v1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 929
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    goto :goto_3

    .line 931
    :cond_5
    invoke-virtual {v3, v8}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 934
    .end local v1    # "parent":Lcom/android/server/wm/WindowContainer;
    .end local v8    # "topTask":Lcom/android/server/wm/Task;
    :cond_6
    if-eqz v7, :cond_7

    .line 935
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v2}, Lcom/android/server/wm/DisplayContent;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 939
    .end local v3    # "controller":Lcom/android/server/wm/TransitionController;
    .end local v4    # "transition":Lcom/android/server/wm/Transition;
    .end local v5    # "switchType":I
    .end local v6    # "collectTask":Z
    .end local v7    # "changedActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_7
    return-void
.end method

.method onEmbeddedWindowGestureTransferred(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p1, "host"    # Lcom/android/server/wm/WindowState;

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->onEmbeddedWindowGestureTransferred(Lcom/android/server/wm/WindowState;)V

    .line 122
    return-void
.end method

.method onFocusChanged(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p1, "newFocus"    # Lcom/android/server/wm/WindowState;

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-static {v0, p1}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->-$$Nest$monFocusWindowChanged(Lcom/android/server/wm/BackNavigationController$NavigationMonitor;Lcom/android/server/wm/WindowState;)V

    .line 118
    return-void
.end method

.method onTransactionReady(Lcom/android/server/wm/Transition;Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 10
    .param p1, "transition"    # Lcom/android/server/wm/Transition;
    .param p3, "startTransaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p4, "finishTransaction"    # Landroid/view/SurfaceControl$Transaction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/Transition;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/view/SurfaceControl$Transaction;",
            ")V"
        }
    .end annotation

    .line 964
    .local p2, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Transition$ChangeInfo;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController;->isMonitoringPrepareTransition(Lcom/android/server/wm/Transition;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->markStartingSurfaceMatch(Landroid/view/SurfaceControl$Transaction;)V

    .line 967
    return-void

    .line 969
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 970
    return-void

    .line 972
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 973
    return-void

    .line 974
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController;->isMonitoringFinishTransition()Z

    move-result v0

    if-nez v0, :cond_3

    .line 975
    return-void

    .line 977
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->hasTargetDetached()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 978
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    const-string v1, "targetDetached"

    invoke-static {v0, v1}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->-$$Nest$mcancelBackNavigating(Lcom/android/server/wm/BackNavigationController$NavigationMonitor;Ljava/lang/String;)V

    .line 979
    return-void

    .line 981
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_8

    .line 982
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v1, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 983
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-nez v2, :cond_5

    .line 984
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-nez v2, :cond_5

    .line 985
    goto :goto_1

    .line 988
    :cond_5
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    .line 989
    goto :goto_1

    .line 992
    :cond_6
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 993
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 995
    :cond_7
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_8
    nop

    .line 998
    .end local v0    # "i":I
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    .line 999
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->containsBackAnimationTargets(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    .line 1000
    .local v0, "matchAnimationTargets":Z
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam1":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam2":Ljava/lang/String;
    move v4, v0

    .local v4, "protoLogParam3":Z
    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v1, v2, v3, v6}, [Ljava/lang/Object;

    move-result-object v6

    const-wide v7, -0x59411bcd8bffc571L

    const/16 v9, 0xc0

    invoke-static {v5, v7, v8, v9, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1004
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    .end local v3    # "protoLogParam2":Ljava/lang/String;
    .end local v4    # "protoLogParam3":Z
    :cond_9
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-object v1, v1, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mPrepareCloseTransition:Lcom/android/server/wm/Transition;

    if-eqz v1, :cond_a

    .line 1005
    const-string v1, "CoreBackPreview"

    const-string v2, "Gesture animation is applied on another transition?"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    return-void

    .line 1008
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iput-object p1, v1, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mPrepareCloseTransition:Lcom/android/server/wm/Transition;

    .line 1010
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {v1, p3}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->markStartingSurfaceMatch(Landroid/view/SurfaceControl$Transaction;)V

    .line 1012
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v1, :cond_b

    .line 1013
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p4, v1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 1014
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1016
    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1017
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1018
    return-void
.end method

.method onTransitionFinish(Lcom/android/server/wm/Transition;)V
    .locals 5
    .param p1, "finishedTransition"    # Lcom/android/server/wm/Transition;

    .line 1056
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController;->isMonitoringPrepareTransition(Lcom/android/server/wm/Transition;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1057
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mPrepareCloseTransition:Lcom/android/server/wm/Transition;

    if-nez v0, :cond_0

    .line 1058
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/BackNavigationController;->clearBackAnimations(Z)V

    .line 1060
    :cond_0
    return-void

    .line 1062
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mPrepareCloseTransition:Lcom/android/server/wm/Transition;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 1063
    invoke-virtual {p0, v1}, Lcom/android/server/wm/BackNavigationController;->clearBackAnimations(Z)V

    .line 1065
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController;->mBackAnimationInProgress:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    if-nez v0, :cond_4

    :cond_3
    goto/16 :goto_3

    .line 1068
    :cond_4
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x383ac77d153bcb3aL    # -5.64144236978451E37

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1074
    :cond_5
    const/4 v0, 0x0

    .line 1075
    .local v0, "hasTarget":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p1, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 1076
    iget-object v3, p1, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 1077
    .local v3, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-nez v4, :cond_6

    .line 1078
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-nez v4, :cond_6

    .line 1079
    goto :goto_1

    .line 1082
    :cond_6
    iget-object v4, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->containTarget(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1083
    const/4 v0, 0x1

    .line 1084
    goto :goto_2

    .line 1075
    .end local v3    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1088
    .end local v1    # "i":I
    :cond_8
    :goto_2
    const-string v1, "CoreBackPreview"

    if-nez v0, :cond_9

    .line 1090
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished transition didn\'t include the targets open: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    iget-object v3, v3, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    .line 1091
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " close: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    iget-object v3, v3, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1090
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    invoke-direct {p0}, Lcom/android/server/wm/BackNavigationController;->cancelPendingAnimation()V

    .line 1094
    return-void

    .line 1097
    :cond_9
    iget-object v3, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1098
    const-string v2, "Skip predictive back transition, another transition is playing"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    invoke-direct {p0}, Lcom/android/server/wm/BackNavigationController;->cancelPendingAnimation()V

    .line 1100
    return-void

    .line 1107
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    if-eqz v1, :cond_b

    .line 1108
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    invoke-direct {p0, v1}, Lcom/android/server/wm/BackNavigationController;->scheduleAnimation(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;)V

    .line 1109
    iput-object v2, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    .line 1111
    :cond_b
    return-void

    .line 1066
    .end local v0    # "hasTarget":Z
    :goto_3
    return-void
.end method

.method registerBackGestureDelegate(Landroid/os/RemoteCallback;)V
    .locals 4
    .param p1, "requestObserver"    # Landroid/os/RemoteCallback;

    .line 125
    sget-boolean v0, Lcom/android/server/wm/BackNavigationController;->sPredictBackEnable:Z

    if-nez v0, :cond_0

    .line 126
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 129
    :try_start_0
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mGestureRequest:Landroid/os/RemoteCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :try_start_1
    invoke-virtual {p1}, Landroid/os/RemoteCallback;->getInterface()Landroid/os/IRemoteCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/BackNavigationController;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    goto :goto_0

    .line 140
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 136
    :catch_0
    move-exception v1

    nop

    .line 137
    .local v1, "r":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "CoreBackPreview"

    const-string v3, "Failed to link to death"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/BackNavigationController;->mGestureRequest:Landroid/os/RemoteCallback;

    .line 140
    .end local v1    # "r":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 141
    return-void

    .line 140
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method removePredictiveSurfaceIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "openActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 754
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->markWindowHasDrawn(Lcom/android/server/wm/ActivityRecord;)V

    .line 755
    return-void
.end method

.method requestBackGesture()Z
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mGestureRequest:Landroid/os/RemoteCallback;

    if-nez v1, :cond_0

    .line 146
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x0

    return v0

    .line 150
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 148
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mGestureRequest:Landroid/os/RemoteCallback;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 149
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x1

    return v0

    .line 150
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method restoreBackNavigation()Z
    .locals 7

    .line 2085
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2086
    return v1

    .line 2088
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenActivities(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)[Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2089
    .local v0, "penActivities":[Lcom/android/server/wm/ActivityRecord;
    const/4 v2, 0x0

    .line 2090
    .local v2, "changed":Z
    if-eqz v0, :cond_2

    .line 2091
    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 2092
    aget-object v5, v0, v3

    .line 2093
    .local v5, "resetActivity":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v6, v5, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-eqz v6, :cond_1

    .line 2094
    iget-object v6, v5, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 2095
    invoke-static {v5, v4, v1}, Lcom/android/server/wm/BackNavigationController;->restoreLaunchBehind(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 2096
    const/4 v2, 0x1

    .line 2091
    .end local v5    # "resetActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2100
    .end local v3    # "i":I
    :cond_2
    return v2
.end method

.method restoreBackNavigationSetTransitionReady(Lcom/android/server/wm/Transition;)Z
    .locals 6
    .param p1, "transition"    # Lcom/android/server/wm/Transition;

    .line 2104
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2105
    return v1

    .line 2107
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenActivities(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)[Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2108
    .local v0, "penActivities":[Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_2

    .line 2109
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 2110
    aget-object v4, v0, v2

    .line 2111
    .local v4, "resetActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p1, v4}, Lcom/android/server/wm/Transition;->isInTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2112
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {p1, v1, v3}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 2113
    return v3

    .line 2111
    :cond_1
    nop

    .line 2109
    .end local v4    # "resetActivity":Lcom/android/server/wm/ActivityRecord;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2117
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .line 2312
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 2313
    new-instance v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-direct {v0, p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 2314
    return-void
.end method

.method shouldPauseTouch(Lcom/android/server/wm/WindowContainer;)Z
    .locals 2
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 1037
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mPrepareCloseTransition:Lcom/android/server/wm/Transition;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 1038
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isTarget(Lcom/android/server/wm/WindowContainer;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1037
    :goto_0
    return v0
.end method

.method startAnimation()V
    .locals 2

    .line 2208
    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController;->mBackAnimationInProgress:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2210
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 2211
    invoke-direct {p0}, Lcom/android/server/wm/BackNavigationController;->canCancelAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2212
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/BackNavigationController;->clearBackAnimations(Z)V

    .line 2214
    :cond_0
    iput-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Ljava/lang/Runnable;

    .line 2216
    :cond_1
    return-void

    .line 2218
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 2219
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2220
    iput-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Ljava/lang/Runnable;

    .line 2222
    :cond_3
    return-void
.end method

.method startBackNavigation(Landroid/os/RemoteCallback;Landroid/window/BackAnimationAdapter;)Landroid/window/BackNavigationInfo;
    .locals 33
    .param p1, "navigationObserver"    # Landroid/os/RemoteCallback;
    .param p2, "adapter"    # Landroid/window/BackAnimationAdapter;

    .line 165
    move-object/from16 v1, p0

    sget-boolean v0, Lcom/android/server/wm/BackNavigationController;->sPredictBackEnable:Z

    const/4 v11, 0x0

    if-nez v0, :cond_0

    .line 166
    return-object v11

    .line 168
    :cond_0
    iget-object v12, v1, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 170
    .local v12, "wmService":Lcom/android/server/wm/WindowManagerService;
    const/4 v2, -0x1

    .line 173
    .local v2, "backType":I
    const/4 v3, 0x0

    .line 176
    .local v3, "currentActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v5, 0x0

    .line 180
    .local v5, "currentTask":Lcom/android/server/wm/Task;
    const/4 v6, 0x0

    .line 182
    .local v6, "prevTask":Lcom/android/server/wm/Task;
    const/4 v7, 0x0

    .line 185
    .local v7, "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    new-instance v0, Landroid/window/BackNavigationInfo$Builder;

    invoke-direct {v0}, Landroid/window/BackNavigationInfo$Builder;-><init>()V

    move-object v13, v0

    .line 186
    .local v13, "infoBuilder":Landroid/window/BackNavigationInfo$Builder;
    iget-object v14, v12, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v14

    .line 187
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/wm/BackNavigationController;->isMonitoringFinishTransition()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1e

    if-eqz v0, :cond_1

    .line 188
    :try_start_1
    const-string v0, "CoreBackPreview"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Previous animation hasn\'t finish, status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v11

    .line 488
    :catchall_0
    move-exception v0

    goto/16 :goto_26

    .line 193
    :cond_1
    :try_start_2
    invoke-virtual {v12}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1e

    .line 195
    .local v0, "window":Lcom/android/server/wm/WindowState;
    const/4 v15, 0x3

    const/4 v8, 0x0

    if-nez v0, :cond_4

    .line 198
    :try_start_3
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v9, v9, v15

    if-eqz v9, :cond_2

    sget-object v9, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move v10, v2

    move-object/from16 v16, v3

    .end local v2    # "backType":I
    .end local v3    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .local v10, "backType":I
    .local v16, "currentActivity":Lcom/android/server/wm/ActivityRecord;
    const-wide v2, -0x9b41c630000c8cdL    # -6.860898158053238E261

    :try_start_4
    invoke-static {v9, v2, v3, v8, v11}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_0

    .line 488
    .end local v0    # "window":Lcom/android/server/wm/WindowState;
    :catchall_1
    move-exception v0

    move v2, v10

    move-object/from16 v3, v16

    goto/16 :goto_26

    .end local v10    # "backType":I
    .end local v16    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "backType":I
    .restart local v3    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    :catchall_2
    move-exception v0

    move v10, v2

    move-object/from16 v16, v3

    .end local v2    # "backType":I
    .end local v3    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v10    # "backType":I
    .restart local v16    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    goto/16 :goto_26

    .line 198
    .end local v10    # "backType":I
    .end local v16    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v0    # "window":Lcom/android/server/wm/WindowState;
    .restart local v2    # "backType":I
    .restart local v3    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    move v10, v2

    move-object/from16 v16, v3

    .line 200
    .end local v2    # "backType":I
    .end local v3    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v10    # "backType":I
    .restart local v16    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    :goto_0
    iget-object v2, v12, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    move-object v5, v2

    .line 201
    if-eqz v5, :cond_3

    .line 202
    new-instance v2, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v5, v2}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v11

    :goto_1
    move-object v0, v2

    goto :goto_2

    .line 195
    .end local v10    # "backType":I
    .end local v16    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "backType":I
    .restart local v3    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_4
    move v10, v2

    move-object/from16 v16, v3

    .line 205
    .end local v2    # "backType":I
    .end local v3    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v10    # "backType":I
    .restart local v16    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    :goto_2
    if-nez v0, :cond_5

    .line 206
    const-string v2, "CoreBackPreview"

    const-string v3, "Window is null, returning null."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v11

    .line 215
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getImeContainer()Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1d

    if-nez v2, :cond_6

    .line 216
    :try_start_6
    iget-object v2, v1, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->getMostRecentUsedEmbeddedWindowForBack(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v0, v2

    .line 218
    :cond_6
    :try_start_7
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1d

    if-nez v2, :cond_8

    .line 219
    :try_start_8
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v2, v2, v8

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object v9, v5

    move-object v3, v6

    .end local v5    # "currentTask":Lcom/android/server/wm/Task;
    .end local v6    # "prevTask":Lcom/android/server/wm/Task;
    .local v3, "prevTask":Lcom/android/server/wm/Task;
    .local v9, "currentTask":Lcom/android/server/wm/Task;
    const-wide v5, 0x27fbab9c3de33d6dL    # 4.389109128093316E-116

    :try_start_9
    invoke-static {v2, v5, v6, v8, v11}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_3

    .line 488
    .end local v0    # "window":Lcom/android/server/wm/WindowState;
    :catchall_3
    move-exception v0

    move-object v6, v3

    move-object v5, v9

    move v2, v10

    move-object/from16 v3, v16

    goto/16 :goto_26

    .end local v3    # "prevTask":Lcom/android/server/wm/Task;
    .end local v9    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v5    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v6    # "prevTask":Lcom/android/server/wm/Task;
    :catchall_4
    move-exception v0

    move-object v9, v5

    move-object v3, v6

    move v2, v10

    move-object/from16 v3, v16

    .end local v5    # "currentTask":Lcom/android/server/wm/Task;
    .end local v6    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v3    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v9    # "currentTask":Lcom/android/server/wm/Task;
    goto/16 :goto_26

    .line 219
    .end local v3    # "prevTask":Lcom/android/server/wm/Task;
    .end local v9    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v0    # "window":Lcom/android/server/wm/WindowState;
    .restart local v5    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v6    # "prevTask":Lcom/android/server/wm/Task;
    :cond_7
    move-object v9, v5

    move-object v3, v6

    .line 221
    .end local v5    # "currentTask":Lcom/android/server/wm/Task;
    .end local v6    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v3    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v9    # "currentTask":Lcom/android/server/wm/Task;
    :goto_3
    monitor-exit v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v11

    .line 224
    .end local v3    # "prevTask":Lcom/android/server/wm/Task;
    .end local v9    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v5    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v6    # "prevTask":Lcom/android/server/wm/Task;
    :cond_8
    move-object v9, v5

    move-object v3, v6

    .end local v5    # "currentTask":Lcom/android/server/wm/Task;
    .end local v6    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v3    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v9    # "currentTask":Lcom/android/server/wm/Task;
    :try_start_a
    iget-object v2, v12, Lcom/android/server/wm/WindowManagerService;->mEmbeddedWindowController:Lcom/android/server/wm/EmbeddedWindowController;

    .line 225
    invoke-virtual {v2, v0}, Lcom/android/server/wm/EmbeddedWindowController;->getByHostWindow(Lcom/android/server/wm/WindowState;)Ljava/util/ArrayList;

    move-result-object v2

    .line 227
    .local v2, "embeddedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;>;"
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1c

    .line 228
    .end local v16    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .local v5, "currentActivity":Lcom/android/server/wm/ActivityRecord;
    :try_start_b
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1b

    .line 229
    .end local v9    # "currentTask":Lcom/android/server/wm/Task;
    .local v6, "currentTask":Lcom/android/server/wm/Task;
    if-eqz v6, :cond_9

    :try_start_c
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v9

    if-eqz v9, :cond_b

    :cond_9
    goto :goto_4

    .line 488
    .end local v0    # "window":Lcom/android/server/wm/WindowState;
    .end local v2    # "embeddedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;>;"
    :catchall_5
    move-exception v0

    move-object v2, v6

    move-object v6, v3

    move-object v3, v5

    move-object v5, v2

    move v2, v10

    goto/16 :goto_26

    .line 229
    .restart local v0    # "window":Lcom/android/server/wm/WindowState;
    .restart local v2    # "embeddedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;>;"
    :goto_4
    if-eqz v5, :cond_a

    .line 230
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    if-eqz v9, :cond_b

    :cond_a
    if-eqz v5, :cond_e

    if-eqz v6, :cond_e

    .line 232
    :try_start_d
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    if-eq v9, v5, :cond_d

    .line 235
    :cond_b
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v9, v9, v8

    if-eqz v9, :cond_c

    sget-object v9, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    move-object/from16 v17, v3

    .end local v3    # "prevTask":Lcom/android/server/wm/Task;
    .local v17, "prevTask":Lcom/android/server/wm/Task;
    const-wide v3, -0x55d06398df97c38aL

    :try_start_e
    invoke-static {v9, v3, v4, v8, v11}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_5

    .line 488
    .end local v0    # "window":Lcom/android/server/wm/WindowState;
    .end local v2    # "embeddedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;>;"
    :catchall_6
    move-exception v0

    move-object v3, v5

    move-object v5, v6

    move v2, v10

    move-object/from16 v6, v17

    goto/16 :goto_26

    .end local v17    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v3    # "prevTask":Lcom/android/server/wm/Task;
    :catchall_7
    move-exception v0

    move-object/from16 v17, v3

    move-object v3, v5

    move-object v5, v6

    move v2, v10

    move-object/from16 v6, v17

    .end local v3    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v17    # "prevTask":Lcom/android/server/wm/Task;
    goto/16 :goto_26

    .line 235
    .end local v17    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v0    # "window":Lcom/android/server/wm/WindowState;
    .restart local v2    # "embeddedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;>;"
    .restart local v3    # "prevTask":Lcom/android/server/wm/Task;
    :cond_c
    move-object/from16 v17, v3

    .line 236
    .end local v3    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v17    # "prevTask":Lcom/android/server/wm/Task;
    :goto_5
    monitor-exit v14
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v11

    .line 232
    .end local v17    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v3    # "prevTask":Lcom/android/server/wm/Task;
    :cond_d
    move-object/from16 v17, v3

    .end local v3    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v17    # "prevTask":Lcom/android/server/wm/Task;
    goto :goto_6

    .line 230
    .end local v17    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v3    # "prevTask":Lcom/android/server/wm/Task;
    :cond_e
    move-object/from16 v17, v3

    .line 239
    .end local v3    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v17    # "prevTask":Lcom/android/server/wm/Task;
    :goto_6
    :try_start_f
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getOnBackInvokedCallbackInfo()Landroid/window/OnBackInvokedCallbackInfo;

    move-result-object v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1a

    move-object/from16 v16, v3

    .line 240
    .local v16, "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    if-nez v16, :cond_f

    .line 241
    :try_start_10
    const-string v3, "CoreBackPreview"

    const-string v4, "No callback registered, returning null."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    monitor-exit v14
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v11

    .line 244
    :cond_f
    :try_start_11
    invoke-virtual/range {v16 .. v16}, Landroid/window/OnBackInvokedCallbackInfo;->isSystemCallback()Z

    move-result v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1a

    if-nez v3, :cond_10

    .line 245
    const/4 v3, 0x4

    .end local v10    # "backType":I
    .local v3, "backType":I
    goto :goto_7

    .line 244
    .end local v3    # "backType":I
    .restart local v10    # "backType":I
    :cond_10
    move v3, v10

    .line 247
    .end local v10    # "backType":I
    .restart local v3    # "backType":I
    :goto_7
    :try_start_12
    invoke-virtual/range {v16 .. v16}, Landroid/window/OnBackInvokedCallbackInfo;->getCallback()Landroid/window/IOnBackInvokedCallback;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/window/BackNavigationInfo$Builder;->setOnBackInvokedCallback(Landroid/window/IOnBackInvokedCallback;)Landroid/window/BackNavigationInfo$Builder;

    .line 248
    invoke-virtual/range {v16 .. v16}, Landroid/window/OnBackInvokedCallbackInfo;->isAnimationCallback()Z

    move-result v4

    invoke-virtual {v13, v4}, Landroid/window/BackNavigationInfo$Builder;->setAnimationCallback(Z)Landroid/window/BackNavigationInfo$Builder;

    .line 249
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/window/BackNavigationInfo$Builder;->setTouchableRegion(Landroid/graphics/Rect;)Landroid/window/BackNavigationInfo$Builder;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_19

    .line 250
    if-eqz v6, :cond_11

    .line 251
    :try_start_13
    iget v4, v6, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v13, v4}, Landroid/window/BackNavigationInfo$Builder;->setFocusedTaskId(I)Landroid/window/BackNavigationInfo$Builder;

    goto :goto_8

    .line 488
    .end local v0    # "window":Lcom/android/server/wm/WindowState;
    .end local v2    # "embeddedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;>;"
    .end local v16    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    :catchall_8
    move-exception v0

    move v2, v3

    move-object v3, v5

    move-object v5, v6

    move-object/from16 v6, v17

    goto/16 :goto_26

    .line 253
    .restart local v0    # "window":Lcom/android/server/wm/WindowState;
    .restart local v2    # "embeddedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;>;"
    .restart local v16    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    :cond_11
    :goto_8
    const/4 v4, 0x0

    .line 254
    .local v4, "transferGestureToEmbedded":Z
    const/4 v9, 0x1

    if-eqz v2, :cond_13

    .line 255
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v9

    .local v10, "i":I
    :goto_9
    if-ltz v10, :cond_13

    .line 256
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v11, v18

    check-cast v11, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    iget-boolean v11, v11, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mGestureToEmbedded:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    if-eqz v11, :cond_12

    .line 257
    const/4 v4, 0x1

    .line 258
    move v11, v4

    goto :goto_a

    .line 255
    :cond_12
    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x0

    goto :goto_9

    .line 262
    .end local v10    # "i":I
    :cond_13
    move v11, v4

    .end local v4    # "transferGestureToEmbedded":Z
    .local v11, "transferGestureToEmbedded":Z
    :goto_a
    :try_start_14
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_19

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_14

    move v4, v9

    goto :goto_b

    :cond_14
    move v4, v8

    :goto_b
    move/from16 v18, v4

    .line 264
    .local v18, "canInterruptInView":Z
    if-eqz v18, :cond_15

    if-nez v11, :cond_15

    .line 265
    :try_start_15
    invoke-virtual/range {v16 .. v16}, Landroid/window/OnBackInvokedCallbackInfo;->isAnimationCallback()Z

    move-result v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    if-eqz v4, :cond_15

    move v4, v9

    goto :goto_c

    :cond_15
    move v4, v8

    .line 264
    :goto_c
    :try_start_16
    invoke-virtual {v13, v4}, Landroid/window/BackNavigationInfo$Builder;->setAppProgressAllowed(Z)Landroid/window/BackNavigationInfo$Builder;

    .line 266
    iget-object v4, v1, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    move-object/from16 v10, p1

    invoke-virtual {v4, v0, v10}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->startMonitor(Lcom/android/server/wm/WindowState;Landroid/os/RemoteCallback;)V

    .line 268
    invoke-virtual/range {v16 .. v16}, Landroid/window/OnBackInvokedCallbackInfo;->getOverrideBehavior()I

    move-result v4

    .line 269
    .local v4, "requestOverride":I
    sget-object v19, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v19, v19, v8
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_19

    if-eqz v19, :cond_16

    :try_start_17
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v20, v19

    .local v20, "protoLogParam0":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v21, v19

    .local v21, "protoLogParam1":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v22, v19

    .local v22, "protoLogParam2":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v23, v19

    .local v23, "protoLogParam3":Ljava/lang/String;
    sget-object v15, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    move-object/from16 v9, v20

    move-object/from16 v8, v21

    move-object/from16 v21, v2

    move-object/from16 v2, v22

    move-object/from16 v22, v7

    move-object/from16 v7, v23

    .end local v20    # "protoLogParam0":Ljava/lang/String;
    .end local v23    # "protoLogParam3":Ljava/lang/String;
    .local v2, "protoLogParam2":Ljava/lang/String;
    .local v7, "protoLogParam3":Ljava/lang/String;
    .local v8, "protoLogParam1":Ljava/lang/String;
    .local v9, "protoLogParam0":Ljava/lang/String;
    .local v21, "embeddedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;>;"
    .local v22, "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :try_start_18
    filled-new-array {v9, v8, v2, v7}, [Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v25, v7

    move-object/from16 v23, v8

    .end local v7    # "protoLogParam3":Ljava/lang/String;
    .end local v8    # "protoLogParam1":Ljava/lang/String;
    .local v23, "protoLogParam1":Ljava/lang/String;
    .local v25, "protoLogParam3":Ljava/lang/String;
    const-wide v7, 0x380e880485133941L    # 1.1215435302787646E-38

    move-object/from16 v26, v2

    const/4 v2, 0x0

    .end local v2    # "protoLogParam2":Ljava/lang/String;
    .local v26, "protoLogParam2":Ljava/lang/String;
    invoke-static {v15, v7, v8, v2, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_d

    .line 488
    .end local v0    # "window":Lcom/android/server/wm/WindowState;
    .end local v4    # "requestOverride":I
    .end local v9    # "protoLogParam0":Ljava/lang/String;
    .end local v11    # "transferGestureToEmbedded":Z
    .end local v16    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v18    # "canInterruptInView":Z
    .end local v21    # "embeddedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;>;"
    .end local v23    # "protoLogParam1":Ljava/lang/String;
    .end local v25    # "protoLogParam3":Ljava/lang/String;
    .end local v26    # "protoLogParam2":Ljava/lang/String;
    :catchall_9
    move-exception v0

    move v2, v3

    move-object v3, v5

    move-object v5, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v22

    goto/16 :goto_26

    .end local v22    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .local v7, "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :catchall_a
    move-exception v0

    move-object/from16 v22, v7

    move v2, v3

    move-object v3, v5

    move-object v5, v6

    move-object/from16 v6, v17

    .end local v7    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v22    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    goto/16 :goto_26

    .line 269
    .end local v22    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v0    # "window":Lcom/android/server/wm/WindowState;
    .local v2, "embeddedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;>;"
    .restart local v4    # "requestOverride":I
    .restart local v7    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v11    # "transferGestureToEmbedded":Z
    .restart local v16    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v18    # "canInterruptInView":Z
    :cond_16
    move-object/from16 v21, v2

    move-object/from16 v22, v7

    .line 272
    .end local v2    # "embeddedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;>;"
    .end local v7    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v21    # "embeddedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;>;"
    .restart local v22    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :goto_d
    const/4 v2, 0x2

    if-ne v4, v2, :cond_18

    .line 273
    if-eqz v6, :cond_17

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    goto :goto_e

    .line 274
    :cond_17
    const/4 v7, 0x0

    :goto_e
    nop

    .line 275
    .local v7, "rootR":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_18

    if-eq v7, v5, :cond_18

    .line 278
    const/4 v4, 0x0

    move v15, v4

    goto :goto_f

    .line 282
    .end local v7    # "rootR":Lcom/android/server/wm/ActivityRecord;
    :cond_18
    move v15, v4

    .end local v4    # "requestOverride":I
    .local v15, "requestOverride":I
    :goto_f
    :try_start_19
    iget-object v4, v1, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->clearPointerDownOutsideFocusRunnable()V

    .line 290
    const/4 v4, 0x4

    if-eq v3, v4, :cond_45

    if-eqz v5, :cond_45

    if-eqz v6, :cond_45

    .line 293
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v7
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_17

    if-eqz v7, :cond_19

    :try_start_1a
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1a

    :cond_19
    goto :goto_11

    :cond_1a
    :goto_10
    move-object/from16 v27, v0

    move/from16 v28, v3

    move-object/from16 v29, v5

    goto/16 :goto_25

    :goto_11
    :try_start_1b
    iget-boolean v7, v5, Lcom/android/server/wm/ActivityRecord;->mHasSceneTransition:Z

    if-eqz v7, :cond_1b

    goto :goto_10

    .line 308
    :cond_1b
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v9, "prevActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-static {v6, v5, v9}, Lcom/android/server/wm/BackNavigationController;->getAnimatablePrevActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z

    move-result v4

    move/from16 v23, v4

    .line 311
    .local v23, "canAnimate":Z
    invoke-virtual {v1, v0}, Lcom/android/server/wm/BackNavigationController;->isKeyguardOccluded(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    move/from16 v25, v4

    .line 312
    .local v25, "isOccluded":Z
    if-nez v23, :cond_1c

    .line 313
    const/4 v3, 0x4

    move-object/from16 v27, v0

    move-object/from16 v7, v17

    move-object/from16 v10, v22

    goto/16 :goto_1a

    .line 314
    :cond_1c
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x1

    if-eq v4, v8, :cond_1d

    .line 316
    const/4 v3, 0x0

    .line 317
    move-object v7, v0

    move-object/from16 v27, v0

    move-object v10, v7

    move-object/from16 v7, v17

    .end local v22    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .local v7, "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    goto/16 :goto_1a

    .line 318
    .end local v7    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v22    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :cond_1d
    invoke-static {v5, v9}, Lcom/android/server/wm/BackNavigationController;->hasTranslucentActivity(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 320
    const/4 v3, 0x4

    move-object/from16 v27, v0

    move-object/from16 v7, v17

    move-object/from16 v10, v22

    goto/16 :goto_1a

    .line 321
    :cond_1e
    invoke-static {v9}, Lcom/android/server/wm/BackNavigationController;->allActivitiesHaveProcesses(Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 324
    const/4 v3, 0x4

    move-object/from16 v27, v0

    move-object/from16 v7, v17

    move-object/from16 v10, v22

    goto/16 :goto_1a

    .line 325
    :cond_1f
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_17

    if-lez v4, :cond_28

    if-nez v15, :cond_28

    .line 327
    if-eqz v25, :cond_20

    :try_start_1c
    invoke-static {v9}, Lcom/android/server/wm/BackNavigationController;->isAllActivitiesCanShowWhenLocked(Ljava/util/ArrayList;)Z

    move-result v4
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    if-eqz v4, :cond_21

    :cond_20
    goto :goto_12

    :cond_21
    move-object/from16 v27, v0

    move/from16 v28, v3

    goto/16 :goto_15

    .line 328
    :goto_12
    :try_start_1d
    invoke-static {v9}, Lcom/android/server/wm/BackNavigationController;->isAllActivitiesCreated(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 330
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    .line 331
    .local v4, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v4, :cond_23

    .line 332
    :try_start_1e
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v7

    if-nez v7, :cond_22

    .line 333
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v7

    if-eqz v7, :cond_23

    .line 334
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->canCustomizeAppTransition()Z

    move-result v7
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    if-eqz v7, :cond_23

    :cond_22
    const/4 v7, 0x1

    goto :goto_13

    :cond_23
    const/4 v7, 0x0

    :goto_13
    nop

    .line 335
    .local v7, "canCustomize":Z
    if-eqz v7, :cond_26

    .line 336
    :try_start_1f
    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController;->isCustomizeExitAnimation(Lcom/android/server/wm/WindowState;)Z

    move-result v8
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    if-eqz v8, :cond_24

    .line 337
    :try_start_20
    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v8, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {v13, v8, v10}, Landroid/window/BackNavigationInfo$Builder;->setWindowAnimations(Ljava/lang/String;I)Landroid/window/BackNavigationInfo$Builder;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    .line 340
    :cond_24
    nop

    .line 341
    const/4 v8, 0x0

    :try_start_21
    invoke-virtual {v5, v8}, Lcom/android/server/wm/ActivityRecord;->getCustomAnimation(Z)Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    move-result-object v10

    .line 342
    .local v10, "customAppTransition":Lcom/android/server/wm/ActivityRecord$CustomAppTransition;
    if-eqz v10, :cond_25

    .line 343
    iget-object v8, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v2, v10, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mEnterAnim:I

    move-object/from16 v27, v0

    .end local v0    # "window":Lcom/android/server/wm/WindowState;
    .local v27, "window":Lcom/android/server/wm/WindowState;
    iget v0, v10, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mExitAnim:I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_c

    move/from16 v28, v3

    .end local v3    # "backType":I
    .local v28, "backType":I
    :try_start_22
    iget v3, v10, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mBackgroundColor:I

    invoke-virtual {v13, v8, v2, v0, v3}, Landroid/window/BackNavigationInfo$Builder;->setCustomAnimation(Ljava/lang/String;III)Landroid/window/BackNavigationInfo$Builder;

    goto :goto_14

    .line 488
    .end local v4    # "parent":Lcom/android/server/wm/WindowContainer;
    .end local v7    # "canCustomize":Z
    .end local v9    # "prevActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v10    # "customAppTransition":Lcom/android/server/wm/ActivityRecord$CustomAppTransition;
    .end local v11    # "transferGestureToEmbedded":Z
    .end local v15    # "requestOverride":I
    .end local v16    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v18    # "canInterruptInView":Z
    .end local v21    # "embeddedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;>;"
    .end local v23    # "canAnimate":Z
    .end local v25    # "isOccluded":Z
    .end local v27    # "window":Lcom/android/server/wm/WindowState;
    :catchall_b
    move-exception v0

    move-object v3, v5

    move-object v5, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v22

    move/from16 v2, v28

    goto/16 :goto_26

    .end local v28    # "backType":I
    .restart local v3    # "backType":I
    :catchall_c
    move-exception v0

    move/from16 v28, v3

    move-object v3, v5

    move-object v5, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v22

    move/from16 v2, v28

    .end local v3    # "backType":I
    .restart local v28    # "backType":I
    goto/16 :goto_26

    .line 342
    .end local v28    # "backType":I
    .restart local v0    # "window":Lcom/android/server/wm/WindowState;
    .restart local v3    # "backType":I
    .restart local v4    # "parent":Lcom/android/server/wm/WindowContainer;
    .restart local v7    # "canCustomize":Z
    .restart local v9    # "prevActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v10    # "customAppTransition":Lcom/android/server/wm/ActivityRecord$CustomAppTransition;
    .restart local v11    # "transferGestureToEmbedded":Z
    .restart local v15    # "requestOverride":I
    .restart local v16    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v18    # "canInterruptInView":Z
    .restart local v21    # "embeddedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;>;"
    .restart local v23    # "canAnimate":Z
    .restart local v25    # "isOccluded":Z
    :cond_25
    move-object/from16 v27, v0

    move/from16 v28, v3

    .end local v0    # "window":Lcom/android/server/wm/WindowState;
    .end local v3    # "backType":I
    .restart local v27    # "window":Lcom/android/server/wm/WindowState;
    .restart local v28    # "backType":I
    goto :goto_14

    .line 335
    .end local v10    # "customAppTransition":Lcom/android/server/wm/ActivityRecord$CustomAppTransition;
    .end local v27    # "window":Lcom/android/server/wm/WindowState;
    .end local v28    # "backType":I
    .restart local v0    # "window":Lcom/android/server/wm/WindowState;
    .restart local v3    # "backType":I
    :cond_26
    move-object/from16 v27, v0

    move/from16 v28, v3

    .line 349
    .end local v0    # "window":Lcom/android/server/wm/WindowState;
    .end local v3    # "backType":I
    .restart local v27    # "window":Lcom/android/server/wm/WindowState;
    .restart local v28    # "backType":I
    :goto_14
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 350
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getLetterboxOverrides()Lcom/android/server/wm/AppCompatLetterboxOverrides;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxBackgroundColor()Landroid/graphics/Color;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Color;->toArgb()I

    move-result v0

    .line 349
    invoke-virtual {v13, v0}, Landroid/window/BackNavigationInfo$Builder;->setLetterboxColor(I)Landroid/window/BackNavigationInfo$Builder;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    .line 351
    move-object v2, v5

    .line 352
    .end local v22    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .local v2, "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    const/4 v8, 0x0

    :try_start_23
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_d

    .line 353
    .end local v17    # "prevTask":Lcom/android/server/wm/Task;
    .local v0, "prevTask":Lcom/android/server/wm/Task;
    const/4 v3, 0x2

    .line 354
    .end local v4    # "parent":Lcom/android/server/wm/WindowContainer;
    .end local v7    # "canCustomize":Z
    .end local v28    # "backType":I
    .restart local v3    # "backType":I
    move-object v7, v0

    move-object v10, v2

    goto/16 :goto_1a

    .line 488
    .end local v0    # "prevTask":Lcom/android/server/wm/Task;
    .end local v3    # "backType":I
    .end local v9    # "prevActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v11    # "transferGestureToEmbedded":Z
    .end local v15    # "requestOverride":I
    .end local v16    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v18    # "canInterruptInView":Z
    .end local v21    # "embeddedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;>;"
    .end local v23    # "canAnimate":Z
    .end local v25    # "isOccluded":Z
    .end local v27    # "window":Lcom/android/server/wm/WindowState;
    .restart local v17    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v28    # "backType":I
    :catchall_d
    move-exception v0

    move-object v7, v2

    move-object v3, v5

    move-object v5, v6

    move-object/from16 v6, v17

    move/from16 v2, v28

    goto/16 :goto_26

    .line 328
    .end local v2    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v28    # "backType":I
    .local v0, "window":Lcom/android/server/wm/WindowState;
    .restart local v3    # "backType":I
    .restart local v9    # "prevActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v11    # "transferGestureToEmbedded":Z
    .restart local v15    # "requestOverride":I
    .restart local v16    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v18    # "canInterruptInView":Z
    .restart local v21    # "embeddedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;>;"
    .restart local v22    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v23    # "canAnimate":Z
    .restart local v25    # "isOccluded":Z
    :cond_27
    move-object/from16 v27, v0

    move/from16 v28, v3

    .line 356
    .end local v0    # "window":Lcom/android/server/wm/WindowState;
    .end local v3    # "backType":I
    .restart local v27    # "window":Lcom/android/server/wm/WindowState;
    .restart local v28    # "backType":I
    :goto_15
    const/4 v0, 0x4

    move v3, v0

    move-object/from16 v7, v17

    move-object/from16 v10, v22

    .end local v28    # "backType":I
    .local v0, "backType":I
    goto/16 :goto_1a

    .line 325
    .end local v27    # "window":Lcom/android/server/wm/WindowState;
    .local v0, "window":Lcom/android/server/wm/WindowState;
    .restart local v3    # "backType":I
    :cond_28
    move-object/from16 v27, v0

    move/from16 v28, v3

    .line 358
    .end local v0    # "window":Lcom/android/server/wm/WindowState;
    .end local v3    # "backType":I
    .restart local v27    # "window":Lcom/android/server/wm/WindowState;
    .restart local v28    # "backType":I
    :try_start_24
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/wm/LockTaskController;->isTaskLocked(Lcom/android/server/wm/Task;)Z

    move-result v0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_16

    if-nez v0, :cond_33

    .line 359
    :try_start_25
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v0

    if-eqz v0, :cond_29

    goto/16 :goto_19

    .line 365
    :cond_29
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda9;-><init>()V

    const/4 v3, 0x1

    const/4 v8, 0x0

    invoke-virtual {v0, v2, v6, v8, v3}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/Task;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_b

    move-object v2, v0

    .line 372
    .end local v17    # "prevTask":Lcom/android/server/wm/Task;
    .local v2, "prevTask":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_2a

    .line 373
    :try_start_26
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_16

    .line 488
    .end local v9    # "prevActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v11    # "transferGestureToEmbedded":Z
    .end local v15    # "requestOverride":I
    .end local v16    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v18    # "canInterruptInView":Z
    .end local v21    # "embeddedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;>;"
    .end local v23    # "canAnimate":Z
    .end local v25    # "isOccluded":Z
    .end local v27    # "window":Lcom/android/server/wm/WindowState;
    :catchall_e
    move-exception v0

    move-object v3, v5

    move-object v5, v6

    move-object/from16 v7, v22

    move-object v6, v2

    move/from16 v2, v28

    goto/16 :goto_26

    .line 373
    .restart local v9    # "prevActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v11    # "transferGestureToEmbedded":Z
    .restart local v15    # "requestOverride":I
    .restart local v16    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v18    # "canInterruptInView":Z
    .restart local v21    # "embeddedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;>;"
    .restart local v23    # "canAnimate":Z
    .restart local v25    # "isOccluded":Z
    .restart local v27    # "window":Lcom/android/server/wm/WindowState;
    :cond_2a
    const/4 v0, 0x0

    .line 374
    .local v0, "tmpPre":Lcom/android/server/wm/ActivityRecord;
    :goto_16
    if-eqz v0, :cond_2b

    .line 375
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-static {v0, v9}, Lcom/android/server/wm/BackNavigationController;->findAdjacentActivityIfExist(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)V

    .line 378
    :cond_2b
    if-eqz v2, :cond_32

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_32

    if-eqz v25, :cond_2c

    .line 379
    invoke-static {v9}, Lcom/android/server/wm/BackNavigationController;->isAllActivitiesCanShowWhenLocked(Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_2c

    goto/16 :goto_18

    .line 381
    :cond_2c
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_e

    if-eqz v3, :cond_2e

    .line 382
    move-object v7, v6

    .line 383
    .end local v22    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .local v7, "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :try_start_27
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_10

    .line 384
    .end local v2    # "prevTask":Lcom/android/server/wm/Task;
    .local v3, "prevTask":Lcom/android/server/wm/Task;
    const/4 v2, 0x1

    .line 385
    .end local v28    # "backType":I
    .local v2, "backType":I
    :try_start_28
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 386
    .local v4, "ar":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_2d

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->hasWallpaper()Z

    move-result v8

    if-eqz v8, :cond_2d

    const/4 v8, 0x1

    goto :goto_17

    .line 488
    .end local v0    # "tmpPre":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "ar":Lcom/android/server/wm/ActivityRecord;
    .end local v9    # "prevActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v11    # "transferGestureToEmbedded":Z
    .end local v15    # "requestOverride":I
    .end local v16    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v18    # "canInterruptInView":Z
    .end local v21    # "embeddedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;>;"
    .end local v23    # "canAnimate":Z
    .end local v25    # "isOccluded":Z
    .end local v27    # "window":Lcom/android/server/wm/WindowState;
    :catchall_f
    move-exception v0

    move-object/from16 v32, v6

    move-object v6, v3

    move-object v3, v5

    move-object/from16 v5, v32

    goto/16 :goto_26

    .line 386
    .restart local v0    # "tmpPre":Lcom/android/server/wm/ActivityRecord;
    .restart local v4    # "ar":Lcom/android/server/wm/ActivityRecord;
    .restart local v9    # "prevActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v11    # "transferGestureToEmbedded":Z
    .restart local v15    # "requestOverride":I
    .restart local v16    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v18    # "canInterruptInView":Z
    .restart local v21    # "embeddedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;>;"
    .restart local v23    # "canAnimate":Z
    .restart local v25    # "isOccluded":Z
    .restart local v27    # "window":Lcom/android/server/wm/WindowState;
    :cond_2d
    const/4 v8, 0x0

    :goto_17
    iput-boolean v8, v1, Lcom/android/server/wm/BackNavigationController;->mShowWallpaper:Z
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_f

    .line 387
    .end local v4    # "ar":Lcom/android/server/wm/ActivityRecord;
    move-object v10, v7

    move-object v7, v3

    move v3, v2

    goto :goto_1a

    .line 488
    .end local v0    # "tmpPre":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "prevTask":Lcom/android/server/wm/Task;
    .end local v9    # "prevActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v11    # "transferGestureToEmbedded":Z
    .end local v15    # "requestOverride":I
    .end local v16    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v18    # "canInterruptInView":Z
    .end local v21    # "embeddedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;>;"
    .end local v23    # "canAnimate":Z
    .end local v25    # "isOccluded":Z
    .end local v27    # "window":Lcom/android/server/wm/WindowState;
    .local v2, "prevTask":Lcom/android/server/wm/Task;
    .restart local v28    # "backType":I
    :catchall_10
    move-exception v0

    move-object v3, v5

    move-object v5, v6

    move-object v6, v2

    move/from16 v2, v28

    goto/16 :goto_26

    .line 392
    .end local v7    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v0    # "tmpPre":Lcom/android/server/wm/ActivityRecord;
    .restart local v9    # "prevActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v11    # "transferGestureToEmbedded":Z
    .restart local v15    # "requestOverride":I
    .restart local v16    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v18    # "canInterruptInView":Z
    .restart local v21    # "embeddedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;>;"
    .restart local v22    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v23    # "canAnimate":Z
    .restart local v25    # "isOccluded":Z
    .restart local v27    # "window":Lcom/android/server/wm/WindowState;
    :cond_2e
    :try_start_29
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 393
    .local v3, "prevParent":Lcom/android/server/wm/Task;
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 394
    .local v4, "currParent":Lcom/android/server/wm/Task;
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v7

    if-eqz v7, :cond_2f

    if-ne v3, v4, :cond_30

    .line 396
    :cond_2f
    invoke-static {v5, v9}, Lcom/android/server/wm/BackNavigationController;->hasTranslucentActivity(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z

    move-result v7
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_e

    if-eqz v7, :cond_31

    .line 397
    :cond_30
    const/4 v7, 0x4

    move v3, v7

    move-object/from16 v10, v22

    move-object v7, v2

    .end local v28    # "backType":I
    .local v7, "backType":I
    goto :goto_1a

    .line 399
    .end local v7    # "backType":I
    .restart local v28    # "backType":I
    :cond_31
    move-object v7, v2

    .line 400
    .end local v22    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .local v7, "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    const/4 v8, 0x3

    move-object v10, v7

    move v3, v8

    .end local v28    # "backType":I
    .local v8, "backType":I
    goto :goto_1a

    .line 380
    .end local v3    # "prevParent":Lcom/android/server/wm/Task;
    .end local v4    # "currParent":Lcom/android/server/wm/Task;
    .end local v7    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v8    # "backType":I
    .restart local v22    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v28    # "backType":I
    :cond_32
    :goto_18
    const/4 v3, 0x4

    move-object v7, v2

    move-object/from16 v10, v22

    .end local v28    # "backType":I
    .local v3, "backType":I
    goto :goto_1a

    .line 362
    .end local v0    # "tmpPre":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "prevTask":Lcom/android/server/wm/Task;
    .end local v3    # "backType":I
    .restart local v17    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v28    # "backType":I
    :cond_33
    :goto_19
    const/4 v0, 0x4

    move v3, v0

    move-object/from16 v7, v17

    move-object/from16 v10, v22

    .line 404
    .end local v17    # "prevTask":Lcom/android/server/wm/Task;
    .end local v22    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v28    # "backType":I
    .restart local v3    # "backType":I
    .local v7, "prevTask":Lcom/android/server/wm/Task;
    .local v10, "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :goto_1a
    :try_start_2a
    invoke-virtual {v13, v3}, Landroid/window/BackNavigationInfo$Builder;->setType(I)Landroid/window/BackNavigationInfo$Builder;

    .line 406
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    const/16 v20, 0x0

    aget-boolean v0, v0, v20

    if-eqz v0, :cond_36

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_14

    if-lez v0, :cond_34

    :try_start_2b
    const-string v0, ";"

    invoke-virtual {v9}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda10;

    invoke-direct {v4}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_11

    goto :goto_1b

    .line 488
    .end local v9    # "prevActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v11    # "transferGestureToEmbedded":Z
    .end local v15    # "requestOverride":I
    .end local v16    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v18    # "canInterruptInView":Z
    .end local v21    # "embeddedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;>;"
    .end local v23    # "canAnimate":Z
    .end local v25    # "isOccluded":Z
    .end local v27    # "window":Lcom/android/server/wm/WindowState;
    :catchall_11
    move-exception v0

    move v2, v3

    move-object v3, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v10

    goto/16 :goto_26

    .line 406
    .restart local v9    # "prevActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v11    # "transferGestureToEmbedded":Z
    .restart local v15    # "requestOverride":I
    .restart local v16    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v18    # "canInterruptInView":Z
    .restart local v21    # "embeddedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;>;"
    .restart local v23    # "canAnimate":Z
    .restart local v25    # "isOccluded":Z
    .restart local v27    # "window":Lcom/android/server/wm/WindowState;
    :cond_34
    const/4 v0, 0x0

    :goto_1b
    :try_start_2c
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_14

    .local v0, "protoLogParam0":Ljava/lang/String;
    if-eqz v7, :cond_35

    :try_start_2d
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object v2
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_11

    goto :goto_1c

    :cond_35
    const/4 v2, 0x0

    :goto_1c
    :try_start_2e
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam1":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam2":Ljava/lang/String;
    invoke-static {v3}, Landroid/window/BackNavigationInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_14

    move-object/from16 v29, v5

    .end local v5    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .local v8, "protoLogParam3":Ljava/lang/String;
    .local v29, "currentActivity":Lcom/android/server/wm/ActivityRecord;
    :try_start_2f
    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_13

    move-object/from16 v17, v7

    .end local v7    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v17    # "prevTask":Lcom/android/server/wm/Task;
    :try_start_30
    filled-new-array {v0, v2, v4, v8}, [Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v22, v8

    move-object/from16 v30, v9

    .end local v8    # "protoLogParam3":Ljava/lang/String;
    .end local v9    # "prevActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .local v22, "protoLogParam3":Ljava/lang/String;
    .local v30, "prevActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    const-wide v8, 0x755cb5c5d22e3a9dL    # 2.1554118172289596E257

    move-object/from16 v28, v0

    const/4 v0, 0x0

    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .local v28, "protoLogParam0":Ljava/lang/String;
    invoke-static {v5, v8, v9, v0, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_1d

    .line 488
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    .end local v4    # "protoLogParam2":Ljava/lang/String;
    .end local v11    # "transferGestureToEmbedded":Z
    .end local v15    # "requestOverride":I
    .end local v16    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v18    # "canInterruptInView":Z
    .end local v21    # "embeddedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;>;"
    .end local v22    # "protoLogParam3":Ljava/lang/String;
    .end local v23    # "canAnimate":Z
    .end local v25    # "isOccluded":Z
    .end local v27    # "window":Lcom/android/server/wm/WindowState;
    .end local v28    # "protoLogParam0":Ljava/lang/String;
    .end local v30    # "prevActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    :catchall_12
    move-exception v0

    move v2, v3

    move-object v5, v6

    move-object v7, v10

    move-object/from16 v6, v17

    move-object/from16 v3, v29

    goto/16 :goto_26

    .end local v17    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v7    # "prevTask":Lcom/android/server/wm/Task;
    :catchall_13
    move-exception v0

    move-object/from16 v17, v7

    move v2, v3

    move-object v5, v6

    move-object v7, v10

    move-object/from16 v6, v17

    move-object/from16 v3, v29

    .end local v7    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v17    # "prevTask":Lcom/android/server/wm/Task;
    goto/16 :goto_26

    .end local v17    # "prevTask":Lcom/android/server/wm/Task;
    .end local v29    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v5    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v7    # "prevTask":Lcom/android/server/wm/Task;
    :catchall_14
    move-exception v0

    move-object/from16 v29, v5

    move-object/from16 v17, v7

    move v2, v3

    move-object v5, v6

    move-object v7, v10

    move-object/from16 v6, v17

    move-object/from16 v3, v29

    .end local v5    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v7    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v17    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v29    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    goto/16 :goto_26

    .line 406
    .end local v17    # "prevTask":Lcom/android/server/wm/Task;
    .end local v29    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v5    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v7    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v9    # "prevActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v11    # "transferGestureToEmbedded":Z
    .restart local v15    # "requestOverride":I
    .restart local v16    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v18    # "canInterruptInView":Z
    .restart local v21    # "embeddedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;>;"
    .restart local v23    # "canAnimate":Z
    .restart local v25    # "isOccluded":Z
    .restart local v27    # "window":Lcom/android/server/wm/WindowState;
    :cond_36
    move-object/from16 v29, v5

    move-object/from16 v17, v7

    move-object/from16 v30, v9

    const/4 v0, 0x0

    .line 414
    .end local v5    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v7    # "prevTask":Lcom/android/server/wm/Task;
    .end local v9    # "prevActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v17    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v29    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v30    # "prevActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    :goto_1d
    const/4 v8, 0x1

    if-eq v3, v8, :cond_37

    const/4 v2, 0x3

    if-eq v3, v2, :cond_37

    const/4 v2, 0x2

    if-eq v3, v2, :cond_37

    if-nez v3, :cond_38

    :cond_37
    goto :goto_1e

    :cond_38
    move-object/from16 v4, p2

    goto :goto_1f

    :goto_1e
    if-eqz p2, :cond_39

    .line 419
    move-object/from16 v4, p2

    invoke-virtual {v4, v3}, Landroid/window/BackAnimationAdapter;->isAnimatable(I)Z

    move-result v2

    if-eqz v2, :cond_3a

    move v2, v8

    goto :goto_20

    .line 414
    :cond_39
    move-object/from16 v4, p2

    .line 419
    :cond_3a
    :goto_1f
    move v2, v0

    :goto_20
    nop

    .line 422
    .local v2, "prepareAnimation":Z
    if-eqz v2, :cond_3b

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->isNtWindowform()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 423
    const-string v5, "CoreBackPreview"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skip backNavigation for windowform. task="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v2, 0x0

    .line 430
    :cond_3b
    if-eqz v2, :cond_3c

    iget-object v5, v12, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskModeState()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_3c

    .line 431
    const-string v5, "CoreBackPreview"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skip backNavigation for screen pinned. task="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v2, 0x0

    .line 438
    :cond_3c
    if-eqz v2, :cond_3d

    const/4 v7, 0x2

    if-ne v3, v7, :cond_3d

    iget-object v5, v10, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 439
    invoke-virtual {v5}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 440
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v7, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda11;

    invoke-direct {v7}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 443
    const-string v5, "CoreBackPreview"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skip backNavigation for another animation is running, task="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 v2, 0x0

    .line 448
    :cond_3d
    if-eqz v2, :cond_42

    .line 449
    move v5, v2

    .end local v2    # "prepareAnimation":Z
    .local v5, "prepareAnimation":Z
    iget-object v2, v1, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    move v7, v5

    .end local v5    # "prepareAnimation":Z
    .local v7, "prepareAnimation":Z
    iget-object v5, v1, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_12

    .line 450
    move/from16 v31, v7

    move/from16 v24, v8

    move-object/from16 v7, v17

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    .end local v17    # "prevTask":Lcom/android/server/wm/Task;
    .end local v29    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v30    # "prevActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .local v7, "prevTask":Lcom/android/server/wm/Task;
    .local v8, "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v9    # "prevActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .local v31, "prepareAnimation":Z
    :try_start_31
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->prepareAnimation(ILandroid/window/BackAnimationAdapter;Lcom/android/server/wm/BackNavigationController$NavigationMonitor;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    move-result-object v2
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_15

    .line 459
    .end local v7    # "prevTask":Lcom/android/server/wm/Task;
    .end local v8    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .local v2, "builder":Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;
    .restart local v17    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v29    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_3e

    move/from16 v8, v24

    goto :goto_21

    :cond_3e
    move v8, v0

    :goto_21
    :try_start_32
    iput-boolean v8, v1, Lcom/android/server/wm/BackNavigationController;->mBackAnimationInProgress:Z

    .line 460
    iget-boolean v4, v1, Lcom/android/server/wm/BackNavigationController;->mBackAnimationInProgress:Z

    if-eqz v4, :cond_43

    .line 461
    iget-object v4, v10, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v4}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 462
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    const/16 v19, 0x3

    aget-boolean v4, v4, v19

    if-eqz v4, :cond_3f

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v7, 0x4403bbab80973f99L    # 4.550139763671087E19

    const/4 v5, 0x0

    invoke-static {v4, v7, v8, v0, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 464
    :cond_3f
    iput-object v2, v1, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    .line 468
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_22
    if-ltz v0, :cond_40

    .line 469
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->setDeferHidingClient()V

    .line 468
    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    :cond_40
    nop

    .end local v0    # "i":I
    goto :goto_23

    .line 472
    :cond_41
    invoke-direct {v1, v2}, Lcom/android/server/wm/BackNavigationController;->scheduleAnimation(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;)V

    goto :goto_23

    .line 488
    .end local v2    # "builder":Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;
    .end local v9    # "prevActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v11    # "transferGestureToEmbedded":Z
    .end local v15    # "requestOverride":I
    .end local v16    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v17    # "prevTask":Lcom/android/server/wm/Task;
    .end local v18    # "canInterruptInView":Z
    .end local v21    # "embeddedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;>;"
    .end local v23    # "canAnimate":Z
    .end local v25    # "isOccluded":Z
    .end local v27    # "window":Lcom/android/server/wm/WindowState;
    .end local v29    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v31    # "prepareAnimation":Z
    .restart local v7    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v8    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    :catchall_15
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v29, v8

    move v2, v3

    move-object v5, v6

    move-object v7, v10

    move-object/from16 v6, v17

    move-object/from16 v3, v29

    .end local v7    # "prevTask":Lcom/android/server/wm/Task;
    .end local v8    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v17    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v29    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    goto/16 :goto_26

    .line 448
    .local v2, "prepareAnimation":Z
    .restart local v11    # "transferGestureToEmbedded":Z
    .restart local v15    # "requestOverride":I
    .restart local v16    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v18    # "canInterruptInView":Z
    .restart local v21    # "embeddedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;>;"
    .restart local v23    # "canAnimate":Z
    .restart local v25    # "isOccluded":Z
    .restart local v27    # "window":Lcom/android/server/wm/WindowState;
    .restart local v30    # "prevActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    :cond_42
    move/from16 v31, v2

    move-object/from16 v9, v30

    .line 476
    .end local v2    # "prepareAnimation":Z
    .end local v30    # "prevActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v9    # "prevActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v31    # "prepareAnimation":Z
    :cond_43
    :goto_23
    move/from16 v5, v31

    .end local v31    # "prepareAnimation":Z
    .restart local v5    # "prepareAnimation":Z
    invoke-virtual {v13, v5}, Landroid/window/BackNavigationInfo$Builder;->setPrepareRemoteAnimation(Z)Landroid/window/BackNavigationInfo$Builder;

    .line 478
    if-eqz v10, :cond_44

    .line 479
    move v0, v3

    .line 480
    .local v0, "finalBackType":I
    new-instance v2, Landroid/os/RemoteCallback;

    new-instance v4, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda12;

    invoke-direct {v4, v1, v0}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/BackNavigationController;I)V

    invoke-direct {v2, v4}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 482
    .local v2, "onBackNavigationDone":Landroid/os/RemoteCallback;
    invoke-virtual {v13, v2}, Landroid/window/BackNavigationInfo$Builder;->setOnBackNavigationDone(Landroid/os/RemoteCallback;)Landroid/window/BackNavigationInfo$Builder;

    .line 483
    nop

    .end local v0    # "finalBackType":I
    .end local v2    # "onBackNavigationDone":Landroid/os/RemoteCallback;
    goto :goto_24

    .line 484
    :cond_44
    iget-object v0, v1, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-virtual {v0}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->stopMonitorForRemote()V

    .line 486
    :goto_24
    iput v3, v1, Lcom/android/server/wm/BackNavigationController;->mLastBackType:I

    .line 487
    invoke-virtual {v13}, Landroid/window/BackNavigationInfo$Builder;->build()Landroid/window/BackNavigationInfo;

    move-result-object v0

    monitor-exit v14
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 488
    .end local v3    # "backType":I
    .end local v9    # "prevActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v10    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v11    # "transferGestureToEmbedded":Z
    .end local v15    # "requestOverride":I
    .end local v16    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v18    # "canInterruptInView":Z
    .end local v21    # "embeddedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;>;"
    .end local v23    # "canAnimate":Z
    .end local v25    # "isOccluded":Z
    .end local v27    # "window":Lcom/android/server/wm/WindowState;
    .end local v29    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .local v5, "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .local v22, "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .local v28, "backType":I
    :catchall_16
    move-exception v0

    move-object/from16 v29, v5

    move-object v5, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v22

    move/from16 v2, v28

    move-object/from16 v3, v29

    .end local v5    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v29    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    goto/16 :goto_26

    .end local v28    # "backType":I
    .end local v29    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v3    # "backType":I
    .restart local v5    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    :catchall_17
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v29, v5

    move-object v5, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v22

    move/from16 v2, v28

    move-object/from16 v3, v29

    .end local v3    # "backType":I
    .end local v5    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v28    # "backType":I
    .restart local v29    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    goto/16 :goto_26

    .line 290
    .end local v28    # "backType":I
    .end local v29    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .local v0, "window":Lcom/android/server/wm/WindowState;
    .restart local v3    # "backType":I
    .restart local v5    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v11    # "transferGestureToEmbedded":Z
    .restart local v15    # "requestOverride":I
    .restart local v16    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v18    # "canInterruptInView":Z
    .restart local v21    # "embeddedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;>;"
    :cond_45
    move-object/from16 v27, v0

    move/from16 v28, v3

    move-object/from16 v29, v5

    .line 296
    .end local v0    # "window":Lcom/android/server/wm/WindowState;
    .end local v3    # "backType":I
    .end local v5    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v27    # "window":Lcom/android/server/wm/WindowState;
    .restart local v28    # "backType":I
    .restart local v29    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    :goto_25
    :try_start_33
    invoke-virtual {v13, v4}, Landroid/window/BackNavigationInfo$Builder;->setType(I)Landroid/window/BackNavigationInfo$Builder;

    .line 297
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v2, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda8;

    invoke-direct {v2, v1}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/BackNavigationController;)V

    invoke-direct {v0, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-virtual {v13, v0}, Landroid/window/BackNavigationInfo$Builder;->setOnBackNavigationDone(Landroid/os/RemoteCallback;)Landroid/window/BackNavigationInfo$Builder;

    .line 299
    iput v4, v1, Lcom/android/server/wm/BackNavigationController;->mLastBackType:I

    .line 300
    invoke-virtual {v13}, Landroid/window/BackNavigationInfo$Builder;->build()Landroid/window/BackNavigationInfo;

    move-result-object v0

    monitor-exit v14
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 488
    .end local v11    # "transferGestureToEmbedded":Z
    .end local v15    # "requestOverride":I
    .end local v16    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v18    # "canInterruptInView":Z
    .end local v21    # "embeddedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;>;"
    .end local v27    # "window":Lcom/android/server/wm/WindowState;
    :catchall_18
    move-exception v0

    move-object v5, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v22

    move/from16 v2, v28

    move-object/from16 v3, v29

    goto/16 :goto_26

    .end local v22    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v28    # "backType":I
    .end local v29    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v3    # "backType":I
    .restart local v5    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .local v7, "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :catchall_19
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v29, v5

    move-object/from16 v22, v7

    move-object v5, v6

    move-object/from16 v6, v17

    move/from16 v2, v28

    move-object/from16 v3, v29

    .end local v3    # "backType":I
    .end local v5    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v7    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v22    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v28    # "backType":I
    .restart local v29    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    goto :goto_26

    .end local v22    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v28    # "backType":I
    .end local v29    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v5    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v7    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .local v10, "backType":I
    :catchall_1a
    move-exception v0

    move-object/from16 v29, v5

    move-object/from16 v22, v7

    move-object v5, v6

    move v2, v10

    move-object/from16 v6, v17

    move-object/from16 v3, v29

    .end local v5    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v7    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v22    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v29    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    goto :goto_26

    .end local v6    # "currentTask":Lcom/android/server/wm/Task;
    .end local v17    # "prevTask":Lcom/android/server/wm/Task;
    .end local v22    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v29    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .local v3, "prevTask":Lcom/android/server/wm/Task;
    .restart local v5    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v7    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .local v9, "currentTask":Lcom/android/server/wm/Task;
    :catchall_1b
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v29, v5

    move-object/from16 v22, v7

    move-object v5, v9

    move v2, v10

    move-object/from16 v6, v17

    move-object/from16 v3, v29

    .end local v3    # "prevTask":Lcom/android/server/wm/Task;
    .end local v5    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v7    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v17    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v22    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v29    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    goto :goto_26

    .end local v17    # "prevTask":Lcom/android/server/wm/Task;
    .end local v22    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v29    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v3    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v7    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .local v16, "currentActivity":Lcom/android/server/wm/ActivityRecord;
    :catchall_1c
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v22, v7

    move-object v5, v9

    move v2, v10

    move-object/from16 v3, v16

    move-object/from16 v6, v17

    .end local v3    # "prevTask":Lcom/android/server/wm/Task;
    .end local v7    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v17    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v22    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    goto :goto_26

    .end local v9    # "currentTask":Lcom/android/server/wm/Task;
    .end local v17    # "prevTask":Lcom/android/server/wm/Task;
    .end local v22    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .local v5, "currentTask":Lcom/android/server/wm/Task;
    .local v6, "prevTask":Lcom/android/server/wm/Task;
    .restart local v7    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :catchall_1d
    move-exception v0

    move-object v9, v5

    move-object/from16 v17, v6

    move-object/from16 v22, v7

    move v2, v10

    move-object/from16 v3, v16

    .end local v5    # "currentTask":Lcom/android/server/wm/Task;
    .end local v6    # "prevTask":Lcom/android/server/wm/Task;
    .end local v7    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v9    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v17    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v22    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    goto :goto_26

    .end local v9    # "currentTask":Lcom/android/server/wm/Task;
    .end local v10    # "backType":I
    .end local v16    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v17    # "prevTask":Lcom/android/server/wm/Task;
    .end local v22    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .local v2, "backType":I
    .local v3, "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v5    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v6    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v7    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :catchall_1e
    move-exception v0

    move v10, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object/from16 v22, v7

    :goto_26
    :try_start_34
    monitor-exit v14
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method
