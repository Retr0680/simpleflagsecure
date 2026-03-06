.class Lcom/android/server/wm/WindowTracingLegacy;
.super Lcom/android/server/wm/WindowTracing;
.source "WindowTracingLegacy.java"


# static fields
.field private static final BUFFER_CAPACITY_ALL:I = 0x1400000

.field private static final BUFFER_CAPACITY_CRITICAL:I = 0x500000

.field private static final BUFFER_CAPACITY_TRIM:I = 0xa00000

.field private static final MAGIC_NUMBER_VALUE:J = 0x45434152544e4957L

.field private static final TAG:Ljava/lang/String; = "WindowTracing"

.field private static final TRACE_FILENAME:Ljava/lang/String; = "/data/misc/wmtrace/wm_trace.winscope"

.field static final WINSCOPE_EXT:Ljava/lang/String; = ".winscope"


# instance fields
.field private final mBuffer:Lcom/android/internal/util/TraceBuffer;

.field private mEnabled:Z

.field private final mEnabledLock:Ljava/lang/Object;

.field private volatile mEnabledLockFree:Z

.field protected mLogLevel:I

.field protected mLogOnFrame:Z

.field private final mTraceFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;)V
    .locals 6
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "choreographer"    # Landroid/view/Choreographer;

    .line 66
    new-instance v1, Ljava/io/File;

    const-string v0, "/data/misc/wmtrace/wm_trace.winscope"

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    const/high16 v5, 0xa00000

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .end local p1    # "service":Lcom/android/server/wm/WindowManagerService;
    .end local p2    # "choreographer":Landroid/view/Choreographer;
    .local v2, "service":Lcom/android/server/wm/WindowManagerService;
    .local v3, "choreographer":Landroid/view/Choreographer;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowTracingLegacy;-><init>(Ljava/io/File;Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;Lcom/android/server/wm/WindowManagerGlobalLock;I)V

    .line 68
    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;Lcom/android/server/wm/WindowManagerGlobalLock;I)V
    .locals 1
    .param p1, "traceFile"    # Ljava/io/File;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "choreographer"    # Landroid/view/Choreographer;
    .param p4, "globalLock"    # Lcom/android/server/wm/WindowManagerGlobalLock;
    .param p5, "bufferSize"    # I

    .line 73
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/wm/WindowTracing;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;Lcom/android/server/wm/WindowManagerGlobalLock;)V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mEnabledLock:Ljava/lang/Object;

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mLogLevel:I

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mLogOnFrame:Z

    .line 74
    iput-object p1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mTraceFile:Ljava/io/File;

    .line 75
    new-instance v0, Lcom/android/internal/util/TraceBuffer;

    invoke-direct {v0, p5}, Lcom/android/internal/util/TraceBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 76
    return-void
.end method

.method private writeTraceToFileLocked()V
    .locals 7

    .line 264
    const-wide/16 v0, 0x20

    :try_start_0
    const-string v2, "writeTraceToFileLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 265
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 266
    .local v2, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v3, 0x10600000001L

    const-wide v5, 0x45434152544e4957L    # 4.655612620390422E25

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 267
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    .line 269
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 270
    .local v3, "timeOffsetNs":J
    const-wide v5, 0x10600000003L

    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 271
    iget-object v5, p0, Lcom/android/server/wm/WindowTracingLegacy;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    iget-object v6, p0, Lcom/android/server/wm/WindowTracingLegacy;->mTraceFile:Ljava/io/File;

    invoke-virtual {v5, v6, v2}, Lcom/android/internal/util/TraceBuffer;->writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    .end local v2    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local v3    # "timeOffsetNs":J
    nop

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 276
    goto :goto_1

    .line 275
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 272
    :catch_0
    move-exception v2

    nop

    .line 273
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    const-string v3, "WindowTracing"

    const-string v4, "Unable to write buffer to file"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    nop

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 277
    :goto_1
    return-void

    .line 275
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 276
    throw v2
.end method


# virtual methods
.method getStatus()Ljava/lang/String;
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracingLegacy;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Enabled"

    goto :goto_0

    :cond_0
    const-string v1, "Disabled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nLog level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mLogLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 195
    invoke-virtual {v1}, Lcom/android/internal/util/TraceBuffer;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    return-object v0
.end method

