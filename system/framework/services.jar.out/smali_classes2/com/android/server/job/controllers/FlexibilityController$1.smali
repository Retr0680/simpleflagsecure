.class Lcom/android/server/job/controllers/FlexibilityController$1;
.super Ljava/lang/Object;
.source "FlexibilityController.java"

# interfaces
.implements Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/FlexibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/FlexibilityController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/FlexibilityController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/controllers/FlexibilityController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$1;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrefetchCacheUpdated(Landroid/util/ArraySet;ILjava/lang/String;JJJ)V
    .locals 11
    .param p2, "userId"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "prevEstimatedLaunchTime"    # J
    .param p6, "newEstimatedLaunchTime"    # J
    .param p8, "nowElapsed"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;I",
            "Ljava/lang/String;",
            "JJJ)V"
        }
    .end annotation

    .line 195
    .local p1, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    move-wide/from16 v1, p8

    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$1;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v3, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$1;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    .line 197
    invoke-virtual {v0}, Lcom/android/server/job/controllers/PrefetchController;->getLaunchTimeThresholdMs()J

    move-result-wide v4

    .line 198
    .local v4, "prefetchThreshold":J
    sub-long v6, p4, v4

    cmp-long v0, v6, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gez v0, :cond_0

    move v0, v7

    goto :goto_0

    :cond_0
    move v0, v6

    .line 200
    .local v0, "jobWasInPrefetchWindow":Z
    :goto_0
    sub-long v8, p6, v4

    cmp-long v8, v8, v1

    if-gez v8, :cond_1

    move v6, v7

    .line 202
    .local v6, "jobIsInPrefetchWindow":Z
    :cond_1
    if-eq v6, v0, :cond_2

    .line 206
    iget-object v7, p0, Lcom/android/server/job/controllers/FlexibilityController$1;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v7, v7, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchLifeCycleStart:Landroid/util/SparseArrayMap;

    iget-object v8, p0, Lcom/android/server/job/controllers/FlexibilityController$1;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v8, v8, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchLifeCycleStart:Landroid/util/SparseArrayMap;

    .line 207
    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, p2, p3, v9}, Landroid/util/SparseArrayMap;->getOrDefault(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 206
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, p2, p3, v8}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 217
    .end local v0    # "jobWasInPrefetchWindow":Z
    .end local v4    # "prefetchThreshold":J
    .end local v6    # "jobIsInPrefetchWindow":Z
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 209
    .restart local v0    # "jobWasInPrefetchWindow":Z
    .restart local v4    # "prefetchThreshold":J
    .restart local v6    # "jobIsInPrefetchWindow":Z
    :cond_2
    :goto_1
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 210
    invoke-virtual {p1, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/JobStatus;

    .line 211
    .local v8, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->hasFlexibilityConstraint()Z

    move-result v9

    if-nez v9, :cond_3

    .line 212
    goto :goto_3

    .line 214
    :cond_3
    iget-object v9, p0, Lcom/android/server/job/controllers/FlexibilityController$1;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v9, v9, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    invoke-virtual {v9, v8, v1, v2}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->calculateNumDroppedConstraints(Lcom/android/server/job/controllers/JobStatus;J)V

    .line 215
    iget-object v9, p0, Lcom/android/server/job/controllers/FlexibilityController$1;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v9, v9, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityAlarmQueue:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

    invoke-virtual {v9, v8, v1, v2}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->scheduleDropNumConstraintsAlarm(Lcom/android/server/job/controllers/JobStatus;J)V

    .line 209
    .end local v8    # "js":Lcom/android/server/job/controllers/JobStatus;
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    nop

    .line 217
    .end local v0    # "jobWasInPrefetchWindow":Z
    .end local v4    # "prefetchThreshold":J
    .end local v6    # "jobIsInPrefetchWindow":Z
    .end local v7    # "i":I
    monitor-exit v3

    .line 218
    return-void

    .line 217
    :goto_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
