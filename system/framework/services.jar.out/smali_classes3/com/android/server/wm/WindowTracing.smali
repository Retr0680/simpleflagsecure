.class abstract Lcom/android/server/wm/WindowTracing;
.super Ljava/lang/Object;
.source "WindowTracing.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "WindowTracing"

.field protected static final WHERE_ON_FRAME:Ljava/lang/String; = "onFrame"

.field protected static final WHERE_START_TRACING:Ljava/lang/String; = "trace.enable"


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private final mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private mScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$PCVd_OZa7AR1VUIpYvVBTxPVKdE(Lcom/android/server/wm/WindowTracing;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowTracing;->lambda$new$0(J)V

    return-void
.end method

.method protected constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;Lcom/android/server/wm/WindowManagerGlobalLock;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "choreographer"    # Landroid/view/Choreographer;
    .param p3, "globalLock"    # Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/server/wm/WindowTracing$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowTracing$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowTracing;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowTracing;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/wm/WindowTracing;->mScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    iput-object p2, p0, Lcom/android/server/wm/WindowTracing;->mChoreographer:Landroid/view/Choreographer;

    .line 68
    iput-object p1, p0, Lcom/android/server/wm/WindowTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 69
    iput-object p3, p0, Lcom/android/server/wm/WindowTracing;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 70
    return-void
.end method

.method static createDefaultAndStartLooper(Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;)Lcom/android/server/wm/WindowTracing;
    .locals 1
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "choreographer"    # Landroid/view/Choreographer;

    .line 59
    nop

    .line 60
    new-instance v0, Lcom/android/server/wm/WindowTracingLegacy;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/WindowTracingLegacy;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;)V

    return-object v0
.end method

.method private synthetic lambda$new$0(J)V
    .locals 1
    .param p1, "frameTimeNanos"    # J

    .line 52
    const-string v0, "onFrame"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowTracing;->log(Ljava/lang/String;)V

    return-void
.end method

.method private schedule()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/wm/WindowTracing;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 151
    return-void
.end method


# virtual methods
.method protected dumpToProto(Landroid/util/proto/ProtoOutputStream;ILjava/lang/String;J)V
    .locals 8
    .param p1, "os"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "logLevel"    # I
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "elapsedRealtimeNanos"    # J

    .line 163
    const-string v0, "traceStateLocked"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 165
    const-wide v3, 0x10600000001L

    const/4 v0, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1, v3, v4, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 166
    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 168
    const-wide v3, 0x10b00000003L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 169
    .local v3, "token":J
    iget-object v6, p0, Lcom/android/server/wm/WindowTracing;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :try_start_1
    iget-object v7, p0, Lcom/android/server/wm/WindowTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, p1, p2}, Lcom/android/server/wm/WindowManagerService;->dumpDebugLocked(Landroid/util/proto/ProtoOutputStream;I)V

    .line 171
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 172
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    .end local v3    # "token":J
    const-string v3, "onFrame"

    if-ne p3, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v5

    .line 177
    .local v0, "isOnFrameLogEvent":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 178
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/WindowTracing;->mScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 180
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 181
    .end local v0    # "isOnFrameLogEvent":Z
    goto :goto_4

    .line 176
    :catchall_0
    move-exception v3

    goto :goto_5

    .line 173
    :catch_0
    move-exception v3

    goto :goto_2

    .line 171
    .restart local v3    # "token":J
    :catchall_1
    move-exception v7

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local p0    # "this":Lcom/android/server/wm/WindowTracing;
    .end local p1    # "os":Landroid/util/proto/ProtoOutputStream;
    .end local p2    # "logLevel":I
    .end local p3    # "where":Ljava/lang/String;
    .end local p4    # "elapsedRealtimeNanos":J
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 173
    .end local v3    # "token":J
    .restart local p0    # "this":Lcom/android/server/wm/WindowTracing;
    .restart local p1    # "os":Landroid/util/proto/ProtoOutputStream;
    .restart local p2    # "logLevel":I
    .restart local p3    # "where":Ljava/lang/String;
    .restart local p4    # "elapsedRealtimeNanos":J
    :goto_2
    nop

    .line 174
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v4, "WindowTracing"

    const-string v6, "Exception while tracing state"

    invoke-static {v4, v6, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 176
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    const-string v3, "onFrame"

    if-ne p3, v3, :cond_2

    goto :goto_3

    :cond_2
    move v0, v5

    .line 177
    .restart local v0    # "isOnFrameLogEvent":Z
    :goto_3
    if-eqz v0, :cond_1

    .line 178
    goto :goto_1

    .line 182
    .end local v0    # "isOnFrameLogEvent":Z
    :goto_4
    return-void

    .line 176
    :goto_5
    const-string v4, "onFrame"

    if-ne p3, v4, :cond_3

    goto :goto_6

    :cond_3
    move v0, v5

    .line 177
    .restart local v0    # "isOnFrameLogEvent":Z
    :goto_6
    if-eqz v0, :cond_4

    .line 178
    iget-object v4, p0, Lcom/android/server/wm/WindowTracing;->mScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 180
    :cond_4
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 181
    .end local v0    # "isOnFrameLogEvent":Z
    throw v3
.end method

.method abstract getStatus()Ljava/lang/String;
.end method

.method abstract isEnabled()Z
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "msg"    # Ljava/lang/String;

    .line 185
    const-string v0, "WindowTracing"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 190
    :cond_0
    return-void
.end method

.method logState(Ljava/lang/String;)V
    .locals 1
    .param p1, "where"    # Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracing;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    return-void

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracing;->shouldLogOnTransaction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowTracing;->log(Ljava/lang/String;)V

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracing;->shouldLogOnFrame()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    invoke-direct {p0}, Lcom/android/server/wm/WindowTracing;->schedule()V

    .line 140
    :cond_2
    return-void
.end method

.method abstract onShellCommand(Landroid/os/ShellCommand;)I
.end method

.method saveForBugreport(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 103
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "Error: Tracing is not supported on user builds."

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 105
    return-void

    .line 107
    :cond_0
    nop

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowTracing;->saveForBugreportInternal(Ljava/io/PrintWriter;)V

    .line 113
    return-void
.end method

.method protected abstract saveForBugreportInternal(Ljava/io/PrintWriter;)V
.end method

.method abstract setBufferCapacity(ILjava/io/PrintWriter;)V
.end method

.method abstract setLogFrequency(ZLjava/io/PrintWriter;)V
.end method

.method abstract setLogLevel(ILjava/io/PrintWriter;)V
.end method

.method protected abstract shouldLogOnFrame()Z
.end method

.method protected abstract shouldLogOnTransaction()Z
.end method

.method startTrace(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 73
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "Error: Tracing is not supported on user builds."

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 75
    return-void

    .line 77
    :cond_0
    nop

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowTracing;->startTraceInternal(Ljava/io/PrintWriter;)V

    .line 81
    return-void
.end method

.method protected abstract startTraceInternal(Ljava/io/PrintWriter;)V
.end method

.method stopTrace(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 84
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "Error: Tracing is not supported on user builds."

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 86
    return-void

    .line 88
    :cond_0
    nop

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowTracing;->stopTraceInternal(Ljava/io/PrintWriter;)V

    .line 92
    return-void
.end method

.method protected abstract stopTraceInternal(Ljava/io/PrintWriter;)V
.end method
