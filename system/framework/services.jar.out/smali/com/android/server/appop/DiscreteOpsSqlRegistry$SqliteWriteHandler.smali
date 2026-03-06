.class Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;
.super Landroid/os/Handler;
.source "DiscreteOpsSqlRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/DiscreteOpsSqlRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SqliteWriteHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/appop/DiscreteOpsSqlRegistry;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/appop/DiscreteOpsSqlRegistry;
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

    .line 362
    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    .line 363
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 364
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 368
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 413
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 396
    :try_start_1
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->-$$Nest$mevictOldAppOpEvents(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;)Ljava/util/List;

    move-result-object v2

    .line 398
    .local v2, "evictedEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    move-result-object v3

    .line 399
    invoke-virtual {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->capacity()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 400
    iget-object v3, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->-$$Nest$fgetmCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 401
    iget-object v3, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->clear()V

    goto :goto_0

    .line 403
    .end local v2    # "evictedEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    :catchall_0
    move-exception v2

    goto :goto_1

    .restart local v2    # "evictedEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    :try_start_2
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpsDbHelper(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsDbHelper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/appop/DiscreteOpsDbHelper;->insertDiscreteOps(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 407
    .end local v2    # "evictedEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    move-result-object v0

    invoke-static {}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$sfgetDB_WRITE_INTERVAL()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 412
    :cond_1
    goto/16 :goto_3

    .line 407
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 403
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 407
    .restart local p0    # "this":Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :goto_2
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 408
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    move-result-object v2

    invoke-static {}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$sfgetDB_WRITE_INTERVAL()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 411
    :cond_2
    throw v0

    .line 387
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryCutoff:J

    sub-long/2addr v0, v2

    .line 388
    .local v0, "cutOffTimeStamp":J
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpsDbHelper(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsDbHelper;

    move-result-object v2

    const-string v3, "DELETE FROM app_op_accesses WHERE access_time < ?"

    .line 390
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 388
    invoke-virtual {v2, v3, v4}, Lcom/android/server/appop/DiscreteOpsDbHelper;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    .end local v0    # "cutOffTimeStamp":J
    goto :goto_3

    .line 372
    :pswitch_2
    const/4 v0, 0x2

    :try_start_5
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    move-result-object v2

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 373
    :try_start_6
    iget-object v3, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->-$$Nest$mevictOldAppOpEvents(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;)Ljava/util/List;

    move-result-object v3

    .line 374
    .local v3, "evictedEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 375
    :try_start_7
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpsDbHelper(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsDbHelper;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/appop/DiscreteOpsDbHelper;->insertDiscreteOps(Ljava/util/List;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 377
    .end local v3    # "evictedEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    move-result-object v2

    invoke-static {}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$sfgetDB_WRITE_INTERVAL()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 380
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 381
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    move-result-object v1

    invoke-static {}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$sfgetEXPIRED_ENTRY_DELETION_INTERVAL()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 385
    :cond_3
    nop

    .line 415
    :goto_3
    return-void

    .line 377
    :catchall_2
    move-exception v2

    goto :goto_4

    .line 374
    :catchall_3
    move-exception v3

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .end local p0    # "this":Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 377
    .restart local p0    # "this":Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :goto_4
    iget-object v3, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    move-result-object v3

    invoke-static {}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$sfgetDB_WRITE_INTERVAL()J

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 380
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 381
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    move-result-object v1

    invoke-static {}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$sfgetEXPIRED_ENTRY_DELETION_INTERVAL()J

    move-result-wide v3

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 384
    :cond_4
    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method removeAllPendingMessages()V
    .locals 1

    .line 418
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 419
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 420
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 421
    return-void
.end method
