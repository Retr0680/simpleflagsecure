.class final Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;
.super Landroid/os/Handler;
.source "HintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/hint/HintManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CleanUpHandler"
.end annotation


# static fields
.field private static final TID_EXITED:I = 0x2

.field private static final TID_NOT_CHECKED:I = 0x0

.field private static final TID_PASSED_CHECK:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/power/hint/HintManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/hint/HintManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/hint/HintManagerService;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1094
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 1095
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1096
    return-void
.end method

.method private logCleanUpMetrics(I[I[JIIZ)V
    .locals 17
    .param p1, "uid"    # I
    .param p2, "count"    # [I
    .param p3, "durationNsList"    # [J
    .param p4, "sessionCnt"    # I
    .param p5, "totalTidCnt"    # I
    .param p6, "isForeground"    # Z

    .line 1153
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const/high16 v2, -0x80000000

    .line 1154
    .local v2, "maxInvalidTidCnt":I
    const/4 v3, 0x0

    .line 1155
    .local v3, "totalInvalidTidCnt":I
    const/4 v4, 0x0

    move v11, v2

    move v10, v3

    .end local v2    # "maxInvalidTidCnt":I
    .end local v3    # "totalInvalidTidCnt":I
    .local v4, "i":I
    .local v10, "totalInvalidTidCnt":I
    .local v11, "maxInvalidTidCnt":I
    :goto_0
    array-length v2, v0

    if-ge v4, v2, :cond_0

    .line 1156
    aget v2, v0, v4

    add-int/2addr v10, v2

    .line 1157
    aget v2, v0, v4

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1155
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1159
    .end local v4    # "i":I
    if-lez v10, :cond_2

    .line 1160
    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    .line 1161
    const-wide/16 v2, 0x0

    .line 1162
    .local v2, "totalDurationNs":J
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 1163
    aget-wide v5, v1, v4

    add-long/2addr v2, v5

    .line 1162
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 1165
    .end local v4    # "i":I
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v4

    long-to-int v7, v4

    .line 1166
    .local v7, "totalDurationUs":I
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    aget-wide v5, v1, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v4

    long-to-int v8, v4

    .line 1168
    .local v8, "maxDurationUs":I
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v5, 0x0

    aget-wide v5, v1, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v4

    long-to-int v4, v4

    .line 1169
    .local v4, "minDurationUs":I
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    array-length v6, v1

    int-to-long v12, v6

    div-long v12, v2, v12

    invoke-virtual {v5, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v5

    long-to-int v14, v5

    .line 1171
    .local v14, "avgDurationUs":I
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    array-length v6, v1

    int-to-double v12, v6

    const-wide v15, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v12, v15

    double-to-int v6, v12

    aget-wide v12, v1, v6

    invoke-virtual {v5, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v5

    long-to-int v15, v5

    .line 1173
    .local v15, "th90DurationUs":I
    const/16 v5, 0x347

    move/from16 v6, p1

    move/from16 v12, p4

    move/from16 v9, p5

    move/from16 v13, p6

    invoke-static/range {v5 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIIIZ)V

    .line 1176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid tid found for UID"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " in "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "us:\n\tcount( session: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " totalTid: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " maxInvalidTid: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " totalInvalidTid: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ")\n\ttime per session( min: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "us max: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "us avg: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "us 90%: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "us)\n\tisForeground: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p6

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v0, "HintManagerService"

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1159
    .end local v2    # "totalDurationNs":J
    .end local v4    # "minDurationUs":I
    .end local v7    # "totalDurationUs":I
    .end local v8    # "maxDurationUs":I
    .end local v14    # "avgDurationUs":I
    .end local v15    # "th90DurationUs":I
    :cond_2
    move/from16 v6, p1

    move/from16 v12, p4

    move/from16 v9, p5

    move/from16 v13, p6

    .line 1190
    :goto_2
    return-void
.end method


# virtual methods
.method public cleanUpSession(Lcom/android/server/power/hint/HintManagerService$AppHintSession;Landroid/util/SparseIntArray;[I)I
    .locals 12
    .param p1, "session"    # Lcom/android/server/power/hint/HintManagerService$AppHintSession;
    .param p2, "checkedTids"    # Landroid/util/SparseIntArray;
    .param p3, "total"    # [I

    .line 1198
    invoke-virtual {p1}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->isForcePaused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto/16 :goto_a

    .line 1201
    :cond_1
    iget v0, p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mPid:I

    .line 1202
    .local v0, "pid":I
    invoke-virtual {p1}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->getTidsInternal()[I

    move-result-object v2

    .line 1203
    .local v2, "tids":[I
    const/4 v3, 0x1

    if-eqz p3, :cond_2

    array-length v4, p3

    if-ne v4, v3, :cond_2

    .line 1204
    aget v4, p3, v1

    array-length v5, v2

    add-int/2addr v4, v5

    aput v4, p3, v1

    .line 1206
    :cond_2
    new-instance v4, Landroid/util/IntArray;

    array-length v5, v2

    invoke-direct {v4, v5}, Landroid/util/IntArray;-><init>(I)V

    .line 1207
    .local v4, "filtered":Landroid/util/IntArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_7

    .line 1208
    aget v6, v2, v5

    .line 1209
    .local v6, "tid":I
    invoke-virtual {p2, v6, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-eqz v7, :cond_3

    .line 1210
    invoke-virtual {p2, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    if-ne v7, v3, :cond_6

    .line 1211
    invoke-virtual {v4, v6}, Landroid/util/IntArray;->add(I)V

    goto :goto_6

    .line 1217
    :cond_3
    iget-object v7, p0, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v7}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNonIsolatedTidsLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 1218
    :try_start_0
    iget-object v8, p0, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v8}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNonIsolatedTids(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/Map;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    .line 1219
    .local v8, "isNotIsolated":Z
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1221
    if-eqz v8, :cond_4

    .line 1222
    :try_start_1
    invoke-static {v0, v6}, Landroid/os/Process;->checkTid(II)V

    goto :goto_1

    .line 1230
    :catch_0
    move-exception v7

    goto :goto_3

    .line 1228
    :catch_1
    move-exception v7

    goto :goto_5

    .line 1224
    :cond_4
    invoke-static {v6}, Landroid/os/Process;->checkPid(I)V

    .line 1226
    :goto_1
    invoke-virtual {p2, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1227
    invoke-virtual {v4, v6}, Landroid/util/IntArray;->add(I)V
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1235
    :goto_2
    goto :goto_6

    .line 1230
    :goto_3
    nop

    .line 1231
    .local v7, "e":Ljava/lang/Exception;
    const-string v9, "HintManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected exception when checking TID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " under PID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "(isolated: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v8, :cond_5

    move v11, v3

    goto :goto_4

    :cond_5
    move v11, v1

    :goto_4
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1234
    invoke-virtual {v4, v6}, Landroid/util/IntArray;->add(I)V

    goto :goto_6

    .line 1228
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_5
    nop

    .line 1229
    .local v7, "e":Ljava/util/NoSuchElementException;
    const/4 v9, 0x2

    invoke-virtual {p2, v6, v9}, Landroid/util/SparseIntArray;->put(II)V

    .end local v7    # "e":Ljava/util/NoSuchElementException;
    goto :goto_2

    .line 1207
    .end local v6    # "tid":I
    .end local v8    # "isNotIsolated":Z
    :cond_6
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1219
    .restart local v6    # "tid":I
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1207
    .end local v6    # "tid":I
    :cond_7
    nop

    .line 1237
    .end local v5    # "i":I
    array-length v5, v2

    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1238
    .local v5, "diff":I
    if-lez v5, :cond_c

    .line 1239
    monitor-enter p1

    .line 1242
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->getTidsInternal()[I

    move-result-object v6

    .line 1243
    .local v6, "newTids":[I
    array-length v7, v6

    array-length v8, v2

    if-eq v7, v8, :cond_8

    .line 1244
    const-string v1, "HintManagerService"

    const-string v3, "Skipped cleaning up the session as new tids are added"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    monitor-exit p1

    return v5

    .line 1266
    .end local v6    # "newTids":[I
    :catchall_1
    move-exception v1

    goto :goto_8

    .line 1247
    .restart local v6    # "newTids":[I
    :cond_8
    invoke-static {v6}, Ljava/util/Arrays;->sort([I)V

    .line 1248
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 1249
    invoke-static {v6, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v7

    if-nez v7, :cond_9

    .line 1250
    const-string v1, "HintManagerService"

    const-string v3, "Skipped cleaning up the session as new tids are updated"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    monitor-exit p1

    return v5

    .line 1253
    :cond_9
    const-string v7, "HintManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cleaned up "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " invalid tids for session "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " with UID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\n\tbefore: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n\tafter: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1253
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    invoke-virtual {v4}, Landroid/util/IntArray;->toArray()[I

    move-result-object v7

    .line 1258
    .local v7, "filteredTids":[I
    array-length v8, v7

    if-nez v8, :cond_a

    .line 1259
    iput-boolean v3, p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    .line 1260
    iget-boolean v1, p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowedByProcState:Z

    if-eqz v1, :cond_b

    .line 1261
    invoke-static {p1}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->-$$Nest$mpause(Lcom/android/server/power/hint/HintManagerService$AppHintSession;)V

    goto :goto_7

    .line 1264
    :cond_a
    invoke-static {p1, v7, v1}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->-$$Nest$msetThreadsInternal(Lcom/android/server/power/hint/HintManagerService$AppHintSession;[IZ)V

    .line 1266
    .end local v6    # "newTids":[I
    .end local v7    # "filteredTids":[I
    :cond_b
    :goto_7
    monitor-exit p1

    goto :goto_9

    :goto_8
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 1268
    :cond_c
    :goto_9
    return v5

    .line 1199
    .end local v0    # "pid":I
    .end local v2    # "tids":[I
    .end local v4    # "filtered":Landroid/util/IntArray;
    .end local v5    # "diff":I
    :goto_a
    return v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .line 1100
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    iget v0, v8, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    .line 1101
    iget v0, v8, Landroid/os/Message;->what:I

    iget-object v2, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Landroid/os/Handler;->hasEqualMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    iget v0, v8, Landroid/os/Message;->what:I

    iget-object v2, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 1103
    iget v0, v8, Landroid/os/Message;->what:I

    iget-object v2, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1104
    .local v0, "newMsg":Landroid/os/Message;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1105
    const-string v2, "HintManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate messages for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    return-void

    .line 1108
    .end local v0    # "newMsg":Landroid/os/Message;
    :cond_0
    const-string v0, "HintManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starts cleaning for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    iget-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1110
    .local v2, "uid":I
    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mUidObserver:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

    invoke-virtual {v0, v2}, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->isUidForeground(I)Z

    move-result v7

    .line 1115
    .local v7, "isForeground":Z
    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1116
    :try_start_0
    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 1117
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1118
    .local v0, "tokenMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    goto/16 :goto_4

    .line 1121
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v9, v4

    .line 1122
    .local v9, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_4

    .line 1123
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .line 1124
    .local v6, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;"
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v10

    sub-int/2addr v10, v5

    .local v10, "j":I
    :goto_1
    if-ltz v10, :cond_3

    .line 1125
    invoke-virtual {v6, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1124
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 1128
    .end local v0    # "tokenMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;>;"
    .end local v4    # "i":I
    .end local v6    # "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;"
    .end local v9    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;"
    .end local v10    # "j":I
    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 1124
    .restart local v0    # "tokenMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;>;"
    .restart local v4    # "i":I
    .restart local v6    # "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;"
    .restart local v9    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;"
    .restart local v10    # "j":I
    :cond_3
    nop

    .line 1122
    .end local v6    # "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;"
    .end local v10    # "j":I
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_4
    nop

    .line 1128
    .end local v0    # "tokenMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;>;"
    .end local v4    # "i":I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1129
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [J

    .line 1130
    .local v4, "durationList":[J
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [I

    .line 1131
    .local v3, "invalidTidCntList":[I
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    move-object v10, v0

    .line 1132
    .local v10, "checkedTids":Landroid/util/SparseIntArray;
    new-array v11, v5, [I

    .line 1133
    .local v11, "totalTidCnt":[I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v5

    move v5, v0

    .local v5, "i":I
    :goto_2
    if-ltz v5, :cond_5

    .line 1134
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    .line 1135
    .local v6, "session":Lcom/android/server/power/hint/HintManagerService$AppHintSession;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 1137
    .local v12, "start":J
    :try_start_1
    invoke-virtual {v1, v6, v10, v11}, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;->cleanUpSession(Lcom/android/server/power/hint/HintManagerService$AppHintSession;Landroid/util/SparseIntArray;[I)I

    move-result v0

    .line 1138
    .local v0, "invalidCnt":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    sub-long/2addr v14, v12

    .line 1139
    .local v14, "elapsed":J
    aput v0, v3, v5

    .line 1140
    aput-wide v14, v4, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1144
    .end local v0    # "invalidCnt":I
    .end local v14    # "elapsed":J
    goto :goto_3

    .line 1141
    :catch_0
    move-exception v0

    .line 1142
    .local v0, "e":Ljava/lang/Exception;
    const-string v14, "HintManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "e":Ljava/lang/Exception;
    .local v16, "e":Ljava/lang/Exception;
    const-string v0, "Failed to clean up session "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v6, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " for UID "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v6, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    .end local v6    # "session":Lcom/android/server/power/hint/HintManagerService$AppHintSession;
    .end local v12    # "start":J
    .end local v16    # "e":Ljava/lang/Exception;
    :goto_3
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v1, p0

    goto :goto_2

    :cond_5
    nop

    .line 1146
    .end local v5    # "i":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    const/4 v0, 0x0

    aget v6, v11, v0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;->logCleanUpMetrics(I[I[JIIZ)V

    goto :goto_6

    .line 1119
    .end local v3    # "invalidTidCntList":[I
    .end local v4    # "durationList":[J
    .end local v9    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;"
    .end local v10    # "checkedTids":Landroid/util/SparseIntArray;
    .end local v11    # "totalTidCnt":[I
    .local v0, "tokenMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;>;"
    :goto_4
    :try_start_2
    monitor-exit v3

    return-void

    .line 1128
    .end local v0    # "tokenMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;>;"
    :goto_5
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1149
    .end local v2    # "uid":I
    .end local v7    # "isForeground":Z
    :cond_6
    :goto_6
    return-void
.end method
