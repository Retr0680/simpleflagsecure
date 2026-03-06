.class Lcom/android/server/wm/WindowTracingPerfetto;
.super Lcom/android/server/wm/WindowTracing;
.source "WindowTracingPerfetto.java"


# static fields
.field private static final PRODUCTION_DATA_SOURCE_NAME:Ljava/lang/String; = "android.windowmanager"

.field private static final TAG:Ljava/lang/String; = "WindowTracing"


# instance fields
.field private final mCountSessionsOnFrame:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mCountSessionsOnTransaction:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mDataSource:Lcom/android/server/wm/WindowTracingDataSource;


# direct methods
.method public static synthetic $r8$lambda$FVcHj5D-VNRpwx8tAWr3qy03_iI(Lcom/android/server/wm/WindowTracingPerfetto;ZZLjava/lang/String;Landroid/tracing/perfetto/TracingContext;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowTracingPerfetto;->lambda$log$0(ZZLjava/lang/String;Landroid/tracing/perfetto/TracingContext;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "choreographer"    # Landroid/view/Choreographer;

    .line 42
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    const-string v1, "android.windowmanager"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/wm/WindowTracingPerfetto;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;Lcom/android/server/wm/WindowManagerGlobalLock;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;Lcom/android/server/wm/WindowManagerGlobalLock;Ljava/lang/String;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "choreographer"    # Landroid/view/Choreographer;
    .param p3, "globalLock"    # Lcom/android/server/wm/WindowManagerGlobalLock;
    .param p4, "dataSourceName"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/WindowTracing;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;Lcom/android/server/wm/WindowManagerGlobalLock;)V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowTracingPerfetto;->mCountSessionsOnFrame:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowTracingPerfetto;->mCountSessionsOnTransaction:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 49
    new-instance v0, Lcom/android/server/wm/WindowTracingDataSource;

    invoke-direct {v0, p0, p4}, Lcom/android/server/wm/WindowTracingDataSource;-><init>(Lcom/android/server/wm/WindowTracingPerfetto;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowTracingPerfetto;->mDataSource:Lcom/android/server/wm/WindowTracingDataSource;

    .line 50
    return-void
.end method

.method private synthetic lambda$log$0(ZZLjava/lang/String;Landroid/tracing/perfetto/TracingContext;)V
    .locals 11
    .param p1, "isStartLogEvent"    # Z
    .param p2, "isOnFrameLogEvent"    # Z
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/tracing/perfetto/TracingContext;

    .line 113
    nop

    .line 114
    invoke-virtual {p4}, Landroid/tracing/perfetto/TracingContext;->getCustomTlsState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowTracingDataSource$TlsState;

    iget-object v0, v0, Lcom/android/server/wm/WindowTracingDataSource$TlsState;->mConfig:Lcom/android/server/wm/WindowTracingDataSource$Config;

    .line 116
    .local v0, "dataSourceConfig":Lcom/android/server/wm/WindowTracingDataSource$Config;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 117
    invoke-virtual {p4}, Landroid/tracing/perfetto/TracingContext;->getCustomTlsState()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowTracingDataSource$TlsState;

    iget-object v3, v3, Lcom/android/server/wm/WindowTracingDataSource$TlsState;->mIsStarting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 118
    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    .line 119
    .local v1, "isDataSourceStarting":Z
    if-nez v1, :cond_0

    .line 120
    return-void

    .line 119
    :cond_0
    nop

    .line 122
    .end local v1    # "isDataSourceStarting":Z
    goto :goto_0

    :cond_1
    if-eqz p2, :cond_5

    .line 123
    iget v3, v0, Lcom/android/server/wm/WindowTracingDataSource$Config;->mLogFrequency:I

    if-nez v3, :cond_2

    move v1, v2

    .line 125
    .local v1, "isDataSourceLoggingOnFrame":Z
    :cond_2
    if-nez v1, :cond_3

    .line 126
    return-void

    .line 125
    :cond_3
    nop

    .line 128
    .end local v1    # "isDataSourceLoggingOnFrame":Z
    :cond_4
    goto :goto_0

    :cond_5
    iget v1, v0, Lcom/android/server/wm/WindowTracingDataSource$Config;->mLogFrequency:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 131
    return-void

    .line 134
    :goto_0
    invoke-virtual {p4}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object v4

    .line 135
    .local v4, "os":Landroid/util/proto/ProtoOutputStream;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    .line 136
    .local v7, "timestamp":J
    const-wide v1, 0x10400000008L

    invoke-virtual {v4, v1, v2, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 137
    nop

    .line 138
    const-wide v1, 0x10b00000070L

    invoke-virtual {v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 139
    .local v1, "tokenWinscopeExtensions":J
    nop

    .line 140
    const-wide v5, 0x10b00000006L

    invoke-virtual {v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 141
    .local v9, "tokenExtensionsField":J
    iget v5, v0, Lcom/android/server/wm/WindowTracingDataSource$Config;->mLogLevel:I

    move-object v3, p0

    move-object v6, p3

    .end local p3    # "where":Ljava/lang/String;
    .local v6, "where":Ljava/lang/String;
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/WindowTracing;->dumpToProto(Landroid/util/proto/ProtoOutputStream;ILjava/lang/String;J)V

    .line 142
    invoke-virtual {v4, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 143
    invoke-virtual {v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 144
    return-void
.end method


# virtual methods
.method getStatus()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracingPerfetto;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Enabled"

    goto :goto_0

    :cond_0
    const-string v1, "Disabled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nSessions logging \'on frame\': "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowTracingPerfetto;->mCountSessionsOnFrame:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 85
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nSessions logging \'on transaction\': "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowTracingPerfetto;->mCountSessionsOnTransaction:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 87
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    return-object v0
.end method

.method isEnabled()Z
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/android/server/wm/WindowTracingPerfetto;->mCountSessionsOnFrame:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowTracingPerfetto;->mCountSessionsOnTransaction:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 4
    .param p1, "where"    # Ljava/lang/String;

    .line 109
    :try_start_0
    const-string v0, "trace.enable"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 110
    .local v0, "isStartLogEvent":Z
    :goto_0
    const-string v3, "onFrame"

    if-ne p1, v3, :cond_1

    move v1, v2

    .line 112
    .local v1, "isOnFrameLogEvent":Z
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowTracingPerfetto;->mDataSource:Lcom/android/server/wm/WindowTracingDataSource;

    new-instance v3, Lcom/android/server/wm/WindowTracingPerfetto$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/android/server/wm/WindowTracingPerfetto$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowTracingPerfetto;ZZLjava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/tracing/perfetto/DataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v0    # "isStartLogEvent":Z
    .end local v1    # "isOnFrameLogEvent":Z
    goto :goto_1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WindowTracing"

    const-string v2, "Exception while tracing state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method onShellCommand(Landroid/os/ShellCommand;)I
    .locals 2
    .param p1, "shell"    # Landroid/os/ShellCommand;

    .line 74
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 75
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Shell commands are ignored. Any type of action should be performed through perfetto."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    const/4 v1, -0x1

    return v1
.end method

.method onStart(Lcom/android/server/wm/WindowTracingDataSource$Config;)V
    .locals 4
    .param p1, "config"    # Lcom/android/server/wm/WindowTracingDataSource$Config;

    .line 161
    iget v0, p1, Lcom/android/server/wm/WindowTracingDataSource$Config;->mLogFrequency:I

    const-string v1, ")"

    const-string v2, "WindowTracing"

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Started session (frequency=FRAME, log level="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/wm/WindowTracingDataSource$Config;->mLogFrequency:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/android/server/wm/WindowTracingPerfetto;->mCountSessionsOnFrame:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 164
    :cond_0
    iget v0, p1, Lcom/android/server/wm/WindowTracingDataSource$Config;->mLogFrequency:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Started session (frequency=TRANSACTION, log level="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/wm/WindowTracingDataSource$Config;->mLogFrequency:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/android/server/wm/WindowTracingPerfetto;->mCountSessionsOnTransaction:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 170
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracingPerfetto;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v0, "trace.enable"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowTracingPerfetto;->log(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method onStop(Lcom/android/server/wm/WindowTracingDataSource$Config;)V
    .locals 3
    .param p1, "config"    # Lcom/android/server/wm/WindowTracingDataSource$Config;

    .line 176
    iget v0, p1, Lcom/android/server/wm/WindowTracingDataSource$Config;->mLogFrequency:I

    const-string v1, "WindowTracing"

    if-nez v0, :cond_0

    .line 177
    const-string v0, "Stopped session (frequency=FRAME)"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/android/server/wm/WindowTracingPerfetto;->mCountSessionsOnFrame:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 179
    const-string v0, "Stopped session (frequency=TRANSACTION)"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    :cond_0
    iget v0, p1, Lcom/android/server/wm/WindowTracingDataSource$Config;->mLogFrequency:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/server/wm/WindowTracingPerfetto;->mCountSessionsOnTransaction:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 184
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracingPerfetto;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method

.method protected saveForBugreportInternal(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 103
    const-string v0, "Tracing snapshot for bugreport must be handled through perfetto"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method setBufferCapacity(ILjava/io/PrintWriter;)V
    .locals 1
    .param p1, "capacity"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 64
    const-string v0, "Buffer capacity must be configured through perfetto"

    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method setLogFrequency(ZLjava/io/PrintWriter;)V
    .locals 1
    .param p1, "onFrame"    # Z
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 59
    const-string v0, "Log frequency must be configured through perfetto"

    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method setLogLevel(ILjava/io/PrintWriter;)V
    .locals 1
    .param p1, "logLevel"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 54
    const-string v0, "Log level must be configured through perfetto"

    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method protected shouldLogOnFrame()Z
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/server/wm/WindowTracingPerfetto;->mCountSessionsOnFrame:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected shouldLogOnTransaction()Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/WindowTracingPerfetto;->mCountSessionsOnTransaction:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected startTraceInternal(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 93
    const-string v0, "Tracing must be started through perfetto"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method protected stopTraceInternal(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 98
    const-string v0, "Tracing must be stopped through perfetto"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 99
    return-void
.end method
