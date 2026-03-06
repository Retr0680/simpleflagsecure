.class public abstract Lcom/android/server/am/BroadcastQueue;
.super Ljava/lang/Object;
.source "BroadcastQueue.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BroadcastQueue"

.field public static final TAG_DUMP:Ljava/lang/String; = "broadcast_queue_dump"


# instance fields
.field final mHandler:Landroid/os/Handler;

.field final mHistory:Lcom/android/server/am/BroadcastHistory;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mSkipPolicy:Lcom/android/server/am/BroadcastSkipPolicy;


# direct methods
.method public static synthetic $r8$lambda$6U3hn8U3Ba60Eiz62EmylzEwrSc(Lcom/android/server/am/BroadcastQueue;Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BroadcastQueue;->lambda$dumpToDropBoxLocked$0(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Lcom/android/server/am/BroadcastSkipPolicy;Lcom/android/server/am/BroadcastHistory;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "skipPolicy"    # Lcom/android/server/am/BroadcastSkipPolicy;
    .param p4, "history"    # Lcom/android/server/am/BroadcastHistory;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 57
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Landroid/os/Handler;

    .line 58
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lcom/android/server/am/BroadcastQueue;->mSkipPolicy:Lcom/android/server/am/BroadcastSkipPolicy;

    .line 59
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    .line 60
    return-void
.end method

.method static checkState(ZLjava/lang/String;)V
    .locals 1
    .param p0, "expression"    # Z
    .param p1, "msg"    # Ljava/lang/String;

    .line 71
    if-eqz p0, :cond_0

    .line 74
    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private synthetic lambda$dumpToDropBoxLocked$0(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 13
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v0

    .line 265
    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v4, v0

    .line 266
    .local v4, "pw":Ljava/io/PrintWriter;
    :try_start_1
    const-string v0, "Message: "

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v4, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 268
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p2

    .end local p2    # "fd":Ljava/io/FileDescriptor;
    .local v3, "fd":Ljava/io/FileDescriptor;
    :try_start_2
    invoke-virtual/range {v2 .. v12}, Lcom/android/server/am/BroadcastQueue;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Z)Z

    .line 269
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 270
    :try_start_3
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v4    # "pw":Ljava/io/PrintWriter;
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 271
    .end local v1    # "out":Ljava/io/FileOutputStream;
    return-void

    .line 264
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_2

    .restart local v4    # "pw":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v0

    move-object p2, v0

    goto :goto_0

    .end local v3    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "fd":Ljava/io/FileDescriptor;
    :catchall_2
    move-exception v0

    move-object v3, p2

    move-object p2, v0

    .end local p2    # "fd":Ljava/io/FileDescriptor;
    .restart local v3    # "fd":Ljava/io/FileDescriptor;
    :goto_0
    :try_start_4
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_5
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    .end local p0    # "this":Lcom/android/server/am/BroadcastQueue;
    .end local p1    # "msg":Ljava/lang/String;
    :goto_1
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v4    # "pw":Ljava/io/PrintWriter;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/am/BroadcastQueue;
    .restart local p1    # "msg":Ljava/lang/String;
    .restart local p2    # "fd":Ljava/io/FileDescriptor;
    :catchall_4
    move-exception v0

    move-object v3, p2

    move-object p2, v0

    .end local p2    # "fd":Ljava/io/FileDescriptor;
    .restart local v3    # "fd":Ljava/io/FileDescriptor;
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v0

    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p2
.end method

.method static logv(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 67
    const-string v0, "BroadcastQueue"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method static logw(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 63
    const-string v0, "BroadcastQueue"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method static traceBegin(Ljava/lang/String;)I
    .locals 4
    .param p0, "methodName"    # Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 78
    .local v0, "cookie":I
    const-wide/16 v1, 0x40

    const-string v3, "BroadcastQueue"

    invoke-static {v1, v2, v3, p0, v0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 80
    return v0
.end method

.method static traceEnd(I)V
    .locals 3
    .param p0, "cookie"    # I

    .line 84
    const-wide/16 v0, 0x40

    const-string v2, "BroadcastQueue"

    invoke-static {v0, v1, v2, p0}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 86
    return-void
.end method


# virtual methods
.method public abstract cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation
.end method

.method public abstract describeStateLocked()Ljava/lang/String;
.end method

.method public abstract dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
.end method

.method public abstract dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public dumpToDropBoxLocked(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 263
    const-class v0, Lcom/android/server/DropBoxManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerInternal;

    new-instance v1, Lcom/android/server/am/BroadcastQueue$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/BroadcastQueue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BroadcastQueue;Ljava/lang/String;)V

    const/4 v2, 0x2

    const-string v3, "broadcast_queue_dump"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/DropBoxManagerInternal;->addEntry(Ljava/lang/String;Lcom/android/server/DropBoxManagerInternal$EntrySource;I)V

    .line 272
    return-void
.end method

.method public abstract enqueueBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
.end method

.method public abstract finishReceiverLocked(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z
.end method

.method public forceDelayBroadcastDelivery(Ljava/lang/String;J)V
    .locals 0
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "delayedDurationMs"    # J

    .line 241
    return-void
.end method

.method public abstract getPreferredSchedulingGroupLocked(Lcom/android/server/am/ProcessRecord;)I
.end method

.method public abstract isBeyondBarrierLocked(J)Z
.end method

.method public abstract isDispatchedLocked(Landroid/content/Intent;)Z
.end method

.method public abstract isIdleLocked()Z
.end method

.method public abstract onApplicationAttachedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/am/BroadcastDeliveryFailedException;
        }
    .end annotation
.end method

.method public abstract onApplicationCleanupLocked(Lcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract onApplicationProblemLocked(Lcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract onApplicationTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract onProcessFreezableChangedLocked(Lcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract start(Landroid/content/ContentResolver;)V
.end method

.method public abstract waitForBarrier(Ljava/io/PrintWriter;)V
.end method

.method public abstract waitForDispatched(Landroid/content/Intent;Ljava/io/PrintWriter;)V
.end method

.method public abstract waitForIdle(Ljava/io/PrintWriter;)V
.end method