.method isEnabled()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mEnabledLockFree:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 9
    .param p1, "where"    # Ljava/lang/String;

    .line 242
    :try_start_0
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    move-object v2, v0

    .line 243
    .local v2, "os":Landroid/util/proto/ProtoOutputStream;
    const-wide v0, 0x20b00000002L

    invoke-virtual {v2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    move-wide v7, v0

    .line 244
    .local v7, "token":J
    iget v3, p0, Lcom/android/server/wm/WindowTracingLegacy;->mLogLevel:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, p0

    move-object v4, p1

    .end local p1    # "where":Ljava/lang/String;
    .local v4, "where":Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowTracing;->dumpToProto(Landroid/util/proto/ProtoOutputStream;ILjava/lang/String;J)V

    .line 245
    invoke-virtual {v2, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 246
    iget-object p1, v1, Lcom/android/server/wm/WindowTracingLegacy;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p1, v2}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 249
    .end local v2    # "os":Landroid/util/proto/ProtoOutputStream;
    .end local v7    # "token":J
    goto :goto_1

    .line 247
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v4    # "where":Ljava/lang/String;
    .restart local p1    # "where":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v1, p0

    move-object v4, p1

    move-object p1, v0

    .line 248
    .restart local v4    # "where":Ljava/lang/String;
    .local p1, "e":Ljava/lang/Exception;
    :goto_0
    const-string v0, "WindowTracing"

    const-string v2, "Exception while tracing state"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    .end local p1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method onShellCommand(Landroid/os/ShellCommand;)I
    .locals 8
    .param p1, "shell"    # Landroid/os/ShellCommand;

    .line 119
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 120
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "cmd":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "transaction"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_1
    const-string v2, "start"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    goto :goto_1

    :sswitch_2
    const-string v2, "level"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_3
    const-string v2, "frame"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_4
    const-string v2, "stop"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_1

    :sswitch_5
    const-string v2, "size"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_6
    const-string v2, "save-for-bugreport"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_1

    :sswitch_7
    const-string v2, "status"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :goto_0
    move v2, v6

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    const-string v2, "Window manager trace options:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    const-string v2, "  start: Start logging"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    const-string v2, "  stop: Stop logging"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    const-string v2, "  save-for-bugreport: Save logging data to file if it\'s running."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    const-string v2, "  frame: Log trace once per frame"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    const-string v2, "  transaction: Log each transaction"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    const-string v2, "  size: Set the maximum log size (in KB)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    const-string v2, "  status: Print trace status"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    const-string v2, "  level [lvl]: Set the log level between"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    const-string v2, "    lvl may be one of:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    const-string v2, "      critical: Only visible windows with reduced information"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    const-string v2, "      trim: All windows with reduced"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    const-string v2, "      all: All window and information"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    return v6

    .line 165
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/WindowTracingLegacy;->setBufferCapacity(ILjava/io/PrintWriter;)V

    .line 166
    iget-object v2, p0, Lcom/android/server/wm/WindowTracingLegacy;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 167
    return v5

    .line 143
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "logLevelStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1

    :cond_1
    goto :goto_2

    :sswitch_8
    const-string v7, "critical"

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v6, v3

    goto :goto_2

    :sswitch_9
    const-string v7, "trim"

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v6, v4

    goto :goto_2

    :sswitch_a
    const-string v7, "all"

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v6, v5

    :goto_2
    packed-switch v6, :pswitch_data_1

    .line 158
    invoke-virtual {p0, v4, v0}, Lcom/android/server/wm/WindowTracingLegacy;->setLogLevel(ILjava/io/PrintWriter;)V

    goto :goto_3

    .line 154
    :pswitch_2
    invoke-virtual {p0, v3, v0}, Lcom/android/server/wm/WindowTracingLegacy;->setLogLevel(ILjava/io/PrintWriter;)V

    .line 155
    goto :goto_3

    .line 150
    :pswitch_3
    invoke-virtual {p0, v4, v0}, Lcom/android/server/wm/WindowTracingLegacy;->setLogLevel(ILjava/io/PrintWriter;)V

    .line 151
    goto :goto_3

    .line 146
    :pswitch_4
    invoke-virtual {p0, v5, v0}, Lcom/android/server/wm/WindowTracingLegacy;->setLogLevel(ILjava/io/PrintWriter;)V

    .line 147
    nop

    .line 162
    :goto_3
    iget-object v3, p0, Lcom/android/server/wm/WindowTracingLegacy;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v3}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 163
    return v5

    .line 139
    .end local v2    # "logLevelStr":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p0, v5, v0}, Lcom/android/server/wm/WindowTracingLegacy;->setLogFrequency(ZLjava/io/PrintWriter;)V

    .line 140
    iget-object v2, p0, Lcom/android/server/wm/WindowTracingLegacy;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 141
    return v5

    .line 135
    :pswitch_6
    invoke-virtual {p0, v4, v0}, Lcom/android/server/wm/WindowTracingLegacy;->setLogFrequency(ZLjava/io/PrintWriter;)V

    .line 136
    iget-object v2, p0, Lcom/android/server/wm/WindowTracingLegacy;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 137
    return v5

    .line 132
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracingLegacy;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 133
    return v5

    .line 129
    :pswitch_8
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowTracing;->saveForBugreport(Ljava/io/PrintWriter;)V

    .line 130
    return v5

    .line 126
    :pswitch_9
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowTracing;->stopTrace(Ljava/io/PrintWriter;)V

    .line 127
    return v5

    .line 123
    :pswitch_a
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowTracing;->startTrace(Ljava/io/PrintWriter;)V

    .line 124
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3532300e -> :sswitch_7
        -0x174ab7ac -> :sswitch_6
        0x35e001 -> :sswitch_5
        0x360802 -> :sswitch_4
        0x5d2a96d -> :sswitch_3
        0x6219b84 -> :sswitch_2
        0x68ac462 -> :sswitch_1
        0x7fa0d2de -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x179a1 -> :sswitch_a
        0x367422 -> :sswitch_9
        0x745b779f -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected saveForBugreportInternal(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 225
    iget-object v0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mEnabled:Z

    if-nez v1, :cond_0

    .line 227
    monitor-exit v0

    return-void

    .line 236
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 229
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mEnabledLockFree:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mEnabled:Z

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop tracing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowTracingLegacy;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Waiting for traces to flush."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 231
    invoke-direct {p0}, Lcom/android/server/wm/WindowTracingLegacy;->writeTraceToFileLocked()V

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trace written to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowTracingLegacy;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start tracing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowTracingLegacy;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 235
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mEnabledLockFree:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mEnabled:Z

    .line 236
    monitor-exit v0

    .line 237
    return-void

    .line 236
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setBufferCapacity(ILjava/io/PrintWriter;)V
    .locals 2
    .param p1, "capacity"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting window tracing buffer capacity to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/TraceBuffer;->setCapacity(I)V

    .line 110
    return-void
.end method

.method setLogFrequency(ZLjava/io/PrintWriter;)V
    .locals 2
    .param p1, "onFrame"    # Z
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting window tracing log frequency to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    if-eqz p1, :cond_0

    const-string v1, "frame"

    goto :goto_0

    :cond_0
    const-string v1, "transaction"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 103
    iput-boolean p1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mLogOnFrame:Z

    .line 104
    return-void
.end method

.method setLogLevel(ILjava/io/PrintWriter;)V
    .locals 2
    .param p1, "logLevel"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting window tracing log level to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 81
    iput p1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mLogLevel:I

    .line 83
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 93
    :pswitch_0
    const/high16 v0, 0x500000

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/WindowTracingLegacy;->setBufferCapacity(ILjava/io/PrintWriter;)V

    goto :goto_0

    .line 89
    :pswitch_1
    const/high16 v0, 0xa00000

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/WindowTracingLegacy;->setBufferCapacity(ILjava/io/PrintWriter;)V

    .line 90
    goto :goto_0

    .line 85
    :pswitch_2
    const/high16 v0, 0x1400000

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/WindowTracingLegacy;->setBufferCapacity(ILjava/io/PrintWriter;)V

    .line 86
    nop

    .line 97
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected shouldLogOnFrame()Z
    .locals 1

    .line 254
    iget-boolean v0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mLogOnFrame:Z

    return v0
.end method

.method protected shouldLogOnTransaction()Z
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mLogOnFrame:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected startTraceInternal(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 200
    iget-object v0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start tracing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowTracingLegacy;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 203
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mEnabledLockFree:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mEnabled:Z

    .line 204
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    const-string v0, "trace.enable"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowTracingLegacy;->log(Ljava/lang/String;)V

    .line 206
    return-void

    .line 204
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected stopTraceInternal(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 210
    iget-object v0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop tracing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowTracingLegacy;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Waiting for traces to flush."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 212
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mEnabledLockFree:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mEnabled:Z

    .line 214
    iget-boolean v1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mEnabled:Z

    if-nez v1, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/android/server/wm/WindowTracingLegacy;->writeTraceToFileLocked()V

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trace written to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowTracingLegacy;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 220
    monitor-exit v0

    .line 221
    return-void

    .line 220
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 215
    :cond_0
    const-string v1, "ERROR: tracing was re-enabled while waiting for flush."

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 216
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "tracing enabled while waiting for flush."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/WindowTracingLegacy;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    throw v1

    .line 220
    .restart local p0    # "this":Lcom/android/server/wm/WindowTracingLegacy;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
