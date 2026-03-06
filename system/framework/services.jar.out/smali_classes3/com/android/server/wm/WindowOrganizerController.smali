.class Lcom/android/server/wm/WindowOrganizerController;
.super Landroid/window/IWindowOrganizerController$Stub;
.source "WindowOrganizerController.java"

# interfaces
.implements Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    }
.end annotation


# static fields
.field static final CONTROLLABLE_CONFIGS:I = 0x20003c00

.field static final CONTROLLABLE_WINDOW_CONFIGS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WindowOrganizerController"

.field private static final TRANSACT_EFFECTS_CLIENT_CONFIG:I = 0x1

.field private static final TRANSACT_EFFECTS_LIFECYCLE:I = 0x2

.field private static final TRANSACT_EFFECTS_NONE:I


# instance fields
.field final mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

.field private final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field final mLaunchTaskFragments:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/TaskFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field final mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

.field final mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

.field private final mTmpBounds0:Landroid/graphics/Rect;

.field private final mTmpBounds1:Landroid/graphics/Rect;

.field private final mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/window/IWindowContainerTransactionCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mTransitionController:Lcom/android/server/wm/TransitionController;


# direct methods
.method public static synthetic $r8$lambda$A_PWJ4iXE93Fky_gNul_4eLuhB0(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/WindowOrganizerController;->lambda$applyTaskFragmentOperation$12(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Ktd0mEZGGdp2G6sUrqEz1G5ckL0(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowOrganizerController;->lambda$applySyncTransaction$1(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M2dNrZd9mXVP-luGVFZFYsQnwSw(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/WindowOrganizerController;->lambda$applyHierarchyOp$11(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$OxMmVYZeM4xJh7uJ-Y5zE6BDr8Y(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition$ReadyCondition;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowOrganizerController;->lambda$startTransition$4(Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition$ReadyCondition;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PHnU0rj5Bcvaq0dL-Wi7kOJt8bo(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition$ReadyCondition;ZZ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/wm/WindowOrganizerController;->lambda$startTransition$3(Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition$ReadyCondition;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Udo8ccaftdRLBU4kwjIYQuKEt5Y(Lcom/android/server/wm/WindowOrganizerController;[Ljava/lang/Integer;Ljava/util/function/IntSupplier;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->lambda$waitAsyncStart$15([Ljava/lang/Integer;Ljava/util/function/IntSupplier;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WpZsgFsQkKfWbC5KpiRgRygDo0M(Landroid/window/WindowContainerTransaction$Change;[ILjava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->lambda$applyDisplayAreaChanges$8(Landroid/window/WindowContainerTransaction$Change;[ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b6Ho-cI4nosNJGhhnIqATtTV08w(ILcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/WindowOrganizerController;->lambda$applyTaskChanges$7(ILcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bKC_sB5Z_Fv5D0RamlN1JR0Y4R4(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/WindowOrganizerController$CallerInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/WindowOrganizerController;->lambda$applySyncTransaction$2(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hkQsQ6KHYw9RJcI5qgr8IGd-uZ4(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/WindowOrganizerController$CallerInfo;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowOrganizerController;->lambda$applySyncTransaction$0(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/WindowOrganizerController$CallerInfo;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kEMO_xJ8sOH3dgCgm2Lbfv4rhTI(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/TaskFragment;Landroid/content/Intent;Lcom/android/server/wm/SafeActivityOptions;Landroid/os/IBinder;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;)I
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/wm/WindowOrganizerController;->lambda$applyTaskFragmentOperation$13(Lcom/android/server/wm/TaskFragment;Landroid/content/Intent;Lcom/android/server/wm/SafeActivityOptions;Landroid/os/IBinder;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$m9eWnLRjueghfq5g6k4aTionPyM(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/window/RemoteTransition;Z)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/wm/WindowOrganizerController;->lambda$applyTaskFragmentTransactionLocked$5(Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/window/RemoteTransition;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$pLNp_awgf8eTzDR3wucBMvfb13c(Lcom/android/server/wm/TaskFragment;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/WindowOrganizerController;->lambda$applyTaskFragmentOperation$14(Lcom/android/server/wm/TaskFragment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$s7aFkCZ6zAzwLh7nMkwc20qg8lg(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;ILcom/android/server/wm/SafeActivityOptions;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/WindowOrganizerController;->lambda$applyHierarchyOp$9(Lcom/android/server/wm/WindowOrganizerController$CallerInfo;ILcom/android/server/wm/SafeActivityOptions;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uEqvBVRgaS-NbaHAA-Lq0GwoRGY(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/WindowContainer;ZLcom/android/server/wm/TaskDisplayArea;Landroid/window/WindowContainerTransaction$HierarchyOp;Lcom/android/server/wm/WindowContainer;ZLjava/util/ArrayList;Lcom/android/server/wm/Task;)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lcom/android/server/wm/WindowOrganizerController;->lambda$reparentChildrenTasksHierarchyOp$16(Lcom/android/server/wm/WindowContainer;ZLcom/android/server/wm/TaskDisplayArea;Landroid/window/WindowContainerTransaction$HierarchyOp;Lcom/android/server/wm/WindowContainer;ZLjava/util/ArrayList;Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ypsTPIe3s2bFHjQZlRM_7n4LFuQ(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/WindowOrganizerController;->lambda$applyTransaction$6(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zr9VJC0fYmsJ1S59sEsh3nD0PG0(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction$HierarchyOp;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/WindowOrganizerController;->lambda$applyHierarchyOp$10(Landroid/window/WindowContainerTransaction$HierarchyOp;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 2
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 206
    invoke-direct {p0}, Landroid/window/IWindowOrganizerController$Stub;-><init>()V

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    .line 200
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    .line 203
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTmpBounds0:Landroid/graphics/Rect;

    .line 204
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTmpBounds1:Landroid/graphics/Rect;

    .line 207
    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 208
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 209
    new-instance v0, Lcom/android/server/wm/TaskOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 210
    new-instance v0, Lcom/android/server/wm/DisplayAreaOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayAreaOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    .line 211
    new-instance v0, Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-direct {v0, p1, p0}, Lcom/android/server/wm/TaskFragmentOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowOrganizerController;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 212
    new-instance v0, Lcom/android/server/wm/TransitionController;

    invoke-direct {v0, p1}, Lcom/android/server/wm/TransitionController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 213
    return-void
.end method

.method private adjustTaskFragmentRelativeBoundsForMinDimensionsIfNeeded(Lcom/android/server/wm/TaskFragment;Landroid/graphics/Rect;Landroid/os/IBinder;)V
    .locals 9
    .param p1, "taskFragment"    # Lcom/android/server/wm/TaskFragment;
    .param p2, "inOutRelativeBounds"    # Landroid/graphics/Rect;
    .param p3, "errorCallbackToken"    # Landroid/os/IBinder;

    .line 1069
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1070
    return-void

    .line 1072
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->calculateMinDimension()Landroid/graphics/Point;

    move-result-object v0

    .line 1073
    .local v0, "minDimensions":Landroid/graphics/Point;
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-lt v1, v2, :cond_2

    .line 1074
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v6, p1

    move-object v5, p3

    goto :goto_1

    .line 1076
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The requested relative bounds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " does not satisfy minimum dimensions:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    .line 1079
    .local v8, "exception":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v4

    const/16 v7, 0x9

    move-object v3, p0

    move-object v6, p1

    move-object v5, p3

    .end local p1    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    .end local p3    # "errorCallbackToken":Landroid/os/IBinder;
    .local v5, "errorCallbackToken":Landroid/os/IBinder;
    .local v6, "taskFragment":Lcom/android/server/wm/TaskFragment;
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 1083
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1085
    .end local v8    # "exception":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method private applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I
    .locals 12
    .param p2, "change"    # Landroid/window/WindowContainerTransaction$Change;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;",
            "Landroid/window/WindowContainerTransaction$Change;",
            ")I"
        }
    .end annotation

    .line 812
    .local p1, "container":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getConfigSetMask()I

    move-result v0

    const v1, 0x20003c00

    and-int/2addr v0, v1

    .line 813
    .local v0, "configMask":I
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getWindowSetMask()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    .line 814
    .local v1, "windowMask":I
    const/4 v2, 0x0

    .line 815
    .local v2, "effects":I
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getWindowingMode()I

    move-result v3

    .line 816
    .local v3, "windowingMode":I
    const/4 v4, -0x1

    if-eqz v0, :cond_4

    .line 817
    if-le v3, v4, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    if-eq v3, v5, :cond_0

    .line 823
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 824
    .local v5, "c":Landroid/content/res/Configuration;
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v5, v6, v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;II)V

    .line 825
    .end local v5    # "c":Landroid/content/res/Configuration;
    goto :goto_2

    .line 826
    :cond_0
    new-instance v5, Landroid/content/res/Configuration;

    .line 827
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 828
    .restart local v5    # "c":Landroid/content/res/Configuration;
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v5, v6, v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;II)V

    .line 829
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_3

    .line 830
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getConfigSetMask()I

    move-result v6

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_3

    .line 835
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v6

    .line 836
    .local v6, "task":Lcom/android/server/wm/Task;
    if-eqz v6, :cond_3

    .line 837
    iget v7, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    iget v7, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v7, :cond_2

    .line 839
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 840
    .local v7, "oldBounds":Landroid/graphics/Rect;
    nop

    .line 841
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 842
    .local v9, "newBounds":Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-ne v10, v11, :cond_1

    .line 843
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-ne v10, v11, :cond_1

    .line 844
    iget v8, v7, Landroid/graphics/Rect;->left:I

    iget v10, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v10

    iput v8, v6, Lcom/android/server/wm/Task;->mOffsetXForInsets:I

    .line 845
    iget v8, v7, Landroid/graphics/Rect;->top:I

    iget v10, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v10

    iput v8, v6, Lcom/android/server/wm/Task;->mOffsetYForInsets:I

    goto :goto_0

    .line 847
    :cond_1
    iput v8, v6, Lcom/android/server/wm/Task;->mOffsetYForInsets:I

    iput v8, v6, Lcom/android/server/wm/Task;->mOffsetXForInsets:I

    .line 849
    .end local v7    # "oldBounds":Landroid/graphics/Rect;
    .end local v9    # "newBounds":Landroid/graphics/Rect;
    :goto_0
    goto :goto_1

    .line 850
    :cond_2
    iput v8, v6, Lcom/android/server/wm/Task;->mOffsetYForInsets:I

    iput v8, v6, Lcom/android/server/wm/Task;->mOffsetXForInsets:I

    .line 854
    .end local v6    # "task":Lcom/android/server/wm/Task;
    :cond_3
    :goto_1
    invoke-virtual {p1, v5}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 856
    .end local v5    # "c":Landroid/content/res/Configuration;
    :goto_2
    or-int/lit8 v2, v2, 0x1

    .line 857
    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isEmbedded()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 859
    or-int/lit8 v2, v2, 0x2

    .line 862
    :cond_4
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    .line 863
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getFocusable()Z

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/server/wm/WindowContainer;->setFocusable(Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 864
    or-int/lit8 v2, v2, 0x2

    .line 868
    :cond_5
    if-le v3, v4, :cond_9

    .line 869
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->isInLockTaskMode()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 870
    invoke-static {v3}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 871
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isEmbedded()Z

    move-result v4

    if-nez v4, :cond_6

    .line 872
    const-string v4, "WindowOrganizerController"

    const-string v5, "Dropping unsupported request to set multi-window windowing mode during locked task mode."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    return v2

    .line 877
    :cond_6
    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 881
    return v2

    .line 884
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result v4

    .line 885
    .local v4, "prevMode":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 886
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/wm/Task;->setRootTaskWindowingMode(I)V

    goto :goto_3

    .line 888
    :cond_8
    invoke-virtual {p1, v3}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    .line 890
    :goto_3
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    if-eq v4, v5, :cond_9

    .line 894
    or-int/lit8 v2, v2, 0x2

    .line 897
    .end local v4    # "prevMode":I
    :cond_9
    return v2
.end method

.method private applyDisplayAreaChanges(Lcom/android/server/wm/DisplayArea;Landroid/window/WindowContainerTransaction$Change;)I
    .locals 3
    .param p1, "displayArea"    # Lcom/android/server/wm/DisplayArea;
    .param p2, "c"    # Landroid/window/WindowContainerTransaction$Change;

    .line 989
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 990
    .local v0, "effects":[I
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 992
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    .line 994
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getIgnoreOrientationRequest()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/DisplayArea;->setIgnoreOrientationRequest(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 995
    aget v1, v0, v2

    or-int/lit8 v1, v1, 0x2

    aput v1, v0, v2

    .line 999
    :cond_0
    new-instance v1, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2, v0}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;-><init>(Landroid/window/WindowContainerTransaction$Change;[I)V

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 1008
    aget v1, v0, v2

    return v1
.end method

.method private applyHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;IILcom/android/server/wm/ActionChain;ZLcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)I
    .locals 26
    .param p1, "hop"    # Landroid/window/WindowContainerTransaction$HierarchyOp;
    .param p2, "effects"    # I
    .param p3, "syncId"    # I
    .param p4, "chain"    # Lcom/android/server/wm/ActionChain;
    .param p5, "isInLockTaskMode"    # Z
    .param p6, "caller"    # Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .param p7, "errorCallbackToken"    # Landroid/os/IBinder;
    .param p8, "organizer"    # Landroid/window/ITaskFragmentOrganizer;

    .line 1091
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v7, p3

    move-object/from16 v2, p4

    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v8

    .line 1092
    .local v8, "type":I
    const-string v3, "Cannot set non-task as launch root: "

    const-string v4, "Attempt to remove invalid task: "

    const-string v5, " while in lock task mode"

    const-string v6, "Skip applying hierarchy operation "

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v12, "WindowOrganizerController"

    packed-switch v8, :pswitch_data_0

    .line 1334
    :pswitch_0
    if-eqz p5, :cond_0

    .line 1335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    return p2

    .line 1334
    :cond_0
    move/from16 v14, p5

    move-object/from16 v15, p6

    goto/16 :goto_10

    .line 1211
    :pswitch_1
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getAppCompatOptions()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "android:transaction.reachability_x"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1212
    .local v3, "doubleTapX":I
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getAppCompatOptions()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "android:transaction.reachability_y"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1213
    .local v4, "doubleTapY":I
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    .line 1214
    .local v5, "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    if-nez v5, :cond_1

    .line 1215
    move/from16 v14, p5

    move-object/from16 v15, p6

    goto/16 :goto_10

    .line 1217
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v6

    .line 1218
    .local v6, "currentTask":Lcom/android/server/wm/Task;
    iget-object v13, v2, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    if-eqz v13, :cond_2

    .line 1219
    iget-object v13, v2, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v13, v5}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1221
    :cond_2
    if-eqz v6, :cond_4

    .line 1222
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v13

    .line 1223
    .local v13, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v13, :cond_4

    .line 1224
    iget-object v14, v2, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    if-eqz v14, :cond_3

    .line 1225
    iget-object v14, v2, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v14, v13}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1227
    :cond_3
    iget-object v14, v13, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v14}, Lcom/android/server/wm/AppCompatController;->getReachabilityPolicy()Lcom/android/server/wm/AppCompatReachabilityPolicy;

    move-result-object v14

    invoke-virtual {v14, v3, v4}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->handleDoubleTap(II)V

    .line 1231
    .end local v13    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_4
    or-int/lit8 v13, p2, 0x1

    .line 1232
    .end local p2    # "effects":I
    .local v13, "effects":I
    move/from16 v14, p5

    move-object/from16 v15, p6

    move v3, v13

    goto/16 :goto_11

    .line 1113
    .end local v3    # "doubleTapX":I
    .end local v4    # "doubleTapY":I
    .end local v5    # "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v6    # "currentTask":Lcom/android/server/wm/Task;
    .end local v13    # "effects":I
    .restart local p2    # "effects":I
    :pswitch_2
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 1114
    .local v3, "wc":Lcom/android/server/wm/WindowContainer;
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1115
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v5, :cond_6

    :cond_5
    goto :goto_2

    .line 1119
    :cond_6
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 1120
    .local v4, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    goto :goto_0

    :cond_8
    move/from16 v5, p2

    goto :goto_1

    .line 1121
    :goto_0
    or-int/lit8 v5, p2, 0x2

    .line 1124
    .end local p2    # "effects":I
    .local v5, "effects":I
    :goto_1
    iget-object v6, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v6, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    .line 1126
    const-string v6, "remove-root-task-through-hierarchyOp"

    invoke-virtual {v4, v10, v6}, Lcom/android/server/wm/TaskFragment;->remove(ZLjava/lang/String;)V

    .line 1127
    move/from16 v14, p5

    move-object/from16 v15, p6

    move v3, v5

    goto/16 :goto_11

    .line 1116
    .end local v4    # "task":Lcom/android/server/wm/Task;
    .end local v5    # "effects":I
    .restart local p2    # "effects":I
    :cond_9
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    move/from16 v14, p5

    move-object/from16 v15, p6

    goto/16 :goto_10

    .line 1288
    .end local v3    # "wc":Lcom/android/server/wm/WindowContainer;
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowOrganizerController;->applyKeyguardState(Landroid/window/WindowContainerTransaction$HierarchyOp;)I

    move-result v3

    or-int v3, p2, v3

    .line 1289
    .end local p2    # "effects":I
    .local v3, "effects":I
    move/from16 v14, p5

    move-object/from16 v15, p6

    goto/16 :goto_11

    .line 1283
    .end local v3    # "effects":I
    .restart local p2    # "effects":I
    :pswitch_4
    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->applyTaskFragmentOperation(Landroid/window/WindowContainerTransaction$HierarchyOp;Lcom/android/server/wm/ActionChain;ZLcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)I

    move-result v13

    move v14, v3

    move-object v15, v4

    or-int v3, p2, v13

    .line 1285
    .end local p2    # "effects":I
    .restart local v3    # "effects":I
    goto/16 :goto_11

    .line 1173
    .end local v3    # "effects":I
    .restart local p2    # "effects":I
    :pswitch_5
    move/from16 v14, p5

    move-object/from16 v15, p6

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowOrganizerController;->clearAdjacentRootsHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;)I

    move-result v3

    or-int v3, p2, v3

    .line 1174
    .end local p2    # "effects":I
    .restart local v3    # "effects":I
    goto/16 :goto_11

    .line 1182
    .end local v3    # "effects":I
    .restart local p2    # "effects":I
    :pswitch_6
    move/from16 v14, p5

    move-object/from16 v15, p6

    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1183
    .local v3, "activity":Lcom/android/server/wm/ActivityRecord;
    nop

    nop

    if-eqz v3, :cond_2d

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_a

    .line 1184
    goto/16 :goto_10

    .line 1186
    :cond_a
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v4

    const-string v5, "finish-activity-op"

    if-nez v4, :cond_b

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    goto :goto_3

    .line 1192
    :cond_c
    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    .line 1194
    goto/16 :goto_10

    .line 1187
    :goto_3
    or-int/lit8 v4, p2, 0x2

    .line 1190
    .end local p2    # "effects":I
    .local v4, "effects":I
    invoke-virtual {v3, v5, v9}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    move v3, v4

    goto/16 :goto_11

    .line 1094
    .end local v3    # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "effects":I
    .restart local p2    # "effects":I
    :pswitch_7
    move/from16 v14, p5

    move-object/from16 v15, p6

    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 1095
    .local v3, "wc":Lcom/android/server/wm/WindowContainer;
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v5

    if-nez v5, :cond_e

    :cond_d
    goto :goto_7

    .line 1099
    :cond_e
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 1100
    .local v4, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_f
    goto :goto_4

    :cond_10
    move/from16 v5, p2

    goto :goto_5

    .line 1101
    :goto_4
    or-int/lit8 v5, p2, 0x2

    .line 1103
    .end local p2    # "effects":I
    .restart local v5    # "effects":I
    :goto_5
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1104
    iget-object v6, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1105
    const-string v13, "remove-task-through-hierarchyOp"

    invoke-virtual {v6, v4, v10, v10, v13}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    goto :goto_6

    .line 1108
    :cond_11
    iget-object v6, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v6, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    .line 1110
    nop

    .line 1342
    .end local v3    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v4    # "task":Lcom/android/server/wm/Task;
    :goto_6
    move v3, v5

    goto/16 :goto_11

    .line 1096
    .end local v5    # "effects":I
    .restart local v3    # "wc":Lcom/android/server/wm/WindowContainer;
    .restart local p2    # "effects":I
    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    goto/16 :goto_10

    .line 1292
    .end local v3    # "wc":Lcom/android/server/wm/WindowContainer;
    :pswitch_8
    move/from16 v14, p5

    move-object/from16 v15, p6

    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v3

    .line 1293
    .local v3, "launchOpts":Landroid/os/Bundle;
    if-eqz v3, :cond_12

    .line 1294
    new-instance v4, Landroid/app/ActivityOptions;

    invoke-direct {v4, v3}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_8

    :cond_12
    move-object v4, v11

    .line 1295
    .local v4, "activityOptions":Landroid/app/ActivityOptions;
    :goto_8
    if-eqz v4, :cond_13

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getTransientLaunch()Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1296
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1297
    iget-object v5, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v5

    .line 1298
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v6

    .line 1297
    invoke-virtual {v5, v6, v4}, Lcom/android/server/wm/ActivityStartController;->startExistingRecentsIfPossible(Landroid/content/Intent;Landroid/app/ActivityOptions;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1300
    goto/16 :goto_10

    .line 1304
    :cond_13
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 1305
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1306
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1305
    invoke-virtual {v5, v6}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    .line 1307
    :cond_14
    move-object v5, v11

    :goto_9
    nop

    .line 1309
    .local v5, "resolvedType":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1313
    if-nez v4, :cond_15

    .line 1314
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v4

    .line 1316
    :cond_15
    invoke-virtual {v4, v9}, Landroid/app/ActivityOptions;->setCallerDisplayId(I)Landroid/app/ActivityOptions;

    .line 1318
    :cond_16
    if-eqz v4, :cond_17

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    goto :goto_a

    :cond_17
    move-object v6, v11

    .line 1319
    .local v6, "options":Landroid/os/Bundle;
    :goto_a
    new-instance v13, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;

    invoke-direct {v13, v0, v1, v5, v6}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction$HierarchyOp;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {v0, v13}, Lcom/android/server/wm/WindowOrganizerController;->waitAsyncStart(Ljava/util/function/IntSupplier;)I

    move-result v13

    .line 1324
    .local v13, "res":I
    invoke-static {v13}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v16

    if-eqz v16, :cond_2d

    .line 1325
    or-int/lit8 v16, p2, 0x2

    move/from16 v3, v16

    .end local p2    # "effects":I
    .local v16, "effects":I
    goto/16 :goto_11

    .line 1148
    .end local v3    # "launchOpts":Landroid/os/Bundle;
    .end local v4    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v5    # "resolvedType":Ljava/lang/String;
    .end local v6    # "options":Landroid/os/Bundle;
    .end local v13    # "res":I
    .end local v16    # "effects":I
    .restart local p2    # "effects":I
    :pswitch_9
    move/from16 v14, p5

    move-object/from16 v15, p6

    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    .line 1149
    .local v4, "wc":Lcom/android/server/wm/WindowContainer;
    if-eqz v4, :cond_18

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v5

    if-nez v5, :cond_19

    :cond_18
    goto :goto_d

    .line 1153
    :cond_19
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 1154
    .local v5, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v6

    .line 1155
    .local v6, "clearRoot":Z
    if-eqz v5, :cond_1e

    .line 1157
    iget-boolean v3, v5, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v3, :cond_1d

    .line 1160
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v3

    if-nez v3, :cond_1a

    if-eqz v6, :cond_1b

    :cond_1a
    goto :goto_b

    .line 1161
    :cond_1b
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot set non-adjacent task as adjacent flag root: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1165
    :goto_b
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    if-eqz v6, :cond_1c

    move-object v13, v11

    goto :goto_c

    :cond_1c
    move-object v13, v5

    :goto_c
    invoke-virtual {v3, v13}, Lcom/android/server/wm/TaskDisplayArea;->setLaunchAdjacentFlagRootTask(Lcom/android/server/wm/Task;)V

    .line 1166
    goto/16 :goto_10

    .line 1158
    :cond_1d
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot set non-organized task as adjacent flag root: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1156
    :cond_1e
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1150
    .end local v5    # "task":Lcom/android/server/wm/Task;
    .end local v6    # "clearRoot":Z
    :goto_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to set launch adjacent to a detached container: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    goto/16 :goto_10

    .line 1197
    .end local v4    # "wc":Lcom/android/server/wm/WindowContainer;
    :pswitch_a
    move/from16 v14, p5

    move-object/from16 v15, p6

    iget-object v3, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v4, "android.permission.START_TASKS_FROM_RECENTS"

    const-string v5, "launchTask HierarchyOp"

    invoke-virtual {v3, v4, v5}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v3

    .line 1200
    .restart local v3    # "launchOpts":Landroid/os/Bundle;
    const-string v4, "android:transaction.hop.taskId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1202
    .local v5, "taskId":I
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1203
    iget v4, v15, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    iget v6, v15, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    .line 1204
    invoke-static {v3, v4, v6}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;II)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v4

    .line 1205
    .local v4, "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    or-int/lit8 v6, p2, 0x2

    .line 1206
    .end local p2    # "effects":I
    .local v6, "effects":I
    new-instance v13, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda13;

    invoke-direct {v13, v0, v15, v5, v4}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;ILcom/android/server/wm/SafeActivityOptions;)V

    invoke-direct {v0, v13}, Lcom/android/server/wm/WindowOrganizerController;->waitAsyncStart(Ljava/util/function/IntSupplier;)I

    .line 1208
    move v3, v6

    goto/16 :goto_11

    .line 1169
    .end local v3    # "launchOpts":Landroid/os/Bundle;
    .end local v4    # "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v5    # "taskId":I
    .end local v6    # "effects":I
    .restart local p2    # "effects":I
    :pswitch_b
    move/from16 v14, p5

    move-object/from16 v15, p6

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowOrganizerController;->setAdjacentRootsHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;)I

    move-result v3

    or-int v3, p2, v3

    .line 1170
    .end local p2    # "effects":I
    .local v3, "effects":I
    goto/16 :goto_11

    .line 1130
    .end local v3    # "effects":I
    .restart local p2    # "effects":I
    :pswitch_c
    move/from16 v14, p5

    move-object/from16 v15, p6

    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    .line 1131
    .local v4, "wc":Lcom/android/server/wm/WindowContainer;
    if-eqz v4, :cond_1f

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v5

    if-nez v5, :cond_20

    :cond_1f
    goto :goto_e

    .line 1135
    :cond_20
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 1136
    .local v5, "task":Lcom/android/server/wm/Task;
    if-eqz v5, :cond_22

    .line 1138
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 1142
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 1143
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getWindowingModes()[I

    move-result-object v6

    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityTypes()[I

    move-result-object v13

    .line 1142
    invoke-virtual {v3, v5, v6, v13}, Lcom/android/server/wm/TaskDisplayArea;->setLaunchRootTask(Lcom/android/server/wm/Task;[I[I)V

    .line 1145
    goto/16 :goto_10

    .line 1139
    :cond_21
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot set a task without display area as launch root: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1137
    :cond_22
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1132
    .end local v5    # "task":Lcom/android/server/wm/Task;
    :goto_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to set launch root to a detached container: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    goto/16 :goto_10

    .line 1177
    .end local v4    # "wc":Lcom/android/server/wm/WindowContainer;
    :pswitch_d
    move/from16 v14, p5

    move-object/from16 v15, p6

    iget-object v3, v2, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-direct {v0, v1, v3, v7, v14}, Lcom/android/server/wm/WindowOrganizerController;->reparentChildrenTasksHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;Lcom/android/server/wm/Transition;IZ)I

    move-result v3

    or-int v3, p2, v3

    .line 1179
    .end local p2    # "effects":I
    .restart local v3    # "effects":I
    goto/16 :goto_11

    .line 1236
    .end local v3    # "effects":I
    .restart local p2    # "effects":I
    :pswitch_e
    move/from16 v14, p5

    move-object/from16 v15, p6

    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 1237
    .local v3, "wc":Lcom/android/server/wm/WindowContainer;
    if-eqz v3, :cond_23

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v4

    if-nez v4, :cond_24

    :cond_23
    goto/16 :goto_f

    .line 1243
    :cond_24
    if-eqz v14, :cond_25

    if-nez v8, :cond_25

    .line 1244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    goto/16 :goto_10

    .line 1248
    :cond_25
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-direct {v0, v4, v5, v14}, Lcom/android/server/wm/WindowOrganizerController;->isLockTaskModeViolation(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Task;Z)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1249
    goto/16 :goto_10

    .line 1251
    :cond_26
    if-ltz v7, :cond_27

    .line 1252
    invoke-virtual {v0, v7, v3}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    .line 1254
    :cond_27
    iget-object v4, v2, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    if-eqz v4, :cond_2a

    .line 1255
    iget-object v4, v2, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1256
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isReparent()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1257
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 1260
    iget-object v4, v2, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1262
    :cond_28
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_2a

    .line 1263
    nop

    .line 1264
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    .line 1265
    .local v4, "parentWc":Lcom/android/server/wm/WindowContainer;
    if-nez v4, :cond_29

    .line 1266
    const-string v5, "Can\'t resolve parent window from token"

    invoke-static {v12, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    goto :goto_10

    .line 1269
    :cond_29
    iget-object v5, v2, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1273
    .end local v4    # "parentWc":Lcom/android/server/wm/WindowContainer;
    :cond_2a
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_2b

    .line 1274
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-direct {v0, v4, v1}, Lcom/android/server/wm/WindowOrganizerController;->sanitizeAndApplyHierarchyOpForTask(Lcom/android/server/wm/Task;Landroid/window/WindowContainerTransaction$HierarchyOp;)I

    move-result v4

    or-int v4, p2, v4

    move v3, v4

    .end local p2    # "effects":I
    .local v4, "effects":I
    goto :goto_11

    .line 1275
    .end local v4    # "effects":I
    .restart local p2    # "effects":I
    :cond_2b
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 1276
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v4

    invoke-direct {v0, v4, v1}, Lcom/android/server/wm/WindowOrganizerController;->sanitizeAndApplyHierarchyOpForDisplayArea(Lcom/android/server/wm/DisplayArea;Landroid/window/WindowContainerTransaction$HierarchyOp;)I

    move-result v4

    or-int v4, p2, v4

    move v3, v4

    .end local p2    # "effects":I
    .restart local v4    # "effects":I
    goto :goto_11

    .line 1278
    .end local v4    # "effects":I
    .restart local p2    # "effects":I
    :cond_2c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid container in hierarchy op"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1238
    :goto_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to operate on detached container: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    nop

    .line 1342
    .end local v3    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_2d
    :goto_10
    move/from16 v3, p2

    .end local p2    # "effects":I
    .local v3, "effects":I
    :goto_11
    const-string v4, "Attempt to operate on unknown or detached container: "

    packed-switch v8, :pswitch_data_1

    :pswitch_f
    move/from16 p2, v3

    goto/16 :goto_19

    .line 1550
    :pswitch_10
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    .line 1551
    .local v5, "container":Lcom/android/server/wm/WindowContainer;
    if-eqz v5, :cond_2e

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v6

    if-nez v6, :cond_2f

    :cond_2e
    goto :goto_12

    .line 1556
    :cond_2f
    iget-object v4, v2, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    if-eqz v4, :cond_30

    .line 1557
    iget-object v4, v2, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1559
    :cond_30
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getSafeRegionBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowContainer;->setSafeRegionBounds(Landroid/graphics/Rect;)V

    .line 1560
    or-int/lit8 v3, v3, 0x1

    goto/16 :goto_1a

    .line 1552
    :goto_12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    move/from16 p2, v3

    goto/16 :goto_19

    .line 1523
    .end local v5    # "container":Lcom/android/server/wm/WindowContainer;
    :pswitch_11
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    .line 1524
    .restart local v5    # "container":Lcom/android/server/wm/WindowContainer;
    if-eqz v5, :cond_31

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v11

    .line 1525
    .local v11, "task":Lcom/android/server/wm/Task;
    :cond_31
    if-eqz v11, :cond_32

    invoke-virtual {v11}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v6

    if-nez v6, :cond_33

    :cond_32
    goto :goto_13

    .line 1530
    :cond_33
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isLaunchAdjacentDisabled()Z

    move-result v4

    invoke-virtual {v11, v4}, Lcom/android/server/wm/Task;->setLaunchAdjacentDisabled(Z)V

    .line 1531
    move/from16 p2, v3

    goto/16 :goto_19

    .line 1526
    :goto_13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    move/from16 p2, v3

    goto/16 :goto_19

    .line 1540
    .end local v5    # "container":Lcom/android/server/wm/WindowContainer;
    .end local v11    # "task":Lcom/android/server/wm/Task;
    :pswitch_12
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    .line 1541
    .restart local v5    # "container":Lcom/android/server/wm/WindowContainer;
    if-nez v5, :cond_34

    .line 1542
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    move/from16 p2, v3

    goto/16 :goto_19

    .line 1546
    :cond_34
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getExcludeInsetsTypes()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowContainer;->setExcludeInsetsTypes(I)V

    .line 1547
    move/from16 p2, v3

    goto/16 :goto_19

    .line 1534
    .end local v5    # "container":Lcom/android/server/wm/WindowContainer;
    :pswitch_13
    iget-object v4, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    invoke-virtual {v4}, Lcom/android/server/wm/BackNavigationController;->restoreBackNavigation()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1535
    or-int/lit8 v3, v3, 0x2

    goto/16 :goto_1a

    .line 1534
    :cond_35
    move/from16 p2, v3

    goto/16 :goto_19

    .line 1512
    :pswitch_14
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    .line 1513
    .restart local v5    # "container":Lcom/android/server/wm/WindowContainer;
    if-eqz v5, :cond_36

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v11

    .line 1514
    .restart local v11    # "task":Lcom/android/server/wm/Task;
    :cond_36
    if-eqz v11, :cond_37

    invoke-virtual {v11}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v6

    if-nez v6, :cond_38

    :cond_37
    goto :goto_14

    .line 1519
    :cond_38
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isTrimmableFromRecents()Z

    move-result v4

    invoke-virtual {v11, v4}, Lcom/android/server/wm/Task;->setTrimmableFromRecents(Z)V

    .line 1520
    move/from16 p2, v3

    goto/16 :goto_19

    .line 1515
    :goto_14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    move/from16 p2, v3

    goto/16 :goto_19

    .line 1363
    .end local v5    # "container":Lcom/android/server/wm/WindowContainer;
    .end local v11    # "task":Lcom/android/server/wm/Task;
    :pswitch_15
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    .line 1364
    .local v4, "container":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    .line 1365
    .local v5, "pipTaskFragment":Lcom/android/server/wm/TaskFragment;
    if-nez v5, :cond_39

    .line 1366
    move/from16 p2, v3

    goto/16 :goto_19

    .line 1368
    :cond_39
    new-instance v6, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda15;

    invoke-direct {v6}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda15;-><init>()V

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 1371
    .local v6, "pipActivity":Lcom/android/server/wm/ActivityRecord;
    sget-object v10, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v6, v10}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v10

    if-eqz v10, :cond_3a

    .line 1377
    iget-object v10, v6, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 1378
    invoke-virtual {v10}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v10

    iput-boolean v10, v6, Lcom/android/server/wm/ActivityRecord;->mAutoEnteringPip:Z

    .line 1380
    :cond_3a
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 1381
    .local v10, "entryBounds":Landroid/graphics/Rect;
    iget-object v12, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v12, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const-string v13, "moveActivityToPinnedRootTask"

    invoke-virtual {v12, v6, v11, v13, v10}, Lcom/android/server/wm/RootWindowContainer;->moveActivityToPinnedRootTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 1385
    sget-object v11, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v6, v11}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v11

    if-eqz v11, :cond_3b

    iget-boolean v11, v6, Lcom/android/server/wm/ActivityRecord;->mPauseSchedulePendingForPip:Z

    if-eqz v11, :cond_3b

    .line 1391
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v16

    const/16 v20, 0x1

    const-string v21, "auto-pip"

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v6

    .end local v6    # "pipActivity":Lcom/android/server/wm/ActivityRecord;
    .local v17, "pipActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual/range {v16 .. v21}, Lcom/android/server/wm/TaskFragment;->schedulePauseActivity(Lcom/android/server/wm/ActivityRecord;ZZZLjava/lang/String;)V

    .line 1396
    .end local v17    # "pipActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v6    # "pipActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_3b
    iput-boolean v9, v6, Lcom/android/server/wm/ActivityRecord;->mAutoEnteringPip:Z

    .line 1398
    or-int/lit8 v3, v3, 0x2

    .line 1399
    goto/16 :goto_1a

    .line 1493
    .end local v4    # "container":Lcom/android/server/wm/WindowContainer;
    .end local v5    # "pipTaskFragment":Lcom/android/server/wm/TaskFragment;
    .end local v6    # "pipActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v10    # "entryBounds":Landroid/graphics/Rect;
    :pswitch_16
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    .line 1494
    .local v5, "container":Lcom/android/server/wm/WindowContainer;
    if-eqz v5, :cond_3c

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v11

    .line 1495
    .restart local v11    # "task":Lcom/android/server/wm/Task;
    :cond_3c
    if-eqz v11, :cond_3d

    invoke-virtual {v11}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v6

    if-nez v6, :cond_3e

    :cond_3d
    goto :goto_15

    .line 1500
    :cond_3e
    iget-boolean v4, v11, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v4, :cond_40

    .line 1504
    invoke-virtual {v11}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1508
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isReparentLeafTaskIfRelaunch()Z

    move-result v4

    invoke-virtual {v11, v4}, Lcom/android/server/wm/Task;->setReparentLeafTaskIfRelaunch(Z)V

    .line 1509
    move/from16 p2, v3

    goto/16 :goto_19

    .line 1505
    :cond_3f
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot set reparent leaf task flag on non-root task : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1501
    :cond_40
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot set reparent leaf task flag on non-organized task : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1496
    :goto_15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    move/from16 p2, v3

    goto/16 :goto_19

    .line 1477
    .end local v5    # "container":Lcom/android/server/wm/WindowContainer;
    .end local v11    # "task":Lcom/android/server/wm/Task;
    :pswitch_17
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    .line 1478
    .restart local v5    # "container":Lcom/android/server/wm/WindowContainer;
    if-eqz v5, :cond_41

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v6

    if-nez v6, :cond_42

    :cond_41
    goto :goto_16

    .line 1483
    :cond_42
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-nez v4, :cond_43

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v4

    if-nez v4, :cond_43

    .line 1484
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot set always-on-top on non-task or non-display area: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    move/from16 p2, v3

    goto/16 :goto_19

    .line 1488
    :cond_43
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isAlwaysOnTop()Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/server/wm/ConfigurationContainer;->setAlwaysOnTop(Z)V

    .line 1489
    or-int/lit8 v3, v3, 0x2

    .line 1490
    goto/16 :goto_1a

    .line 1479
    :goto_16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    move/from16 p2, v3

    goto/16 :goto_19

    .line 1466
    .end local v5    # "container":Lcom/android/server/wm/WindowContainer;
    :pswitch_18
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    .line 1467
    .restart local v4    # "container":Lcom/android/server/wm/WindowContainer;
    if-nez v4, :cond_44

    .line 1468
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to remove local insets source provider from unknown: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    move/from16 p2, v3

    goto/16 :goto_19

    .line 1472
    :cond_44
    nop

    .line 1473
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getInsetsFrameProvider()Landroid/view/InsetsFrameProvider;

    move-result-object v5

    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getInsetsFrameOwner()Landroid/os/IBinder;

    move-result-object v6

    .line 1472
    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowContainer;->removeLocalInsetsFrameProvider(Landroid/view/InsetsFrameProvider;Landroid/os/IBinder;)V

    .line 1474
    move/from16 p2, v3

    goto/16 :goto_19

    .line 1455
    .end local v4    # "container":Lcom/android/server/wm/WindowContainer;
    :pswitch_19
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    .line 1456
    .restart local v4    # "container":Lcom/android/server/wm/WindowContainer;
    if-nez v4, :cond_45

    .line 1457
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to add local insets source provider on unknown: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    move/from16 p2, v3

    goto/16 :goto_19

    .line 1461
    :cond_45
    nop

    .line 1462
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getInsetsFrameProvider()Landroid/view/InsetsFrameProvider;

    move-result-object v5

    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getInsetsFrameOwner()Landroid/os/IBinder;

    move-result-object v6

    .line 1461
    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowContainer;->addLocalInsetsFrameProvider(Landroid/view/InsetsFrameProvider;Landroid/os/IBinder;)V

    .line 1463
    move/from16 p2, v3

    goto/16 :goto_19

    .line 1402
    .end local v4    # "container":Lcom/android/server/wm/WindowContainer;
    :pswitch_1a
    nop

    .line 1404
    invoke-virtual {v2}, Lcom/android/server/wm/ActionChain;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_46

    move/from16 p2, v3

    goto/16 :goto_19

    .line 1407
    :cond_46
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    .line 1408
    .restart local v4    # "container":Lcom/android/server/wm/WindowContainer;
    if-nez v4, :cond_48

    .line 1409
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v5, v5, v10

    if-eqz v5, :cond_47

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v12, -0x5e54de061248c20eL

    invoke-static {v5, v12, v13, v9, v11}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_47
    move/from16 p2, v3

    goto/16 :goto_19

    .line 1413
    :cond_48
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_49

    .line 1414
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    goto :goto_17

    :cond_49
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 1415
    .local v5, "thisTask":Lcom/android/server/wm/Task;
    :goto_17
    if-nez v5, :cond_4b

    .line 1416
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v6, v6, v10

    if-eqz v6, :cond_4a

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v12, -0x73c470f49422ca46L    # -9.622843145230481E-250

    invoke-static {v6, v12, v13, v9, v11}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_4a
    move/from16 p2, v3

    goto/16 :goto_19

    .line 1422
    :cond_4b
    iget-object v6, v0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 1423
    invoke-virtual {v6, v4}, Lcom/android/server/wm/TransitionController;->getTransientLaunchTransitionAndTarget(Lcom/android/server/wm/WindowContainer;)Landroid/util/Pair;

    move-result-object v6

    .line 1424
    .local v6, "transientRestore":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;>;"
    if-nez v6, :cond_4d

    .line 1425
    sget-object v12, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v10, v12, v10

    if-eqz v10, :cond_4c

    sget-object v10, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v12, 0x20a126f5f6ce34bbL

    invoke-static {v10, v12, v13, v9, v11}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_4c
    move/from16 p2, v3

    goto/16 :goto_19

    .line 1429
    :cond_4d
    iget-object v9, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/wm/Transition;

    .line 1430
    .local v9, "transientLaunchTransition":Lcom/android/server/wm/Transition;
    iget-object v11, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Lcom/android/server/wm/Task;

    .line 1431
    .local v11, "restoreAt":Lcom/android/server/wm/Task;
    sget-object v12, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v12, v12, v10

    if-eqz v12, :cond_4e

    iget v12, v11, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v12, v12

    .local v12, "protoLogParam0":J
    sget-object v10, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v1, 0x68a14bc89a8e3720L    # 1.0100749890343758E196

    move/from16 p2, v3

    const/4 v3, 0x1

    .end local v3    # "effects":I
    .restart local p2    # "effects":I
    invoke-static {v10, v1, v2, v3, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_18

    .end local v12    # "protoLogParam0":J
    .end local p2    # "effects":I
    .restart local v3    # "effects":I
    :cond_4e
    move/from16 p2, v3

    .line 1435
    .end local v3    # "effects":I
    .restart local p2    # "effects":I
    :goto_18
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 1436
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Lcom/android/server/wm/TaskDisplayArea;->moveRootTaskBehindRootTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    .line 1438
    nop

    .line 1451
    or-int/lit8 v3, p2, 0x2

    .line 1452
    .end local p2    # "effects":I
    .restart local v3    # "effects":I
    goto :goto_1a

    .line 1344
    .end local v0    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v4    # "container":Lcom/android/server/wm/WindowContainer;
    .end local v5    # "thisTask":Lcom/android/server/wm/Task;
    .end local v6    # "transientRestore":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;>;"
    .end local v9    # "transientLaunchTransition":Lcom/android/server/wm/Transition;
    .end local v11    # "restoreAt":Lcom/android/server/wm/Task;
    :pswitch_1b
    move/from16 p2, v3

    .end local v3    # "effects":I
    .restart local p2    # "effects":I
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v0

    .line 1345
    .local v0, "launchOpts":Landroid/os/Bundle;
    const-string v1, "android:transaction.hop.shortcut_calling_package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1347
    .local v19, "callingPackage":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1350
    const-class v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/server/pm/LauncherAppsService$LauncherAppsServiceInternal;

    .line 1353
    .local v16, "launcherApps":Lcom/android/server/pm/LauncherAppsService$LauncherAppsServiceInternal;
    iget v1, v15, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    iget v2, v15, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    .line 1354
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v20

    .line 1355
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v22

    .line 1356
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v25

    .line 1353
    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v24, v0

    move/from16 v17, v1

    move/from16 v18, v2

    .end local v0    # "launchOpts":Landroid/os/Bundle;
    .local v24, "launchOpts":Landroid/os/Bundle;
    invoke-virtual/range {v16 .. v25}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsServiceInternal;->startShortcut(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)Z

    move-result v0

    .line 1357
    .local v0, "success":Z
    if-eqz v0, :cond_4f

    .line 1358
    or-int/lit8 v3, p2, 0x2

    .end local p2    # "effects":I
    .restart local v3    # "effects":I
    goto :goto_1a

    .line 1563
    .end local v0    # "success":Z
    .end local v16    # "launcherApps":Lcom/android/server/pm/LauncherAppsService$LauncherAppsServiceInternal;
    .end local v19    # "callingPackage":Ljava/lang/String;
    .end local v24    # "launchOpts":Landroid/os/Bundle;
    :cond_4f
    :goto_19
    move/from16 v3, p2

    :goto_1a
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_16
        :pswitch_f
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_f
        :pswitch_11
        :pswitch_f
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private applyKeyguardState(Landroid/window/WindowContainerTransaction$HierarchyOp;)I
    .locals 5
    .param p1, "hop"    # Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 1906
    const/4 v0, 0x2

    .line 1908
    .local v0, "effects":I
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getKeyguardState()Landroid/window/KeyguardState;

    move-result-object v1

    .line 1909
    .local v1, "keyguardState":Landroid/window/KeyguardState;
    if-eqz v1, :cond_0

    .line 1910
    invoke-virtual {v1}, Landroid/window/KeyguardState;->getKeyguardShowing()Z

    move-result v2

    .line 1911
    .local v2, "keyguardShowing":Z
    invoke-virtual {v1}, Landroid/window/KeyguardState;->getAodShowing()Z

    move-result v3

    .line 1912
    .local v3, "aodShowing":Z
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->setLockScreenShownLocked(ZZ)V

    .line 1914
    .end local v2    # "keyguardShowing":Z
    .end local v3    # "aodShowing":Z
    :cond_0
    return v0
.end method

.method private applyTaskChanges(Lcom/android/server/wm/Task;Landroid/window/WindowContainerTransaction$Change;)I
    .locals 8
    .param p1, "tr"    # Lcom/android/server/wm/Task;
    .param p2, "c"    # Landroid/window/WindowContainerTransaction$Change;

    .line 901
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getBoundsChangeTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 904
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 908
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    .line 909
    .local v1, "effects":I
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    .line 910
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getHidden()Z

    move-result v2

    invoke-virtual {p1, v3, v2}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 911
    or-int/lit8 v1, v1, 0x2

    .line 915
    :cond_1
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_2

    .line 916
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getForceTranslucent()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/server/wm/TaskFragment;->setForceTranslucent(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 917
    or-int/lit8 v1, v1, 0x2

    .line 921
    :cond_2
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_3

    .line 922
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getDragResizing()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->setDragResizing(Z)V

    .line 925
    :cond_3
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getActivityWindowingMode()I

    move-result v2

    .line 926
    .local v2, "childWindowingMode":I
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result v4

    if-nez v4, :cond_6

    .line 927
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    if-ne v4, v3, :cond_6

    .line 928
    if-eq v2, v3, :cond_4

    if-nez v2, :cond_5

    :cond_4
    goto :goto_0

    .line 936
    :cond_5
    invoke-static {}, Lcom/android/server/wm/WindowOrganizerController;->shouldApplyLifecycleEffectOnPipChange()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 939
    or-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 932
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Task and activity windowing modes match, so remove any timeout abort PiP callbacks scheduled if needed; task_win_mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", activity_win_mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 932
    const-string v5, "WindowOrganizerController"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->removeAllMaybeAbortPipEnterRunnable()V

    .line 942
    :cond_6
    :goto_1
    const/4 v4, -0x1

    if-le v2, v4, :cond_7

    .line 943
    new-instance v4, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 946
    :cond_7
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getEnterPipBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 947
    .local v4, "enterPipBounds":Landroid/graphics/Rect;
    if-eqz v4, :cond_8

    .line 948
    iget-object v5, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/PinnedTaskController;->setEnterPipBounds(Landroid/graphics/Rect;)V

    .line 951
    :cond_8
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getWindowingMode()I

    move-result v5

    if-ne v5, v3, :cond_a

    .line 952
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v3

    if-nez v3, :cond_a

    .line 953
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 954
    .local v3, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_a

    .line 955
    iget-boolean v5, v3, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 959
    .local v5, "lastSupportsEnterPipOnTaskSwitch":Z
    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 960
    const-string v7, "applyTaskChanges"

    invoke-virtual {v3, v7, v6}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v6

    .line 962
    .local v6, "canEnterPip":Z
    if-eqz v6, :cond_9

    .line 963
    iget-object v7, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    .line 964
    invoke-virtual {v7, v3}, Lcom/android/server/wm/ActivityClientController;->requestPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v6

    .line 965
    if-eqz v6, :cond_9

    invoke-static {}, Lcom/android/server/wm/WindowOrganizerController;->shouldApplyLifecycleEffectOnPipChange()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 966
    or-int/lit8 v1, v1, 0x2

    .line 969
    :cond_9
    if-nez v6, :cond_a

    .line 971
    iput-boolean v5, v3, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 976
    .end local v3    # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local v5    # "lastSupportsEnterPipOnTaskSwitch":Z
    .end local v6    # "canEnterPip":Z
    :cond_a
    return v1
.end method

.method private applyTaskFragmentChanges(Lcom/android/server/wm/TaskFragment;Landroid/window/WindowContainerTransaction$Change;Landroid/os/IBinder;)I
    .locals 5
    .param p1, "taskFragment"    # Lcom/android/server/wm/TaskFragment;
    .param p2, "c"    # Landroid/window/WindowContainerTransaction$Change;
    .param p3, "errorCallbackToken"    # Landroid/os/IBinder;

    .line 1013
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1015
    const/4 v0, 0x0

    return v0

    .line 1018
    :cond_0
    const/4 v0, 0x0

    .line 1022
    .local v0, "effects":I
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mTmpBounds0:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1023
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mTmpBounds1:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRelativeEmbeddedBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1024
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->deferOrganizedTaskFragmentSurfaceUpdate()V

    .line 1025
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getRelativeBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1026
    .local v1, "relBounds":Landroid/graphics/Rect;
    if-eqz v1, :cond_1

    .line 1028
    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/wm/WindowOrganizerController;->adjustTaskFragmentRelativeBoundsForMinDimensionsIfNeeded(Lcom/android/server/wm/TaskFragment;Landroid/graphics/Rect;Landroid/os/IBinder;)V

    .line 1034
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1036
    .local v2, "parentBounds":Landroid/graphics/Rect;
    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/TaskFragment;->translateRelativeBoundsToAbsoluteBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 1038
    .local v3, "absBounds":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4, v3}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 1039
    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskFragment;->setRelativeEmbeddedBounds(Landroid/graphics/Rect;)V

    .line 1041
    .end local v2    # "parentBounds":Landroid/graphics/Rect;
    .end local v3    # "absBounds":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    .line 1042
    nop

    .line 1043
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getHidden()Z

    move-result v2

    .line 1042
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/android/server/wm/TaskFragment;->setForceHidden(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1044
    or-int/lit8 v0, v0, 0x2

    .line 1047
    :cond_2
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_3

    .line 1048
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getForceTranslucent()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/server/wm/TaskFragment;->setForceTranslucent(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1049
    or-int/lit8 v0, v0, 0x2

    .line 1053
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I

    move-result v2

    or-int/2addr v0, v2

    .line 1055
    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mTmpBounds0:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mTmpBounds1:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/TaskFragment;->shouldStartChangeTransition(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1056
    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/TransitionController;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    .line 1058
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->continueOrganizedTaskFragmentSurfaceUpdate()V

    .line 1059
    return v0
.end method

.method private applyTaskFragmentOperation(Landroid/window/WindowContainerTransaction$HierarchyOp;Lcom/android/server/wm/ActionChain;ZLcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)I
    .locals 18
    .param p1, "hop"    # Landroid/window/WindowContainerTransaction$HierarchyOp;
    .param p2, "chain"    # Lcom/android/server/wm/ActionChain;
    .param p3, "isInLockTaskMode"    # Z
    .param p4, "caller"    # Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .param p5, "errorCallbackToken"    # Landroid/os/IBinder;
    .param p6, "organizer"    # Landroid/window/ITaskFragmentOrganizer;

    .line 1574
    move-object/from16 v0, p0

    move-object/from16 v8, p2

    move-object/from16 v6, p4

    move-object/from16 v2, p5

    move-object/from16 v1, p6

    move-object/from16 v9, p1

    invoke-direct {v0, v9, v2, v1}, Lcom/android/server/wm/WindowOrganizerController;->validateTaskFragmentOperation(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 1575
    return v4

    .line 1577
    :cond_0
    invoke-virtual {v9}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v10

    .line 1578
    .local v10, "fragmentToken":Landroid/os/IBinder;
    iget-object v3, v0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskFragment;

    .line 1579
    .local v3, "taskFragment":Lcom/android/server/wm/TaskFragment;
    invoke-virtual {v9}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getTaskFragmentOperation()Landroid/window/TaskFragmentOperation;

    move-result-object v11

    .line 1580
    .local v11, "operation":Landroid/window/TaskFragmentOperation;
    invoke-virtual {v11}, Landroid/window/TaskFragmentOperation;->getOpType()I

    move-result v5

    .line 1582
    .local v5, "opType":I
    const/4 v12, 0x0

    .line 1583
    .local v12, "effects":I
    const-string v7, "WindowOrganizerController"

    const/4 v13, 0x1

    const/4 v14, 0x0

    sparse-switch v5, :sswitch_data_0

    move v4, v5

    goto/16 :goto_b

    .line 1895
    :sswitch_0
    invoke-virtual {v11}, Landroid/window/TaskFragmentOperation;->getBooleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskFragment;->setCanAffectSystemUiFlags(Z)V

    .line 1898
    iget-object v4, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    move v4, v5

    goto/16 :goto_b

    .line 1859
    :sswitch_1
    invoke-virtual {v11}, Landroid/window/TaskFragmentOperation;->getBooleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskFragment;->setMoveToBottomIfClearWhenLaunch(Z)V

    .line 1860
    move v4, v5

    goto/16 :goto_b

    .line 1809
    :sswitch_2
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 1810
    .local v4, "task":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_3

    .line 1811
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    if-eq v7, v3, :cond_2

    .line 1812
    iget-object v7, v4, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1813
    iget-object v7, v4, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1814
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1817
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    .line 1819
    :cond_1
    or-int/lit8 v12, v12, 0x2

    move v4, v5

    goto/16 :goto_b

    .line 1811
    :cond_2
    move v4, v5

    goto/16 :goto_b

    .line 1810
    :cond_3
    move v4, v5

    goto/16 :goto_b

    .line 1793
    .end local v4    # "task":Lcom/android/server/wm/Task;
    :sswitch_3
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    .line 1794
    .local v7, "task":Lcom/android/server/wm/Task;
    if-eqz v7, :cond_6

    .line 1795
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getBottomChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v13

    if-eq v13, v3, :cond_5

    .line 1796
    iget-object v13, v7, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1797
    iget-object v13, v7, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v13, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1798
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1801
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    .line 1803
    :cond_4
    or-int/lit8 v12, v12, 0x2

    move v4, v5

    goto/16 :goto_b

    .line 1795
    :cond_5
    move v4, v5

    goto/16 :goto_b

    .line 1794
    :cond_6
    move v4, v5

    goto/16 :goto_b

    .line 1890
    .end local v7    # "task":Lcom/android/server/wm/Task;
    :sswitch_4
    invoke-virtual {v11}, Landroid/window/TaskFragmentOperation;->getBooleanValue()Z

    move-result v4

    .line 1891
    .local v4, "pinned":Z
    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskFragment;->setPinned(Z)V

    .line 1892
    move v4, v5

    goto/16 :goto_b

    .line 1863
    .end local v4    # "pinned":Z
    :sswitch_5
    nop

    .line 1864
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 1865
    .local v4, "task":Lcom/android/server/wm/Task;
    if-nez v4, :cond_7

    .line 1866
    move v4, v5

    goto/16 :goto_b

    .line 1868
    :cond_7
    nop

    .line 1869
    invoke-virtual {v11}, Landroid/window/TaskFragmentOperation;->getSurfaceTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v7

    .line 1870
    .local v7, "clientTransaction":Landroid/view/SurfaceControl$Transaction;
    if-eqz v7, :cond_8

    .line 1874
    iget v13, v6, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    iget v14, v6, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    invoke-virtual {v7, v13, v14}, Landroid/view/SurfaceControl$Transaction;->sanitize(II)V

    .line 1877
    :cond_8
    nop

    .line 1879
    invoke-virtual {v11}, Landroid/window/TaskFragmentOperation;->getBooleanValue()Z

    move-result v13

    .line 1877
    invoke-virtual {v4, v3, v13, v7}, Lcom/android/server/wm/Task;->requestDecorSurfaceBoosted(Lcom/android/server/wm/TaskFragment;ZLandroid/view/SurfaceControl$Transaction;)V

    .line 1885
    iget-object v13, v8, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;

    invoke-direct {v14, v4}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/wm/Task;)V

    invoke-static {v13, v14}, Lcom/android/server/wm/WindowOrganizerController;->runAfterTransition(Lcom/android/server/wm/Transition;Ljava/lang/Runnable;)V

    .line 1886
    .end local v4    # "task":Lcom/android/server/wm/Task;
    .end local v7    # "clientTransaction":Landroid/view/SurfaceControl$Transaction;
    move v4, v5

    goto/16 :goto_b

    .line 1853
    :sswitch_6
    invoke-virtual {v11}, Landroid/window/TaskFragmentOperation;->getBooleanValue()Z

    move-result v7

    .line 1854
    .local v7, "dimOnTask":Z
    if-eqz v7, :cond_9

    move v4, v13

    goto :goto_0

    .line 1855
    :cond_9
    nop

    .line 1854
    :goto_0
    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskFragment;->setEmbeddedDimArea(I)V

    .line 1856
    move v4, v5

    goto/16 :goto_b

    .line 1845
    .end local v7    # "dimOnTask":Z
    :sswitch_7
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 1846
    .restart local v4    # "task":Lcom/android/server/wm/Task;
    if-nez v4, :cond_a

    .line 1847
    move v4, v5

    goto/16 :goto_b

    .line 1849
    :cond_a
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->removeDecorSurface()V

    .line 1850
    move v4, v5

    goto/16 :goto_b

    .line 1825
    .end local v4    # "task":Lcom/android/server/wm/Task;
    :sswitch_8
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    .line 1826
    .local v7, "task":Lcom/android/server/wm/Task;
    if-nez v7, :cond_b

    .line 1827
    move v4, v5

    goto/16 :goto_b

    .line 1832
    :cond_b
    iget-object v15, v8, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    if-eqz v15, :cond_c

    .line 1833
    iget-object v14, v8, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    iget-object v14, v14, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda10;

    invoke-direct {v15, v14}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda10;-><init>(Landroid/util/ArraySet;)V

    invoke-virtual {v7, v15}, Lcom/android/server/wm/TaskFragment;->getTaskFragment(Ljava/util/function/Predicate;)Lcom/android/server/wm/TaskFragment;

    move-result-object v14

    goto :goto_1

    .line 1834
    :cond_c
    nop

    :goto_1
    nop

    .line 1836
    .local v14, "syncTaskFragment":Lcom/android/server/wm/TaskFragment;
    if-eqz v14, :cond_d

    .line 1837
    invoke-virtual {v7, v3, v4}, Lcom/android/server/wm/Task;->moveOrCreateDecorSurfaceFor(Lcom/android/server/wm/TaskFragment;Z)V

    .line 1838
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/android/server/wm/Task;->setDecorSurfaceVisible(Landroid/view/SurfaceControl$Transaction;)V

    move v4, v5

    goto/16 :goto_b

    .line 1840
    :cond_d
    invoke-virtual {v7, v3, v13}, Lcom/android/server/wm/Task;->moveOrCreateDecorSurfaceFor(Lcom/android/server/wm/TaskFragment;Z)V

    .line 1842
    move v4, v5

    goto/16 :goto_b

    .line 1788
    .end local v7    # "task":Lcom/android/server/wm/Task;
    .end local v14    # "syncTaskFragment":Lcom/android/server/wm/TaskFragment;
    :sswitch_9
    invoke-virtual {v11}, Landroid/window/TaskFragmentOperation;->getBooleanValue()Z

    move-result v4

    .line 1789
    .local v4, "isolatedNav":Z
    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskFragment;->setIsolatedNav(Z)V

    .line 1790
    move v4, v5

    goto/16 :goto_b

    .line 1770
    .end local v4    # "isolatedNav":Z
    :sswitch_a
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 1771
    .local v4, "task":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_10

    .line 1772
    new-instance v7, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda9;

    invoke-direct {v7}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v4, v7}, Lcom/android/server/wm/TaskFragment;->getTaskFragment(Ljava/util/function/Predicate;)Lcom/android/server/wm/TaskFragment;

    move-result-object v7

    .line 1774
    .local v7, "topTaskFragment":Lcom/android/server/wm/TaskFragment;
    if-eqz v7, :cond_f

    if-eq v7, v3, :cond_f

    .line 1775
    iget-object v13, v4, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 1776
    .local v13, "index":I
    iget-object v14, v4, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1777
    iget-object v14, v4, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v14, v13, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1778
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v14

    if-nez v14, :cond_e

    .line 1780
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    .line 1782
    :cond_e
    or-int/lit8 v12, v12, 0x2

    .line 1784
    .end local v7    # "topTaskFragment":Lcom/android/server/wm/TaskFragment;
    .end local v13    # "index":I
    :cond_f
    move v4, v5

    goto/16 :goto_b

    .line 1771
    :cond_10
    move v4, v5

    goto/16 :goto_b

    .line 1758
    .end local v4    # "task":Lcom/android/server/wm/Task;
    :sswitch_b
    invoke-virtual {v11}, Landroid/window/TaskFragmentOperation;->getAnimationParams()Landroid/window/TaskFragmentAnimationParams;

    move-result-object v7

    .line 1759
    .local v7, "animationParams":Landroid/window/TaskFragmentAnimationParams;
    if-nez v7, :cond_11

    .line 1760
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v13, "TaskFragmentAnimationParams must be non-null"

    invoke-direct {v4, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1762
    .local v4, "exception":Ljava/lang/Throwable;
    move/from16 v17, v5

    move-object v5, v4

    move/from16 v4, v17

    .local v4, "opType":I
    .local v5, "exception":Ljava/lang/Throwable;
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 1764
    move v1, v4

    .end local v4    # "opType":I
    .local v1, "opType":I
    move-object/from16 v2, p5

    goto/16 :goto_b

    .line 1766
    .end local v1    # "opType":I
    .local v5, "opType":I
    :cond_11
    move v1, v5

    .end local v5    # "opType":I
    .restart local v1    # "opType":I
    invoke-virtual {v3, v7}, Lcom/android/server/wm/TaskFragment;->setAnimationParams(Landroid/window/TaskFragmentAnimationParams;)V

    .line 1767
    move-object/from16 v2, p5

    move v4, v1

    goto/16 :goto_b

    .line 1750
    .end local v1    # "opType":I
    .end local v7    # "animationParams":Landroid/window/TaskFragmentAnimationParams;
    .restart local v5    # "opType":I
    :sswitch_c
    move v1, v5

    .end local v5    # "opType":I
    .restart local v1    # "opType":I
    invoke-virtual {v11}, Landroid/window/TaskFragmentOperation;->getSecondaryFragmentToken()Landroid/os/IBinder;

    move-result-object v2

    .line 1751
    .local v2, "companionFragmentToken":Landroid/os/IBinder;
    if-eqz v2, :cond_12

    .line 1752
    iget-object v4, v0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lcom/android/server/wm/TaskFragment;

    goto :goto_2

    .line 1753
    :cond_12
    nop

    :goto_2
    nop

    .line 1754
    .local v14, "companionTaskFragment":Lcom/android/server/wm/TaskFragment;
    invoke-virtual {v3, v14}, Lcom/android/server/wm/TaskFragment;->setCompanionTaskFragment(Lcom/android/server/wm/TaskFragment;)V

    .line 1755
    move-object/from16 v2, p5

    move v4, v1

    goto/16 :goto_b

    .line 1732
    .end local v1    # "opType":I
    .end local v2    # "companionFragmentToken":Landroid/os/IBinder;
    .end local v14    # "companionTaskFragment":Lcom/android/server/wm/TaskFragment;
    .restart local v5    # "opType":I
    :sswitch_d
    move v1, v5

    .end local v5    # "opType":I
    .restart local v1    # "opType":I
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 1733
    .local v2, "curFocus":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-ne v4, v3, :cond_13

    .line 1734
    const-string v4, "The requested TaskFragment already has the focus."

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    move-object/from16 v2, p5

    move v4, v1

    goto/16 :goto_b

    .line 1737
    :cond_13
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eq v4, v5, :cond_14

    .line 1738
    const-string v4, "The Task of the requested TaskFragment doesn\'t have focus."

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    move-object/from16 v2, p5

    move v4, v1

    goto/16 :goto_b

    .line 1741
    :cond_14
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 1742
    .local v4, "targetFocus":Lcom/android/server/wm/ActivityRecord;
    if-nez v4, :cond_15

    .line 1743
    const-string v5, "There is no resumed activity in the requested TaskFragment."

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    move-object/from16 v2, p5

    move v4, v1

    goto/16 :goto_b

    .line 1746
    :cond_15
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 1747
    move-object/from16 v2, p5

    move v4, v1

    goto/16 :goto_b

    .line 1707
    .end local v1    # "opType":I
    .end local v2    # "curFocus":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "targetFocus":Lcom/android/server/wm/ActivityRecord;
    .restart local v5    # "opType":I
    :sswitch_e
    move v1, v5

    .end local v5    # "opType":I
    .restart local v1    # "opType":I
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v2

    if-nez v2, :cond_16

    .line 1708
    move-object/from16 v2, p5

    move v4, v1

    goto/16 :goto_b

    .line 1712
    :cond_16
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 1713
    .local v2, "focusedApp":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_17

    .line 1714
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    goto :goto_3

    .line 1715
    :cond_17
    move-object v5, v14

    :goto_3
    nop

    .line 1716
    .local v5, "focusedTaskFragment":Lcom/android/server/wm/TaskFragment;
    nop

    nop

    if-eq v5, v3, :cond_19

    if-eqz v5, :cond_18

    .line 1718
    invoke-virtual {v3, v5}, Lcom/android/server/wm/TaskFragment;->isAdjacentTo(Lcom/android/server/wm/TaskFragment;)Z

    move-result v7

    if-eqz v7, :cond_18

    goto :goto_4

    :cond_18
    goto :goto_5

    :cond_19
    :goto_4
    move v4, v13

    :goto_5
    nop

    .line 1720
    .local v4, "wasFocusedInAdjacent":Z
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->removeFromAdjacentTaskFragments()V

    .line 1721
    or-int/lit8 v12, v12, 0x2

    .line 1725
    nop

    nop

    if-eqz v4, :cond_1a

    .line 1726
    invoke-virtual {v5, v14}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v7

    if-nez v7, :cond_1a

    .line 1727
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    invoke-virtual {v7, v14}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 1902
    .end local v2    # "focusedApp":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "wasFocusedInAdjacent":Z
    .end local v5    # "focusedTaskFragment":Lcom/android/server/wm/TaskFragment;
    :cond_1a
    move-object/from16 v2, p5

    move v4, v1

    goto/16 :goto_b

    .line 1677
    .end local v1    # "opType":I
    .local v5, "opType":I
    :sswitch_f
    move v1, v5

    .end local v5    # "opType":I
    .restart local v1    # "opType":I
    invoke-virtual {v11}, Landroid/window/TaskFragmentOperation;->getSecondaryFragmentToken()Landroid/os/IBinder;

    move-result-object v7

    .line 1678
    .local v7, "secondaryFragmentToken":Landroid/os/IBinder;
    iget-object v2, v0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    .line 1679
    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/server/wm/TaskFragment;

    .line 1680
    .local v15, "secondaryTaskFragment":Lcom/android/server/wm/TaskFragment;
    if-nez v15, :cond_1b

    .line 1681
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v2, "SecondaryFragmentToken must be set for setAdjacentTaskFragments."

    invoke-direct {v5, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1683
    .local v5, "exception":Ljava/lang/Throwable;
    move-object/from16 v2, p5

    move v4, v1

    move-object/from16 v1, p6

    .end local v1    # "opType":I
    .local v4, "opType":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 1685
    move v2, v4

    .end local v4    # "opType":I
    .local v2, "opType":I
    move-object/from16 v2, p5

    goto/16 :goto_b

    .line 1687
    .end local v2    # "opType":I
    .end local v5    # "exception":Ljava/lang/Throwable;
    .restart local v1    # "opType":I
    :cond_1b
    move v2, v1

    move-object/from16 v1, p6

    .end local v1    # "opType":I
    .restart local v2    # "opType":I
    invoke-virtual {v3, v15}, Lcom/android/server/wm/TaskFragment;->isAdjacentTo(Lcom/android/server/wm/TaskFragment;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 1690
    new-instance v5, Lcom/android/server/wm/TaskFragment$AdjacentSet;

    filled-new-array {v3, v15}, [Lcom/android/server/wm/TaskFragment;

    move-result-object v13

    invoke-direct {v5, v13}, Lcom/android/server/wm/TaskFragment$AdjacentSet;-><init>([Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {v3, v5}, Lcom/android/server/wm/TaskFragment;->setAdjacentTaskFragments(Lcom/android/server/wm/TaskFragment$AdjacentSet;)V

    .line 1692
    or-int/lit8 v12, v12, 0x2

    .line 1695
    :cond_1c
    invoke-virtual {v9}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v5

    .line 1697
    .local v5, "bundle":Landroid/os/Bundle;
    if-eqz v5, :cond_1d

    .line 1698
    new-instance v14, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;

    invoke-direct {v14, v5}, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;-><init>(Landroid/os/Bundle;)V

    goto :goto_6

    .line 1699
    :cond_1d
    nop

    :goto_6
    nop

    .line 1700
    .local v14, "adjacentParams":Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;
    if-eqz v14, :cond_1e

    .line 1701
    invoke-virtual {v14}, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->shouldDelayPrimaryLastActivityRemoval()Z

    move-result v13

    if-eqz v13, :cond_1e

    const/4 v13, 0x1

    goto :goto_7

    :cond_1e
    move v13, v4

    .line 1700
    :goto_7
    invoke-virtual {v3, v13}, Lcom/android/server/wm/TaskFragment;->setDelayLastActivityRemoval(Z)V

    .line 1702
    if-eqz v14, :cond_1f

    .line 1703
    invoke-virtual {v14}, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->shouldDelaySecondaryLastActivityRemoval()Z

    move-result v13

    if-eqz v13, :cond_1f

    const/4 v4, 0x1

    goto :goto_8

    :cond_1f
    nop

    .line 1702
    :goto_8
    invoke-virtual {v15, v4}, Lcom/android/server/wm/TaskFragment;->setDelayLastActivityRemoval(Z)V

    .line 1704
    move v4, v2

    move-object/from16 v2, p5

    goto/16 :goto_b

    .line 1634
    .end local v2    # "opType":I
    .end local v7    # "secondaryFragmentToken":Landroid/os/IBinder;
    .end local v14    # "adjacentParams":Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;
    .end local v15    # "secondaryTaskFragment":Lcom/android/server/wm/TaskFragment;
    .local v5, "opType":I
    :sswitch_10
    move v2, v5

    .end local v5    # "opType":I
    .restart local v2    # "opType":I
    invoke-virtual {v11}, Landroid/window/TaskFragmentOperation;->getActivityToken()Landroid/os/IBinder;

    move-result-object v7

    .line 1635
    .local v7, "activityToken":Landroid/os/IBinder;
    invoke-static {v7}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 1636
    .local v4, "activity":Lcom/android/server/wm/ActivityRecord;
    if-nez v4, :cond_20

    .line 1639
    iget-object v5, v0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 1640
    invoke-virtual {v5, v1, v7}, Lcom/android/server/wm/TaskFragmentOrganizerController;->getReparentActivityFromTemporaryToken(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    move-object v13, v4

    goto :goto_9

    .line 1636
    :cond_20
    move-object v13, v4

    .line 1642
    .end local v4    # "activity":Lcom/android/server/wm/ActivityRecord;
    .local v13, "activity":Lcom/android/server/wm/ActivityRecord;
    :goto_9
    if-nez v13, :cond_21

    .line 1643
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v4, "Not allowed to operate with invalid activity."

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1645
    .local v5, "exception":Ljava/lang/Throwable;
    move v4, v2

    move-object/from16 v2, p5

    .end local v2    # "opType":I
    .local v4, "opType":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 1647
    move-object/from16 v0, p0

    goto/16 :goto_b

    .line 1649
    .end local v4    # "opType":I
    .end local v5    # "exception":Ljava/lang/Throwable;
    .restart local v2    # "opType":I
    :cond_21
    move v4, v2

    .end local v2    # "opType":I
    .restart local v4    # "opType":I
    invoke-virtual {v3, v13}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivity(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    if-eqz v0, :cond_22

    .line 1650
    new-instance v5, Ljava/lang/SecurityException;

    const-string v0, "The task fragment is not allowed to embed the given activity."

    invoke-direct {v5, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 1652
    .restart local v5    # "exception":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    move-object/from16 v2, p5

    move-object/from16 v1, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 1654
    goto/16 :goto_b

    .line 1656
    .end local v5    # "exception":Ljava/lang/Throwable;
    :cond_22
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eq v0, v1, :cond_23

    .line 1657
    new-instance v5, Ljava/lang/SecurityException;

    const-string v0, "The reparented activity is not in the same Task as the target TaskFragment."

    invoke-direct {v5, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 1659
    .restart local v5    # "exception":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    move-object/from16 v2, p5

    move-object/from16 v1, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 1661
    move v14, v4

    .end local v4    # "opType":I
    .local v14, "opType":I
    goto/16 :goto_b

    .line 1663
    .end local v5    # "exception":Ljava/lang/Throwable;
    .end local v14    # "opType":I
    .restart local v4    # "opType":I
    :cond_23
    move v14, v4

    .end local v4    # "opType":I
    .restart local v14    # "opType":I
    iget-object v0, v8, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    if-eqz v0, :cond_25

    .line 1664
    invoke-virtual {v8, v13}, Lcom/android/server/wm/ActionChain;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1665
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1668
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/server/wm/ActionChain;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1670
    :cond_24
    invoke-virtual {v8, v3}, Lcom/android/server/wm/ActionChain;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1672
    :cond_25
    const v0, 0x7fffffff

    invoke-virtual {v13, v3, v0}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 1673
    or-int/lit8 v12, v12, 0x2

    .line 1674
    move-object/from16 v0, p0

    move-object/from16 v2, p5

    move v4, v14

    goto/16 :goto_b

    .line 1616
    .end local v7    # "activityToken":Landroid/os/IBinder;
    .end local v13    # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local v14    # "opType":I
    .local v5, "opType":I
    :sswitch_11
    move v14, v5

    .end local v5    # "opType":I
    .restart local v14    # "opType":I
    invoke-virtual {v11}, Landroid/window/TaskFragmentOperation;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    .line 1617
    .local v5, "callerActivityToken":Landroid/os/IBinder;
    move-object v2, v3

    .end local v3    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    .local v2, "taskFragment":Lcom/android/server/wm/TaskFragment;
    invoke-virtual {v11}, Landroid/window/TaskFragmentOperation;->getActivityIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1618
    .local v3, "activityIntent":Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/window/TaskFragmentOperation;->getBundle()Landroid/os/Bundle;

    move-result-object v13

    .line 1619
    .local v13, "activityOptions":Landroid/os/Bundle;
    iget v0, v6, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    iget v1, v6, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    .line 1620
    invoke-static {v13, v0, v1}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;II)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v4

    .line 1621
    .local v4, "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda8;

    move-object/from16 v1, p0

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/TaskFragment;Landroid/content/Intent;Lcom/android/server/wm/SafeActivityOptions;Landroid/os/IBinder;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;)V

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    move-object v15, v3

    move-object/from16 v16, v4

    move-object v7, v5

    move-object v3, v2

    .end local v2    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    .end local v4    # "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v5    # "callerActivityToken":Landroid/os/IBinder;
    .local v3, "taskFragment":Lcom/android/server/wm/TaskFragment;
    .local v7, "callerActivityToken":Landroid/os/IBinder;
    .local v15, "activityIntent":Landroid/content/Intent;
    .local v16, "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowOrganizerController;->waitAsyncStart(Ljava/util/function/IntSupplier;)I

    move-result v1

    .line 1625
    .local v1, "result":I
    invoke-static {v1}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v2

    if-nez v2, :cond_26

    .line 1626
    nop

    .line 1627
    invoke-direct {v0, v1, v15}, Lcom/android/server/wm/WindowOrganizerController;->convertStartFailureToThrowable(ILandroid/content/Intent;)Ljava/lang/Throwable;

    move-result-object v5

    .line 1626
    move-object/from16 v2, p5

    move v4, v14

    move v14, v1

    move-object/from16 v1, p6

    .end local v1    # "result":I
    .local v4, "opType":I
    .local v14, "result":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .end local v4    # "opType":I
    .local v1, "opType":I
    goto/16 :goto_b

    .line 1629
    .local v1, "result":I
    .local v14, "opType":I
    :cond_26
    move/from16 v17, v14

    move v14, v1

    move/from16 v1, v17

    .local v1, "opType":I
    .local v14, "result":I
    or-int/lit8 v12, v12, 0x2

    .line 1631
    move-object/from16 v2, p5

    move v4, v1

    goto :goto_b

    .line 1599
    .end local v1    # "opType":I
    .end local v7    # "callerActivityToken":Landroid/os/IBinder;
    .end local v13    # "activityOptions":Landroid/os/Bundle;
    .end local v14    # "result":I
    .end local v15    # "activityIntent":Landroid/content/Intent;
    .end local v16    # "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    .local v5, "opType":I
    :sswitch_12
    move v1, v5

    .end local v5    # "opType":I
    .restart local v1    # "opType":I
    if-eqz p3, :cond_29

    .line 1600
    new-instance v2, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v13

    .line 1602
    .local v13, "bottomActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v13, :cond_28

    iget-object v2, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1603
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/android/server/wm/LockTaskController;->activityBlockedFromFinish(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1605
    const-string v2, "Skip removing TaskFragment due in lock task mode."

    invoke-static {v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v2, "Not allow to delete task fragment in lock task mode."

    invoke-direct {v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p5

    move v4, v1

    move-object/from16 v1, p6

    .end local v1    # "opType":I
    .restart local v4    # "opType":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 1609
    goto :goto_b

    .line 1603
    .end local v4    # "opType":I
    .restart local v1    # "opType":I
    :cond_27
    move v4, v1

    .end local v1    # "opType":I
    .restart local v4    # "opType":I
    goto :goto_a

    .line 1602
    .end local v4    # "opType":I
    .restart local v1    # "opType":I
    :cond_28
    move v4, v1

    .end local v1    # "opType":I
    .restart local v4    # "opType":I
    goto :goto_a

    .line 1599
    .end local v4    # "opType":I
    .end local v13    # "bottomActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v1    # "opType":I
    :cond_29
    move v4, v1

    .line 1612
    .end local v1    # "opType":I
    .restart local v4    # "opType":I
    :goto_a
    iget-object v1, v8, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-direct {v0, v3, v1}, Lcom/android/server/wm/WindowOrganizerController;->deleteTaskFragment(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/Transition;)I

    move-result v1

    or-int/2addr v12, v1

    .line 1613
    move-object/from16 v2, p5

    goto :goto_b

    .line 1585
    .end local v4    # "opType":I
    .restart local v5    # "opType":I
    :sswitch_13
    move v4, v5

    .line 1586
    .end local v5    # "opType":I
    .restart local v4    # "opType":I
    invoke-virtual {v11}, Landroid/window/TaskFragmentOperation;->getTaskFragmentCreationParams()Landroid/window/TaskFragmentCreationParams;

    move-result-object v7

    .line 1587
    .local v7, "taskFragmentCreationParams":Landroid/window/TaskFragmentCreationParams;
    if-nez v7, :cond_2a

    .line 1588
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v1, "TaskFragmentCreationParams must be non-null"

    invoke-direct {v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1590
    .local v5, "exception":Ljava/lang/Throwable;
    move-object/from16 v2, p5

    move-object/from16 v1, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 1592
    goto :goto_b

    .line 1594
    .end local v5    # "exception":Ljava/lang/Throwable;
    :cond_2a
    move-object/from16 v2, p5

    iget-object v1, v8, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-direct {v0, v7, v2, v6, v1}, Lcom/android/server/wm/WindowOrganizerController;->createTaskFragment(Landroid/window/TaskFragmentCreationParams;Landroid/os/IBinder;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition;)V

    .line 1596
    nop

    .line 1902
    .end local v7    # "taskFragmentCreationParams":Landroid/window/TaskFragmentCreationParams;
    :goto_b
    return v12

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_13
        0x1 -> :sswitch_12
        0x2 -> :sswitch_11
        0x3 -> :sswitch_10
        0x4 -> :sswitch_f
        0x5 -> :sswitch_e
        0x6 -> :sswitch_d
        0x7 -> :sswitch_c
        0x8 -> :sswitch_b
        0xa -> :sswitch_a
        0xb -> :sswitch_9
        0xc -> :sswitch_8
        0xd -> :sswitch_7
        0xe -> :sswitch_6
        0xf -> :sswitch_5
        0x10 -> :sswitch_4
        0x3e9 -> :sswitch_3
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_1
        0x3ec -> :sswitch_0
    .end sparse-switch
.end method

.method private applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I
    .locals 24
    .param p1, "t"    # Landroid/window/WindowContainerTransaction;
    .param p2, "syncId"    # I
    .param p3, "chain"    # Lcom/android/server/wm/ActionChain;
    .param p4, "caller"    # Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    .line 639
    move-object/from16 v1, p0

    move/from16 v4, p2

    move-object/from16 v5, p3

    const-string v10, " is not collecting"

    const-string v11, " state: "

    const-string v12, "Too late, transition : "

    const/4 v2, 0x0

    .line 640
    .local v2, "effects":I
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v13, 0x1

    aget-boolean v0, v0, v13

    if-eqz v0, :cond_0

    int-to-long v6, v4

    .local v6, "protoLogParam0":J
    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v8, 0x7fae65e581513769L    # 1.0673112428514985E307

    invoke-static {v0, v8, v9, v13, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 641
    .end local v6    # "protoLogParam0":J
    :cond_0
    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 642
    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    .line 643
    const/4 v14, 0x1

    .line 644
    .local v14, "deferResume":Z
    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, v13}, Lcom/android/server/wm/ActivityTaskSupervisor;->setDeferRootVisibilityUpdate(Z)V

    .line 645
    const/4 v0, 0x0

    .line 646
    .local v0, "deferTransitionReady":Z
    iget-object v3, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    const/4 v6, 0x0

    const-string v15, "WindowOrganizerController"

    if-eqz v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v5}, Lcom/android/server/wm/ActionChain;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_2

    .line 647
    iget-object v3, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v3}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 648
    const/4 v0, 0x1

    .line 649
    iget-object v3, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v3}, Lcom/android/server/wm/Transition;->deferTransitionReady()V

    move/from16 v16, v0

    goto :goto_0

    .line 651
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transition is not collecting when applyTransaction. transition="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " state="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    .line 653
    invoke-virtual {v7}, Lcom/android/server/wm/Transition;->getState()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 651
    invoke-static {v15, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iput-object v6, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    .line 658
    :cond_2
    move/from16 v16, v0

    .end local v0    # "deferTransitionReady":Z
    .local v16, "deferTransitionReady":Z
    :goto_0
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 659
    .local v0, "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer<*>;>;"
    iget-object v7, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    if-eqz v7, :cond_3

    .line 660
    iget-object v7, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v7, v0}, Lcom/android/server/wm/Transition;->applyDisplayChangeIfNeeded(Landroid/util/ArraySet;)V

    .line 661
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 662
    or-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 791
    .end local v0    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer<*>;>;"
    :catchall_0
    move-exception v0

    const/4 v13, 0x0

    goto/16 :goto_15

    .line 665
    .restart local v0    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer<*>;>;"
    :cond_3
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v7

    .line 666
    .local v7, "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 668
    .local v8, "hopSize":I
    iget-object v9, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    if-eqz v9, :cond_7

    .line 671
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getChanges()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 672
    .local v9, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 673
    nop

    .line 674
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 675
    .local v17, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual/range {v18 .. v18}, Landroid/window/WindowContainerTransaction$Change;->getConfigAtTransitionEnd()Z

    move-result v18

    if-nez v18, :cond_4

    goto :goto_2

    .line 676
    :cond_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/IBinder;

    invoke-static/range {v18 .. v18}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v18

    move-object/from16 v19, v18

    .line 677
    .local v19, "wc":Lcom/android/server/wm/WindowContainer;
    if-eqz v19, :cond_6

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v18

    if-nez v18, :cond_5

    goto :goto_2

    .line 678
    :cond_5
    iget-object v6, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    move-object/from16 v13, v19

    .end local v19    # "wc":Lcom/android/server/wm/WindowContainer;
    .local v13, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v6, v13}, Lcom/android/server/wm/Transition;->setConfigAtEnd(Lcom/android/server/wm/WindowContainer;)V

    .line 679
    .end local v13    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    const/4 v6, 0x0

    const/4 v13, 0x1

    goto :goto_2

    .line 677
    .restart local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .restart local v19    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_6
    move-object/from16 v13, v19

    .end local v19    # "wc":Lcom/android/server/wm/WindowContainer;
    .restart local v13    # "wc":Lcom/android/server/wm/WindowContainer;
    const/4 v6, 0x0

    const/4 v13, 0x1

    goto :goto_2

    .line 681
    .end local v9    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .end local v13    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getChanges()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v13, v6

    .line 682
    .local v13, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    :goto_3
    :try_start_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v6, :cond_16

    .line 683
    :try_start_2
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 684
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/IBinder;

    invoke-static {v9}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    .line 685
    .local v9, "wc":Lcom/android/server/wm/WindowContainer;
    if-eqz v9, :cond_15

    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    if-nez v17, :cond_8

    move/from16 v19, v2

    const/4 v2, 0x0

    goto/16 :goto_f

    .line 692
    :cond_8
    if-ltz v4, :cond_9

    .line 693
    :try_start_3
    invoke-virtual {v1, v4, v9}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 695
    :cond_9
    :try_start_4
    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActionChain;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 697
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual/range {v17 .. v17}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    and-int/lit8 v17, v17, 0x20

    if-eqz v17, :cond_b

    .line 699
    nop

    .line 713
    :try_start_5
    iget-object v3, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    if-eqz v3, :cond_a

    .line 714
    iget-object v3, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move/from16 v19, v2

    const/4 v2, 0x0

    .end local v2    # "effects":I
    .local v19, "effects":I
    :try_start_6
    invoke-virtual {v3, v2}, Lcom/android/server/wm/Transition;->setCanPipOnFinish(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    .line 791
    .end local v0    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer<*>;>;"
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .end local v7    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .end local v8    # "hopSize":I
    .end local v9    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v13    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    :catchall_1
    move-exception v0

    move/from16 v2, v19

    const/4 v13, 0x0

    goto/16 :goto_15

    .end local v19    # "effects":I
    .restart local v2    # "effects":I
    :catchall_2
    move-exception v0

    move/from16 v19, v2

    const/4 v13, 0x0

    .end local v2    # "effects":I
    .restart local v19    # "effects":I
    :goto_4
    goto/16 :goto_15

    .line 713
    .end local v19    # "effects":I
    .restart local v0    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer<*>;>;"
    .restart local v2    # "effects":I
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .restart local v7    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .restart local v8    # "hopSize":I
    .restart local v9    # "wc":Lcom/android/server/wm/WindowContainer;
    .restart local v13    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    :cond_a
    move/from16 v19, v2

    .end local v2    # "effects":I
    .restart local v19    # "effects":I
    goto :goto_5

    .line 697
    .end local v19    # "effects":I
    .restart local v2    # "effects":I
    :cond_b
    move/from16 v19, v2

    .line 720
    .end local v2    # "effects":I
    .restart local v19    # "effects":I
    :goto_5
    const/4 v2, 0x0

    .line 721
    .local v2, "forceHiddenForPip":Z
    :try_start_7
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-eqz v3, :cond_f

    :try_start_8
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 722
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual {v3}, Landroid/window/WindowContainerTransaction$Change;->getWindowingMode()I

    move-result v3

    move/from16 v21, v2

    .end local v2    # "forceHiddenForPip":Z
    .local v21, "forceHiddenForPip":Z
    const/4 v2, 0x2

    if-eq v3, v2, :cond_10

    .line 725
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v8, :cond_e

    .line 726
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 727
    .local v3, "hop":Landroid/window/WindowContainerTransaction$HierarchyOp;
    move/from16 v22, v2

    .end local v2    # "i":I
    .local v22, "i":I
    invoke-virtual {v3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v2

    move-object/from16 v23, v3

    const/4 v3, 0x1

    .end local v3    # "hop":Landroid/window/WindowContainerTransaction$HierarchyOp;
    .local v23, "hop":Landroid/window/WindowContainerTransaction$HierarchyOp;
    if-eq v2, v3, :cond_c

    goto :goto_7

    .line 728
    :cond_c
    nop

    .line 729
    invoke-virtual/range {v23 .. v23}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v2

    .line 728
    invoke-static {v2}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 730
    .local v2, "hopWc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_7

    .line 731
    :cond_d
    invoke-virtual/range {v23 .. v23}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v3

    const/16 v20, 0x1

    xor-int/lit8 v3, v3, 0x1

    move/from16 v21, v3

    .line 725
    .end local v2    # "hopWc":Lcom/android/server/wm/WindowContainer;
    .end local v23    # "hop":Landroid/window/WindowContainerTransaction$HierarchyOp;
    :goto_7
    add-int/lit8 v2, v22, 0x1

    .end local v22    # "i":I
    .local v2, "i":I
    goto :goto_6

    :cond_e
    move/from16 v22, v2

    .end local v2    # "i":I
    .restart local v22    # "i":I
    move/from16 v2, v21

    goto :goto_8

    .line 721
    .end local v21    # "forceHiddenForPip":Z
    .end local v22    # "i":I
    .local v2, "forceHiddenForPip":Z
    :cond_f
    move/from16 v21, v2

    .line 734
    .end local v2    # "forceHiddenForPip":Z
    .restart local v21    # "forceHiddenForPip":Z
    :cond_10
    move/from16 v2, v21

    .end local v21    # "forceHiddenForPip":Z
    .restart local v2    # "forceHiddenForPip":Z
    :goto_8
    if-eqz v2, :cond_11

    .line 735
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    move/from16 v21, v2

    const/4 v2, 0x1

    .end local v2    # "forceHiddenForPip":Z
    .restart local v21    # "forceHiddenForPip":Z
    invoke-virtual {v3, v2, v2}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_9

    .line 734
    .end local v21    # "forceHiddenForPip":Z
    .restart local v2    # "forceHiddenForPip":Z
    :cond_11
    move/from16 v21, v2

    .line 737
    .end local v2    # "forceHiddenForPip":Z
    .restart local v21    # "forceHiddenForPip":Z
    :goto_9
    if-eqz v21, :cond_12

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result v2

    if-nez v2, :cond_12

    .line 741
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;)V

    .line 742
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string v3, "force-stop-on-removing-pip"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->processStoppingAndFinishingActivities(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_a

    .line 791
    .end local v0    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer<*>;>;"
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .end local v7    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .end local v8    # "hopSize":I
    .end local v9    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v13    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .end local v21    # "forceHiddenForPip":Z
    :catchall_3
    move-exception v0

    move-object/from16 v5, p3

    move/from16 v2, v19

    const/4 v13, 0x0

    goto/16 :goto_15

    .line 737
    .restart local v0    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer<*>;>;"
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .restart local v7    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .restart local v8    # "hopSize":I
    .restart local v9    # "wc":Lcom/android/server/wm/WindowContainer;
    .restart local v13    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .restart local v21    # "forceHiddenForPip":Z
    :cond_12
    const/4 v4, 0x0

    .line 747
    :goto_a
    :try_start_a
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerTransaction$Change;

    .line 748
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getErrorCallbackToken()Landroid/os/IBinder;

    move-result-object v3

    .line 747
    invoke-direct {v1, v9, v2, v3}, Lcom/android/server/wm/WindowOrganizerController;->applyWindowContainerChange(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Landroid/os/IBinder;)I

    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 749
    .local v2, "containerEffect":I
    or-int v3, v19, v2

    .line 751
    .end local v19    # "effects":I
    .local v3, "effects":I
    if-eqz v21, :cond_13

    .line 752
    :try_start_b
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move/from16 v17, v2

    const/4 v2, 0x0

    const/4 v4, 0x1

    .end local v2    # "containerEffect":I
    .local v17, "containerEffect":I
    :try_start_c
    invoke-virtual {v5, v4, v2}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    goto :goto_d

    .line 791
    .end local v0    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer<*>;>;"
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .end local v7    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .end local v8    # "hopSize":I
    .end local v9    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v13    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .end local v17    # "containerEffect":I
    .end local v21    # "forceHiddenForPip":Z
    :catchall_4
    move-exception v0

    :goto_b
    move-object/from16 v5, p3

    move v13, v2

    :goto_c
    move v2, v3

    goto/16 :goto_15

    :catchall_5
    move-exception v0

    const/4 v2, 0x0

    goto :goto_b

    .line 751
    .restart local v0    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer<*>;>;"
    .restart local v2    # "containerEffect":I
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .restart local v7    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .restart local v8    # "hopSize":I
    .restart local v9    # "wc":Lcom/android/server/wm/WindowContainer;
    .restart local v13    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .restart local v21    # "forceHiddenForPip":Z
    :cond_13
    move/from16 v17, v2

    const/4 v2, 0x0

    .line 756
    .end local v2    # "containerEffect":I
    .restart local v17    # "containerEffect":I
    :goto_d
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_14

    and-int/lit8 v4, v17, 0x1

    if-eqz v4, :cond_14

    .line 758
    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 760
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .end local v9    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v17    # "containerEffect":I
    .end local v21    # "forceHiddenForPip":Z
    :cond_14
    move/from16 v4, p2

    move-object/from16 v5, p3

    move v2, v3

    goto/16 :goto_3

    .line 791
    .end local v0    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer<*>;>;"
    .end local v3    # "effects":I
    .end local v7    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .end local v8    # "hopSize":I
    .end local v13    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .restart local v19    # "effects":I
    :catchall_6
    move-exception v0

    const/4 v2, 0x0

    :goto_e
    move-object/from16 v5, p3

    move v13, v2

    move/from16 v2, v19

    goto/16 :goto_15

    .end local v19    # "effects":I
    .local v2, "effects":I
    :catchall_7
    move-exception v0

    move/from16 v19, v2

    const/4 v2, 0x0

    move-object/from16 v5, p3

    move v13, v2

    move/from16 v2, v19

    goto/16 :goto_4

    .line 685
    .restart local v0    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer<*>;>;"
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .restart local v7    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .restart local v8    # "hopSize":I
    .restart local v9    # "wc":Lcom/android/server/wm/WindowContainer;
    .restart local v13    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    :cond_15
    move/from16 v19, v2

    const/4 v2, 0x0

    .line 686
    .end local v2    # "effects":I
    .restart local v19    # "effects":I
    :goto_f
    :try_start_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to operate on detached container: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v2, v19

    goto/16 :goto_3

    .line 791
    .end local v0    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer<*>;>;"
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .end local v7    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .end local v8    # "hopSize":I
    .end local v9    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v13    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    :catchall_8
    move-exception v0

    goto :goto_e

    .line 762
    .end local v19    # "effects":I
    .restart local v0    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer<*>;>;"
    .restart local v2    # "effects":I
    .restart local v7    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .restart local v8    # "hopSize":I
    .restart local v13    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    :cond_16
    move/from16 v19, v2

    const/4 v2, 0x0

    .end local v2    # "effects":I
    .restart local v19    # "effects":I
    if-lez v8, :cond_18

    .line 763
    iget-object v3, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isInLockTaskMode()Z

    move-result v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 764
    .local v6, "isInLockTaskMode":Z
    const/4 v3, 0x0

    move v4, v3

    move/from16 v3, v19

    .end local v19    # "effects":I
    .restart local v3    # "effects":I
    .local v4, "i":I
    :goto_10
    if-ge v4, v8, :cond_17

    .line 765
    :try_start_e
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 766
    move v9, v8

    .end local v8    # "hopSize":I
    .local v9, "hopSize":I
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getErrorCallbackToken()Landroid/os/IBinder;

    move-result-object v8

    .line 767
    move/from16 v17, v9

    .end local v9    # "hopSize":I
    .local v17, "hopSize":I
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 765
    move/from16 v19, v4

    move-object/from16 v18, v13

    move/from16 v21, v17

    move/from16 v4, p2

    move v13, v2

    move-object v2, v5

    move-object/from16 v17, v7

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    .end local v4    # "i":I
    .end local v7    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .end local v13    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .local v17, "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .local v18, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .local v19, "i":I
    .local v21, "hopSize":I
    :try_start_f
    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/WindowOrganizerController;->applyHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;IILcom/android/server/wm/ActionChain;ZLcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)I

    move-result v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    or-int/2addr v3, v2

    .line 764
    add-int/lit8 v4, v19, 0x1

    move v2, v13

    move-object/from16 v7, v17

    move-object/from16 v13, v18

    move/from16 v8, v21

    .end local v19    # "i":I
    .restart local v4    # "i":I
    goto :goto_10

    .line 791
    .end local v0    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer<*>;>;"
    .end local v4    # "i":I
    .end local v6    # "isInLockTaskMode":Z
    .end local v17    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .end local v18    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .end local v21    # "hopSize":I
    :catchall_9
    move-exception v0

    goto/16 :goto_c

    .line 764
    .restart local v0    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer<*>;>;"
    .restart local v4    # "i":I
    .restart local v6    # "isInLockTaskMode":Z
    .restart local v7    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .restart local v8    # "hopSize":I
    .restart local v13    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    :cond_17
    move-object/from16 v5, p3

    move/from16 v19, v4

    move-object/from16 v17, v7

    move/from16 v21, v8

    move-object/from16 v18, v13

    move v13, v2

    .end local v4    # "i":I
    .end local v7    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .end local v8    # "hopSize":I
    .end local v13    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .restart local v17    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .restart local v18    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .restart local v19    # "i":I
    .restart local v21    # "hopSize":I
    move v2, v3

    goto :goto_11

    .line 762
    .end local v3    # "effects":I
    .end local v6    # "isInLockTaskMode":Z
    .end local v17    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .end local v18    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .end local v21    # "hopSize":I
    .restart local v7    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .restart local v8    # "hopSize":I
    .restart local v13    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .local v19, "effects":I
    :cond_18
    move-object/from16 v5, p3

    move-object/from16 v17, v7

    move/from16 v21, v8

    move-object/from16 v18, v13

    move v13, v2

    .end local v7    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .end local v8    # "hopSize":I
    .end local v13    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .restart local v17    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .restart local v18    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .restart local v21    # "hopSize":I
    move/from16 v2, v19

    .line 770
    .end local v19    # "effects":I
    .restart local v2    # "effects":I
    :goto_11
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_19

    .line 771
    :try_start_10
    iget-object v3, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3, v13}, Lcom/android/server/wm/ActivityTaskSupervisor;->setDeferRootVisibilityUpdate(Z)V

    .line 772
    iget-object v3, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 773
    const/4 v14, 0x0

    .line 775
    iget-object v3, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 776
    iget-object v3, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    goto :goto_13

    .line 791
    .end local v0    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer<*>;>;"
    .end local v17    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .end local v18    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .end local v21    # "hopSize":I
    :catchall_a
    move-exception v0

    goto/16 :goto_15

    .line 777
    .restart local v0    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer<*>;>;"
    .restart local v17    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .restart local v18    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .restart local v21    # "hopSize":I
    :cond_19
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_1a

    .line 778
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/16 v20, 0x1

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_12
    if-ltz v3, :cond_1a

    .line 779
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    new-instance v6, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 778
    add-int/lit8 v3, v3, -0x1

    goto :goto_12

    .line 787
    .end local v3    # "i":I
    :cond_1a
    :goto_13
    if-eqz v2, :cond_1b

    .line 788
    iget-object v3, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    .line 791
    .end local v0    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer<*>;>;"
    .end local v17    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .end local v18    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .end local v21    # "hopSize":I
    :cond_1b
    if-eqz v16, :cond_1d

    .line 792
    iget-object v0, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 793
    iget-object v0, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->continueTransitionReady()V

    goto :goto_14

    .line 795
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v3}, Lcom/android/server/wm/Transition;->getSyncId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    .line 796
    invoke-virtual {v3}, Lcom/android/server/wm/Transition;->getState()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 795
    invoke-static {v15, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_1d
    :goto_14
    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, v13}, Lcom/android/server/wm/ActivityTaskSupervisor;->setDeferRootVisibilityUpdate(Z)V

    .line 800
    if-eqz v14, :cond_1e

    .line 801
    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 803
    :cond_1e
    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 804
    nop

    .line 805
    return v2

    .line 791
    :goto_15
    if-eqz v16, :cond_20

    .line 792
    iget-object v3, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v3}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 793
    iget-object v3, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v3}, Lcom/android/server/wm/Transition;->continueTransitionReady()V

    goto :goto_16

    .line 795
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v4}, Lcom/android/server/wm/Transition;->getSyncId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    .line 796
    invoke-virtual {v4}, Lcom/android/server/wm/Transition;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 795
    invoke-static {v15, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_20
    :goto_16
    iget-object v3, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3, v13}, Lcom/android/server/wm/ActivityTaskSupervisor;->setDeferRootVisibilityUpdate(Z)V

    .line 800
    if-eqz v14, :cond_21

    .line 801
    iget-object v3, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 803
    :cond_21
    iget-object v3, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 804
    throw v0
.end method

.method private applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Z)I
    .locals 3
    .param p1, "t"    # Landroid/window/WindowContainerTransaction;
    .param p2, "syncId"    # I
    .param p3, "chain"    # Lcom/android/server/wm/ActionChain;
    .param p4, "caller"    # Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .param p5, "deferred"    # Z

    .line 616
    if-eqz p5, :cond_0

    .line 618
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 619
    :catch_0
    move-exception v0

    .line 624
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "WindowOrganizerController"

    const-string v2, "Failed to execute deferred applyTransaction"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 626
    .end local v0    # "e":Ljava/lang/RuntimeException;
    const/4 v0, 0x0

    return v0

    .line 628
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    move-result v0

    return v0
.end method

.method private applyWindowContainerChange(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Landroid/os/IBinder;)I
    .locals 1
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "c"    # Landroid/window/WindowContainerTransaction$Change;
    .param p3, "errorCallbackToken"    # Landroid/os/IBinder;

    .line 2293
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowOrganizerController;->sanitizeWindowContainer(Lcom/android/server/wm/WindowContainer;)V

    .line 2294
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2295
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyDisplayAreaChanges(Lcom/android/server/wm/DisplayArea;Landroid/window/WindowContainerTransaction$Change;)I

    move-result v0

    return v0

    .line 2296
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2297
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyTaskChanges(Lcom/android/server/wm/Task;Landroid/window/WindowContainerTransaction$Change;)I

    move-result v0

    return v0

    .line 2298
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2299
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/wm/WindowOrganizerController;->applyTaskFragmentChanges(Lcom/android/server/wm/TaskFragment;Landroid/window/WindowContainerTransaction$Change;Landroid/os/IBinder;)I

    move-result v0

    return v0

    .line 2301
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I

    move-result v0

    return v0
.end method

.method private clearAdjacentRootsHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;)I
    .locals 5
    .param p1, "hop"    # Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 2268
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 2269
    .local v0, "wc":Lcom/android/server/wm/WindowContainer;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    goto :goto_0

    .line 2273
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    .line 2274
    .local v2, "root":Lcom/android/server/wm/TaskFragment;
    iget-boolean v3, v2, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v3, :cond_3

    .line 2278
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2279
    return v1

    .line 2281
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->removeFromAdjacentTaskFragments()V

    .line 2282
    const/4 v1, 0x2

    return v1

    .line 2275
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearAdjacentRootsHierarchyOp: Not created by organizer root="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2270
    .end local v2    # "root":Lcom/android/server/wm/TaskFragment;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to operate on unknown or detached container: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowOrganizerController"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    return v1
.end method

.method static configurationsAreEqualForOrganizer(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 1
    .param p0, "newConfig"    # Landroid/content/res/Configuration;
    .param p1, "oldConfig"    # Landroid/content/res/Configuration;

    .line 2415
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/wm/WindowOrganizerController;->configurationsAreEqualForOrganizer(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)Z

    move-result v0

    return v0
.end method

.method static configurationsAreEqualForOrganizer(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)Z
    .locals 6
    .param p0, "newConfig"    # Landroid/content/res/Configuration;
    .param p1, "oldConfig"    # Landroid/content/res/Configuration;
    .param p2, "additionalMask"    # I

    .line 2430
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2431
    return v0

    .line 2433
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    .line 2434
    .local v1, "cfgChanges":I
    and-int v2, v1, p2

    if-eqz v2, :cond_1

    .line 2435
    return v0

    .line 2437
    :cond_1
    const/high16 v2, 0x20000000

    and-int/2addr v2, v1

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 2438
    iget-object v2, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, v4, v3}, Landroid/app/WindowConfiguration;->diff(Landroid/app/WindowConfiguration;Z)J

    move-result-wide v4

    long-to-int v2, v4

    goto :goto_0

    .line 2439
    :cond_2
    move v2, v0

    :goto_0
    nop

    .line 2440
    .local v2, "winCfgChanges":I
    and-int/lit8 v4, v2, 0x3

    if-nez v4, :cond_3

    .line 2441
    const v4, -0x20000001

    and-int/2addr v1, v4

    .line 2443
    :cond_3
    const v4, 0x20003c00

    and-int/2addr v4, v1

    if-nez v4, :cond_4

    move v0, v3

    :cond_4
    return v0
.end method

.method private convertStartFailureToThrowable(ILandroid/content/Intent;)Ljava/lang/Throwable;
    .locals 3
    .param p1, "result"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2734
    packed-switch p1, :pswitch_data_0

    .line 2745
    :pswitch_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start activity failed with error code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " when starting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 2737
    :pswitch_1
    new-instance v0, Landroid/content/ActivityNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Activity found to handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 2739
    :pswitch_2
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission denied and not allowed to start activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 2742
    :pswitch_3
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity could not be started for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with error code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x60
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private createTaskFragment(Landroid/window/TaskFragmentCreationParams;Landroid/os/IBinder;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition;)V
    .locals 10
    .param p1, "creationParams"    # Landroid/window/TaskFragmentCreationParams;
    .param p2, "errorCallbackToken"    # Landroid/os/IBinder;
    .param p3, "caller"    # Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .param p4, "transition"    # Lcom/android/server/wm/Transition;

    .line 2589
    nop

    .line 2590
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getOwnerToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2591
    .local v0, "ownerActivity":Lcom/android/server/wm/ActivityRecord;
    nop

    .line 2592
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getOrganizer()Landroid/window/TaskFragmentOrganizerToken;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/TaskFragmentOrganizerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2591
    invoke-static {v1}, Landroid/window/ITaskFragmentOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v3

    .line 2594
    .local v3, "organizer":Landroid/window/ITaskFragmentOrganizer;
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2595
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v1, "TaskFragment token must be unique"

    invoke-direct {v7, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2597
    .local v7, "exception":Ljava/lang/Throwable;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p2

    .end local p2    # "errorCallbackToken":Landroid/os/IBinder;
    .local v4, "errorCallbackToken":Landroid/os/IBinder;
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 2599
    return-void

    .line 2601
    .end local v4    # "errorCallbackToken":Landroid/os/IBinder;
    .end local v7    # "exception":Ljava/lang/Throwable;
    .restart local p2    # "errorCallbackToken":Landroid/os/IBinder;
    :cond_0
    move-object v4, p2

    .end local p2    # "errorCallbackToken":Landroid/os/IBinder;
    .restart local v4    # "errorCallbackToken":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-nez p2, :cond_2

    :cond_1
    goto/16 :goto_2

    .line 2608
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result p2

    if-nez p2, :cond_3

    .line 2609
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not allowed to operate with non-resizable owner Activity"

    invoke-direct {v7, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2611
    .local v7, "exception":Ljava/lang/IllegalArgumentException;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 2613
    return-void

    .line 2616
    .end local v7    # "exception":Ljava/lang/IllegalArgumentException;
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    .line 2617
    .local p2, "ownerTask":Lcom/android/server/wm/Task;
    iget v1, p2, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v2

    if-ne v1, v2, :cond_e

    iget v1, p2, Lcom/android/server/wm/Task;->effectiveUid:I

    iget v2, p3, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    if-eq v1, v2, :cond_4

    move-object v2, p0

    goto/16 :goto_1

    .line 2626
    :cond_4
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2627
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not allowed to create TaskFragment in PIP Task"

    invoke-direct {v7, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2629
    .local v7, "exception":Ljava/lang/Throwable;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 2631
    return-void

    .line 2633
    .end local v7    # "exception":Ljava/lang/Throwable;
    :cond_5
    move-object v2, p0

    new-instance v1, Lcom/android/server/wm/TaskFragment;

    iget-object v5, v2, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2634
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v1, v5, v6, v7}, Lcom/android/server/wm/TaskFragment;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;Z)V

    .line 2635
    .local v1, "taskFragment":Lcom/android/server/wm/TaskFragment;
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getAllowTransitionWhenEmpty()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/server/wm/TaskFragment;->setAllowTransitionWhenEmpty(Z)V

    .line 2638
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getOrganizer()Landroid/window/TaskFragmentOrganizerToken;

    move-result-object v5

    .line 2639
    .local v5, "organizerToken":Landroid/window/TaskFragmentOrganizerToken;
    nop

    .line 2640
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v6

    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 2639
    invoke-virtual {v1, v5, v6, v7}, Lcom/android/server/wm/TaskFragment;->setTaskFragmentOrganizer(Landroid/window/TaskFragmentOrganizerToken;ILjava/lang/String;)V

    .line 2641
    iget-object v6, v2, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-virtual {v5}, Landroid/window/TaskFragmentOrganizerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isSystemOrganizer(Landroid/os/IBinder;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2642
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getOverrideOrientation()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowContainer;->setOverrideOrientation(I)V

    .line 2643
    nop

    .line 2644
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getConfigurationChangeMask()I

    move-result v6

    .line 2643
    invoke-virtual {v1, v6}, Lcom/android/server/wm/TaskFragment;->setConfigurationChangeMaskForOrganizer(I)V

    .line 2647
    :cond_6
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getPairedPrimaryFragmentToken()Landroid/os/IBinder;

    move-result-object v6

    const v7, 0x7fffffff

    const/4 v8, -0x1

    if-eqz v6, :cond_8

    .line 2650
    nop

    .line 2651
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getPairedPrimaryFragmentToken()Landroid/os/IBinder;

    move-result-object v6

    .line 2650
    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowOrganizerController;->getTaskFragment(Landroid/os/IBinder;)Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    .line 2652
    .local v6, "pairedPrimaryTaskFragment":Lcom/android/server/wm/TaskFragment;
    iget-object v9, p2, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 2653
    .local v9, "pairedPosition":I
    if-eq v9, v8, :cond_7

    add-int/lit8 v7, v9, 0x1

    .line 2654
    .end local v6    # "pairedPrimaryTaskFragment":Lcom/android/server/wm/TaskFragment;
    .end local v9    # "pairedPosition":I
    .local v7, "position":I
    :cond_7
    goto :goto_0

    .end local v7    # "position":I
    :cond_8
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getPairedActivityToken()Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 2657
    nop

    .line 2658
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getPairedActivityToken()Landroid/os/IBinder;

    move-result-object v6

    .line 2657
    invoke-static {v6}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 2659
    .local v6, "pairedActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v9, p2, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 2660
    .restart local v9    # "pairedPosition":I
    if-eq v9, v8, :cond_9

    add-int/lit8 v7, v9, 0x1

    .line 2661
    .end local v6    # "pairedActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v9    # "pairedPosition":I
    .restart local v7    # "position":I
    :cond_9
    goto :goto_0

    .line 2662
    .end local v7    # "position":I
    :cond_a
    const v7, 0x7fffffff

    .line 2664
    .restart local v7    # "position":I
    :goto_0
    invoke-virtual {p2, v1, v7}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 2665
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    iget v8, p2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v6, v8}, Lcom/android/server/wm/EventLogTags;->writeWmTfCreated(II)V

    .line 2666
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getWindowingMode()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    .line 2667
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getInitialRelativeBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    .line 2670
    if-eqz p4, :cond_b

    .line 2671
    invoke-virtual {p4}, Lcom/android/server/wm/Transition;->getSyncId()I

    move-result v6

    invoke-virtual {p0, v6, v1}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    .line 2675
    :cond_b
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getInitialRelativeBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/server/wm/TaskFragment;->setRelativeEmbeddedBounds(Landroid/graphics/Rect;)V

    .line 2678
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->recomputeConfiguration()V

    .line 2680
    :cond_c
    iget-object v6, v2, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2682
    if-eqz p4, :cond_d

    invoke-virtual {p4, v1}, Lcom/android/server/wm/Transition;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    .line 2683
    :cond_d
    return-void

    .line 2617
    .end local v1    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    .end local v5    # "organizerToken":Landroid/window/TaskFragmentOrganizerToken;
    .end local v7    # "position":I
    :cond_e
    move-object v2, p0

    .line 2619
    :goto_1
    new-instance v7, Ljava/lang/SecurityException;

    const-string v1, "Not allowed to operate with the ownerToken while the root activity of the target task belong to the different app"

    invoke-direct {v7, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 2622
    .local v7, "exception":Ljava/lang/Throwable;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 2624
    return-void

    .line 2602
    .end local v7    # "exception":Ljava/lang/Throwable;
    .end local p2    # "ownerTask":Lcom/android/server/wm/Task;
    :goto_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not allowed to operate with invalid ownerToken"

    invoke-direct {v7, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2604
    .restart local v7    # "exception":Ljava/lang/Throwable;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 2606
    return-void
.end method

.method private deleteTaskFragment(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/Transition;)I
    .locals 5
    .param p1, "taskFragment"    # Lcom/android/server/wm/TaskFragment;
    .param p2, "transition"    # Lcom/android/server/wm/Transition;

    .line 2687
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getNonFinishingActivityCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2688
    .local v0, "isEmpty":Z
    :goto_0
    nop

    nop

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    nop

    if-nez v3, :cond_1

    iget-object v3, p2, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 2690
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2691
    :cond_1
    invoke-virtual {p2, p1}, Lcom/android/server/wm/Transition;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    .line 2694
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2695
    const-string v3, "deleteTaskFragment"

    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/TaskFragment;->remove(ZLjava/lang/String;)V

    .line 2696
    if-eqz v0, :cond_3

    .line 2698
    return v1

    .line 2700
    :cond_3
    const/4 v1, 0x2

    return v1
.end method

.method private enforceTaskFragmentConfigChangeAllowed(Ljava/lang/String;Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Landroid/window/ITaskFragmentOrganizer;)V
    .locals 16
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "wc"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "change"    # Landroid/window/WindowContainerTransaction$Change;
    .param p4, "organizer"    # Landroid/window/ITaskFragmentOrganizer;

    .line 2525
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    const-string v2, "WindowOrganizerController"

    if-nez p2, :cond_0

    .line 2526
    const-string v3, "Attempt to operate on task fragment that no longer exists"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    return-void

    .line 2529
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    .line 2530
    .local v3, "tf":Lcom/android/server/wm/TaskFragment;
    const-string v4, ", uid="

    const-string v5, " from pid="

    const-string v6, "Permission Denial: "

    if-eqz v3, :cond_4

    invoke-virtual {v3, v1}, Lcom/android/server/wm/TaskFragment;->hasTaskFragmentOrganizer(Landroid/window/ITaskFragmentOrganizer;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2539
    invoke-virtual/range {p3 .. p3}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v7

    .line 2540
    .local v7, "originalChangeMask":I
    invoke-virtual/range {p3 .. p3}, Landroid/window/WindowContainerTransaction$Change;->getConfigSetMask()I

    move-result v8

    .line 2541
    .local v8, "originalConfigSetMask":I
    invoke-virtual/range {p3 .. p3}, Landroid/window/WindowContainerTransaction$Change;->getWindowSetMask()I

    move-result v9

    .line 2543
    .local v9, "originalWindowSetMask":I
    move v10, v7

    .line 2544
    .local v10, "changeMaskToBeChecked":I
    move v11, v8

    .line 2545
    .local v11, "configSetMaskToBeChecked":I
    move v12, v9

    .line 2547
    .local v12, "windowSetMaskToBeChecked":I
    move-object/from16 v13, p0

    iget-object v14, v13, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-interface {v1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isSystemOrganizer(Landroid/os/IBinder;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 2551
    and-int/lit8 v10, v10, -0x9

    .line 2552
    and-int/lit8 v10, v10, -0x2

    .line 2553
    and-int/lit8 v10, v10, -0x41

    .line 2557
    :cond_1
    and-int/lit16 v14, v10, 0x100

    if-eqz v14, :cond_2

    const/high16 v14, 0x20000000

    and-int/2addr v14, v11

    if-eqz v14, :cond_2

    and-int/lit8 v14, v12, 0x1

    if-eqz v14, :cond_2

    .line 2564
    and-int/lit16 v10, v10, -0x101

    .line 2565
    const v14, -0x20000001

    and-int/2addr v11, v14

    .line 2566
    and-int/lit8 v12, v12, -0x2

    .line 2569
    :cond_2
    if-nez v10, :cond_3

    if-nez v11, :cond_3

    if-nez v12, :cond_3

    .line 2573
    return-void

    .line 2576
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2577
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " trying to apply changes of changeMask="

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " configSetMask="

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " windowSetMask="

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to TaskFragment="

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " TaskFragmentOrganizer="

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2582
    .local v4, "msg":Ljava/lang/String;
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2530
    .end local v4    # "msg":Ljava/lang/String;
    .end local v7    # "originalChangeMask":I
    .end local v8    # "originalConfigSetMask":I
    .end local v9    # "originalWindowSetMask":I
    .end local v10    # "changeMaskToBeChecked":I
    .end local v11    # "configSetMaskToBeChecked":I
    .end local v12    # "windowSetMaskToBeChecked":I
    :cond_4
    move-object/from16 v13, p0

    .line 2532
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2533
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " trying to modify window container not belonging to the TaskFragmentOrganizer="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2535
    .restart local v4    # "msg":Ljava/lang/String;
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private enforceTaskFragmentOrganized(Ljava/lang/String;Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)V
    .locals 3
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "fragmentToken"    # Landroid/os/IBinder;
    .param p3, "organizer"    # Landroid/window/ITaskFragmentOrganizer;

    .line 2498
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2499
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskFragment;

    .line 2503
    .local v0, "tf":Lcom/android/server/wm/TaskFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Lcom/android/server/wm/TaskFragment;->hasTaskFragmentOrganizer(Landroid/window/ITaskFragmentOrganizer;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_0

    .line 2504
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2505
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " trying to modify TaskFragment not belonging to the TaskFragmentOrganizer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2507
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "WindowOrganizerController"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2510
    .end local v1    # "msg":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method private enforceTaskFragmentOrganizerPermission(Ljava/lang/String;Landroid/window/ITaskFragmentOrganizer;Landroid/window/WindowContainerTransaction;)V
    .locals 7
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "organizer"    # Landroid/window/ITaskFragmentOrganizer;
    .param p3, "t"    # Landroid/window/WindowContainerTransaction;

    .line 2453
    nop

    .line 2454
    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction;->getChanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2455
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2456
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2457
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 2458
    .local v2, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerTransaction$Change;

    invoke-direct {p0, p1, v2, v3, p2}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskFragmentConfigChangeAllowed(Ljava/lang/String;Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Landroid/window/ITaskFragmentOrganizer;)V

    .line 2459
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .end local v2    # "wc":Lcom/android/server/wm/WindowContainer;
    goto :goto_0

    .line 2462
    :cond_0
    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v1

    .line 2463
    .local v1, "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 2464
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 2465
    .local v3, "hop":Landroid/window/WindowContainerTransaction$HierarchyOp;
    invoke-virtual {v3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v4

    .line 2467
    .local v4, "type":I
    sparse-switch v4, :sswitch_data_0

    .line 2482
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2483
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " trying to apply a hierarchy change that is not allowed for TaskFragmentOrganizer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2486
    .local v5, "msg":Ljava/lang/String;
    const-string v6, "WindowOrganizerController"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2469
    .end local v5    # "msg":Ljava/lang/String;
    :sswitch_0
    invoke-virtual {v3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v5

    invoke-direct {p0, p1, v5, p2}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskFragmentOrganized(Ljava/lang/String;Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)V

    .line 2470
    invoke-virtual {v3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getTaskFragmentOperation()Landroid/window/TaskFragmentOperation;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2471
    invoke-virtual {v3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getTaskFragmentOperation()Landroid/window/TaskFragmentOperation;

    move-result-object v5

    invoke-virtual {v5}, Landroid/window/TaskFragmentOperation;->getSecondaryFragmentToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2472
    nop

    .line 2473
    invoke-virtual {v3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getTaskFragmentOperation()Landroid/window/TaskFragmentOperation;

    move-result-object v5

    invoke-virtual {v5}, Landroid/window/TaskFragmentOperation;->getSecondaryFragmentToken()Landroid/os/IBinder;

    move-result-object v5

    .line 2472
    invoke-direct {p0, p1, v5, p2}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskFragmentOrganized(Ljava/lang/String;Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)V

    goto :goto_2

    .line 2479
    :sswitch_1
    nop

    .line 2463
    .end local v3    # "hop":Landroid/window/WindowContainerTransaction$HierarchyOp;
    .end local v4    # "type":I
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    nop

    .line 2490
    .end local v2    # "i":I
    return-void

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method private static hasActivityLaunch(Landroid/window/WindowContainerTransaction;)Z
    .locals 4
    .param p0, "wct"    # Landroid/window/WindowContainerTransaction;

    .line 420
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 421
    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 422
    .local v1, "op":Landroid/window/WindowContainerTransaction$HierarchyOp;
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    .line 423
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 424
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 420
    .end local v1    # "op":Landroid/window/WindowContainerTransaction$HierarchyOp;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 425
    .restart local v1    # "op":Landroid/window/WindowContainerTransaction$HierarchyOp;
    :cond_1
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 420
    .end local v1    # "op":Landroid/window/WindowContainerTransaction$HierarchyOp;
    :cond_2
    nop

    .line 428
    .end local v0    # "i":I
    const/4 v0, 0x0

    return v0
.end method

.method private isCreatedTaskFragmentReady(Landroid/window/WindowContainerTransaction;)Z
    .locals 5
    .param p1, "wct"    # Landroid/window/WindowContainerTransaction;

    .line 432
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 433
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 434
    .local v1, "op":Landroid/window/WindowContainerTransaction$HierarchyOp;
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_1

    .line 435
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getTaskFragmentOperation()Landroid/window/TaskFragmentOperation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/window/TaskFragmentOperation;->getOpType()I

    move-result v2

    if-eqz v2, :cond_0

    .line 437
    goto :goto_1

    .line 439
    :cond_0
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getTaskFragmentOperation()Landroid/window/TaskFragmentOperation;

    move-result-object v2

    .line 440
    invoke-virtual {v2}, Landroid/window/TaskFragmentOperation;->getTaskFragmentCreationParams()Landroid/window/TaskFragmentCreationParams;

    move-result-object v2

    invoke-virtual {v2}, Landroid/window/TaskFragmentCreationParams;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v2

    .line 441
    .local v2, "tfToken":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowOrganizerController;->getTaskFragment(Landroid/os/IBinder;)Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    .line 442
    .local v3, "taskFragment":Lcom/android/server/wm/TaskFragment;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->isReadyToTransit()Z

    move-result v4

    if-nez v4, :cond_1

    .line 443
    const/4 v4, 0x0

    return v4

    .line 432
    .end local v1    # "op":Landroid/window/WindowContainerTransaction$HierarchyOp;
    .end local v2    # "tfToken":Landroid/os/IBinder;
    .end local v3    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 446
    .end local v0    # "i":I
    const/4 v0, 0x1

    return v0
.end method

.method private isLockTaskModeViolation(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Task;Z)Z
    .locals 4
    .param p1, "parent"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "task"    # Lcom/android/server/wm/Task;
    .param p3, "isInLockTaskMode"    # Z

    .line 2116
    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    goto :goto_0

    .line 2119
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    .line 2120
    .local v0, "lockTaskController":Lcom/android/server/wm/LockTaskController;
    invoke-virtual {v0, p2}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;)Z

    move-result v1

    .line 2121
    .local v1, "taskViolation":Z
    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2122
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;)Z

    move-result v1

    .line 2124
    :cond_2
    if-eqz v1, :cond_3

    .line 2125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t support the operation since in lock task mode violation.  Task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " Parent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowOrganizerController"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    :cond_3
    return v1

    .line 2117
    .end local v0    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .end local v1    # "taskViolation":Z
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$applyDisplayAreaChanges$8(Landroid/window/WindowContainerTransaction$Change;[ILjava/lang/Object;)V
    .locals 4
    .param p0, "c"    # Landroid/window/WindowContainerTransaction$Change;
    .param p1, "effects"    # [I
    .param p2, "task"    # Ljava/lang/Object;

    .line 1000
    move-object v0, p2

    check-cast v0, Lcom/android/server/wm/Task;

    .line 1001
    .local v0, "tr":Lcom/android/server/wm/Task;
    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    .line 1002
    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$Change;->getHidden()Z

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1003
    const/4 v1, 0x0

    aget v3, p1, v1

    or-int/2addr v2, v3

    aput v2, p1, v1

    .line 1006
    :cond_0
    return-void
.end method

.method private synthetic lambda$applyHierarchyOp$10(Landroid/window/WindowContainerTransaction$HierarchyOp;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 10
    .param p1, "hop"    # Landroid/window/WindowContainerTransaction$HierarchyOp;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 1319
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 1320
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v2

    .line 1321
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getWhitelistToken()Landroid/os/IBinder;

    move-result-object v3

    .line 1322
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v5

    .line 1319
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p2

    move-object v9, p3

    .end local p2    # "resolvedType":Ljava/lang/String;
    .end local p3    # "options":Landroid/os/Bundle;
    .local v6, "resolvedType":Ljava/lang/String;
    .local v9, "options":Landroid/os/Bundle;
    invoke-virtual/range {v1 .. v9}, Landroid/app/ActivityManagerInternal;->sendIntentSender(Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p2

    return p2
.end method

.method private static synthetic lambda$applyHierarchyOp$11(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 1369
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$applyHierarchyOp$9(Lcom/android/server/wm/WindowOrganizerController$CallerInfo;ILcom/android/server/wm/SafeActivityOptions;)I
    .locals 3
    .param p1, "caller"    # Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .param p2, "taskId"    # I
    .param p3, "safeOptions"    # Lcom/android/server/wm/SafeActivityOptions;

    .line 1206
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v1, p1, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    iget v2, p1, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;)I

    move-result v0

    return v0
.end method

.method private synthetic lambda$applySyncTransaction$0(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/WindowOrganizerController$CallerInfo;Ljava/lang/Boolean;)V
    .locals 8
    .param p1, "t"    # Landroid/window/WindowContainerTransaction;
    .param p2, "syncId"    # I
    .param p3, "caller"    # Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .param p4, "deferred"    # Ljava/lang/Boolean;

    .line 280
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v1, "applySyncLegacy"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActionChain$Tracker;->startLegacy(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object v5

    .line 281
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 280
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    .end local p1    # "t":Landroid/window/WindowContainerTransaction;
    .end local p2    # "syncId":I
    .end local p3    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .local v3, "t":Landroid/window/WindowContainerTransaction;
    .local v4, "syncId":I
    .local v6, "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Z)I

    .line 282
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowOrganizerController;->setSyncReady(I)V

    .line 283
    return-void
.end method

.method private synthetic lambda$applySyncTransaction$1(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V
    .locals 1
    .param p1, "syncGroup"    # Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 294
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    return-void
.end method

.method private synthetic lambda$applySyncTransaction$2(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/WindowOrganizerController$CallerInfo;)V
    .locals 2
    .param p1, "t"    # Landroid/window/WindowContainerTransaction;
    .param p2, "syncId"    # I
    .param p3, "caller"    # Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    .line 296
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v1, "applySyncLegacy"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActionChain$Tracker;->startLegacy(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    .line 298
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowOrganizerController;->setSyncReady(I)V

    .line 299
    return-void
.end method

.method private static synthetic lambda$applyTaskChanges$7(ILcom/android/server/wm/ActivityRecord;)V
    .locals 0
    .param p0, "childWindowingMode"    # I
    .param p1, "a"    # Lcom/android/server/wm/ActivityRecord;

    .line 943
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    return-void
.end method

.method private static synthetic lambda$applyTaskFragmentOperation$12(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "a"    # Lcom/android/server/wm/ActivityRecord;

    .line 1601
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private synthetic lambda$applyTaskFragmentOperation$13(Lcom/android/server/wm/TaskFragment;Landroid/content/Intent;Lcom/android/server/wm/SafeActivityOptions;Landroid/os/IBinder;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;)I
    .locals 9
    .param p1, "taskFragment"    # Lcom/android/server/wm/TaskFragment;
    .param p2, "activityIntent"    # Landroid/content/Intent;
    .param p3, "safeOptions"    # Lcom/android/server/wm/SafeActivityOptions;
    .param p4, "callerActivityToken"    # Landroid/os/IBinder;
    .param p5, "caller"    # Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .param p6, "errorCallbackToken"    # Landroid/os/IBinder;

    .line 1621
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    iget v6, p5, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    iget v7, p5, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    .line 1622
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p6

    .end local p1    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    .end local p2    # "activityIntent":Landroid/content/Intent;
    .end local p3    # "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local p4    # "callerActivityToken":Landroid/os/IBinder;
    .end local p6    # "errorCallbackToken":Landroid/os/IBinder;
    .local v2, "taskFragment":Lcom/android/server/wm/TaskFragment;
    .local v3, "activityIntent":Landroid/content/Intent;
    .local v4, "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    .local v5, "callerActivityToken":Landroid/os/IBinder;
    .local v8, "errorCallbackToken":Landroid/os/IBinder;
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/ActivityStartController;->startActivityInTaskFragment(Lcom/android/server/wm/TaskFragment;Landroid/content/Intent;Lcom/android/server/wm/SafeActivityOptions;Landroid/os/IBinder;IILandroid/os/IBinder;)I

    move-result p1

    .line 1621
    return p1
.end method

.method private static synthetic lambda$applyTaskFragmentOperation$14(Lcom/android/server/wm/TaskFragment;)Z
    .locals 1
    .param p0, "tf"    # Lcom/android/server/wm/TaskFragment;

    .line 1773
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$applyTaskFragmentTransactionLocked$5(Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/window/RemoteTransition;Z)V
    .locals 8
    .param p1, "wct"    # Landroid/window/WindowContainerTransaction;
    .param p2, "transition"    # Lcom/android/server/wm/Transition;
    .param p3, "caller"    # Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .param p4, "remoteTransition"    # Landroid/window/RemoteTransition;
    .param p5, "deferred"    # Z

    .line 591
    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isValidTransaction(Landroid/window/WindowContainerTransaction;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    invoke-virtual {p2}, Lcom/android/server/wm/Transition;->abort()V

    .line 593
    return-void

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v1, "tfTransact"

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/ActionChain$Tracker;->start(Ljava/lang/String;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object v5

    .line 596
    .local v5, "chain":Lcom/android/server/wm/ActionChain;
    const/4 v4, -0x1

    move-object v2, p0

    move-object v3, p1

    move-object v6, p3

    move v7, p5

    .end local p1    # "wct":Landroid/window/WindowContainerTransaction;
    .end local p3    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .end local p5    # "deferred":Z
    .local v3, "wct":Landroid/window/WindowContainerTransaction;
    .local v6, "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .local v7, "deferred":Z
    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Z)I

    move-result p1

    .line 597
    .local p1, "effects":I
    if-nez p1, :cond_1

    iget-object p3, p2, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    if-nez p4, :cond_1

    .line 601
    invoke-virtual {p2}, Lcom/android/server/wm/Transition;->abort()V

    .line 602
    return-void

    .line 604
    :cond_1
    iget-object p3, v2, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 p5, 0x0

    invoke-virtual {p3, p2, p5, p4, p5}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 606
    invoke-direct {p0, p2, v3}, Lcom/android/server/wm/WindowOrganizerController;->setAllReadyIfNeeded(Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;)V

    .line 607
    return-void
.end method

.method private static synthetic lambda$applyTransaction$6(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 780
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(Z)Z

    .line 783
    :cond_0
    return-void
.end method

.method private synthetic lambda$reparentChildrenTasksHierarchyOp$16(Lcom/android/server/wm/WindowContainer;ZLcom/android/server/wm/TaskDisplayArea;Landroid/window/WindowContainerTransaction$HierarchyOp;Lcom/android/server/wm/WindowContainer;ZLjava/util/ArrayList;Lcom/android/server/wm/Task;)Z
    .locals 4
    .param p1, "finalCurrentParent"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "newParentInMultiWindow"    # Z
    .param p3, "newParentTda"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p4, "hop"    # Landroid/window/WindowContainerTransaction$HierarchyOp;
    .param p5, "finalNewParent"    # Lcom/android/server/wm/WindowContainer;
    .param p6, "isInLockTaskMode"    # Z
    .param p7, "tasksToReparent"    # Ljava/util/ArrayList;
    .param p8, "task"    # Lcom/android/server/wm/Task;

    .line 2178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Processing task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowOrganizerController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    iget-boolean v0, p8, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p8}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eq v0, p1, :cond_1

    :cond_0
    goto/16 :goto_1

    .line 2185
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p8, p3}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reparentChildrenTasksHierarchyOp non-resizeable task to multi window, task="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    return v2

    .line 2190
    :cond_2
    invoke-virtual {p4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityTypes()[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2191
    invoke-virtual {p4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityTypes()[I

    move-result-object v0

    invoke-virtual {p8}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2192
    return v2

    .line 2194
    :cond_3
    invoke-virtual {p4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getWindowingModes()[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2195
    invoke-virtual {p4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getWindowingModes()[I

    move-result-object v0

    invoke-virtual {p8}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2196
    return v2

    .line 2198
    :cond_4
    invoke-direct {p0, p5, p8, p6}, Lcom/android/server/wm/WindowOrganizerController;->isLockTaskModeViolation(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Task;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2199
    return v2

    .line 2202
    :cond_5
    invoke-virtual {p4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2203
    invoke-virtual {p7, v2, p8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 2205
    :cond_6
    invoke-virtual {p7, p8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2207
    :goto_0
    invoke-virtual {p4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getReparentTopOnly()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    move v2, v1

    :cond_7
    return v2

    .line 2183
    :goto_1
    return v2
.end method

.method private synthetic lambda$startTransition$3(Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition$ReadyCondition;ZZ)V
    .locals 8
    .param p1, "nextTransition"    # Lcom/android/server/wm/Transition;
    .param p2, "wct"    # Landroid/window/WindowContainerTransaction;
    .param p3, "caller"    # Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .param p4, "wctApplied"    # Lcom/android/server/wm/Transition$ReadyCondition;
    .param p5, "needsSetReady"    # Z
    .param p6, "deferred"    # Z

    .line 356
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v1, "startNewTransit"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActionChain$Tracker;->start(Ljava/lang/String;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object v5

    .line 358
    .local v5, "chain":Lcom/android/server/wm/ActionChain;
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->start()V

    .line 359
    iget-object v0, p1, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iput-object p2, v0, Lcom/android/server/wm/TransitionController$Logger;->mStartWCT:Landroid/window/WindowContainerTransaction;

    .line 360
    const/4 v4, -0x1

    move-object v2, p0

    move-object v3, p2

    move-object v6, p3

    move v7, p6

    .end local p2    # "wct":Landroid/window/WindowContainerTransaction;
    .end local p3    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .end local p6    # "deferred":Z
    .local v3, "wct":Landroid/window/WindowContainerTransaction;
    .local v6, "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .local v7, "deferred":Z
    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Z)I

    .line 361
    invoke-virtual {p4}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    .line 362
    if-eqz p5, :cond_0

    .line 363
    invoke-direct {p0, p1, v3}, Lcom/android/server/wm/WindowOrganizerController;->setAllReadyIfNeeded(Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;)V

    .line 365
    :cond_0
    return-void
.end method

.method private synthetic lambda$startTransition$4(Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition$ReadyCondition;)V
    .locals 3
    .param p1, "transition"    # Lcom/android/server/wm/Transition;
    .param p2, "wct"    # Landroid/window/WindowContainerTransaction;
    .param p3, "caller"    # Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .param p4, "wctApplied"    # Lcom/android/server/wm/Transition$ReadyCondition;

    .line 391
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 392
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v2, "startTransit"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/ActionChain$Tracker;->start(Ljava/lang/String;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object v1

    .line 394
    .local v1, "chain":Lcom/android/server/wm/ActionChain;
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->start()V

    .line 395
    const/4 v2, -0x1

    invoke-direct {p0, p2, v2, v1, p3}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    .line 396
    if-eqz p4, :cond_0

    .line 397
    invoke-virtual {p4}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    goto :goto_0

    .line 399
    .end local v1    # "chain":Lcom/android/server/wm/ActionChain;
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 400
    return-void

    .line 399
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private synthetic lambda$waitAsyncStart$15([Ljava/lang/Integer;Ljava/util/function/IntSupplier;)V
    .locals 3
    .param p1, "starterResult"    # [Ljava/lang/Integer;
    .param p2, "startActivity"    # Ljava/util/function/IntSupplier;

    .line 2010
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p2}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2014
    goto :goto_0

    .line 2011
    :catchall_0
    move-exception v1

    .line 2012
    .local v1, "t":Ljava/lang/Throwable;
    const/16 v2, -0x60

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v0

    .line 2013
    const-string v0, "WindowOrganizerController"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2015
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 2016
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2017
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2018
    return-void

    .line 2017
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private prepareSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;
    .locals 3
    .param p1, "callback"    # Landroid/window/IWindowContainerTransactionCallback;

    .line 2329
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 2330
    const-string v1, "Organizer"

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/BLASTSyncEngine;->prepareSyncSet(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;Ljava/lang/String;)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v0

    .line 2331
    .local v0, "s":Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    iget v2, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2332
    return-object v0
.end method

.method private reparentChildrenTasksHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;Lcom/android/server/wm/Transition;IZ)I
    .locals 17
    .param p1, "hop"    # Landroid/window/WindowContainerTransaction$HierarchyOp;
    .param p2, "transition"    # Lcom/android/server/wm/Transition;
    .param p3, "syncId"    # I
    .param p4, "isInLockTaskMode"    # Z

    .line 2133
    move-object/from16 v5, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    invoke-virtual {v5}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2134
    invoke-virtual {v5}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2135
    .local v0, "currentParent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :goto_0
    invoke-virtual {v5}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2136
    invoke-virtual {v5}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    goto :goto_1

    :cond_1
    nop

    .line 2137
    .local v1, "newParent":Lcom/android/server/wm/WindowContainer;
    :goto_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    goto :goto_2

    .line 2138
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reparentChildrenTasksHierarchyOp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2139
    :goto_2
    if-nez v0, :cond_4

    .line 2140
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    move-object v11, v0

    move-object v12, v1

    goto :goto_3

    .line 2141
    :cond_4
    if-nez v1, :cond_5

    .line 2142
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    move-object v11, v0

    move-object v12, v1

    goto :goto_3

    .line 2141
    :cond_5
    move-object v11, v0

    move-object v12, v1

    .line 2145
    .end local v0    # "currentParent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v1    # "newParent":Lcom/android/server/wm/WindowContainer;
    .local v11, "currentParent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .local v12, "newParent":Lcom/android/server/wm/WindowContainer;
    :goto_3
    const/4 v13, 0x0

    const-string v0, "WindowOrganizerController"

    if-ne v11, v12, :cond_6

    .line 2146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reparentChildrenTasksHierarchyOp parent not changing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    return v13

    .line 2149
    :cond_6
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v1

    const-string v2, " hop="

    if-nez v1, :cond_7

    .line 2150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reparentChildrenTasksHierarchyOp currentParent detached="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    return v13

    .line 2154
    :cond_7
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reparentChildrenTasksHierarchyOp newParent detached="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    return v13

    .line 2159
    :cond_8
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reparentChildrenTasksHierarchyOp newParent in PIP="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    return v13

    .line 2165
    :cond_9
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v3

    .line 2166
    .local v3, "newParentInMultiWindow":Z
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 2167
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    move-object v4, v1

    goto :goto_4

    .line 2168
    :cond_a
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    move-object v4, v1

    :goto_4
    nop

    .line 2169
    .local v4, "newParentTda":Lcom/android/server/wm/TaskDisplayArea;
    move-object v1, v11

    .line 2170
    .local v1, "finalCurrentParent":Lcom/android/server/wm/WindowContainer;
    move-object v6, v12

    .line 2171
    .local v6, "finalNewParent":Lcom/android/server/wm/WindowContainer;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reparentChildrenTasksHierarchyOp currentParent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " newParent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2177
    .local v8, "tasksToReparent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda0;

    move/from16 v7, p4

    move-object v2, v1

    move-object/from16 v1, p0

    .end local v1    # "finalCurrentParent":Lcom/android/server/wm/WindowContainer;
    .local v2, "finalCurrentParent":Lcom/android/server/wm/WindowContainer;
    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/WindowContainer;ZLcom/android/server/wm/TaskDisplayArea;Landroid/window/WindowContainerTransaction$HierarchyOp;Lcom/android/server/wm/WindowContainer;ZLjava/util/ArrayList;)V

    invoke-virtual {v11, v0}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Predicate;)Z

    .line 2210
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2211
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_f

    .line 2212
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    .line 2213
    .local v5, "task":Lcom/android/server/wm/Task;
    if-ltz v10, :cond_b

    .line 2214
    move-object/from16 v7, p0

    invoke-virtual {v7, v10, v5}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    goto :goto_6

    .line 2213
    :cond_b
    move-object/from16 v7, p0

    .line 2216
    :goto_6
    if-eqz v9, :cond_c

    invoke-virtual {v9, v5}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 2218
    :cond_c
    instance-of v14, v12, Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v14, :cond_d

    .line 2220
    move-object v14, v12

    check-cast v14, Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v15

    invoke-virtual {v5, v14, v15}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    move/from16 v16, v0

    goto :goto_8

    .line 2222
    :cond_d
    move-object v14, v12

    check-cast v14, Lcom/android/server/wm/Task;

    .line 2223
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v15

    if-eqz v15, :cond_e

    const v15, 0x7fffffff

    goto :goto_7

    :cond_e
    const/high16 v15, -0x80000000

    .line 2222
    :goto_7
    move/from16 v16, v0

    .end local v0    # "count":I
    .local v16, "count":I
    const-string v0, "processChildrenTaskReparentHierarchyOp"

    invoke-virtual {v5, v14, v15, v13, v0}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;IZLjava/lang/String;)V

    .line 2211
    .end local v5    # "task":Lcom/android/server/wm/Task;
    :goto_8
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v16

    goto :goto_5

    .end local v16    # "count":I
    .restart local v0    # "count":I
    :cond_f
    move-object/from16 v7, p0

    move/from16 v16, v0

    .line 2228
    .end local v0    # "count":I
    .end local v1    # "i":I
    .restart local v16    # "count":I
    if-eqz v9, :cond_10

    invoke-virtual {v9, v12}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 2230
    :cond_10
    const/4 v0, 0x2

    return v0
.end method

.method private static runAfterTransition(Lcom/android/server/wm/Transition;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "transition"    # Lcom/android/server/wm/Transition;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 1923
    if-nez p0, :cond_0

    .line 1924
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1926
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->addTransitionEndedListener(Ljava/lang/Runnable;)V

    .line 1928
    :goto_0
    return-void
.end method

.method private sanitizeAndApplyHierarchyOpForDisplayArea(Lcom/android/server/wm/DisplayArea;Landroid/window/WindowContainerTransaction$HierarchyOp;)I
    .locals 3
    .param p1, "displayArea"    # Lcom/android/server/wm/DisplayArea;
    .param p2, "hop"    # Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 2030
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2033
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2034
    const/4 v0, 0x0

    return v0

    .line 2036
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 2037
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7fffffff

    goto :goto_0

    :cond_1
    const/high16 v1, -0x80000000

    .line 2038
    :goto_0
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->includingParents()Z

    move-result v2

    .line 2036
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 2039
    const/4 v0, 0x2

    return v0

    .line 2031
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DisplayArea only supports reordering"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sanitizeAndApplyHierarchyOpForTask(Lcom/android/server/wm/Task;Landroid/window/WindowContainerTransaction$HierarchyOp;)I
    .locals 10
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "hop"    # Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 2044
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2045
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    const-string v1, "WindowOrganizerController"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2046
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Container is no longer attached: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    return v2

    .line 2049
    :cond_0
    move-object v3, p1

    .line 2051
    .local v3, "as":Lcom/android/server/wm/Task;
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isReparent()Z

    move-result v4

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    if-eqz v4, :cond_e

    .line 2052
    nop

    .line 2053
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v4, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_1

    :goto_0
    const/4 v4, 0x1

    .line 2054
    .local v4, "isNonOrganizedRootableTask":Z
    :goto_1
    if-eqz v4, :cond_d

    .line 2055
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v7

    if-nez v7, :cond_3

    .line 2056
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v7

    goto :goto_2

    .line 2057
    :cond_3
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    :goto_2
    nop

    .line 2058
    .local v7, "newParent":Lcom/android/server/wm/WindowContainer;
    if-nez v7, :cond_4

    .line 2059
    const-string v5, "Can\'t resolve parent window from token"

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    return v2

    .line 2062
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    if-eq v8, v7, :cond_a

    .line 2063
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 2065
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v2

    invoke-virtual {v3, v1, v2}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    goto/16 :goto_4

    .line 2066
    :cond_5
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 2067
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2068
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v8

    const-string v9, " task="

    if-eqz v8, :cond_6

    .line 2069
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t support moving a task to another PIP window... newParent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    return v2

    .line 2073
    :cond_6
    nop

    .line 2074
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    .line 2073
    invoke-virtual {p1, v8}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 2075
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t support task that doesn\'t support multi-window mode in multi-window mode... newParent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    return v2

    .line 2081
    :cond_7
    move-object v1, v7

    check-cast v1, Lcom/android/server/wm/Task;

    .line 2082
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v8

    if-eqz v8, :cond_8

    move v5, v6

    .line 2081
    :cond_8
    const-string v6, "sanitizeAndApplyHierarchyOp"

    invoke-virtual {p1, v1, v5, v2, v6}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;IZLjava/lang/String;)V

    goto :goto_4

    .line 2085
    :cond_9
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can only reparent task to another task or taskDisplayArea, but not "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2090
    :cond_a
    instance-of v1, v7, Lcom/android/server/wm/TaskDisplayArea;

    if-nez v1, :cond_b

    .line 2091
    move-object v1, v7

    goto :goto_3

    :cond_b
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    :goto_3
    check-cast v1, Lcom/android/server/wm/Task;

    .line 2092
    .local v1, "rootTask":Lcom/android/server/wm/Task;
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    .line 2093
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v9

    if-eqz v9, :cond_c

    move v5, v6

    .line 2092
    :cond_c
    invoke-virtual {v8, v5, v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 2096
    .end local v1    # "rootTask":Lcom/android/server/wm/Task;
    .end local v7    # "newParent":Lcom/android/server/wm/WindowContainer;
    :goto_4
    nop

    .line 2099
    .end local v4    # "isNonOrganizedRootableTask":Z
    goto :goto_5

    .line 2097
    .restart local v4    # "isNonOrganizedRootableTask":Z
    :cond_d
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reparenting leaf Tasks is not supported now. "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2100
    .end local v4    # "isNonOrganizedRootableTask":Z
    :cond_e
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2101
    nop

    .line 2102
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2101
    invoke-static {v1}, Lcom/android/server/wm/Task;->findEnterPipOnTaskSwitchCandidate(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2103
    .local v1, "pipCandidate":Lcom/android/server/wm/ActivityRecord;
    const/4 v2, 0x0

    invoke-static {v1, p1, v2, v2}, Lcom/android/server/wm/Task;->enableEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 2107
    .end local v1    # "pipCandidate":Lcom/android/server/wm/ActivityRecord;
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 2108
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v2

    if-eqz v2, :cond_10

    move v5, v6

    .line 2109
    :cond_10
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->includingParents()Z

    move-result v2

    .line 2107
    invoke-virtual {v1, v5, p1, v2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 2111
    :goto_5
    const/4 v1, 0x2

    return v1
.end method

.method private sanitizeWindowContainer(Lcom/android/server/wm/WindowContainer;)V
    .locals 2
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 2286
    instance-of v0, p1, Lcom/android/server/wm/TaskFragment;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/android/server/wm/DisplayArea;

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    .line 2287
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid token in task fragment or displayArea transaction"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2289
    :goto_0
    return-void
.end method

.method private setAdjacentRootsHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;)I
    .locals 9
    .param p1, "hop"    # Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 2234
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainers()[Landroid/os/IBinder;

    move-result-object v0

    .line 2235
    .local v0, "containers":[Landroid/os/IBinder;
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 2236
    .local v1, "adjacentRoots":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/TaskFragment;>;"
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, v0, v4

    .line 2237
    .local v5, "container":Landroid/os/IBinder;
    invoke-static {v5}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    .line 2238
    .local v6, "wc":Lcom/android/server/wm/WindowContainer;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    goto :goto_1

    .line 2242
    :cond_1
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v7

    .line 2243
    .local v7, "root":Lcom/android/server/wm/Task;
    if-eqz v7, :cond_4

    .line 2248
    iget-boolean v8, v7, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v8, :cond_3

    .line 2252
    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2256
    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2236
    .end local v5    # "container":Landroid/os/IBinder;
    .end local v6    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v7    # "root":Lcom/android/server/wm/Task;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2253
    .restart local v5    # "container":Landroid/os/IBinder;
    .restart local v6    # "wc":Lcom/android/server/wm/WindowContainer;
    .restart local v7    # "root":Lcom/android/server/wm/Task;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAdjacentRootsHierarchyOp: called with same root twice="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2249
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAdjacentRootsHierarchyOp: Not created by organizer root="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2245
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAdjacentRootsHierarchyOp: Not called with Task. wc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2239
    .end local v7    # "root":Lcom/android/server/wm/Task;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to operate on unknown or detached container: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "WindowOrganizerController"

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    return v3

    .line 2258
    .end local v5    # "container":Landroid/os/IBinder;
    .end local v6    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_5
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskFragment;

    .line 2259
    .local v2, "root0":Lcom/android/server/wm/TaskFragment;
    new-instance v4, Lcom/android/server/wm/TaskFragment$AdjacentSet;

    invoke-direct {v4, v1}, Lcom/android/server/wm/TaskFragment$AdjacentSet;-><init>(Landroid/util/ArraySet;)V

    .line 2260
    .local v4, "adjacentSet":Lcom/android/server/wm/TaskFragment$AdjacentSet;
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragments()Lcom/android/server/wm/TaskFragment$AdjacentSet;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskFragment$AdjacentSet;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2261
    return v3

    .line 2263
    :cond_6
    invoke-virtual {v2, v4}, Lcom/android/server/wm/TaskFragment;->setAdjacentTaskFragments(Lcom/android/server/wm/TaskFragment$AdjacentSet;)V

    .line 2264
    const/4 v3, 0x2

    return v3
.end method

.method private setAllReadyIfNeeded(Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;)V
    .locals 2
    .param p1, "transition"    # Lcom/android/server/wm/Transition;
    .param p2, "wct"    # Landroid/window/WindowContainerTransaction;

    .line 452
    invoke-static {p2}, Lcom/android/server/wm/WindowOrganizerController;->hasActivityLaunch(Landroid/window/WindowContainerTransaction;)Z

    move-result v0

    nop

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 453
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->allPausedActivitiesComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    return-void

    .line 458
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowOrganizerController;->isCreatedTaskFragmentReady(Landroid/window/WindowContainerTransaction;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 465
    return-void

    .line 467
    :cond_1
    iget v0, p1, Lcom/android/server/wm/Transition;->mType:I

    const/16 v1, 0xe

    nop

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    .line 468
    invoke-virtual {v0, p1}, Lcom/android/server/wm/BackNavigationController;->restoreBackNavigationSetTransitionReady(Lcom/android/server/wm/Transition;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 470
    return-void

    .line 473
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->setAllReady()V

    .line 474
    return-void
.end method

.method static shouldApplyLifecycleEffectOnPipChange()Z
    .locals 2

    .line 982
    const-string v0, "persist.wm.debug.apply_lifecycle_on_pip_change"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 984
    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 982
    :goto_0
    return v1
.end method

.method private startTransition(ILandroid/os/IBinder;Landroid/window/WindowContainerTransaction;)Landroid/os/IBinder;
    .locals 14
    .param p1, "type"    # I
    .param p2, "transitionToken"    # Landroid/os/IBinder;
    .param p3, "t"    # Landroid/window/WindowContainerTransaction;

    .line 322
    move v1, p1

    move-object/from16 v2, p3

    const-string v0, "startTransition()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 323
    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v0}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    move-object v7, v0

    .line 324
    .local v7, "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 326
    .local v10, "ident":J
    :try_start_0
    iget-object v12, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 327
    :try_start_1
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/Transition;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;

    move-result-object v5

    move-object v0, v5

    .line 328
    .local v0, "transition":Lcom/android/server/wm/Transition;
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    .line 329
    const-string v3, "WindowOrganizerController"

    const-string v6, "Using shell transitions API for legacy transitions."

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    if-eqz v2, :cond_0

    .line 334
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v6, "wrongLegacyTransit"

    .line 335
    invoke-virtual {v3, v6}, Lcom/android/server/wm/ActionChain$Tracker;->startLegacy(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object v3

    .line 334
    invoke-direct {p0, v2, v5, v3, v7}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    .line 336
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 336
    return-object v4

    .line 413
    .end local v0    # "transition":Lcom/android/server/wm/Transition;
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 331
    .restart local v0    # "transition":Lcom/android/server/wm/Transition;
    :cond_0
    :try_start_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t use legacy transitions in compatibility mode with no WCT."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v7    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .end local v10    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .end local p1    # "type":I
    .end local p2    # "transitionToken":Landroid/os/IBinder;
    .end local p3    # "t":Landroid/window/WindowContainerTransaction;
    throw v3

    .line 339
    .restart local v7    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .restart local v10    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .restart local p1    # "type":I
    .restart local p2    # "transitionToken":Landroid/os/IBinder;
    .restart local p3    # "t":Landroid/window/WindowContainerTransaction;
    :cond_1
    if-eqz v2, :cond_2

    move-object v6, v2

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    move-object v6, v3

    .line 340
    .local v6, "wct":Landroid/window/WindowContainerTransaction;
    :goto_0
    if-nez v0, :cond_5

    .line 341
    if-ltz v1, :cond_4

    .line 347
    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const/4 v4, 0x1

    move v9, v4

    goto :goto_1

    :cond_3
    move v9, v3

    .line 348
    .local v9, "needsSetReady":Z
    :goto_1
    new-instance v5, Lcom/android/server/wm/Transition;

    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v8, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-direct {v5, p1, v3, v4, v8}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 350
    .local v5, "nextTransition":Lcom/android/server/wm/Transition;
    new-instance v8, Lcom/android/server/wm/Transition$ReadyCondition;

    const-string v3, "start WCT applied"

    invoke-direct {v8, v3}, Lcom/android/server/wm/Transition$ReadyCondition;-><init>(Ljava/lang/String;)V

    .line 352
    .local v8, "wctApplied":Lcom/android/server/wm/Transition$ReadyCondition;
    iget-object v3, v5, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-virtual {v3, v8}, Lcom/android/server/wm/Transition$ReadyTracker;->add(Lcom/android/server/wm/Transition$ReadyCondition;)V

    .line 353
    invoke-virtual {v5, v6}, Lcom/android/server/wm/Transition;->calcParallelCollectType(Landroid/window/WindowContainerTransaction;)V

    .line 354
    iget-object v13, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    new-instance v3, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda16;

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition$ReadyCondition;Z)V

    move-object v4, v3

    invoke-virtual {v13, v5, v4}, Lcom/android/server/wm/TransitionController;->startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)Z

    .line 366
    invoke-virtual {v5}, Lcom/android/server/wm/Transition;->getToken()Landroid/os/IBinder;

    move-result-object v4

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 415
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 366
    return-object v4

    .line 342
    .end local v5    # "nextTransition":Lcom/android/server/wm/Transition;
    .end local v8    # "wctApplied":Lcom/android/server/wm/Transition$ReadyCondition;
    .end local v9    # "needsSetReady":Z
    :cond_4
    :try_start_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can\'t create transition with no type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v7    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .end local v10    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .end local p1    # "type":I
    .end local p2    # "transitionToken":Landroid/os/IBinder;
    .end local p3    # "t":Landroid/window/WindowContainerTransaction;
    throw v4

    .line 370
    .restart local v7    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .restart local v10    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .restart local p1    # "type":I
    .restart local p2    # "transitionToken":Landroid/os/IBinder;
    .restart local p3    # "t":Landroid/window/WindowContainerTransaction;
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->isForcePlaying()Z

    move-result v8

    if-nez v8, :cond_6

    .line 371
    const-string v8, "WindowOrganizerController"

    const-string v9, "Trying to start a transition that isn\'t collecting. This probably means Shell took too long to respond to a request. WM State may be incorrect now, please file a bug"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v8, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v9, "startTransit"

    invoke-virtual {v8, v9}, Lcom/android/server/wm/ActionChain$Tracker;->startFailsafe(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object v8

    .line 375
    .local v8, "chain":Lcom/android/server/wm/ActionChain;
    iput-object v4, v8, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    .line 376
    invoke-direct {p0, v6, v5, v8, v7}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    .line 377
    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->getToken()Landroid/os/IBinder;

    move-result-object v4

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 415
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 377
    return-object v4

    .line 382
    .end local v8    # "chain":Lcom/android/server/wm/ActionChain;
    :cond_6
    if-eqz v2, :cond_7

    .line 383
    :try_start_4
    new-instance v4, Lcom/android/server/wm/Transition$ReadyCondition;

    const-string v8, "start WCT applied"

    invoke-direct {v4, v8}, Lcom/android/server/wm/Transition$ReadyCondition;-><init>(Ljava/lang/String;)V

    .line 384
    .local v4, "wctApplied":Lcom/android/server/wm/Transition$ReadyCondition;
    iget-object v8, v0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-virtual {v8, v4}, Lcom/android/server/wm/Transition$ReadyTracker;->add(Lcom/android/server/wm/Transition$ReadyCondition;)V

    move-object v8, v4

    goto :goto_2

    .line 386
    .end local v4    # "wctApplied":Lcom/android/server/wm/Transition$ReadyCondition;
    :cond_7
    const/4 v4, 0x0

    move-object v8, v4

    .line 388
    .local v8, "wctApplied":Lcom/android/server/wm/Transition$ReadyCondition;
    :goto_2
    iget-object v4, v0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iput-object v6, v4, Lcom/android/server/wm/TransitionController$Logger;->mStartWCT:Landroid/window/WindowContainerTransaction;

    .line 389
    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->shouldApplyOnDisplayThread()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 390
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v3, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda17;

    move-object v4, p0

    move-object v5, v0

    .end local v0    # "transition":Lcom/android/server/wm/Transition;
    .local v5, "transition":Lcom/android/server/wm/Transition;
    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition$ReadyCondition;)V

    .end local v5    # "transition":Lcom/android/server/wm/Transition;
    .restart local v0    # "transition":Lcom/android/server/wm/Transition;
    invoke-virtual {v9, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 402
    :cond_8
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v9, "startTransit"

    invoke-virtual {v3, v9, v0}, Lcom/android/server/wm/ActionChain$Tracker;->start(Ljava/lang/String;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object v3

    .line 404
    .local v3, "chain":Lcom/android/server/wm/ActionChain;
    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->start()V

    .line 405
    invoke-direct {p0, v6, v5, v3, v7}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    .line 406
    if-eqz v8, :cond_9

    .line 407
    invoke-virtual {v8}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    .line 412
    .end local v3    # "chain":Lcom/android/server/wm/ActionChain;
    :cond_9
    :goto_3
    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->getToken()Landroid/os/IBinder;

    move-result-object v3

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 415
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 412
    return-object v3

    .line 413
    .end local v0    # "transition":Lcom/android/server/wm/Transition;
    .end local v6    # "wct":Landroid/window/WindowContainerTransaction;
    .end local v8    # "wctApplied":Lcom/android/server/wm/Transition$ReadyCondition;
    :goto_4
    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v7    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .end local v10    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .end local p1    # "type":I
    .end local p2    # "transitionToken":Landroid/os/IBinder;
    .end local p3    # "t":Landroid/window/WindowContainerTransaction;
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 415
    .restart local v7    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .restart local v10    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .restart local p1    # "type":I
    .restart local p2    # "transitionToken":Landroid/os/IBinder;
    .restart local p3    # "t":Landroid/window/WindowContainerTransaction;
    :catchall_1
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 416
    throw v0
.end method

.method private validateTaskFragment(Lcom/android/server/wm/TaskFragment;ILandroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)Z
    .locals 9
    .param p1, "taskFragment"    # Lcom/android/server/wm/TaskFragment;
    .param p2, "opType"    # I
    .param p3, "errorCallbackToken"    # Landroid/os/IBinder;
    .param p4, "organizer"    # Landroid/window/ITaskFragmentOrganizer;

    .line 1973
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v4, p1

    move v5, p2

    move-object v3, p3

    move-object p1, p4

    goto :goto_2

    .line 1981
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-ne p2, v2, :cond_2

    .line 1985
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, p1

    move v5, p2

    move-object v3, p3

    move-object p1, p4

    goto :goto_1

    .line 1986
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not allowed to apply operation on PIP TaskFragment"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    .line 1988
    .local v8, "exception":Ljava/lang/Throwable;
    move-object v3, p0

    move-object v6, p1

    move v7, p2

    move-object v5, p3

    move-object v4, p4

    .end local p1    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    .end local p2    # "opType":I
    .end local p3    # "errorCallbackToken":Landroid/os/IBinder;
    .end local p4    # "organizer":Landroid/window/ITaskFragmentOrganizer;
    .local v4, "organizer":Landroid/window/ITaskFragmentOrganizer;
    .local v5, "errorCallbackToken":Landroid/os/IBinder;
    .local v6, "taskFragment":Lcom/android/server/wm/TaskFragment;
    .local v7, "opType":I
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 1990
    move-object p1, v4

    move-object v3, v5

    move-object v4, v6

    move v5, v7

    .end local v6    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    .end local v7    # "opType":I
    .local v3, "errorCallbackToken":Landroid/os/IBinder;
    .local v4, "taskFragment":Lcom/android/server/wm/TaskFragment;
    .local v5, "opType":I
    .local p1, "organizer":Landroid/window/ITaskFragmentOrganizer;
    return v0

    .line 1981
    .end local v3    # "errorCallbackToken":Landroid/os/IBinder;
    .end local v4    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    .end local v5    # "opType":I
    .end local v8    # "exception":Ljava/lang/Throwable;
    .local p1, "taskFragment":Lcom/android/server/wm/TaskFragment;
    .restart local p2    # "opType":I
    .restart local p3    # "errorCallbackToken":Landroid/os/IBinder;
    .restart local p4    # "organizer":Landroid/window/ITaskFragmentOrganizer;
    :cond_3
    move-object v4, p1

    move v5, p2

    move-object v3, p3

    move-object p1, p4

    .line 1992
    .end local p2    # "opType":I
    .end local p3    # "errorCallbackToken":Landroid/os/IBinder;
    .end local p4    # "organizer":Landroid/window/ITaskFragmentOrganizer;
    .restart local v3    # "errorCallbackToken":Landroid/os/IBinder;
    .restart local v4    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    .restart local v5    # "opType":I
    .local p1, "organizer":Landroid/window/ITaskFragmentOrganizer;
    :goto_1
    return v2

    .line 1973
    .end local v3    # "errorCallbackToken":Landroid/os/IBinder;
    .end local v4    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    .end local v5    # "opType":I
    .local p1, "taskFragment":Lcom/android/server/wm/TaskFragment;
    .restart local p2    # "opType":I
    .restart local p3    # "errorCallbackToken":Landroid/os/IBinder;
    .restart local p4    # "organizer":Landroid/window/ITaskFragmentOrganizer;
    :cond_4
    move-object v4, p1

    move v5, p2

    move-object v3, p3

    move-object p1, p4

    .line 1975
    .end local p2    # "opType":I
    .end local p3    # "errorCallbackToken":Landroid/os/IBinder;
    .end local p4    # "organizer":Landroid/window/ITaskFragmentOrganizer;
    .restart local v3    # "errorCallbackToken":Landroid/os/IBinder;
    .restart local v4    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    .restart local v5    # "opType":I
    .local p1, "organizer":Landroid/window/ITaskFragmentOrganizer;
    :goto_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Not allowed to apply operation on invalid fragment tokens opType="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v6, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1977
    .local v6, "exception":Ljava/lang/Throwable;
    move-object v1, p0

    move-object v2, p1

    .end local p1    # "organizer":Landroid/window/ITaskFragmentOrganizer;
    .local v2, "organizer":Landroid/window/ITaskFragmentOrganizer;
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 1979
    .end local v2    # "organizer":Landroid/window/ITaskFragmentOrganizer;
    .restart local p1    # "organizer":Landroid/window/ITaskFragmentOrganizer;
    return v0
.end method

.method private validateTaskFragmentOperation(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)Z
    .locals 9
    .param p1, "hop"    # Landroid/window/WindowContainerTransaction$HierarchyOp;
    .param p2, "errorCallbackToken"    # Landroid/os/IBinder;
    .param p3, "organizer"    # Landroid/window/ITaskFragmentOrganizer;

    .line 1933
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getTaskFragmentOperation()Landroid/window/TaskFragmentOperation;

    move-result-object v0

    .line 1934
    .local v0, "operation":Landroid/window/TaskFragmentOperation;
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v1

    .line 1935
    .local v1, "fragmentToken":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/server/wm/TaskFragment;

    .line 1936
    .local v6, "taskFragment":Lcom/android/server/wm/TaskFragment;
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1937
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v3, "TaskFragmentOperation must be non-null"

    invoke-direct {v8, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1939
    .local v8, "exception":Ljava/lang/Throwable;
    const/4 v7, -0x1

    move-object v3, p0

    move-object v5, p2

    move-object v4, p3

    .end local p2    # "errorCallbackToken":Landroid/os/IBinder;
    .end local p3    # "organizer":Landroid/window/ITaskFragmentOrganizer;
    .local v4, "organizer":Landroid/window/ITaskFragmentOrganizer;
    .local v5, "errorCallbackToken":Landroid/os/IBinder;
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 1941
    return v2

    .line 1943
    .end local v4    # "organizer":Landroid/window/ITaskFragmentOrganizer;
    .end local v5    # "errorCallbackToken":Landroid/os/IBinder;
    .end local v8    # "exception":Ljava/lang/Throwable;
    .restart local p2    # "errorCallbackToken":Landroid/os/IBinder;
    .restart local p3    # "organizer":Landroid/window/ITaskFragmentOrganizer;
    :cond_0
    move-object v3, p0

    move-object v5, p2

    move-object v4, p3

    .end local p2    # "errorCallbackToken":Landroid/os/IBinder;
    .end local p3    # "organizer":Landroid/window/ITaskFragmentOrganizer;
    .restart local v4    # "organizer":Landroid/window/ITaskFragmentOrganizer;
    .restart local v5    # "errorCallbackToken":Landroid/os/IBinder;
    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation;->getOpType()I

    move-result v7

    .line 1945
    .local v7, "opType":I
    const/16 p2, 0x3e8

    nop

    if-lt v7, p2, :cond_1

    iget-object p2, v3, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 1946
    invoke-interface {v4}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isSystemOrganizer(Landroid/os/IBinder;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1947
    new-instance v8, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Only a system organizer can perform privileged operations. opType="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v8, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 1950
    .restart local v8    # "exception":Ljava/lang/Throwable;
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 1952
    return v2

    .line 1955
    .end local v8    # "exception":Ljava/lang/Throwable;
    :cond_1
    const/4 p2, 0x1

    if-nez v7, :cond_2

    .line 1957
    return p2

    .line 1960
    :cond_2
    invoke-direct {p0, v6, v7, v5, v4}, Lcom/android/server/wm/WindowOrganizerController;->validateTaskFragment(Lcom/android/server/wm/TaskFragment;ILandroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 1961
    return v2

    .line 1964
    :cond_3
    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation;->getSecondaryFragmentToken()Landroid/os/IBinder;

    move-result-object p3

    .line 1965
    .local p3, "secondaryFragmentToken":Landroid/os/IBinder;
    nop

    nop

    if-eqz p3, :cond_4

    iget-object v8, v3, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    .line 1966
    invoke-virtual {v8, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/TaskFragment;

    invoke-direct {p0, v8, v7, v5, v4}, Lcom/android/server/wm/WindowOrganizerController;->validateTaskFragment(Lcom/android/server/wm/TaskFragment;ILandroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    move v2, p2

    .line 1965
    :cond_5
    return v2
.end method

.method private waitAsyncStart(Ljava/util/function/IntSupplier;)I
    .locals 4
    .param p1, "startActivity"    # Ljava/util/function/IntSupplier;

    .line 2000
    const/4 v0, 0x0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 2001
    .local v0, "starterResult":[Ljava/lang/Integer;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 2005
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    goto :goto_0

    .line 2007
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    :goto_0
    nop

    .line 2008
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/wm/WindowOrganizerController;[Ljava/lang/Integer;Ljava/util/function/IntSupplier;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2019
    :goto_1
    const/4 v2, 0x0

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    .line 2021
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2023
    :goto_2
    goto :goto_1

    .line 2022
    :catch_0
    move-exception v2

    goto :goto_2

    .line 2025
    :cond_1
    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method


# virtual methods
.method addToSyncSet(ILcom/android/server/wm/WindowContainer;)V
    .locals 1
    .param p1, "syncId"    # I
    .param p2, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 2350
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/BLASTSyncEngine;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    .line 2351
    return-void
.end method

.method public applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/IWindowContainerTransactionCallback;)I
    .locals 9
    .param p1, "t"    # Landroid/window/WindowContainerTransaction;
    .param p2, "callback"    # Landroid/window/IWindowContainerTransactionCallback;

    .line 250
    if-eqz p1, :cond_3

    .line 253
    const-string v0, "applySyncTransaction()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 254
    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v0}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    .line 255
    .local v0, "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 257
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 258
    if-nez p2, :cond_0

    .line 259
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v5, "applySyncLegacy"

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActionChain$Tracker;->startLegacy(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object v4

    .line 260
    .local v4, "chain":Lcom/android/server/wm/ActionChain;
    const/4 v5, -0x1

    invoke-direct {p0, p1, v5, v4, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    .line 261
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 261
    return v5

    .line 303
    .end local v4    # "chain":Lcom/android/server/wm/ActionChain;
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 276
    :cond_0
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowOrganizerController;->prepareSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v4

    .line 277
    .local v4, "syncGroup":Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;
    iget v5, v4, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 278
    .local v5, "syncId":I
    iget-object v6, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v6}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 279
    iget-object v6, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    new-instance v7, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;

    invoke-direct {v7, p0, p1, v5, v0}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    invoke-virtual {v6, v4, v7}, Lcom/android/server/wm/TransitionController;->startLegacySyncOrQueue(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 285
    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v6}, Lcom/android/server/wm/BLASTSyncEngine;->hasActiveSync()Z

    move-result v6

    if-nez v6, :cond_2

    .line 286
    iget-object v6, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v6, v4}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    .line 287
    iget-object v6, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v7, "applySyncLegacy"

    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActionChain$Tracker;->startLegacy(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object v6

    invoke-direct {p0, p1, v5, v6, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    .line 289
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowOrganizerController;->setSyncReady(I)V

    goto :goto_0

    .line 293
    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    new-instance v7, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;

    invoke-direct {v7, p0, v4}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    new-instance v8, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda6;

    invoke-direct {v8, p0, p1, v5, v0}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/BLASTSyncEngine;->queueSyncSet(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 302
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 305
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 302
    return v5

    .line 303
    .end local v4    # "syncGroup":Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;
    .end local v5    # "syncId":I
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .end local p1    # "t":Landroid/window/WindowContainerTransaction;
    .end local p2    # "callback":Landroid/window/IWindowContainerTransactionCallback;
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 305
    .restart local v0    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .restart local p1    # "t":Landroid/window/WindowContainerTransaction;
    .restart local p2    # "callback":Landroid/window/IWindowContainerTransactionCallback;
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 306
    throw v3

    .line 251
    .end local v0    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .end local v1    # "ident":J
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null transaction passed to applySyncTransaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method applyTaskFragmentTransactionLocked(Landroid/window/WindowContainerTransaction;IZLandroid/window/RemoteTransition;)V
    .locals 11
    .param p1, "wct"    # Landroid/window/WindowContainerTransaction;
    .param p2, "type"    # I
    .param p3, "shouldApplyIndependently"    # Z
    .param p4, "remoteTransition"    # Landroid/window/RemoteTransition;

    .line 550
    nop

    .line 551
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 552
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 550
    const-string v1, "applyTaskFragmentTransaction()"

    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskFragmentOrganizerPermission(Ljava/lang/String;Landroid/window/ITaskFragmentOrganizer;Landroid/window/WindowContainerTransaction;)V

    .line 553
    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 554
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v1

    invoke-interface {v1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 553
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isSystemOrganizer(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    .line 555
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only a system organizer is allowed to use remote transition!"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :goto_0
    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v0}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    move-object v5, v0

    .line 559
    .local v5, "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 561
    .local v7, "ident":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, -0x1

    if-nez v0, :cond_2

    .line 563
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v2, "legacyTFTransact"

    .line 564
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActionChain$Tracker;->startLegacy(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object v0

    .line 563
    invoke-direct {p0, p1, v1, v0, v5}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 565
    return-void

    .line 610
    :catchall_0
    move-exception v0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p4

    goto :goto_1

    .line 568
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v0}, Lcom/android/server/wm/BLASTSyncEngine;->hasActiveSync()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-nez p3, :cond_4

    .line 573
    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v3, "tfTransact"

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActionChain$Tracker;->startDefault(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object v0

    .line 574
    .local v0, "chain":Lcom/android/server/wm/ActionChain;
    iget-object v3, v0, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    if-nez v3, :cond_3

    .line 579
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v4, 0x3

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v9, 0x54cde495c22f3cd2L    # 3.269164467809003E100

    const/4 v4, 0x0

    invoke-static {v3, v9, v10, v2, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 584
    :cond_3
    invoke-direct {p0, p1, v1, v0, v5}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 610
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 585
    return-void

    .line 588
    .end local v0    # "chain":Lcom/android/server/wm/ActionChain;
    :cond_4
    :try_start_4
    new-instance v4, Lcom/android/server/wm/Transition;

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-direct {v4, p2, v2, v0, v1}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 590
    .local v4, "transition":Lcom/android/server/wm/Transition;
    new-instance v1, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v2, p0

    move-object v3, p1

    move-object v6, p4

    .end local p1    # "wct":Landroid/window/WindowContainerTransaction;
    .end local p4    # "remoteTransition":Landroid/window/RemoteTransition;
    .local v3, "wct":Landroid/window/WindowContainerTransaction;
    .local v6, "remoteTransition":Landroid/window/RemoteTransition;
    :try_start_5
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/window/RemoteTransition;)V

    .line 608
    .local v1, "doApply":Lcom/android/server/wm/TransitionController$OnStartCollect;
    iget-object p1, v2, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1, v4, v1}, Lcom/android/server/wm/TransitionController;->startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 610
    nop

    .end local v1    # "doApply":Lcom/android/server/wm/TransitionController$OnStartCollect;
    .end local v4    # "transition":Lcom/android/server/wm/Transition;
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 611
    nop

    .line 612
    return-void

    .line 610
    :catchall_1
    move-exception v0

    goto :goto_1

    .end local v3    # "wct":Landroid/window/WindowContainerTransaction;
    .end local v6    # "remoteTransition":Landroid/window/RemoteTransition;
    .restart local p1    # "wct":Landroid/window/WindowContainerTransaction;
    .restart local p4    # "remoteTransition":Landroid/window/RemoteTransition;
    :catchall_2
    move-exception v0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p4

    .end local p1    # "wct":Landroid/window/WindowContainerTransaction;
    .end local p4    # "remoteTransition":Landroid/window/RemoteTransition;
    .restart local v3    # "wct":Landroid/window/WindowContainerTransaction;
    .restart local v6    # "remoteTransition":Landroid/window/RemoteTransition;
    :goto_1
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 611
    throw v0
.end method

.method public applyTransaction(Landroid/window/WindowContainerTransaction;)V
    .locals 6
    .param p1, "t"    # Landroid/window/WindowContainerTransaction;

    .line 231
    if-eqz p1, :cond_0

    .line 234
    const-string v0, "applyTransaction()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 235
    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v0}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    .line 236
    .local v0, "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 238
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v5, "applyTransactLegacy"

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActionChain$Tracker;->startLegacy(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object v4

    .line 240
    .local v4, "chain":Lcom/android/server/wm/ActionChain;
    const/4 v5, -0x1

    invoke-direct {p0, p1, v5, v4, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    .line 241
    nop

    .end local v4    # "chain":Lcom/android/server/wm/ActionChain;
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 244
    nop

    .line 245
    return-void

    .line 243
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 241
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .end local p1    # "t":Landroid/window/WindowContainerTransaction;
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 243
    .restart local v0    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .restart local p1    # "t":Landroid/window/WindowContainerTransaction;
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 244
    throw v3

    .line 232
    .end local v0    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .end local v1    # "ident":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null transaction passed to applyTransaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method cleanUpEmbeddedTaskFragment(Lcom/android/server/wm/TaskFragment;)V
    .locals 2
    .param p1, "taskFragment"    # Lcom/android/server/wm/TaskFragment;

    .line 2709
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2710
    return-void
.end method

.method public finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V
    .locals 8
    .param p1, "transitionToken"    # Landroid/os/IBinder;
    .param p2, "t"    # Landroid/window/WindowContainerTransaction;

    .line 479
    const-string v0, "finishTransition()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 480
    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v0}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    .line 481
    .local v0, "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 483
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 484
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/Transition;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;

    move-result-object v4

    .line 485
    .local v4, "transition":Lcom/android/server/wm/Transition;
    iget-object v5, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v6, "finishTransit"

    .line 486
    invoke-virtual {v5, v6, v4}, Lcom/android/server/wm/ActionChain$Tracker;->startFinish(Ljava/lang/String;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object v5

    .line 489
    .local v5, "chain":Lcom/android/server/wm/ActionChain;
    if-eqz p2, :cond_0

    .line 493
    iget-object v6, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iput-object v4, v6, Lcom/android/server/wm/TransitionController;->mFinishingTransition:Lcom/android/server/wm/Transition;

    .line 494
    const/4 v6, -0x1

    invoke-direct {p0, p2, v6, v5, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    goto :goto_0

    .line 498
    .end local v4    # "transition":Lcom/android/server/wm/Transition;
    .end local v5    # "chain":Lcom/android/server/wm/ActionChain;
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 496
    .restart local v4    # "transition":Lcom/android/server/wm/Transition;
    .restart local v5    # "chain":Lcom/android/server/wm/ActionChain;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/TransitionController;->finishTransition(Lcom/android/server/wm/ActionChain;)V

    .line 497
    iget-object v6, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/wm/TransitionController;->mFinishingTransition:Lcom/android/server/wm/Transition;

    .line 498
    .end local v4    # "transition":Lcom/android/server/wm/Transition;
    .end local v5    # "chain":Lcom/android/server/wm/ActionChain;
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 500
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 501
    nop

    .line 502
    return-void

    .line 500
    :catchall_1
    move-exception v3

    goto :goto_2

    .line 498
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .end local p1    # "transitionToken":Landroid/os/IBinder;
    .end local p2    # "t":Landroid/window/WindowContainerTransaction;
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 500
    .restart local v0    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .restart local p1    # "transitionToken":Landroid/os/IBinder;
    .restart local p2    # "t":Landroid/window/WindowContainerTransaction;
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 501
    throw v3
.end method

.method public getApplyToken()Landroid/os/IBinder;
    .locals 1

    .line 2408
    const-string v0, "getApplyToken()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2409
    invoke-static {}, Landroid/view/SurfaceControl$Transaction;->getDefaultApplyToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayAreaOrganizerController()Landroid/window/IDisplayAreaOrganizerController;
    .locals 1

    .line 2313
    const-string v0, "getDisplayAreaOrganizerController()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2314
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    return-object v0
.end method

.method getTaskFragment(Landroid/os/IBinder;)Lcom/android/server/wm/TaskFragment;
    .locals 1
    .param p1, "tfToken"    # Landroid/os/IBinder;

    .line 2705
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskFragment;

    return-object v0
.end method

.method public getTaskFragmentOrganizerController()Landroid/window/ITaskFragmentOrganizerController;
    .locals 1

    .line 2319
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    return-object v0
.end method

.method public getTaskOrganizerController()Landroid/window/ITaskOrganizerController;
    .locals 1

    .line 2307
    const-string v0, "getTaskOrganizerController()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2308
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    return-object v0
.end method

.method getTransitionController()Lcom/android/server/wm/TransitionController;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    return-object v0
.end method

.method public getTransitionMetricsReporter()Landroid/window/ITransitionMetricsReporter;
    .locals 1

    .line 2403
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mTransitionMetricsReporter:Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

    return-object v0
.end method

.method public notifyTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "playing"    # Landroid/os/IBinder;
    .param p2, "merged"    # Landroid/os/IBinder;

    .line 508
    const-string v0, "notifyTransitionMerged()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 509
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 511
    .local v0, "ident":J
    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 512
    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 513
    :try_start_1
    const-string v3, "WindowOrganizerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyTransitionMerged: playing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", merged="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-static {p1}, Lcom/android/server/wm/Transition;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;

    move-result-object v3

    .line 515
    .local v3, "playingTransition":Lcom/android/server/wm/Transition;
    invoke-static {p2}, Lcom/android/server/wm/Transition;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;

    move-result-object v4

    .line 516
    .local v4, "mergedTransition":Lcom/android/server/wm/Transition;
    if-eqz v3, :cond_0

    .line 517
    invoke-virtual {v3}, Lcom/android/server/wm/Transition;->setRecentsInterrupt()V

    goto :goto_0

    .line 526
    .end local v3    # "playingTransition":Lcom/android/server/wm/Transition;
    .end local v4    # "mergedTransition":Lcom/android/server/wm/Transition;
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 519
    .restart local v3    # "playingTransition":Lcom/android/server/wm/Transition;
    .restart local v4    # "mergedTransition":Lcom/android/server/wm/Transition;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 520
    invoke-virtual {v4}, Lcom/android/server/wm/Transition;->setRecentsInterrupt()V

    .line 522
    :cond_1
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 523
    invoke-virtual {v3, v4}, Lcom/android/server/wm/Transition;->updateLegacyRecentsStartBehavior(Lcom/android/server/wm/Transition;)V

    .line 525
    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 526
    .end local v3    # "playingTransition":Lcom/android/server/wm/Transition;
    .end local v4    # "mergedTransition":Lcom/android/server/wm/Transition;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 528
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 529
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 530
    nop

    .line 531
    return-void

    .line 528
    :catchall_1
    move-exception v2

    goto :goto_2

    .line 526
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .end local p1    # "playing":Landroid/os/IBinder;
    .end local p2    # "merged":Landroid/os/IBinder;
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 528
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .restart local p1    # "playing":Landroid/os/IBinder;
    .restart local p2    # "merged":Landroid/os/IBinder;
    :goto_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 529
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 530
    throw v2
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/window/IWindowOrganizerController$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "WindowOrganizerController"

    invoke-static {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->logAndRethrowRuntimeExceptionOnTransact(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    .locals 7
    .param p1, "syncId"    # I
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 2355
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    int-to-long v2, p1

    .local v2, "protoLogParam0":J
    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v5, 0x5aed84692c233a99L    # 1.0230191066375382E130

    invoke-static {v0, v5, v6, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2356
    .end local v2    # "protoLogParam0":J
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    .line 2357
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/IWindowContainerTransactionCallback;

    .line 2360
    .local v0, "callback":Landroid/window/IWindowContainerTransactionCallback;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/window/IWindowContainerTransactionCallback;->onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2366
    goto :goto_0

    .line 2361
    :catch_0
    move-exception v1

    .line 2362
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to notify transaction ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") ready"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowOrganizerController"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2365
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2368
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2369
    return-void
.end method

.method public registerTransitionPlayer(Landroid/window/ITransitionPlayer;)V
    .locals 7
    .param p1, "player"    # Landroid/window/ITransitionPlayer;

    .line 2373
    const-string v0, "registerTransitionPlayer()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2374
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2375
    .local v0, "callerPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2376
    .local v1, "callerUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2378
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2379
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2380
    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v5

    .line 2381
    .local v5, "wpc":Lcom/android/server/wm/WindowProcessController;
    iget-object v6, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v6, p1, v5}, Lcom/android/server/wm/TransitionController;->registerTransitionPlayer(Landroid/window/ITransitionPlayer;Lcom/android/server/wm/WindowProcessController;)V

    .line 2382
    .end local v5    # "wpc":Lcom/android/server/wm/WindowProcessController;
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2384
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2385
    nop

    .line 2386
    return-void

    .line 2384
    :catchall_0
    move-exception v4

    goto :goto_0

    .line 2382
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "callerPid":I
    .end local v1    # "callerUid":I
    .end local v2    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .end local p1    # "player":Landroid/window/ITransitionPlayer;
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2384
    .restart local v0    # "callerPid":I
    .restart local v1    # "callerUid":I
    .restart local v2    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .restart local p1    # "player":Landroid/window/ITransitionPlayer;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2385
    throw v4
.end method

.method sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V
    .locals 7
    .param p1, "organizer"    # Landroid/window/ITaskFragmentOrganizer;
    .param p2, "errorCallbackToken"    # Landroid/os/IBinder;
    .param p3, "taskFragment"    # Lcom/android/server/wm/TaskFragment;
    .param p4, "opType"    # I
    .param p5, "exception"    # Ljava/lang/Throwable;

    .line 2725
    if-eqz p1, :cond_0

    .line 2728
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 2729
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .end local p1    # "organizer":Landroid/window/ITaskFragmentOrganizer;
    .end local p2    # "errorCallbackToken":Landroid/os/IBinder;
    .end local p3    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    .end local p4    # "opType":I
    .end local p5    # "exception":Ljava/lang/Throwable;
    .local v2, "organizer":Landroid/window/ITaskFragmentOrganizer;
    .local v3, "errorCallbackToken":Landroid/os/IBinder;
    .local v4, "taskFragment":Lcom/android/server/wm/TaskFragment;
    .local v5, "opType":I
    .local v6, "exception":Ljava/lang/Throwable;
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/TaskFragmentOrganizerController;->onTaskFragmentError(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 2731
    return-void

    .line 2726
    .end local v2    # "organizer":Landroid/window/ITaskFragmentOrganizer;
    .end local v3    # "errorCallbackToken":Landroid/os/IBinder;
    .end local v4    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    .end local v5    # "opType":I
    .end local v6    # "exception":Ljava/lang/Throwable;
    .restart local p1    # "organizer":Landroid/window/ITaskFragmentOrganizer;
    .restart local p2    # "errorCallbackToken":Landroid/os/IBinder;
    .restart local p3    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    .restart local p4    # "opType":I
    .restart local p5    # "exception":Ljava/lang/Throwable;
    :cond_0
    move-object v2, p1

    move-object v3, p2

    .end local p1    # "organizer":Landroid/window/ITaskFragmentOrganizer;
    .end local p2    # "errorCallbackToken":Landroid/os/IBinder;
    .restart local v2    # "organizer":Landroid/window/ITaskFragmentOrganizer;
    .restart local v3    # "errorCallbackToken":Landroid/os/IBinder;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not allowed to operate with invalid organizer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setSyncReady(I)V
    .locals 7
    .param p1, "id"    # I

    .line 2344
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    int-to-long v2, p1

    .local v2, "protoLogParam0":J
    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v5, 0x603e95f9b0c32d8L

    invoke-static {v0, v5, v6, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2345
    .end local v2    # "protoLogParam0":J
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(I)V

    .line 2346
    return-void
.end method

.method public startNewTransition(ILandroid/window/WindowContainerTransaction;)Landroid/os/IBinder;
    .locals 1
    .param p1, "type"    # I
    .param p2, "t"    # Landroid/window/WindowContainerTransaction;

    .line 311
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wm/WindowOrganizerController;->startTransition(ILandroid/os/IBinder;Landroid/window/WindowContainerTransaction;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method startSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)I
    .locals 2
    .param p1, "callback"    # Landroid/window/IWindowContainerTransactionCallback;

    .line 2337
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowOrganizerController;->prepareSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v0

    .line 2338
    .local v0, "s":Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    .line 2339
    iget v1, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    return v1
.end method

.method public startTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V
    .locals 1
    .param p1, "transitionToken"    # Landroid/os/IBinder;
    .param p2, "t"    # Landroid/window/WindowContainerTransaction;

    .line 317
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->startTransition(ILandroid/os/IBinder;Landroid/window/WindowContainerTransaction;)Landroid/os/IBinder;

    .line 318
    return-void
.end method

.method public unregisterTransitionPlayer(Landroid/window/ITransitionPlayer;)V
    .locals 4
    .param p1, "player"    # Landroid/window/ITransitionPlayer;

    .line 2390
    const-string v0, "unregisterTransitionPlayer()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2391
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2393
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2394
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/TransitionController;->unregisterTransitionPlayer(Landroid/window/ITransitionPlayer;)V

    .line 2395
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2397
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2398
    nop

    .line 2399
    return-void

    .line 2397
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 2395
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .end local p1    # "player":Landroid/window/ITransitionPlayer;
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2397
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .restart local p1    # "player":Landroid/window/ITransitionPlayer;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2398
    throw v2
.end method
