.class public Lcom/android/server/am/BroadcastHistory;
.super Ljava/lang/Object;
.source "BroadcastHistory.java"


# instance fields
.field private final MAX_BROADCAST_HISTORY:I

.field private final MAX_BROADCAST_SUMMARY_HISTORY:I

.field final mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

.field final mBroadcastSummaryHistory:[Landroid/content/Intent;

.field private final mFrozenBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field mHistoryNext:I

.field private final mPendingBroadcastCountsPerUid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPendingBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mSummaryHistoryDispatchTime:[J

.field final mSummaryHistoryEnqueueTime:[J

.field final mSummaryHistoryFinishTime:[J

.field mSummaryHistoryNext:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastConstants;)V
    .locals 1
    .param p1, "constants"    # Lcom/android/server/am/BroadcastConstants;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mFrozenBroadcasts:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/BroadcastHistory;->mHistoryNext:I

    .line 78
    iput v0, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    .line 92
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcastCountsPerUid:Landroid/util/SparseArray;

    .line 46
    iget v0, p1, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_COMPLETE_SIZE:I

    iput v0, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_HISTORY:I

    .line 47
    iget v0, p1, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_SUMMARY_SIZE:I

    iput v0, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_SUMMARY_HISTORY:I

    .line 49
    iget v0, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_HISTORY:I

    new-array v0, v0, [Lcom/android/server/am/BroadcastRecord;

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    .line 50
    iget v0, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_SUMMARY_HISTORY:I

    new-array v0, v0, [Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    .line 51
    iget v0, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_SUMMARY_HISTORY:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryEnqueueTime:[J

    .line 52
    iget v0, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_SUMMARY_HISTORY:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryDispatchTime:[J

    .line 53
    iget v0, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_SUMMARY_HISTORY:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryFinishTime:[J

    .line 54
    return-void
.end method

.method private dumpBroadcastList(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p4, "dumpIntentAction"    # Ljava/lang/String;
    .param p5, "dumpAll"    # Z
    .param p6, "flavor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/text/SimpleDateFormat;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 333
    .local p3, "broadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " broadcasts:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    const-string v0, "    <empty>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 337
    :cond_0
    const/4 v0, 0x0

    .line 338
    .local v0, "printedAnything":Z
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "idx":I
    :goto_0
    if-ltz v1, :cond_3

    .line 339
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 340
    .local v2, "r":Lcom/android/server/am/BroadcastRecord;
    if-eqz p4, :cond_1

    iget-object v3, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 341
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 340
    invoke-static {p4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 342
    goto :goto_1

    .line 344
    :cond_1
    invoke-virtual {p1, p6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  broadcast #"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    const-string v3, "    "

    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    .line 346
    const/4 v0, 0x1

    .line 347
    if-eqz p4, :cond_2

    if-nez p5, :cond_2

    .line 348
    goto :goto_2

    .line 338
    .end local v2    # "r":Lcom/android/server/am/BroadcastRecord;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 351
    .end local v1    # "idx":I
    :cond_3
    :goto_2
    if-nez v0, :cond_4

    .line 352
    const-string v1, "    <no-matches>"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    .end local v0    # "printedAnything":Z
    :cond_4
    :goto_3
    return-void
.end method

.method private ringAdvance(III)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "increment"    # I
    .param p3, "ringSize"    # I

    .line 155
    add-int/2addr p1, p2

    .line 156
    if-gez p1, :cond_0

    add-int/lit8 v0, p3, -0x1

    return v0

    .line 157
    :cond_0
    if-lt p1, p3, :cond_1

    const/4 v0, 0x0

    return v0

    .line 158
    :cond_1
    return p1
.end method

.method private updatePendingBroadcastCounterAndLogToTrace(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "delta"    # I

    .line 115
    iget-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcastCountsPerUid:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 116
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 117
    .local v0, "pendingBroadcastCounts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 118
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 119
    iget-object v1, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcastCountsPerUid:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    :cond_0
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string/jumbo v1, "null"

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 122
    .local v1, "callerPackage":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 123
    .local v2, "currentCount":Ljava/lang/Integer;
    if-nez v2, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_1
    add-int/2addr v3, p2

    .line 124
    .local v3, "newCount":I
    if-nez v3, :cond_3

    .line 125
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 127
    iget-object v4, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcastCountsPerUid:Landroid/util/SparseArray;

    iget v5, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    .line 130
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_4
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x40

    const-string v7, "Broadcasts pending per uid"

    invoke-static {v5, v6, v7, v4}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v4, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 136
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 135
    const-string v7, "Broadcasts pending"

    invoke-static {v5, v6, v7, v4}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 137
    return-void
.end method


# virtual methods
.method public addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 6
    .param p1, "original"    # Lcom/android/server/am/BroadcastRecord;

    .line 142
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->maybeStripForHistory()Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .line 144
    .local v0, "historyRecord":Lcom/android/server/am/BroadcastRecord;
    iget-object v1, p0, Lcom/android/server/am/BroadcastHistory;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    iget v2, p0, Lcom/android/server/am/BroadcastHistory;->mHistoryNext:I

    aput-object v0, v1, v2

    .line 145
    iget v1, p0, Lcom/android/server/am/BroadcastHistory;->mHistoryNext:I

    iget v2, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_HISTORY:I

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/BroadcastHistory;->mHistoryNext:I

    .line 147
    iget-object v1, p0, Lcom/android/server/am/BroadcastHistory;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    iget v2, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    aput-object v4, v1, v2

    .line 148
    iget-object v1, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryEnqueueTime:[J

    iget v2, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    iget-wide v4, v0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    aput-wide v4, v1, v2

    .line 149
    iget-object v1, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryDispatchTime:[J

    iget v2, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    iget-wide v4, v0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    aput-wide v4, v1, v2

    .line 150
    iget-object v1, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryFinishTime:[J

    iget v2, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aput-wide v4, v1, v2

    .line 151
    iget v1, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    iget v2, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_SUMMARY_HISTORY:I

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    .line 152
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 14
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 165
    .local v1, "r":Lcom/android/server/am/BroadcastRecord;
    const-wide v2, 0x20b00000007L

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 163
    .end local v1    # "r":Lcom/android/server/am/BroadcastRecord;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 167
    .end local v0    # "i":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/BroadcastHistory;->mFrozenBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/android/server/am/BroadcastHistory;->mFrozenBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 169
    .restart local v1    # "r":Lcom/android/server/am/BroadcastRecord;
    const-wide v2, 0x20b00000008L

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 167
    .end local v1    # "r":Lcom/android/server/am/BroadcastRecord;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 172
    .end local v0    # "i":I
    iget v0, p0, Lcom/android/server/am/BroadcastHistory;->mHistoryNext:I

    .line 173
    .local v0, "lastIndex":I
    move v1, v0

    .line 177
    .local v1, "ringIndex":I
    :goto_2
    iget v2, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_HISTORY:I

    const/4 v3, -0x1

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result v1

    .line 178
    iget-object v2, p0, Lcom/android/server/am/BroadcastHistory;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    aget-object v2, v2, v1

    .line 179
    .local v2, "r":Lcom/android/server/am/BroadcastRecord;
    if-eqz v2, :cond_2

    .line 180
    const-wide v4, 0x20b00000005L

    invoke-virtual {v2, p1, v4, v5}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 182
    .end local v2    # "r":Lcom/android/server/am/BroadcastRecord;
    :cond_2
    if-ne v1, v0, :cond_5

    .line 184
    iget v2, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    move v1, v2

    .line 186
    .end local v0    # "lastIndex":I
    .local v2, "lastIndex":I
    :goto_3
    iget v0, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_SUMMARY_HISTORY:I

    invoke-direct {p0, v1, v3, v0}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result v1

    .line 187
    iget-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    aget-object v4, v0, v1

    .line 188
    .local v4, "intent":Landroid/content/Intent;
    if-nez v4, :cond_3

    .line 189
    move-object v5, p1

    goto :goto_4

    .line 191
    :cond_3
    const-wide v5, 0x20b00000006L

    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 192
    .local v12, "summaryToken":J
    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide v6, 0x10b00000001L

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v5, p1

    .end local p1    # "proto":Landroid/util/proto/ProtoOutputStream;
    .local v5, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual/range {v4 .. v11}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    .line 194
    iget-object p1, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryEnqueueTime:[J

    aget-wide v6, p1, v1

    const-wide v8, 0x10300000002L

    invoke-virtual {v5, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 196
    iget-object p1, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryDispatchTime:[J

    aget-wide v6, p1, v1

    const-wide v8, 0x10300000003L

    invoke-virtual {v5, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 198
    iget-object p1, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryFinishTime:[J

    aget-wide v6, p1, v1

    const-wide v8, 0x10300000004L

    invoke-virtual {v5, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 200
    invoke-virtual {v5, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 201
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v12    # "summaryToken":J
    :goto_4
    if-ne v1, v2, :cond_4

    .line 202
    return-void

    .line 201
    :cond_4
    move-object p1, v5

    goto :goto_3

    .line 182
    .end local v2    # "lastIndex":I
    .end local v5    # "proto":Landroid/util/proto/ProtoOutputStream;
    .restart local v0    # "lastIndex":I
    .restart local p1    # "proto":Landroid/util/proto/ProtoOutputStream;
    :cond_5
    move-object v5, p1

    .end local p1    # "proto":Landroid/util/proto/ProtoOutputStream;
    .restart local v5    # "proto":Landroid/util/proto/ProtoOutputStream;
    goto :goto_2
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/text/SimpleDateFormat;Z)Z
    .locals 22
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "dumpIntentAction"    # Ljava/lang/String;
    .param p4, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p5, "dumpAll"    # Z
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 208
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    const/4 v8, 0x1

    .line 209
    .local v8, "needSep":Z
    iget-object v3, v0, Lcom/android/server/am/BroadcastHistory;->mFrozenBroadcasts:Ljava/util/ArrayList;

    const-string v6, "Frozen"

    move-object/from16 v1, p1

    move-object/from16 v4, p3

    move-object/from16 v2, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/BroadcastHistory;->dumpBroadcastList(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;)V

    .line 210
    iget-object v3, v0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    const-string v6, "Pending"

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/BroadcastHistory;->dumpBroadcastList(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;)V

    .line 213
    const/4 v3, 0x0

    .line 215
    .local v3, "printed":Z
    const/4 v5, -0x1

    .line 216
    .local v5, "i":I
    iget v6, v0, Lcom/android/server/am/BroadcastHistory;->mHistoryNext:I

    .line 217
    .local v6, "lastIndex":I
    move v9, v6

    .line 221
    .local v9, "ringIndex":I
    :goto_0
    iget v10, v0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_HISTORY:I

    const/4 v11, -0x1

    invoke-direct {v0, v9, v11, v10}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result v9

    .line 222
    iget-object v10, v0, Lcom/android/server/am/BroadcastHistory;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    aget-object v10, v10, v9

    .line 223
    .local v10, "r":Lcom/android/server/am/BroadcastRecord;
    const-string v12, "    extras: "

    const-string v13, ": "

    const-string v14, "  #"

    const-string v11, "    "

    if-nez v10, :cond_0

    .line 224
    goto/16 :goto_2

    .line 227
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 228
    if-eqz v7, :cond_1

    iget-object v15, v10, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 229
    goto/16 :goto_2

    .line 231
    :cond_1
    if-eqz v4, :cond_2

    iget-object v15, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 232
    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    .line 231
    invoke-static {v4, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 233
    goto/16 :goto_2

    .line 235
    :cond_2
    if-nez v3, :cond_4

    .line 236
    if-eqz v8, :cond_3

    .line 237
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 239
    :cond_3
    const/4 v8, 0x1

    .line 240
    const-string v15, "  Historical broadcasts:"

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    const/4 v3, 0x1

    .line 243
    :cond_4
    const-string v15, ":"

    move/from16 v18, v3

    .end local v3    # "printed":Z
    .local v18, "printed":Z
    const-string v3, "  Historical Broadcast #"

    if-eqz v4, :cond_5

    .line 244
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v10, v1, v11, v2}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    .line 247
    if-nez p5, :cond_8

    .line 248
    move/from16 v3, v18

    goto :goto_3

    .line 250
    :cond_5
    if-eqz p5, :cond_6

    .line 251
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v10, v1, v11, v2}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    goto :goto_1

    .line 255
    :cond_6
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 256
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 257
    iget-object v3, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    const/4 v4, 0x1

    const/4 v15, 0x0

    invoke-virtual {v3, v15, v4, v4, v15}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    iget-object v3, v10, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    if-eqz v3, :cond_7

    iget-object v3, v10, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    iget-object v4, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eq v3, v4, :cond_7

    .line 259
    const-string v3, "    targetComp: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v10, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    :cond_7
    iget-object v3, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 262
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_8

    .line 263
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v10    # "r":Lcom/android/server/am/BroadcastRecord;
    :cond_8
    :goto_1
    move/from16 v3, v18

    .end local v18    # "printed":Z
    .local v3, "printed":Z
    :goto_2
    nop

    nop

    if-ne v9, v6, :cond_13

    .line 268
    :goto_3
    if-nez v7, :cond_12

    if-nez p3, :cond_12

    .line 269
    iget v4, v0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    move v9, v4

    .line 270
    .end local v6    # "lastIndex":I
    .local v4, "lastIndex":I
    if-eqz p5, :cond_9

    .line 271
    const/4 v3, 0x0

    .line 272
    const/4 v5, -0x1

    goto :goto_5

    .line 275
    :cond_9
    move v6, v5

    .line 276
    .local v6, "j":I
    :goto_4
    if-lez v6, :cond_b

    if-eq v9, v4, :cond_b

    .line 277
    iget v10, v0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_SUMMARY_HISTORY:I

    const/4 v15, -0x1

    invoke-direct {v0, v9, v15, v10}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result v9

    .line 278
    iget-object v10, v0, Lcom/android/server/am/BroadcastHistory;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    aget-object v10, v10, v9

    .line 279
    .restart local v10    # "r":Lcom/android/server/am/BroadcastRecord;
    if-nez v10, :cond_a

    .line 280
    goto :goto_4

    .line 282
    :cond_a
    nop

    .end local v10    # "r":Lcom/android/server/am/BroadcastRecord;
    add-int/lit8 v6, v6, -0x1

    .line 283
    goto :goto_4

    .line 288
    .end local v6    # "j":I
    :cond_b
    :goto_5
    iget v6, v0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_SUMMARY_HISTORY:I

    const/4 v15, -0x1

    invoke-direct {v0, v9, v15, v6}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result v9

    .line 289
    iget-object v6, v0, Lcom/android/server/am/BroadcastHistory;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    aget-object v6, v6, v9

    .line 290
    .local v6, "intent":Landroid/content/Intent;
    if-nez v6, :cond_c

    .line 291
    move-object/from16 v21, v11

    const/4 v15, 0x1

    goto/16 :goto_6

    .line 293
    :cond_c
    if-nez v3, :cond_e

    .line 294
    if-eqz v8, :cond_d

    .line 295
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 297
    :cond_d
    const/4 v8, 0x1

    .line 298
    const-string v10, "  Historical broadcasts summary:"

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    const/4 v3, 0x1

    .line 301
    :cond_e
    if-nez p5, :cond_f

    const/16 v10, 0x32

    if-lt v5, v10, :cond_f

    .line 302
    const-string v10, "  ..."

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    move v6, v4

    goto/16 :goto_7

    .line 305
    :cond_f
    add-int/lit8 v5, v5, 0x1

    .line 306
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 307
    move/from16 v16, v3

    const/4 v10, 0x0

    const/4 v15, 0x1

    .end local v3    # "printed":Z
    .local v16, "printed":Z
    invoke-virtual {v6, v10, v15, v15, v10}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    iget-object v3, v0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryDispatchTime:[J

    aget-wide v17, v3, v9

    iget-object v3, v0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryEnqueueTime:[J

    aget-wide v19, v3, v9

    move-object/from16 v21, v11

    sub-long v10, v17, v19

    invoke-static {v10, v11, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 311
    const-string v3, " dispatch "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    iget-object v3, v0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryFinishTime:[J

    aget-wide v10, v3, v9

    iget-object v3, v0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryDispatchTime:[J

    aget-wide v17, v3, v9

    sub-long v10, v10, v17

    invoke-static {v10, v11, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 314
    const-string v3, " finish"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    const-string v3, "    enq="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 316
    new-instance v3, Ljava/util/Date;

    iget-object v10, v0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryEnqueueTime:[J

    aget-wide v10, v10, v9

    invoke-direct {v3, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    const-string v3, " disp="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    new-instance v3, Ljava/util/Date;

    iget-object v10, v0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryDispatchTime:[J

    aget-wide v10, v10, v9

    invoke-direct {v3, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 319
    const-string v3, " fin="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 320
    new-instance v3, Ljava/util/Date;

    iget-object v10, v0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryFinishTime:[J

    aget-wide v10, v10, v9

    invoke-direct {v3, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 322
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_10

    .line 323
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_10
    move/from16 v3, v16

    .end local v16    # "printed":Z
    .local v3, "printed":Z
    :goto_6
    if-ne v9, v4, :cond_11

    move v6, v4

    goto :goto_7

    :cond_11
    move-object/from16 v11, v21

    goto/16 :goto_5

    .line 327
    .end local v4    # "lastIndex":I
    .local v6, "lastIndex":I
    :cond_12
    :goto_7
    return v8

    .line 266
    :cond_13
    move-object/from16 v4, p3

    goto/16 :goto_0
.end method

.method onBroadcastEnqueuedLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 100
    iget-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mFrozenBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/BroadcastHistory;->updatePendingBroadcastCounterAndLogToTrace(Lcom/android/server/am/BroadcastRecord;I)V

    .line 104
    :cond_0
    return-void
.end method

.method onBroadcastFinishedLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 107
    iget-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/BroadcastHistory;->updatePendingBroadcastCounterAndLogToTrace(Lcom/android/server/am/BroadcastRecord;I)V

    .line 110
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastHistory;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 111
    return-void
.end method

.method onBroadcastFrozenLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 96
    iget-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mFrozenBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method
