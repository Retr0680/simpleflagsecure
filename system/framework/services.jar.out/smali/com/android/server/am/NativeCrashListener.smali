.class final Lcom/android/server/am/NativeCrashListener;
.super Ljava/lang/Thread;
.source "NativeCrashListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEBUGGERD_SOCKET_PATH:Ljava/lang/String; = "/data/system/ndebugsocket"

.field static final MORE_DEBUG:Z = false

.field static final SOCKET_TIMEOUT_MILLIS:J = 0x2710L

.field static final TAG:Ljava/lang/String; = "NativeCrashListener"


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;

    .line 105
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 107
    return-void
.end method

.method static readExactly(Ljava/io/FileDescriptor;[BII)I
    .locals 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "numBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "totalRead":I
    :goto_0
    if-lez p3, :cond_1

    .line 187
    add-int v1, p2, v0

    invoke-static {p0, p1, v1, p3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    .line 188
    .local v1, "n":I
    if-gtz v1, :cond_0

    .line 192
    const/4 v2, -0x1

    return v2

    .line 194
    :cond_0
    sub-int/2addr p3, v1

    .line 195
    add-int/2addr v0, v1

    .line 196
    .end local v1    # "n":I
    goto :goto_0

    .line 197
    :cond_1
    return v0
.end method

.method static unpackInt([BI)I
    .locals 6
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .line 176
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 177
    .local v0, "b0":I
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 178
    .local v1, "b1":I
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 179
    .local v2, "b2":I
    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 180
    .local v3, "b3":I
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    return v4
.end method


# virtual methods
.method consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    .locals 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 203
    const/16 v0, 0x1000

    new-array v1, v0, [B

    .line 204
    .local v1, "buf":[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 207
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    const-wide/16 v3, 0x2710

    :try_start_0
    invoke-static {v3, v4}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v0

    move-object v3, v0

    .line 208
    .local v3, "timeout":Landroid/system/StructTimeval;
    sget v0, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {p1, v0, v4, v3}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 209
    sget v0, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {p1, v0, v4, v3}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 221
    const/16 v0, 0x9

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v0}, Lcom/android/server/am/NativeCrashListener;->readExactly(Ljava/io/FileDescriptor;[BII)I

    move-result v5

    .line 222
    .local v5, "headerBytes":I
    if-eq v5, v0, :cond_0

    .line 224
    const-string v0, "NativeCrashListener"

    const-string v4, "Unable to read from debuggerd"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void

    .line 300
    .end local v3    # "timeout":Landroid/system/StructTimeval;
    .end local v5    # "headerBytes":I
    :catch_0
    move-exception v0

    goto/16 :goto_4

    .line 228
    .restart local v3    # "timeout":Landroid/system/StructTimeval;
    .restart local v5    # "headerBytes":I
    :cond_0
    invoke-static {v1, v4}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v0

    move v6, v0

    .line 229
    .local v6, "pid":I
    const/4 v0, 0x4

    invoke-static {v1, v0}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v0

    move v10, v0

    .line 230
    .local v10, "signal":I
    const/16 v0, 0x8

    aget-byte v0, v1, v0

    const/4 v7, 0x1

    if-eqz v0, :cond_1

    move v11, v7

    goto :goto_0

    :cond_1
    move v11, v4

    .line 235
    .local v11, "gwpAsanRecoverableCrash":Z
    :goto_0
    if-gez v6, :cond_2

    .line 236
    const-string v0, "NativeCrashListener"

    const-string v4, "Bogus pid!"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v9

    .line 244
    .local v9, "pr":Lcom/android/server/am/ProcessRecord;
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 245
    if-nez v9, :cond_3

    .line 246
    :try_start_2
    const-string v0, "NativeCrashListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t find ProcessRecord for pid "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void

    .line 251
    :cond_3
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 255
    return-void

    .line 261
    :cond_4
    array-length v0, v1

    invoke-static {p1, v1, v4, v0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    move v13, v0

    .line 262
    .local v13, "bytes":I
    if-lez v13, :cond_6

    .line 268
    add-int/lit8 v0, v13, -0x1

    aget-byte v0, v1, v0

    if-nez v0, :cond_5

    .line 269
    add-int/lit8 v0, v13, -0x1

    invoke-virtual {v2, v1, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 270
    goto :goto_1

    .line 273
    :cond_5
    invoke-virtual {v2, v1, v4, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 275
    :cond_6
    nop

    nop

    if-gtz v13, :cond_4

    .line 286
    :goto_1
    if-nez v11, :cond_7

    .line 287
    iget-object v4, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 288
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 289
    :try_start_4
    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v0, v7}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashing(Z)V

    .line 290
    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v0, v7}, Lcom/android/server/am/ProcessErrorStateRecord;->setForceCrashReport(Z)V

    .line 291
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 292
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 291
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .end local v1    # "buf":[B
    .end local v2    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "timeout":Landroid/system/StructTimeval;
    .end local v5    # "headerBytes":I
    .end local v6    # "pid":I
    .end local v9    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v10    # "signal":I
    .end local v11    # "gwpAsanRecoverableCrash":Z
    .end local v13    # "bytes":I
    .end local p0    # "this":Lcom/android/server/am/NativeCrashListener;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    throw v0

    .line 292
    .restart local v1    # "buf":[B
    .restart local v2    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "timeout":Landroid/system/StructTimeval;
    .restart local v5    # "headerBytes":I
    .restart local v6    # "pid":I
    .restart local v9    # "pr":Lcom/android/server/am/ProcessRecord;
    .restart local v10    # "signal":I
    .restart local v11    # "gwpAsanRecoverableCrash":Z
    .restart local v13    # "bytes":I
    .restart local p0    # "this":Lcom/android/server/am/NativeCrashListener;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    :goto_2
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local v1    # "buf":[B
    .end local v2    # "os":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Lcom/android/server/am/NativeCrashListener;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    throw v0

    .line 298
    .restart local v1    # "buf":[B
    .restart local v2    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Lcom/android/server/am/NativeCrashListener;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    :cond_7
    :goto_3
    new-instance v12, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-direct {v12, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 299
    .local v12, "reportString":Ljava/lang/String;
    new-instance v7, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;-><init>(Lcom/android/server/am/NativeCrashListener;Lcom/android/server/am/ProcessRecord;IZLjava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 303
    .end local v3    # "timeout":Landroid/system/StructTimeval;
    .end local v5    # "headerBytes":I
    .end local v6    # "pid":I
    .end local v9    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v10    # "signal":I
    .end local v11    # "gwpAsanRecoverableCrash":Z
    .end local v12    # "reportString":Ljava/lang/String;
    .end local v13    # "bytes":I
    goto :goto_5

    .line 244
    .restart local v3    # "timeout":Landroid/system/StructTimeval;
    .restart local v5    # "headerBytes":I
    .restart local v6    # "pid":I
    .restart local v10    # "signal":I
    .restart local v11    # "gwpAsanRecoverableCrash":Z
    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .end local v1    # "buf":[B
    .end local v2    # "os":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Lcom/android/server/am/NativeCrashListener;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 300
    .end local v3    # "timeout":Landroid/system/StructTimeval;
    .end local v5    # "headerBytes":I
    .end local v6    # "pid":I
    .end local v10    # "signal":I
    .end local v11    # "gwpAsanRecoverableCrash":Z
    .restart local v1    # "buf":[B
    .restart local v2    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Lcom/android/server/am/NativeCrashListener;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    :goto_4
    nop

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "NativeCrashListener"

    const-string v4, "Exception dealing with report"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-void
.end method

.method public run()V
    .locals 9

    .line 111
    const-string v0, "NativeCrashListener"

    const/4 v1, 0x1

    new-array v2, v1, [B

    .line 119
    .local v2, "ackSignal":[B
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/ndebugsocket"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v3, "socketFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 121
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 126
    .end local v3    # "socketFile":Ljava/io/File;
    :cond_0
    :try_start_0
    sget v3, Landroid/system/OsConstants;->AF_UNIX:I

    sget v5, Landroid/system/OsConstants;->SOCK_STREAM:I

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v3

    .line 127
    .local v3, "serverFd":Ljava/io/FileDescriptor;
    invoke-static {v4}, Landroid/system/UnixSocketAddress;->createFileSystem(Ljava/lang/String;)Landroid/system/UnixSocketAddress;

    move-result-object v5

    .line 129
    .local v5, "sockAddr":Landroid/system/UnixSocketAddress;
    invoke-static {v3, v5}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 130
    invoke-static {v3, v1}, Landroid/system/Os;->listen(Ljava/io/FileDescriptor;I)V

    .line 131
    const/16 v7, 0x1ff

    invoke-static {v4, v7}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 134
    :goto_0
    const/4 v4, 0x0

    .line 137
    .local v4, "peerFd":Ljava/io/FileDescriptor;
    const/4 v7, 0x0

    :try_start_1
    invoke-static {v3, v7}, Landroid/system/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v7

    move-object v4, v7

    .line 139
    if-eqz v4, :cond_1

    .line 142
    invoke-virtual {p0, v4}, Lcom/android/server/am/NativeCrashListener;->consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 149
    :catchall_0
    move-exception v7

    goto :goto_7

    .line 144
    :catch_0
    move-exception v7

    goto :goto_4

    .line 149
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 151
    :try_start_2
    invoke-static {v4, v2, v6, v1}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 157
    goto :goto_2

    .line 152
    :catch_1
    move-exception v7

    .line 159
    :goto_2
    :try_start_3
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 164
    :goto_3
    goto :goto_6

    .line 168
    .end local v3    # "serverFd":Ljava/io/FileDescriptor;
    .end local v4    # "peerFd":Ljava/io/FileDescriptor;
    .end local v5    # "sockAddr":Landroid/system/UnixSocketAddress;
    :catch_2
    move-exception v1

    goto :goto_a

    .line 160
    .restart local v3    # "serverFd":Ljava/io/FileDescriptor;
    .restart local v4    # "peerFd":Ljava/io/FileDescriptor;
    .restart local v5    # "sockAddr":Landroid/system/UnixSocketAddress;
    :catch_3
    move-exception v7

    goto :goto_3

    .line 144
    :goto_4
    nop

    .line 145
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v8, "Error handling connection"

    invoke-static {v0, v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 149
    nop

    .end local v7    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_2

    .line 151
    :try_start_5
    invoke-static {v4, v2, v6, v1}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 157
    goto :goto_5

    .line 152
    :catch_4
    move-exception v7

    .line 159
    :goto_5
    :try_start_6
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 167
    .end local v4    # "peerFd":Ljava/io/FileDescriptor;
    :cond_2
    :goto_6
    goto :goto_0

    .line 149
    .restart local v4    # "peerFd":Ljava/io/FileDescriptor;
    :goto_7
    if-eqz v4, :cond_3

    .line 151
    :try_start_7
    invoke-static {v4, v2, v6, v1}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 157
    goto :goto_8

    .line 152
    :catch_5
    move-exception v1

    .line 159
    :goto_8
    :try_start_8
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 164
    goto :goto_9

    .line 160
    :catch_6
    move-exception v1

    .line 166
    :cond_3
    :goto_9
    nop

    .end local v2    # "ackSignal":[B
    .end local p0    # "this":Lcom/android/server/am/NativeCrashListener;
    :try_start_9
    throw v7
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 168
    .end local v3    # "serverFd":Ljava/io/FileDescriptor;
    .end local v4    # "peerFd":Ljava/io/FileDescriptor;
    .end local v5    # "sockAddr":Landroid/system/UnixSocketAddress;
    .restart local v2    # "ackSignal":[B
    .restart local p0    # "this":Lcom/android/server/am/NativeCrashListener;
    :goto_a
    nop

    .line 169
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Unable to init native debug socket!"

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .end local v1    # "e":Ljava/lang/Exception;
    return-void
.end method
