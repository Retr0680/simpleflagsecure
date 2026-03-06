.class Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;
.super Ljava/lang/Object;
.source "ActivityTaskSupervisor.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OpaqueContainerHelper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/android/server/wm/ActivityRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEnableMultipleDesktopsBackend:Z

.field private mIgnoringInvisibleActivity:Z

.field private mIgnoringKeyguard:Z

.field private mStarting:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public static synthetic $r8$lambda$6f0G5pcQtnjw__iU8ofU_Zna2Gs(Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;Lcom/android/server/wm/TaskFragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->lambda$isOpaqueInner$0(Lcom/android/server/wm/TaskFragment;)Z

    move-result p0

    return p0
.end method

.method constructor <init>()V
    .locals 1

    .line 3281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3282
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_MULTIPLE_DESKTOPS_BACKEND:Landroid/window/DesktopExperienceFlags;

    .line 3283
    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mEnableMultipleDesktopsBackend:Z

    .line 3282
    return-void
.end method

.method private isOpaqueInner(Lcom/android/server/wm/WindowContainer;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;)Z"
        }
    .end annotation

    .line 3317
    .local p1, "container":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3318
    .local v0, "isActivity":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    nop

    if-eqz v3, :cond_1

    move-object v3, p1

    check-cast v3, Lcom/android/server/wm/TaskFragment;

    .line 3319
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->isLeafTaskFragment()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    nop

    .line 3320
    .local v3, "isLeafTaskFragment":Z
    if-nez v0, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    goto :goto_5

    .line 3330
    :cond_3
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 3331
    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    .line 3332
    .local v5, "child":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0, v5}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->isOpaque(Lcom/android/server/wm/WindowContainer;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3333
    return v2

    .line 3336
    :cond_4
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 3337
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3338
    invoke-virtual {p0, v5}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->isOpaque(Lcom/android/server/wm/WindowContainer;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3339
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    new-instance v7, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;)V

    invoke-virtual {v6, v7}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    move v6, v1

    goto :goto_4

    :cond_6
    :goto_3
    move v6, v2

    :goto_4
    nop

    .line 3341
    .local v6, "isAnyTranslucent":Z
    if-nez v6, :cond_7

    .line 3344
    return v2

    .line 3330
    .end local v5    # "child":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v6    # "isAnyTranslucent":Z
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    nop

    .line 3348
    .end local v4    # "i":I
    return v1

    .line 3323
    :goto_5
    const/4 v4, 0x0

    invoke-virtual {p1, p0, v2, v4}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_9

    move v1, v2

    :cond_9
    return v1
.end method

.method private synthetic lambda$isOpaqueInner$0(Lcom/android/server/wm/TaskFragment;)Z
    .locals 1
    .param p1, "tf"    # Lcom/android/server/wm/TaskFragment;

    .line 3340
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->isOpaque(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method isOpaque(Lcom/android/server/wm/WindowContainer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;)Z"
        }
    .end annotation

    .line 3290
    .local p1, "container":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->isOpaque(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActivityRecord;ZZ)Z

    move-result v0

    return v0
.end method

.method isOpaque(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActivityRecord;ZZ)Z
    .locals 3
    .param p2, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "ignoringKeyguard"    # Z
    .param p4, "ignoringInvisibleActivity"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;",
            "Lcom/android/server/wm/ActivityRecord;",
            "ZZ)Z"
        }
    .end annotation

    .line 3301
    .local p1, "container":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    .line 3302
    iput-boolean p4, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mIgnoringInvisibleActivity:Z

    .line 3303
    iput-boolean p3, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mIgnoringKeyguard:Z

    .line 3306
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mEnableMultipleDesktopsBackend:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3307
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .local v0, "isOpaque":Z
    :goto_0
    goto :goto_1

    .line 3310
    .end local v0    # "isOpaque":Z
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->isOpaqueInner(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    .line 3312
    .restart local v0    # "isOpaque":Z
    :goto_1
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    .line 3313
    return v0
.end method

.method public test(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 3353
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mIgnoringInvisibleActivity:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    if-eq p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mIgnoringKeyguard:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mIgnoringKeyguard:Z

    if-nez v0, :cond_2

    .line 3355
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    nop

    if-nez v0, :cond_2

    .line 3358
    :cond_1
    return v1

    .line 3362
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isNtPopUpView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3363
    return v1

    .line 3366
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mIgnoringInvisibleActivity:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 3281
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->test(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    return p1
.end method
