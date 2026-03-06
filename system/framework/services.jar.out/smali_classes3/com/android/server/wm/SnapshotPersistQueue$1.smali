.class Lcom/android/server/wm/SnapshotPersistQueue$1;
.super Ljava/lang/Thread;
.source "SnapshotPersistQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SnapshotPersistQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/SnapshotPersistQueue;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SnapshotPersistQueue;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/SnapshotPersistQueue;
    .param p2, "arg1"    # Ljava/lang/String;
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

    .line 225
    iput-object p1, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 227
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 230
    :goto_0
    const/4 v0, 0x0

    .line 231
    .local v0, "isReadyToWrite":Z
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v1}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmLock(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v2}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmPaused(Lcom/android/server/wm/SnapshotPersistQueue;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    const/4 v2, 0x0

    .local v2, "next":Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;
    goto :goto_1

    .line 235
    .end local v2    # "next":Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v2}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmWriteQueue(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;

    .line 236
    .restart local v2    # "next":Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;
    if-eqz v2, :cond_3

    .line 237
    iget-object v3, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v3}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/wm/SnapshotPersistQueue;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->isReady(Lcom/android/server/pm/UserManagerInternal;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    const/4 v0, 0x1

    .line 239
    invoke-virtual {v2}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->onDequeuedLocked()V

    goto :goto_1

    .line 250
    .end local v2    # "next":Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;
    :catchall_0
    move-exception v2

    goto/16 :goto_4

    .line 240
    .restart local v2    # "next":Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v3}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmShutdown(Lcom/android/server/wm/SnapshotPersistQueue;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 241
    iget-object v3, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v3}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmWriteQueue(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 245
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->onDequeuedLocked()V

    .line 246
    const/4 v2, 0x0

    .line 250
    :cond_3
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    if-eqz v2, :cond_5

    .line 252
    if-eqz v0, :cond_4

    .line 253
    invoke-virtual {v2}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->write()V

    .line 255
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v1}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmShutdown(Lcom/android/server/wm/SnapshotPersistQueue;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 256
    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 259
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v1}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmLock(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 260
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v1}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmWriteQueue(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    .line 261
    .local v1, "writeQueueEmpty":Z
    if-nez v1, :cond_6

    iget-object v4, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v4}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmPaused(Lcom/android/server/wm/SnapshotPersistQueue;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 262
    monitor-exit v3

    goto :goto_0

    .line 273
    .end local v1    # "writeQueueEmpty":Z
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 264
    .restart local v1    # "writeQueueEmpty":Z
    :cond_6
    iget-object v4, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v4}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmShutdown(Lcom/android/server/wm/SnapshotPersistQueue;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v1, :cond_7

    .line 265
    iget-object v4, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v4}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmLock(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 268
    :cond_7
    :try_start_2
    iget-object v4, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v4, v1}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fputmQueueIdling(Lcom/android/server/wm/SnapshotPersistQueue;Z)V

    .line 269
    iget-object v4, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v4}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmLock(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    .line 270
    iget-object v4, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fputmQueueIdling(Lcom/android/server/wm/SnapshotPersistQueue;Z)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 272
    goto :goto_2

    .line 271
    :catch_0
    move-exception v4

    .line 273
    .end local v1    # "writeQueueEmpty":Z
    :goto_2
    :try_start_3
    monitor-exit v3

    .line 274
    .end local v0    # "isReadyToWrite":Z
    .end local v2    # "next":Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;
    goto/16 :goto_0

    .line 273
    .restart local v0    # "isReadyToWrite":Z
    .restart local v2    # "next":Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;
    :goto_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 250
    .end local v2    # "next":Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;
    :goto_4
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method
