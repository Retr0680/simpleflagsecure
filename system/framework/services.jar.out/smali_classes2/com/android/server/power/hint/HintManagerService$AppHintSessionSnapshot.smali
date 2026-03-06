.class Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;
.super Ljava/lang/Object;
.source "HintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/hint/HintManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppHintSessionSnapshot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;
    }
.end annotation


# instance fields
.field mCurrentSessionCount:I

.field mGraphicsPipelineSessionCount:I

.field mMaxConcurrentSession:I

.field mMaxThreadCount:I

.field mPowerEfficientSessionCount:I

.field mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mTargetDurationNsCountPQSize:I


# direct methods
.method constructor <init>(Lcom/android/server/power/hint/HintManagerService;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    const/16 p1, 0x64

    iput p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQSize:I

    .line 565
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mCurrentSessionCount:I

    .line 566
    iput p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxConcurrentSession:I

    .line 567
    iput p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxThreadCount:I

    .line 568
    iput p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mPowerEfficientSessionCount:I

    .line 569
    iput p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mGraphicsPipelineSessionCount:I

    .line 570
    new-instance p1, Ljava/util/PriorityQueue;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/PriorityQueue;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    .line 571
    return-void
.end method


# virtual methods
.method getGraphicsPipelineSessionCount()I
    .locals 1

    .line 623
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mGraphicsPipelineSessionCount:I

    return v0
.end method

.method getMaxConcurrentSession()I
    .locals 1

    .line 611
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxConcurrentSession:I

    return v0
.end method

.method getMaxThreadCount()I
    .locals 1

    .line 615
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxThreadCount:I

    return v0
.end method

.method getPowerEfficientSessionCount()I
    .locals 1

    .line 619
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mPowerEfficientSessionCount:I

    return v0
.end method

.method logGraphicsPipelineSession()V
    .locals 1

    .line 589
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mGraphicsPipelineSessionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mGraphicsPipelineSessionCount:I

    .line 590
    return-void
.end method

.method logPowerEfficientSession()V
    .locals 1

    .line 585
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mPowerEfficientSessionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mPowerEfficientSessionCount:I

    .line 586
    return-void
.end method

.method targetDurationNsList()[J
    .locals 6

    .line 627
    const/4 v0, 0x5

    .line 628
    .local v0, "listSize":I
    const/4 v1, 0x5

    new-array v2, v1, [J

    .line 629
    .local v2, "targetDurations":[J
    :goto_0
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->size()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 630
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 632
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 633
    iget-object v4, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;

    invoke-virtual {v4}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->getTargetDurationNs()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 632
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 635
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method updateTargetDurationNs(J)V
    .locals 4
    .param p1, "targetDurationNs"    # J

    .line 597
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;

    .line 598
    .local v1, "t":Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;
    invoke-virtual {v1}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->getTargetDurationNs()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 599
    invoke-virtual {v1}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->setCount(I)V

    .line 600
    invoke-virtual {v1}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->setTimestamp()V

    .line 601
    return-void

    .line 598
    :cond_0
    nop

    .line 603
    .end local v1    # "t":Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;
    goto :goto_0

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    .line 605
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 607
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    new-instance v1, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;-><init>(Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;J)V

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 608
    return-void
.end method

.method updateThreadCount(I)V
    .locals 1
    .param p1, "threadCount"    # I

    .line 593
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxThreadCount:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxThreadCount:I

    .line 594
    return-void
.end method

.method updateUponSessionClose()V
    .locals 1

    .line 581
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mCurrentSessionCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mCurrentSessionCount:I

    .line 582
    return-void
.end method

.method updateUponSessionCreation(IJ)V
    .locals 2
    .param p1, "threadCount"    # I
    .param p2, "targetDuration"    # J

    .line 574
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mCurrentSessionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mCurrentSessionCount:I

    .line 575
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxConcurrentSession:I

    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mCurrentSessionCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxConcurrentSession:I

    .line 576
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxThreadCount:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxThreadCount:I

    .line 577
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->updateTargetDurationNs(J)V

    .line 578
    return-void
.end method
