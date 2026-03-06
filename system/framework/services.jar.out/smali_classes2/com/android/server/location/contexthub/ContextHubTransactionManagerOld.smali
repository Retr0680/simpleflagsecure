.class Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;
.super Lcom/android/server/location/contexthub/ContextHubTransactionManager;
.source "ContextHubTransactionManagerOld.java"


# direct methods
.method public static synthetic $r8$lambda$5NJcrXmSpvxMyCP105oMvngNPtk(Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;->lambda$processMessageTransactions$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$VmZ6k_7Rl9ocAYbdwuZHgVWVeZ8(Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;->lambda$addTransaction$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$_3WcriFQoTh3QJXvw1pdtXqGiFM(Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;->lambda$startNextTransaction$2(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u1sfPDN-TC04HIRDjRG69yXvrSM(Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;->lambda$onMessageDeliveryResponse$1()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Lcom/android/server/location/contexthub/NanoAppStateManager;)V
    .locals 0
    .param p1, "contextHubProxy"    # Lcom/android/server/location/contexthub/IContextHubWrapper;
    .param p2, "clientManager"    # Lcom/android/server/location/contexthub/ContextHubClientManager;
    .param p3, "nanoAppStateManager"    # Lcom/android/server/location/contexthub/NanoAppStateManager;

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;-><init>(Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Lcom/android/server/location/contexthub/NanoAppStateManager;)V

    .line 50
    return-void
.end method

.method private completeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;I)V
    .locals 1
    .param p1, "transaction"    # Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .param p2, "result"    # I

    .line 362
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;->completeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;ILjava/util/Iterator;)V

    .line 363
    return-void
.end method

.method private completeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;ILjava/util/Iterator;)V
    .locals 3
    .param p1, "transaction"    # Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .param p2, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/location/contexthub/ContextHubServiceTransaction;",
            "I",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/location/contexthub/ContextHubServiceTransaction;",
            ">;>;)V"
        }
    .end annotation

    .line 376
    .local p3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/contexthub/ContextHubServiceTransaction;>;>;"
    invoke-virtual {p1, p2}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransactionComplete(I)V

    .line 378
    if-nez p3, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getMessageSequenceNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 381
    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    .line 383
    :goto_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageOwnerIdActiveSet:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getOwnerId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successfully completed reliable message transaction with message sequence number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getMessageSequenceNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    const-string v1, "ContextHubTransactionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return-void
.end method

.method private synthetic lambda$addTransaction$0()V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;->processMessageTransactions()V

    return-void
.end method

.method private synthetic lambda$onMessageDeliveryResponse$1()V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;->processMessageTransactions()V

    return-void
.end method

.method private synthetic lambda$processMessageTransactions$3()V
    .locals 0

    .line 346
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;->processMessageTransactions()V

    return-void
.end method

