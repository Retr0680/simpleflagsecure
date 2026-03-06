.class Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;
.super Ljava/lang/Object;
.source "HintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/hint/HintManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadUsageTracker"
.end annotation


# instance fields
.field mIsGraphicsPipeline:Z

.field mTid:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "tid"    # I

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput p1, p0, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;->mTid:I

    .line 479
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;->mIsGraphicsPipeline:Z

    .line 480
    return-void
.end method

.method constructor <init>(IZ)V
    .locals 0
    .param p1, "tid"    # I
    .param p2, "isGraphicsPipeline"    # Z

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    iput p1, p0, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;->mTid:I

    .line 484
    iput-boolean p2, p0, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;->mIsGraphicsPipeline:Z

    .line 485
    return-void
.end method


# virtual methods
.method public getTid()I
    .locals 1

    .line 488
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;->mTid:I

    return v0
.end method

.method public isGraphicsPipeline()Z
    .locals 1

    .line 492
    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;->mIsGraphicsPipeline:Z

    return v0
.end method

.method public setGraphicsPipeline(Z)V
    .locals 0
    .param p1, "isGraphicsPipeline"    # Z

    .line 496
    iput-boolean p1, p0, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;->mIsGraphicsPipeline:Z

    .line 497
    return-void
.end method
