.class Lcom/android/server/display/mode/VotesStatsReporter;
.super Ljava/lang/Object;
.source "VotesStatsReporter.java"


# static fields
.field private static final REFRESH_RATE_NOT_LIMITED:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "VotesStatsReporter"


# instance fields
.field private final mIgnoredRenderRate:Z

.field private final mLastMinPriorityByDisplay:Landroid/util/SparseIntArray;


# direct methods
.method constructor <init>(Z)V
    .locals 1
    .param p1, "ignoreRenderRate"    # Z

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/VotesStatsReporter;->mLastMinPriorityByDisplay:Landroid/util/SparseIntArray;

    .line 44
    iput-boolean p1, p0, Lcom/android/server/display/mode/VotesStatsReporter;->mIgnoredRenderRate:Z

    .line 45
    return-void
.end method

.method private static getMaxRefreshRate(Lcom/android/server/display/mode/Vote;Z)I
    .locals 5
    .param p0, "vote"    # Lcom/android/server/display/mode/Vote;
    .param p1, "ignoreRenderRate"    # Z

    .line 109
    const/16 v0, 0x3e8

    .line 110
    .local v0, "maxRefreshRate":I
    instance-of v1, p0, Lcom/android/server/display/mode/RefreshRateVote$PhysicalVote;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/android/server/display/mode/RefreshRateVote$PhysicalVote;

    .line 111
    .local v1, "physicalVote":Lcom/android/server/display/mode/RefreshRateVote$PhysicalVote;
    iget v2, v1, Lcom/android/server/display/mode/RefreshRateVote;->mMaxRefreshRate:F

    float-to-int v0, v2

    goto :goto_2

    .line 112
    .end local v1    # "physicalVote":Lcom/android/server/display/mode/RefreshRateVote$PhysicalVote;
    :cond_0
    if-nez p1, :cond_1

    instance-of v1, p0, Lcom/android/server/display/mode/RefreshRateVote$RenderVote;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/android/server/display/mode/RefreshRateVote$RenderVote;

    .line 113
    .local v1, "renderVote":Lcom/android/server/display/mode/RefreshRateVote$RenderVote;
    iget v2, v1, Lcom/android/server/display/mode/RefreshRateVote;->mMaxRefreshRate:F

    float-to-int v0, v2

    goto :goto_2

    .line 114
    .end local v1    # "renderVote":Lcom/android/server/display/mode/RefreshRateVote$RenderVote;
    :cond_1
    instance-of v1, p0, Lcom/android/server/display/mode/SupportedRefreshRatesVote;

    if-eqz v1, :cond_3

    move-object v1, p0

    check-cast v1, Lcom/android/server/display/mode/SupportedRefreshRatesVote;

    .line 116
    .local v1, "refreshRatesVote":Lcom/android/server/display/mode/SupportedRefreshRatesVote;
    const/4 v0, 0x0

    .line 117
    iget-object v2, v1, Lcom/android/server/display/mode/SupportedRefreshRatesVote;->mRefreshRates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;

    .line 118
    .local v3, "rr":Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;
    iget v4, v3, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;->mPeakRefreshRate:F

    float-to-int v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 119
    .end local v3    # "rr":Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;
    goto :goto_0

    :cond_2
    goto :goto_2

    .line 120
    .end local v1    # "refreshRatesVote":Lcom/android/server/display/mode/SupportedRefreshRatesVote;
    :cond_3
    instance-of v1, p0, Lcom/android/server/display/mode/CombinedVote;

    nop

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, Lcom/android/server/display/mode/CombinedVote;

    .line 121
    .local v1, "combinedVote":Lcom/android/server/display/mode/CombinedVote;
    iget-object v2, v1, Lcom/android/server/display/mode/CombinedVote;->mVotes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/mode/Vote;

    .line 123
    .local v3, "subVote":Lcom/android/server/display/mode/Vote;
    nop

    .line 124
    invoke-static {v3, p1}, Lcom/android/server/display/mode/VotesStatsReporter;->getMaxRefreshRate(Lcom/android/server/display/mode/Vote;Z)I

    move-result v4

    .line 123
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 125
    .end local v3    # "subVote":Lcom/android/server/display/mode/Vote;
    goto :goto_1

    .line 127
    .end local v1    # "combinedVote":Lcom/android/server/display/mode/CombinedVote;
    :cond_4
    :goto_2
    return v0
.end method

.method private reportVoteAdded(IILcom/android/server/display/mode/Vote;)V
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "priority"    # I
    .param p3, "vote"    # Lcom/android/server/display/mode/Vote;

    .line 56
    iget-boolean v0, p0, Lcom/android/server/display/mode/VotesStatsReporter;->mIgnoredRenderRate:Z

    invoke-static {p3, v0}, Lcom/android/server/display/mode/VotesStatsReporter;->getMaxRefreshRate(Lcom/android/server/display/mode/Vote;Z)I

    move-result v5

    .line 57
    .local v5, "maxRefreshRate":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VotesStatsReporter."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-static {p2}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0, v5}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 59
    const/4 v4, 0x1

    const/4 v6, -0x1

    const/16 v1, 0x318

    move v2, p1

    move v3, p2

    .end local p1    # "displayId":I
    .end local p2    # "priority":I
    .local v2, "displayId":I
    .local v3, "priority":I
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    .line 63
    return-void