.method private synthetic lambda$startNextTransaction$2(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V
    .locals 3
    .param p1, "transaction"    # Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 259
    monitor-enter p0

    .line 260
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    const-string v0, "ContextHubTransactionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " timed out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransactionComplete(I)V

    .line 265
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;->removeTransactionAndStartNext()V

    goto :goto_0

    .line 267
    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 268
    return-void

    .line 267
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized processMessageTransactions()V
    .locals 21

    move-object/from16 v1, p0

    monitor-enter p0

    .line 297
    nop

    .line 301
    :try_start_0
    iget-object v0, v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 303
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 296
    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;
    :catchall_0
    move-exception v0

    goto/16 :goto_7

    .line 306
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    .line 307
    .local v3, "now":J
    const-wide v5, 0x7fffffffffffffffL

    .line 310
    .local v5, "nextExecutionTime":J
    :goto_1
    const/4 v0, 0x0

    .line 311
    .local v0, "continueProcessing":Z
    iget-object v7, v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    .line 312
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 313
    .local v7, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/contexthub/ContextHubServiceTransaction;>;>;"
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 314
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 315
    .local v8, "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    invoke-virtual {v8}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getOwnerId()J

    move-result-wide v9

    .line 316
    .local v9, "ownerId":J
    invoke-virtual {v8}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getNumCompletedStartCalls()I

    move-result v11

    .line 317
    .local v11, "numCompletedStartCalls":I
    if-nez v11, :cond_1

    iget-object v12, v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageOwnerIdActiveSet:Ljava/util/Set;

    .line 318
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 319
    goto :goto_2

    .line 322
    :cond_1
    invoke-virtual {v8}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getNextRetryTime()J

    move-result-wide v12

    .line 323
    .local v12, "nextRetryTime":J
    invoke-virtual {v8}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTimeoutTime()J

    move-result-wide v14

    .line 324
    .local v14, "timeoutTime":J
    cmp-long v16, v14, v3

    const/16 v17, 0x1

    if-gtz v16, :cond_2

    move/from16 v16, v17

    goto :goto_3

    :cond_2
    move/from16 v16, v2

    .line 325
    .local v16, "transactionTimedOut":Z
    :goto_3
    cmp-long v18, v12, v3

    if-gtz v18, :cond_3

    const/4 v2, 0x3

    if-le v11, v2, :cond_3

    goto :goto_4

    :cond_3
    const/16 v17, 0x0

    .line 328
    .local v17, "transactionHitMaxRetries":Z
    :goto_4
    if-nez v16, :cond_7

    if-eqz v17, :cond_4

    move-wide/from16 v19, v3

    goto :goto_5

    .line 333
    :cond_4
    cmp-long v2, v12, v3

    if-lez v2, :cond_5

    if-gtz v11, :cond_6

    .line 334
    :cond_5
    invoke-direct {v1, v8, v3, v4}, Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;->startMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;J)V

    .line 337
    :cond_6
    move-wide/from16 v19, v3

    .end local v3    # "now":J
    .local v19, "now":J
    invoke-virtual {v8}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getNextRetryTime()J

    move-result-wide v2

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 338
    .end local v5    # "nextExecutionTime":J
    .local v2, "nextExecutionTime":J
    invoke-virtual {v8}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTimeoutTime()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-wide v5, v4

    .end local v2    # "nextExecutionTime":J
    .restart local v5    # "nextExecutionTime":J
    goto :goto_6

    .line 328
    .end local v19    # "now":J
    .restart local v3    # "now":J
    :cond_7
    move-wide/from16 v19, v3

    .line 329
    .end local v3    # "now":J
    .restart local v19    # "now":J
    :goto_5
    const/4 v2, 0x6

    invoke-direct {v1, v8, v2, v7}, Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;->completeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;ILjava/util/Iterator;)V

    .line 331
    const/4 v0, 0x1

    .line 340
    .end local v8    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .end local v9    # "ownerId":J
    .end local v11    # "numCompletedStartCalls":I
    .end local v12    # "nextRetryTime":J
    .end local v14    # "timeoutTime":J
    .end local v16    # "transactionTimedOut":Z
    .end local v17    # "transactionHitMaxRetries":Z
    :goto_6
    move-wide/from16 v3, v19

    const/4 v2, 0x0

    goto :goto_2

    .line 313
    .end local v19    # "now":J
    .restart local v3    # "now":J
    :cond_8
    move-wide/from16 v19, v3

    .line 341
    .end local v3    # "now":J
    .end local v7    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/contexthub/ContextHubServiceTransaction;>;>;"
    .restart local v19    # "now":J
    if-nez v0, :cond_a

    .line 343
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v5, v2

    if-gez v2, :cond_9

    .line 344
    iget-object v2, v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v3, Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;)V

    .line 348
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    sub-long v7, v5, v7

    sget-object v4, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_MIN_WAIT_TIME:Ljava/time/Duration;

    .line 349
    invoke-virtual {v4}, Ljava/time/Duration;->toNanos()J

    move-result-wide v9

    .line 347
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 345
    invoke-virtual {v2, v3, v7, v8, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    :cond_9
    monitor-exit p0

    return-void

    .line 341
    .restart local p0    # "this":Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;
    :cond_a
    move-wide/from16 v3, v19

    const/4 v2, 0x0

    goto/16 :goto_1

    .line 296
    .end local v0    # "continueProcessing":Z
    .end local v5    # "nextExecutionTime":J
    .end local v19    # "now":J
    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;
    :goto_7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private removeTransactionAndStartNext()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 233
    .local v0, "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setComplete()V

    .line 235
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 236
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;->startNextTransaction()V

    .line 238
    :cond_1
    return-void
.end method

.method private startMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;J)V
    .locals 6
    .param p1, "transaction"    # Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .param p2, "now"    # J

    .line 401
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getNumCompletedStartCalls()I

    move-result v0

    .line 402
    .local v0, "numCompletedStartCalls":I
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransact()I

    move-result v1

    .line 403
    .local v1, "result":I
    const-string v2, "ContextHubTransactionManager"

    if-nez v1, :cond_1

    .line 404
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    if-nez v0, :cond_0

    const-string/jumbo v4, "started"

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "retried"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " reliable message transaction with message sequence number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getMessageSequenceNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 404
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 411
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not start reliable message transaction with message sequence number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getMessageSequenceNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 411
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :goto_1
    sget-object v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_RETRY_WAIT_TIME:Ljava/time/Duration;

    invoke-virtual {v2}, Ljava/time/Duration;->toNanos()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-virtual {p1, v2, v3}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setNextRetryTime(J)V

    .line 421
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTimeoutTime()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 422
    sget-object v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_TIMEOUT:Ljava/time/Duration;

    invoke-virtual {v2}, Ljava/time/Duration;->toNanos()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-virtual {p1, v2, v3}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setTimeoutTime(J)V

    .line 424
    :cond_2
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setNumCompletedStartCalls(I)V

    .line 425
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageOwnerIdActiveSet:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getOwnerId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 426
    return-void
