.class Lcom/android/server/wm/TaskFragment$AdjacentSet;
.super Ljava/lang/Object;
.source "TaskFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdjacentSet"
.end annotation


# instance fields
.field private final mAdjacentSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/TaskFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mclear(Lcom/android/server/wm/TaskFragment$AdjacentSet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/TaskFragment$AdjacentSet;->clear()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremove(Lcom/android/server/wm/TaskFragment$AdjacentSet;Lcom/android/server/wm/TaskFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskFragment$AdjacentSet;->remove(Lcom/android/server/wm/TaskFragment;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAsAdjacent(Lcom/android/server/wm/TaskFragment$AdjacentSet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/TaskFragment$AdjacentSet;->setAsAdjacent()V

    return-void
.end method

.method constructor <init>(Landroid/util/ArraySet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/TaskFragment;",
            ">;)V"
        }
    .end annotation

    .line 3709
    .local p1, "taskFragments":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/TaskFragment;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3710
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 3711
    .local v0, "size":I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 3715
    if-le v0, v1, :cond_1

    .line 3716
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3717
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3716
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3718
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Not yet support 3+ adjacent for non-Task TFs"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3723
    .end local v1    # "i":I
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    .line 3724
    return-void

    .line 3712
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adjacent TaskFragments must contain at least two TaskFragments, but only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " were provided."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method varargs constructor <init>([Lcom/android/server/wm/TaskFragment;)V
    .locals 1
    .param p1, "taskFragments"    # [Lcom/android/server/wm/TaskFragment;

    .line 3706
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskFragment$AdjacentSet;-><init>(Landroid/util/ArraySet;)V

    .line 3707
    return-void
.end method

.method private clear()V
    .locals 3

    .line 3754
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 3755
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskFragment;

    .line 3757
    .local v1, "taskFragment":Lcom/android/server/wm/TaskFragment;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/TaskFragment;->-$$Nest$fputmAdjacentTaskFragments(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment$AdjacentSet;)V

    .line 3758
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/TaskFragment;->-$$Nest$fputmDelayLastActivityRemoval(Lcom/android/server/wm/TaskFragment;Z)V

    .line 3754
    .end local v1    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 3760
    .end local v0    # "i":I
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 3761
    return-void
.end method

.method private remove(Lcom/android/server/wm/TaskFragment;)V
    .locals 2
    .param p1, "taskFragment"    # Lcom/android/server/wm/TaskFragment;

    .line 3743
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/wm/TaskFragment;->-$$Nest$fputmAdjacentTaskFragments(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment$AdjacentSet;)V

    .line 3744
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/wm/TaskFragment;->-$$Nest$fputmDelayLastActivityRemoval(Lcom/android/server/wm/TaskFragment;Z)V

    .line 3745
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3746
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 3748
    invoke-direct {p0}, Lcom/android/server/wm/TaskFragment$AdjacentSet;->clear()V

    .line 3750
    :cond_0
    return-void
.end method

.method private setAsAdjacent()V
    .locals 2

    .line 3728
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    nop

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    .line 3729
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskFragment;

    invoke-static {v0}, Lcom/android/server/wm/TaskFragment;->-$$Nest$fgetmAdjacentTaskFragments(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragment$AdjacentSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment$AdjacentSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3734
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3735
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskFragment;

    .line 3736
    .local v1, "taskFragment":Lcom/android/server/wm/TaskFragment;
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->removeFromAdjacentTaskFragments()V

    .line 3737
    invoke-static {v1, p0}, Lcom/android/server/wm/TaskFragment;->-$$Nest$fputmAdjacentTaskFragments(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment$AdjacentSet;)V

    .line 3734
    .end local v1    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 3739
    .end local v0    # "i":I
    return-void

    .line 3732
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method contains(Lcom/android/server/wm/TaskFragment;)Z
    .locals 1
    .param p1, "taskFragment"    # Lcom/android/server/wm/TaskFragment;

    .line 3765
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 3805
    if-ne p0, p1, :cond_0

    .line 3806
    const/4 v0, 0x1

    return v0

    .line 3808
    :cond_0
    instance-of v0, p1, Lcom/android/server/wm/TaskFragment$AdjacentSet;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/TaskFragment$AdjacentSet;

    .line 3811
    .local v0, "other":Lcom/android/server/wm/TaskFragment$AdjacentSet;
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    iget-object v2, v0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 3809
    .end local v0    # "other":Lcom/android/server/wm/TaskFragment$AdjacentSet;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method forAllTaskFragments(Ljava/util/function/Consumer;Lcom/android/server/wm/TaskFragment;)V
    .locals 2
    .param p2, "exclude"    # Lcom/android/server/wm/TaskFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/TaskFragment;",
            ">;",
            "Lcom/android/server/wm/TaskFragment;",
            ")V"
        }
    .end annotation

    .line 3773
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/TaskFragment;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3774
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskFragment;

    .line 3775
    .local v1, "taskFragment":Lcom/android/server/wm/TaskFragment;
    if-eq v1, p2, :cond_0

    .line 3776
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3773
    .end local v1    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 3779
    .end local v0    # "i":I
    return-void
.end method

.method forAllTaskFragments(Ljava/util/function/Predicate;Lcom/android/server/wm/TaskFragment;)Z
    .locals 4
    .param p2, "exclude"    # Lcom/android/server/wm/TaskFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/TaskFragment;",
            ">;",
            "Lcom/android/server/wm/TaskFragment;",
            ")Z"
        }
    .end annotation

    .line 3787
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/TaskFragment;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 3788
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskFragment;

    .line 3789
    .local v2, "taskFragment":Lcom/android/server/wm/TaskFragment;
    if-ne v2, p2, :cond_0

    .line 3790
    goto :goto_1

    .line 3792
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3793
    return v1

    .line 3787
    .end local v2    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 3796
    .end local v0    # "i":I
    const/4 v0, 0x0

    return v0
.end method

.method size()I
    .locals 1

    .line 3800
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 3816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3817
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "AdjacentSet{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3818
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 3819
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3820
    if-eqz v2, :cond_0

    .line 3821
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3823
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3819
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 3825
    .end local v2    # "i":I
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3826
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