.end method

.method private reportVoteRemoved(II)V
    .locals 10
    .param p1, "displayId"    # I
    .param p2, "priority"    # I

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VotesStatsReporter."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-static {p2}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    const-wide/32 v1, 0x20000

    const/4 v3, -0x1

    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 68
    const/4 v8, -0x1

    const/4 v9, -0x1

    const/16 v4, 0x318

    const/4 v7, 0x3

    move v5, p1

    move v6, p2

    .end local p1    # "displayId":I
    .end local p2    # "priority":I
    .local v5, "displayId":I
    .local v6, "priority":I
    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    .line 71
    return-void
.end method


# virtual methods
.method reportVoteChanged(IILcom/android/server/display/mode/Vote;)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "priority"    # I
    .param p3, "vote"    # Lcom/android/server/display/mode/Vote;

    .line 48
    if-nez p3, :cond_0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/mode/VotesStatsReporter;->reportVoteRemoved(II)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/mode/VotesStatsReporter;->reportVoteAdded(IILcom/android/server/display/mode/Vote;)V

    .line 53
    :goto_0
    return-void
.end method

.method reportVotesActivated(IILandroid/view/Display$Mode;Landroid/util/SparseArray;)V
    .locals 8
    .param p1, "displayId"    # I
    .param p2, "minPriority"    # I
    .param p3, "baseMode"    # Landroid/view/Display$Mode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/view/Display$Mode;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/mode/Vote;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p4, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/mode/Vote;>;"
    iget-object v0, p0, Lcom/android/server/display/mode/VotesStatsReporter;->mLastMinPriorityByDisplay:Landroid/util/SparseIntArray;

    const/16 v1, 0x18

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 77
    .local v0, "lastMinPriorityReported":I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    move v7, v1

    .line 78
    .local v7, "selectedRefreshRate":I
    const/4 v1, 0x0

    move v4, v1

    .local v4, "priority":I
    :goto_1
    const/16 v1, 0x17

    if-gt v4, v1, :cond_5

    .line 79
    if-ge v4, v0, :cond_1

    if-ge v4, p2, :cond_1

    .line 80
    move v3, p1

    goto :goto_3

    .line 82
    :cond_1
    invoke-virtual {p4, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/mode/Vote;

    .line 83
    .local v1, "vote":Lcom/android/server/display/mode/Vote;
    if-nez v1, :cond_2

    .line 84
    move v3, p1

    goto :goto_3

    .line 88
    :cond_2
    if-lt v4, v0, :cond_3

    if-ge v4, p2, :cond_3

    .line 89
    iget-boolean v2, p0, Lcom/android/server/display/mode/VotesStatsReporter;->mIgnoredRenderRate:Z

    invoke-static {v1, v2}, Lcom/android/server/display/mode/VotesStatsReporter;->getMaxRefreshRate(Lcom/android/server/display/mode/Vote;Z)I

    move-result v6

    .line 90
    .local v6, "maxRefreshRate":I
    const/16 v2, 0x318

    const/4 v5, 0x1

    move v3, p1

    .end local p1    # "displayId":I
    .local v3, "displayId":I
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    goto :goto_2

    .line 88
    .end local v3    # "displayId":I
    .end local v6    # "maxRefreshRate":I
    .restart local p1    # "displayId":I
    :cond_3
    move v3, p1

    .line 96
    .end local p1    # "displayId":I
    .restart local v3    # "displayId":I
    :goto_2
    if-lt v4, p2, :cond_4

    if-ge v4, v0, :cond_4

    .line 97
    iget-boolean p1, p0, Lcom/android/server/display/mode/VotesStatsReporter;->mIgnoredRenderRate:Z

    invoke-static {v1, p1}, Lcom/android/server/display/mode/VotesStatsReporter;->getMaxRefreshRate(Lcom/android/server/display/mode/Vote;Z)I

    move-result v6

    .line 98
    .restart local v6    # "maxRefreshRate":I
    const/16 v2, 0x318

    const/4 v5, 0x2

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    .line 104
    .end local v6    # "maxRefreshRate":I
    :cond_4
    iget-object p1, p0, Lcom/android/server/display/mode/VotesStatsReporter;->mLastMinPriorityByDisplay:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v3, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 78
    .end local v1    # "vote":Lcom/android/server/display/mode/Vote;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move p1, v3

    goto :goto_1

    .end local v3    # "displayId":I
    .restart local p1    # "displayId":I
    :cond_5
    nop

    .line 106
    .end local v4    # "priority":I
    return-void
.end method