.end method

.method private startNextTransaction()V
    .locals 8

    .line 251
    const/4 v0, 0x1

    .line 252
    .local v0, "result":I
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 254
    .local v1, "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransact()I

    move-result v0

    .line 256
    if-nez v0, :cond_0

    .line 257
    new-instance v2, Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    .line 270
    .local v2, "onTimeoutFunc":Ljava/lang/Runnable;
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTimeout(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    .line 272
    .local v3, "timeoutMs":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 273
    invoke-virtual {v5, v2, v3, v4, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    goto :goto_1

    .line 274
    :catch_0
    move-exception v5

    .line 275
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "ContextHubTransactionManager"

    const-string v7, "Error when schedule a timer"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    .end local v2    # "onTimeoutFunc":Ljava/lang/Runnable;
    .end local v3    # "timeoutMs":J
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_2

    .line 278
    :cond_0
    nop

    .line 279
    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toTransactionResult(I)I

    move-result v2

    .line 278
    invoke-virtual {v1, v2}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransactionComplete(I)V

    .line 280
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 282
    .end local v1    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    :goto_2
    goto :goto_0

    .line 283
    :cond_1
    return-void
.end method


# virtual methods
.method declared-synchronized addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V
    .locals 3
    .param p1, "transaction"    # Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 66
    if-nez p1, :cond_0

    .line 67
    monitor-exit p0

    return-void

    .line 70
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    .line 71
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v0, v1, :cond_3

    .line 76
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    new-instance v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    .line 77
    nop

    .line 78
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTransactionType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 80
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getMessageSequenceNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 65
    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;
    .end local p1    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 83
    .restart local p1    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 85
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;->startNextTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 72
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Transaction queue is full (capacity = 10000)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    .end local p1    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized onHubReset()V
    .locals 3

    monitor-enter p0

    .line 199
    nop

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    .line 201
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 202
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/contexthub/ContextHubServiceTransaction;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    nop

    .line 204
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 203
    const/4 v2, 0x5

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;->completeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;ILjava/util/Iterator;)V

    goto :goto_0

    .line 198
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/contexthub/ContextHubServiceTransaction;>;>;"
    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    .local v0, "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    if-nez v0, :cond_1

    .line 210
    monitor-exit p0

    return-void

    .line 213
    .restart local p0    # "this":Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;->removeTransactionAndStartNext()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    .line 198
    .end local v0    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method declared-synchronized onMessageDeliveryResponse(IZ)V
    .locals 4
    .param p1, "messageSequenceNumber"    # I
    .param p2, "success"    # Z

    monitor-enter p0

    .line 125
    nop

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    .line 155
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 156
    .local v0, "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    if-nez v0, :cond_0

    .line 157
    const-string v1, "ContextHubTransactionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find reliable message transaction with message sequence number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 124
    .end local v0    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;
    .end local p1    # "messageSequenceNumber":I
    .end local p2    # "success":Z
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 165
    .restart local v0    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .restart local p1    # "messageSequenceNumber":I
    .restart local p2    # "success":Z
    :cond_0
    nop

    .line 167
    if-eqz p2, :cond_1

    .line 168
    const/4 v1, 0x0

    goto :goto_0

    .line 169
    :cond_1
    const/4 v1, 0x5

    .line 165
    :goto_0
    :try_start_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;->completeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;I)V

    .line 170
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    .line 124
    .end local v0    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .end local p1    # "messageSequenceNumber":I
    .end local p2    # "success":Z
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method declared-synchronized onQueryResponse(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;)V"
        }
    .end annotation

    .local p1, "nanoAppStateList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/NanoAppState;>;"
    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 182
    .local v0, "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    if-nez v0, :cond_0

    .line 183
    const-string v1, "ContextHubTransactionManager"

    const-string v2, "Received unexpected query response (no transaction pending)"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 180
    .end local v0    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;
    .end local p1    # "nanoAppStateList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/NanoAppState;>;"
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 186
    .restart local v0    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .restart local p1    # "nanoAppStateList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/NanoAppState;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTransactionType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 187
    const-string v1, "ContextHubTransactionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received unexpected query response (expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    .line 191
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v0, v1, p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onQueryResponse(ILjava/util/List;)V

    .line 192
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;->removeTransactionAndStartNext()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    .line 180
    .end local v0    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .end local p1    # "nanoAppStateList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/NanoAppState;>;"
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method declared-synchronized onTransactionResponse(IZ)V
    .locals 4
    .param p1, "transactionId"    # I
    .param p2, "success"    # Z

    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 100
    .local v0, "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    if-nez v0, :cond_0

    .line 101
    const-string v1, "ContextHubTransactionManager"

    const-string v2, "Received unexpected transaction response (no transaction pending)"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 98
    .end local v0    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;
    .end local p1    # "transactionId":I
    .end local p2    # "success":Z
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 104
    .restart local v0    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .restart local p1    # "transactionId":I
    .restart local p2    # "success":Z
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTransactionId()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 105
    const-string v1, "ContextHubTransactionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received unexpected transaction response (expected ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTransactionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", received ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 115
    :cond_1
    nop

    .line 116
    if-eqz p2, :cond_2

    .line 117
    const/4 v1, 0x0

    goto :goto_0

    .line 118
    :cond_2
    const/4 v1, 0x5

    .line 115
    :goto_0
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransactionComplete(I)V

    .line 119
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;->removeTransactionAndStartNext()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    .line 98
    .end local v0    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .end local p1    # "transactionId":I
    .end local p2    # "success":Z
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 432
    .local v1, "i":I
    monitor-enter p0

    .line 433
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 434
    .local v3, "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 435
    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v3}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    nop

    .end local v3    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    add-int/lit8 v1, v1, 0x1

    .line 439
    goto :goto_0

    .line 458
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 441
    :cond_0
    nop

    .line 443
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 444
    .restart local v3    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 445
    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v3}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    nop

    .end local v3    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    add-int/lit8 v1, v1, 0x1

    .line 449
    goto :goto_1

    .line 452
    :cond_1
    const-string v2, "Transaction History:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 454
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 455
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 456
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 454
    :cond_2
    nop

    .line 458
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 458
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
