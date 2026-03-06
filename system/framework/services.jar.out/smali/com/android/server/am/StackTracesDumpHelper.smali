.class public Lcom/android/server/am/StackTracesDumpHelper;
.super Ljava/lang/Object;
.source "StackTracesDumpHelper.java"


# static fields
.field private static final ANR_FILE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field static final ANR_FILE_PREFIX:Ljava/lang/String; = "anr_"

.field static final ANR_TEMP_FILE_PREFIX:Ljava/lang/String; = "temp_anr_"

.field public static final ANR_TRACE_DIR:Ljava/lang/String; = "/data/anr"

.field private static final JAVA_DUMP_MINIMUM_SIZE:I = 0x64

.field private static final NATIVE_DUMP_TIMEOUT_MS:I

.field static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TEMP_DUMP_TIME_LIMIT:I


# direct methods
.method public static synthetic $r8$lambda$2_q5NUHgU36R91F13viImtf0R_c(Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/am/StackTracesDumpHelper;->lambda$dumpStackTraces$0(Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 69
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd-HH-mm-ss-SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/StackTracesDumpHelper;->ANR_FILE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 76
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v0, v0, 0x7d0

    sput v0, Lcom/android/server/am/StackTracesDumpHelper;->NATIVE_DUMP_TIMEOUT_MS:I

    .line 80
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v0, v0, 0x2710

    sput v0, Lcom/android/server/am/StackTracesDumpHelper;->TEMP_DUMP_TIME_LIMIT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendtoANRFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .line 615
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 617
    .local v1, "header":[B
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 618
    array-length v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 619
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 618
    return v2

    .line 619
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v1    # "header":[B
    :catch_0
    move-exception v0

    goto :goto_1

    .line 615
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "fileName":Ljava/lang/String;
    .end local p1    # "text":Ljava/lang/String;
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 619
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local p0    # "fileName":Ljava/lang/String;
    .restart local p1    # "text":Ljava/lang/String;
    :goto_1
    nop

    .line 620
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ActivityManager"

    const-string v2, "Exception writing to ANR dump file:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 621
    const/4 v1, 0x0

    return v1
.end method

.method private static collectPids(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "logName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 636
    .local p0, "pidsFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    const-string v0, "ActivityManager"

    const/4 v1, 0x0

    .line 638
    .local v1, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    .line 639
    return-object v1

    .line 642
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 647
    :goto_0
    goto :goto_3

    .line 645
    :catch_0
    move-exception v2

    goto :goto_1

    .line 643
    :catch_1
    move-exception v2

    goto :goto_2

    .line 645
    :goto_1
    nop

    .line 646
    .local v2, "e":Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Interrupted while collecting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 643
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_2
    nop

    .line 644
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to collect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    goto :goto_0

    .line 648
    :goto_3
    return-object v1
.end method

.method private static copyFirstPidTempDump(Ljava/lang/String;Ljava/util/concurrent/Future;JLcom/android/internal/os/anr/AnrLatencyTracker;)Z
    .locals 6
    .param p0, "tracesFile"    # Ljava/lang/String;
    .param p2, "timeLimitMs"    # J
    .param p4, "latencyTracker"    # Lcom/android/internal/os/anr/AnrLatencyTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future<",
            "Ljava/io/File;",
            ">;J",
            "Lcom/android/internal/os/anr/AnrLatencyTracker;",
            ")Z"
        }
    .end annotation

    .line 439
    .local p1, "firstPidFilePromise":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/io/File;>;"
    const-string v0, "ActivityManager"

    const/4 v1, 0x0

    .line 440
    .local v1, "copySucceeded":Z
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 441
    .local v3, "fos":Ljava/io/FileOutputStream;
    if-eqz p4, :cond_0

    .line 442
    :try_start_1
    invoke-virtual {p4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->copyingFirstPidStarted()V

    goto :goto_0

    .line 440
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 444
    :cond_0
    :goto_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, p3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 445
    .local v4, "tempfile":Ljava/io/File;
    if-eqz v4, :cond_2

    .line 446
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-static {v5, v3}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/io/OutputStream;)J

    .line 448
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    const/4 v1, 0x1

    .line 450
    nop

    .line 453
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 468
    if-eqz p4, :cond_1

    .line 469
    invoke-virtual {p4, v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->copyingFirstPidEnded(Z)V

    .line 450
    :cond_1
    return v1

    .line 468
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "tempfile":Ljava/io/File;
    :catchall_1
    move-exception v0

    goto :goto_7

    .line 464
    :catch_0
    move-exception v3

    goto :goto_3

    .line 461
    :catch_1
    move-exception v3

    goto :goto_4

    .line 457
    :catch_2
    move-exception v3

    goto :goto_5

    .line 453
    :catch_3
    move-exception v3

    goto :goto_6

    .line 452
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "tempfile":Ljava/io/File;
    :cond_2
    nop

    .line 453
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 468
    if-eqz p4, :cond_3

    .line 469
    invoke-virtual {p4, v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->copyingFirstPidEnded(Z)V

    .line 452
    :cond_3
    return v2

    .line 440
    .end local v4    # "tempfile":Ljava/io/File;
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v5

    :try_start_5
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "copySucceeded":Z
    .end local p0    # "tracesFile":Ljava/lang/String;
    .end local p1    # "firstPidFilePromise":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/io/File;>;"
    .end local p2    # "timeLimitMs":J
    .end local p4    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    :goto_2
    throw v4
    :try_end_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 464
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "copySucceeded":Z
    .restart local p0    # "tracesFile":Ljava/lang/String;
    .restart local p1    # "firstPidFilePromise":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/io/File;>;"
    .restart local p2    # "timeLimitMs":J
    .restart local p4    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    :goto_3
    nop

    .line 465
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_6
    const-string v4, "Copying the first pid timed out"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 466
    nop

    .line 468
    if-eqz p4, :cond_4

    .line 469
    invoke-virtual {p4, v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->copyingFirstPidEnded(Z)V

    .line 466
    :cond_4
    return v2

    .line 461
    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    :goto_4
    nop

    .line 462
    .local v3, "e":Ljava/io/IOException;
    :try_start_7
    const-string v4, "Failed to read the first pid\'s predump file"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 463
    nop

    .line 468
    if-eqz p4, :cond_5

    .line 469
    invoke-virtual {p4, v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->copyingFirstPidEnded(Z)V

    .line 463
    :cond_5
    return v2

    .line 457
    .end local v3    # "e":Ljava/io/IOException;
    :goto_5
    nop

    .line 458
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_8
    const-string v4, "Interrupted while collecting the first pid\'s predump to the main ANR file"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 460
    nop

    .line 468
    if-eqz p4, :cond_6

    .line 469
    invoke-virtual {p4, v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->copyingFirstPidEnded(Z)V

    .line 460
    :cond_6
    return v2

    .line 453
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_6
    nop

    .line 454
    .local v3, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_9
    const-string v4, "Failed to collect the first pid\'s predump to the main ANR file"

    .line 455
    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    .line 454
    invoke-static {v0, v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 456
    nop

    .line 468
    if-eqz p4, :cond_7

    .line 469
    invoke-virtual {p4, v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->copyingFirstPidEnded(Z)V

    .line 456
    :cond_7
    return v2

    .line 468
    .end local v3    # "e":Ljava/util/concurrent/ExecutionException;
    :goto_7
    if-eqz p4, :cond_8

    .line 469
    invoke-virtual {p4, v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->copyingFirstPidEnded(Z)V

    .line 471
    :cond_8
    throw v0
.end method

.method private static declared-synchronized createAnrDumpFile(Ljava/io/File;)Ljava/io/File;
    .locals 6
    .param p0, "tracesDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/android/server/am/StackTracesDumpHelper;

    monitor-enter v0

    .line 475
    :try_start_0
    sget-object v1, Lcom/android/server/am/StackTracesDumpHelper;->ANR_FILE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, "formattedDate":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "anr_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 478
    .local v2, "anrFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 479
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x180

    const/4 v5, -0x1

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    monitor-exit v0

    return-object v2

    .line 474
    .end local v1    # "formattedDate":Ljava/lang/String;
    .end local v2    # "anrFile":Ljava/io/File;
    .end local p0    # "tracesDir":Ljava/io/File;
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 482
    .restart local v1    # "formattedDate":Ljava/lang/String;
    .restart local v2    # "anrFile":Ljava/io/File;
    .restart local p0    # "tracesDir":Ljava/io/File;
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unable to create ANR dump file: createNewFile failed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 474
    .end local v1    # "formattedDate":Ljava/lang/String;
    .end local v2    # "anrFile":Ljava/io/File;
    .end local p0    # "tracesDir":Ljava/io/File;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static deleteRecursive(Ljava/io/File;)V
    .locals 4
    .param p0, "fileOrDirectory"    # Ljava/io/File;

    .line 654
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 656
    .local v0, "children":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 657
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    nop

    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 658
    .local v3, "child":Ljava/io/File;
    invoke-static {v3}, Lcom/android/server/am/StackTracesDumpHelper;->deleteRecursive(Ljava/io/File;)V

    .line 657
    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 662
    .end local v0    # "children":[Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to prune stale trace file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_1
    return-void
.end method

.method private static dumpJavaTracesTombstoned(ILjava/lang/String;J)J
    .locals 11
    .param p0, "pid"    # I
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "timeoutMs"    # J

    .line 585
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 586
    .local v0, "timeStart":J
    invoke-static {p0, p1}, Lcom/android/server/am/StackTracesDumpHelper;->writeUptimeStartHeaderForPid(ILjava/lang/String;)I

    move-result v2

    .line 587
    .local v2, "headerSize":I
    const-wide/16 v3, 0x3e8

    div-long v3, p2, v3

    long-to-int v3, v3

    invoke-static {p0, p1, v3}, Landroid/os/Debug;->dumpJavaBacktraceToFileTimeout(ILjava/lang/String;I)Z

    move-result v3

    .line 589
    .local v3, "javaSuccess":Z
    const-string v4, "ActivityManager"

    if-eqz v3, :cond_1

    .line 593
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 594
    .local v5, "size":J
    int-to-long v7, v2

    sub-long v7, v5, v7

    const-wide/16 v9, 0x64

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    .line 595
    const-string v7, "Successfully created Java ANR file is empty!"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    const/4 v3, 0x0

    goto :goto_0

    .line 598
    .end local v5    # "size":J
    :catch_0
    move-exception v5

    goto :goto_1

    .line 601
    :cond_0
    :goto_0
    goto :goto_2

    .line 598
    :goto_1
    nop

    .line 599
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "Unable to get ANR file size"

    invoke-static {v4, v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 600
    const/4 v3, 0x0

    .line 603
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    if-nez v3, :cond_2

    .line 604
    const-string v5, "Dumping Java threads failed, initiating native stack dump."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    sget v5, Lcom/android/server/am/StackTracesDumpHelper;->NATIVE_DUMP_TIMEOUT_MS:I

    div-int/lit16 v5, v5, 0x3e8

    invoke-static {p0, p1, v5}, Landroid/os/Debug;->dumpNativeBacktraceToFileTimeout(ILjava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 607
    const-string v5, "Native stack dump failed!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    return-wide v4
.end method

.method private static dumpJavaTracesTombstoned(ILjava/lang/String;JLcom/android/internal/os/anr/AnrLatencyTracker;)J
    .locals 2
    .param p0, "pid"    # I
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "timeoutMs"    # J
    .param p4, "latencyTracker"    # Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 566
    if-eqz p4, :cond_0

    .line 567
    :try_start_0
    invoke-virtual {p4, p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidStarted(I)V

    goto :goto_0

    .line 571
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 569
    :cond_0
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/StackTracesDumpHelper;->dumpJavaTracesTombstoned(ILjava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    if-eqz p4, :cond_1

    .line 572
    invoke-virtual {p4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidEnded()V

    .line 569
    :cond_1
    return-wide v0

    .line 571
    :goto_1
    if-eqz p4, :cond_2

    .line 572
    invoke-virtual {p4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidEnded()V

    .line 574
    :cond_2
    throw v0
.end method

.method public static dumpStackTraces(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;)J
    .locals 28
    .param p0, "tracesFile"    # Ljava/lang/String;
    .param p5, "latencyTracker"    # Lcom/android/internal/os/anr/AnrLatencyTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/concurrent/Future<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/concurrent/Future<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/concurrent/Future<",
            "Ljava/io/File;",
            ">;",
            "Lcom/android/internal/os/anr/AnrLatencyTracker;",
            ")J"
        }
    .end annotation

    .line 221
    .local p1, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "nativePidsFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .local p3, "extraPidsFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .local p4, "firstPidFilePromise":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/io/File;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dumping to "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "ActivityManager"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v0, v0, 0x4e20

    int-to-long v7, v0

    .line 233
    .local v7, "remainingTime":J
    const-wide/16 v9, -0x1

    .line 236
    .local v9, "firstPidEnd":J
    const/4 v0, 0x0

    .line 240
    .local v0, "firstPidTempDumpCopied":Z
    const/4 v11, 0x0

    const-string v12, "); deadline exceeded."

    const-wide/16 v13, 0x0

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_2

    .line 241
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 242
    .local v15, "primaryPid":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 243
    .local v16, "start":J
    invoke-static {v1, v4, v7, v8, v5}, Lcom/android/server/am/StackTracesDumpHelper;->copyFirstPidTempDump(Ljava/lang/String;Ljava/util/concurrent/Future;JLcom/android/internal/os/anr/AnrLatencyTracker;)Z

    move-result v0

    .line 245
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    sub-long v18, v18, v16

    .line 246
    .local v18, "timeTaken":J
    sub-long v7, v7, v18

    .line 247
    cmp-long v20, v7, v13

    if-gtz v20, :cond_0

    .line 248
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Aborting stack trace dump (currently copying primary pid"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-wide v9

    .line 253
    :cond_0
    if-eqz v0, :cond_1

    sget v11, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v15, v11, :cond_1

    .line 254
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 257
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v5, :cond_2

    .line 258
    nop

    .line 259
    invoke-virtual {v5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpAsCommaSeparatedArrayWithHeader()Ljava/lang/String;

    move-result-object v11

    .line 258
    invoke-static {v1, v11}, Lcom/android/server/am/StackTracesDumpHelper;->appendtoANRFile(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .end local v15    # "primaryPid":I
    .end local v16    # "start":J
    .end local v18    # "timeTaken":J
    :cond_2
    move-wide v10, v9

    move-wide v8, v7

    move v7, v0

    .end local v0    # "firstPidTempDumpCopied":Z
    .end local v9    # "firstPidEnd":J
    .local v7, "firstPidTempDumpCopied":Z
    .local v8, "remainingTime":J
    .local v10, "firstPidEnd":J
    const-string/jumbo v15, "ms"

    move-wide/from16 v16, v13

    const-string v13, " in "

    if-eqz v2, :cond_a

    .line 264
    if-eqz v5, :cond_3

    .line 265
    invoke-virtual {v5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingFirstPidsStarted()V

    .line 268
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 269
    .local v0, "num":I
    move v14, v7

    .local v14, "i":I
    :goto_0
    if-ge v14, v0, :cond_8

    .line 270
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    move/from16 v19, v0

    .end local v0    # "num":I
    .local v19, "num":I
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 272
    .local v0, "pid":I
    if-nez v14, :cond_4

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v4, v0, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 273
    .local v4, "firstPid":Z
    :goto_1
    move/from16 v18, v4

    .end local v4    # "firstPid":Z
    .local v18, "firstPid":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v7

    .end local v7    # "firstPidTempDumpCopied":Z
    .local v21, "firstPidTempDumpCopied":Z
    const-string v7, "Collecting stacks for pid "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    move-wide/from16 v22, v10

    .end local v10    # "firstPidEnd":J
    .local v22, "firstPidEnd":J
    invoke-static {v0, v1, v8, v9, v5}, Lcom/android/server/am/StackTracesDumpHelper;->dumpJavaTracesTombstoned(ILjava/lang/String;JLcom/android/internal/os/anr/AnrLatencyTracker;)J

    move-result-wide v10

    .line 276
    .local v10, "timeTaken":J
    sub-long/2addr v8, v10

    .line 277
    cmp-long v4, v8, v16

    if-gtz v4, :cond_5

    .line 278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Aborting stack trace dump (current firstPid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-wide v22

    .line 283
    :cond_5
    if-eqz v18, :cond_6

    .line 284
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v22

    .line 286
    if-eqz v5, :cond_6

    .line 287
    nop

    .line 288
    invoke-virtual {v5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpAsCommaSeparatedArrayWithHeader()Ljava/lang/String;

    move-result-object v4

    .line 287
    invoke-static {v1, v4}, Lcom/android/server/am/StackTracesDumpHelper;->appendtoANRFile(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_6
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    if-eqz v4, :cond_7

    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Done with pid "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .end local v0    # "pid":I
    .end local v10    # "timeTaken":J
    .end local v18    # "firstPid":Z
    :cond_7
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, p4

    move/from16 v0, v19

    move/from16 v7, v21

    move-wide/from16 v10, v22

    goto/16 :goto_0

    .end local v19    # "num":I
    .end local v21    # "firstPidTempDumpCopied":Z
    .end local v22    # "firstPidEnd":J
    .local v0, "num":I
    .restart local v7    # "firstPidTempDumpCopied":Z
    .local v10, "firstPidEnd":J
    :cond_8
    move/from16 v19, v0

    move/from16 v21, v7

    move-wide/from16 v22, v10

    .line 295
    .end local v0    # "num":I
    .end local v7    # "firstPidTempDumpCopied":Z
    .end local v10    # "firstPidEnd":J
    .end local v14    # "i":I
    .restart local v19    # "num":I
    .restart local v21    # "firstPidTempDumpCopied":Z
    .restart local v22    # "firstPidEnd":J
    if-eqz v5, :cond_9

    .line 296
    invoke-virtual {v5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingFirstPidsEnded()V

    .line 301
    .end local v19    # "num":I
    :cond_9
    move-wide/from16 v10, v22

    goto :goto_2

    .line 263
    .end local v21    # "firstPidTempDumpCopied":Z
    .end local v22    # "firstPidEnd":J
    .restart local v7    # "firstPidTempDumpCopied":Z
    .restart local v10    # "firstPidEnd":J
    :cond_a
    move/from16 v21, v7

    .line 301
    .end local v7    # "firstPidTempDumpCopied":Z
    .restart local v21    # "firstPidTempDumpCopied":Z
    :goto_2
    const-string/jumbo v0, "native pids"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Lcom/android/server/am/StackTracesDumpHelper;->collectPids(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 303
    .local v7, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "dumpStackTraces nativepids="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    if-eqz v7, :cond_12

    .line 306
    if-eqz v5, :cond_b

    .line 307
    invoke-virtual {v5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingNativePidsStarted()V

    .line 309
    :cond_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 310
    .local v14, "pid":I
    move-object/from16 v18, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Collecting stacks for native pid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    sget v0, Lcom/android/server/am/StackTracesDumpHelper;->NATIVE_DUMP_TIMEOUT_MS:I

    move-wide/from16 v19, v10

    .end local v10    # "firstPidEnd":J
    .local v19, "firstPidEnd":J
    int-to-long v10, v0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 313
    .local v10, "nativeDumpTimeoutMs":J
    if-eqz v5, :cond_c

    .line 314
    invoke-virtual {v5, v14}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidStarted(I)V

    .line 316
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    .line 317
    .local v22, "start":J
    const-wide/16 v24, 0x3e8

    move-object v2, v7

    move-wide/from16 v26, v8

    .end local v7    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "remainingTime":J
    .local v2, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v26, "remainingTime":J
    div-long v7, v10, v24

    long-to-int v0, v7

    invoke-static {v14, v1, v0}, Landroid/os/Debug;->dumpNativeBacktraceToFileTimeout(ILjava/lang/String;I)Z

    .line 319
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v7, v7, v22

    .line 320
    .local v7, "timeTaken":J
    if-eqz v5, :cond_d

    .line 321
    invoke-virtual {v5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidEnded()V

    .line 323
    :cond_d
    sub-long v24, v26, v7

    .line 324
    .end local v26    # "remainingTime":J
    .local v24, "remainingTime":J
    cmp-long v0, v24, v16

    if-gtz v0, :cond_e

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Aborting stack trace dump (current native pid="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-wide v19

    .line 330
    :cond_e
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    if-eqz v0, :cond_f

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Done with native pid "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .end local v7    # "timeTaken":J
    .end local v10    # "nativeDumpTimeoutMs":J
    .end local v14    # "pid":I
    .end local v22    # "start":J
    :cond_f
    move-object v7, v2

    move-object/from16 v0, v18

    move-wide/from16 v10, v19

    move-wide/from16 v8, v24

    move-object/from16 v2, p1

    goto/16 :goto_3

    .line 334
    .end local v2    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v19    # "firstPidEnd":J
    .end local v24    # "remainingTime":J
    .local v7, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8    # "remainingTime":J
    .local v10, "firstPidEnd":J
    :cond_10
    move-object v2, v7

    move-wide/from16 v26, v8

    move-wide/from16 v19, v10

    .end local v7    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "remainingTime":J
    .end local v10    # "firstPidEnd":J
    .restart local v2    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v19    # "firstPidEnd":J
    .restart local v26    # "remainingTime":J
    if-eqz v5, :cond_11

    .line 335
    invoke-virtual {v5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingNativePidsEnded()V

    .line 340
    :cond_11
    move-wide/from16 v8, v26

    goto :goto_4

    .line 305
    .end local v2    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v19    # "firstPidEnd":J
    .end local v26    # "remainingTime":J
    .restart local v7    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8    # "remainingTime":J
    .restart local v10    # "firstPidEnd":J
    :cond_12
    move-object v2, v7

    move-wide/from16 v19, v10

    .line 340
    .end local v7    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "firstPidEnd":J
    .restart local v2    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v19    # "firstPidEnd":J
    :goto_4
    const-string v0, "extra pids"

    invoke-static {v3, v0}, Lcom/android/server/am/StackTracesDumpHelper;->collectPids(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 342
    .local v7, "extraPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_13

    .line 344
    :try_start_0
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    .line 349
    :goto_5
    goto :goto_8

    .line 347
    :catch_0
    move-exception v0

    goto :goto_6

    .line 345
    :catch_1
    move-exception v0

    goto :goto_7

    .line 347
    :goto_6
    nop

    .line 348
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v10, "Interrupted while collecting extra pids"

    invoke-static {v6, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 345
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_7
    nop

    .line 346
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v10, "Failed to collect extra pids"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-static {v6, v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    goto :goto_5

    .line 351
    :cond_13
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dumpStackTraces extraPids="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    if-eqz v7, :cond_18

    .line 354
    if-eqz v5, :cond_14

    .line 355
    invoke-virtual {v5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingExtraPidsStarted()V

    .line 357
    :cond_14
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 358
    .local v10, "pid":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Collecting stacks for extra pid "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    move-object v11, v2

    .end local v2    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v11, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v10, v1, v8, v9, v5}, Lcom/android/server/am/StackTracesDumpHelper;->dumpJavaTracesTombstoned(ILjava/lang/String;JLcom/android/internal/os/anr/AnrLatencyTracker;)J

    move-result-wide v2

    .line 361
    .local v2, "timeTaken":J
    sub-long/2addr v8, v2

    .line 362
    cmp-long v14, v8, v16

    if-gtz v14, :cond_15

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Aborting stack trace dump (current extra pid="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-wide v19

    .line 368
    :cond_15
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    if-eqz v14, :cond_16

    .line 369
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v0

    const-string v0, "Done with extra pid "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 368
    :cond_16
    move-object/from16 v18, v0

    .line 371
    .end local v2    # "timeTaken":J
    .end local v10    # "pid":I
    :goto_a
    move-object/from16 v3, p3

    move-object v2, v11

    move-object/from16 v0, v18

    goto :goto_9

    .line 372
    .end local v11    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v2, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_17
    move-object v11, v2

    .end local v2    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v11    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v5, :cond_19

    .line 373
    invoke-virtual {v5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingExtraPidsEnded()V

    goto :goto_b

    .line 353
    .end local v11    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v2    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_18
    move-object v11, v2

    .line 377
    .end local v2    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v11    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_19
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----- dumping ended at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/StackTracesDumpHelper;->appendtoANRFile(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v0, "Done dumping"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-wide v19
.end method

.method public static dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/Future;Ljava/io/StringWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/concurrent/Executor;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;
    .locals 12
    .param p1, "processCpuTracker"    # Lcom/android/internal/os/ProcessCpuTracker;
    .param p2, "lastPids"    # Landroid/util/SparseBooleanArray;
    .param p4, "logExceptionCreatingFile"    # Ljava/io/StringWriter;
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "criticalEventSection"    # Ljava/lang/String;
    .param p8, "auxiliaryTaskExecutor"    # Ljava/util/concurrent/Executor;
    .param p9, "latencyTracker"    # Lcom/android/internal/os/anr/AnrLatencyTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/internal/os/ProcessCpuTracker;",
            "Landroid/util/SparseBooleanArray;",
            "Ljava/util/concurrent/Future<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/io/StringWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/internal/os/anr/AnrLatencyTracker;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    .line 113
    .local p0, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, "nativePidsFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .local p7, "extraHeaders":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v11, p9

    invoke-static/range {v0 .. v11}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/Future;Ljava/io/StringWriter;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;

    move-result-object v5

    return-object v5
.end method

.method public static dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/Future;Ljava/io/StringWriter;Ljava/util/concurrent/Executor;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;
    .locals 12
    .param p1, "processCpuTracker"    # Lcom/android/internal/os/ProcessCpuTracker;
    .param p2, "lastPids"    # Landroid/util/SparseBooleanArray;
    .param p4, "logExceptionCreatingFile"    # Ljava/io/StringWriter;
    .param p5, "auxiliaryTaskExecutor"    # Ljava/util/concurrent/Executor;
    .param p6, "latencyTracker"    # Lcom/android/internal/os/anr/AnrLatencyTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/internal/os/ProcessCpuTracker;",
            "Landroid/util/SparseBooleanArray;",
            "Ljava/util/concurrent/Future<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/io/StringWriter;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/internal/os/anr/AnrLatencyTracker;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    .line 97
    .local p0, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, "nativePidsFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v9, p5

    move-object/from16 v11, p6

    invoke-static/range {v0 .. v11}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/Future;Ljava/io/StringWriter;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;

    move-result-object v5

    return-object v5
.end method

.method static dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/Future;Ljava/io/StringWriter;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;
    .locals 20
    .param p1, "processCpuTracker"    # Lcom/android/internal/os/ProcessCpuTracker;
    .param p2, "lastPids"    # Landroid/util/SparseBooleanArray;
    .param p4, "logExceptionCreatingFile"    # Ljava/io/StringWriter;
    .param p5, "firstPidEndOffset"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p6, "subject"    # Ljava/lang/String;
    .param p7, "criticalEventSection"    # Ljava/lang/String;
    .param p9, "auxiliaryTaskExecutor"    # Ljava/util/concurrent/Executor;
    .param p11, "latencyTracker"    # Lcom/android/internal/os/anr/AnrLatencyTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/internal/os/ProcessCpuTracker;",
            "Landroid/util/SparseBooleanArray;",
            "Ljava/util/concurrent/Future<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/io/StringWriter;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Future<",
            "Ljava/io/File;",
            ">;",
            "Lcom/android/internal/os/anr/AnrLatencyTracker;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    .line 130
    .local p0, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, "nativePidsFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .local p8, "extraHeaders":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p10, "firstPidFilePromise":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/io/File;>;"
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v11, p11

    const-string v12, "ActivityManager"

    if-eqz v11, :cond_0

    .line 131
    :try_start_0
    invoke-virtual {v11}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesStarted()V

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    move-object/from16 v14, p9

    goto/16 :goto_7

    .line 134
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dumpStackTraces pids="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v6, 0x0

    if-eqz v1, :cond_1

    .line 139
    new-instance v0, Lcom/android/server/am/StackTracesDumpHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1, v2, v11}, Lcom/android/server/am/StackTracesDumpHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Lcom/android/internal/os/anr/AnrLatencyTracker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    move-object v0, v6

    :goto_1
    move-object v13, v0

    .line 140
    .local v13, "extraPidsSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    const/4 v0, 0x0

    .line 141
    .local v0, "extraPidsFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    if-eqz v13, :cond_2

    .line 142
    nop

    .line 143
    move-object/from16 v14, p9

    :try_start_1
    invoke-static {v13, v14}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v7

    move-object v0, v7

    move-object v9, v0

    goto :goto_2

    .line 207
    .end local v0    # "extraPidsFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v13    # "extraPidsSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :catchall_1
    move-exception v0

    goto/16 :goto_7

    .line 141
    .restart local v0    # "extraPidsFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .restart local v13    # "extraPidsSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :cond_2
    move-object/from16 v14, p9

    move-object v9, v0

    .line 146
    .end local v0    # "extraPidsFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .local v9, "extraPidsFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :goto_2
    new-instance v0, Ljava/io/File;

    const-string v7, "/data/anr"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v15, v0

    .line 153
    .local v15, "tracesDir":Ljava/io/File;
    :try_start_2
    invoke-static {v15}, Lcom/android/server/am/StackTracesDumpHelper;->createAnrDumpFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v16, v0

    .line 165
    .local v16, "tracesFile":Ljava/io/File;
    nop

    .line 166
    if-eqz p8, :cond_3

    :try_start_3
    invoke-virtual/range {p8 .. p8}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    move/from16 v17, v0

    .line 168
    .local v17, "extraHeadersExist":Z
    if-nez v5, :cond_4

    if-nez p7, :cond_4

    if-eqz v17, :cond_8

    .line 169
    :cond_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 170
    const-string v7, ""

    if-eqz v5, :cond_5

    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Subject: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_5
    move-object v8, v7

    :goto_4
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    if-eqz v17, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p8 .. p8}, Lcom/android/server/am/StackTracesDumpHelper;->stringifyHeaders(Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_6
    move-object v8, v7

    :goto_5
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    if-eqz p7, :cond_7

    move-object/from16 v7, p7

    :cond_7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 169
    invoke-static {v0, v6}, Lcom/android/server/am/StackTracesDumpHelper;->appendtoANRFile(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_8
    nop

    .line 176
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 175
    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move-object/from16 v10, p10

    invoke-static/range {v6 .. v11}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTraces(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;)J

    move-result-wide v18

    move-wide/from16 v6, v18

    .line 178
    .local v6, "firstPidEndPos":J
    if-eqz v4, :cond_9

    .line 179
    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 183
    :cond_9
    invoke-static {v15}, Lcom/android/server/am/StackTracesDumpHelper;->maybePruneOldTraces(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 188
    :try_start_5
    const-string v0, "Adding binder logs to anr folder"

    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v0, Ljava/io/File;

    const-string v8, "/dev/binderfs/binder_logs/stats"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, "binderTrace":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_binder_stats"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v8}, Landroid/os/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)J

    .line 192
    new-instance v8, Ljava/io/File;

    const-string v10, "/dev/binderfs/binder_logs/transaction_log"

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .end local v0    # "binderTrace":Ljava/io/File;
    .local v8, "binderTrace":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_transaction_log"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v0}, Landroid/os/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)J

    .line 195
    new-instance v0, Ljava/io/File;

    const-string v10, "/dev/binderfs/binder_logs/failed_transaction_log"

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    .end local v8    # "binderTrace":Ljava/io/File;
    .restart local v0    # "binderTrace":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_failed_transaction_log"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v8}, Landroid/os/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 201
    .end local v0    # "binderTrace":Ljava/io/File;
    goto :goto_6

    .line 198
    :catch_0
    move-exception v0

    nop

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v8, "Error adding binder logs to anr folder"

    invoke-static {v12, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 205
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    nop

    .line 207
    if-eqz p11, :cond_a

    .line 208
    invoke-virtual/range {p11 .. p11}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesEnded()V

    .line 205
    :cond_a
    return-object v16

    .line 154
    .end local v6    # "firstPidEndPos":J
    .end local v16    # "tracesFile":Ljava/io/File;
    .end local v17    # "extraHeadersExist":Z
    :catch_1
    move-exception v0

    .line 155
    .local v0, "e":Ljava/io/IOException;
    :try_start_7
    const-string v7, "Exception creating ANR dump file:"

    invoke-static {v12, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    if-eqz v3, :cond_b

    .line 157
    const-string v7, "----- Exception creating ANR dump file -----\n"

    invoke-virtual {v3, v7}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 159
    new-instance v7, Ljava/io/PrintWriter;

    invoke-direct {v7, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v7}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 161
    :cond_b
    if-eqz p11, :cond_c

    .line 162
    invoke-virtual/range {p11 .. p11}, Lcom/android/internal/os/anr/AnrLatencyTracker;->anrSkippedDumpStackTraces()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 164
    :cond_c
    nop

    .line 207
    if-eqz p11, :cond_d

    .line 208
    invoke-virtual/range {p11 .. p11}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesEnded()V

    .line 164
    :cond_d
    return-object v6

    .line 207
    .end local v0    # "e":Ljava/io/IOException;
    .end local v9    # "extraPidsFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v13    # "extraPidsSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v15    # "tracesDir":Ljava/io/File;
    :goto_7
    if-eqz p11, :cond_e

    .line 208
    invoke-virtual/range {p11 .. p11}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesEnded()V

    .line 210
    :cond_e
    throw v0
.end method

.method public static dumpStackTracesTempFile(ILcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;
    .locals 6
    .param p0, "pid"    # I
    .param p1, "latencyTracker"    # Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 390
    const-string v0, "ActivityManager"

    if-eqz p1, :cond_0

    .line 391
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesTempFileStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 430
    :catchall_0
    move-exception v0

    goto/16 :goto_1

    .line 396
    :cond_0
    :goto_0
    :try_start_1
    const-string/jumbo v1, "temp_anr_"

    const-string v2, ".txt"

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/anr"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 398
    .local v1, "tmpTracesFile":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "created ANR temporary file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    nop

    .line 407
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Collecting stacks for pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " into temporary file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 407
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    if-eqz p1, :cond_1

    .line 410
    invoke-virtual {p1, p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidStarted(I)V

    .line 412
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/server/am/StackTracesDumpHelper;->TEMP_DUMP_TIME_LIMIT:I

    int-to-long v3, v3

    invoke-static {p0, v2, v3, v4}, Lcom/android/server/am/StackTracesDumpHelper;->dumpJavaTracesTombstoned(ILjava/lang/String;J)J

    move-result-wide v2

    .line 414
    .local v2, "timeTaken":J
    if-eqz p1, :cond_2

    .line 415
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidEnded()V

    .line 417
    :cond_2
    sget v4, Lcom/android/server/am/StackTracesDumpHelper;->TEMP_DUMP_TIME_LIMIT:I

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-gtz v4, :cond_3

    .line 418
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aborted stack trace dump (current primary pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "); deadline exceeded."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    if-eqz p1, :cond_3

    .line 421
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesTempFileTimedOut()V

    .line 424
    :cond_3
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    if-eqz v4, :cond_4

    .line 425
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Done with primary pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms dumped into temporary file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 425
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 428
    :cond_4
    nop

    .line 430
    if-eqz p1, :cond_5

    .line 431
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesTempFileEnded()V

    .line 428
    :cond_5
    return-object v1

    .line 399
    .end local v1    # "tmpTracesFile":Ljava/io/File;
    .end local v2    # "timeTaken":J
    :catch_0
    move-exception v1

    nop

    .line 400
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    const-string v2, "Exception creating temporary ANR dump file:"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    if-eqz p1, :cond_6

    .line 402
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesTempFileCreationFailed()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 404
    :cond_6
    nop

    .line 430
    if-eqz p1, :cond_7

    .line 431
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesTempFileEnded()V

    .line 404
    :cond_7
    const/4 v0, 0x0

    return-object v0

    .line 430
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    if-eqz p1, :cond_8

    .line 431
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesTempFileEnded()V

    .line 433
    :cond_8
    throw v0
.end method

.method private static getExtraPids(Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "processCpuTracker"    # Lcom/android/internal/os/ProcessCpuTracker;
    .param p1, "lastPids"    # Landroid/util/SparseBooleanArray;
    .param p2, "latencyTracker"    # Lcom/android/internal/os/anr/AnrLatencyTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/ProcessCpuTracker;",
            "Landroid/util/SparseBooleanArray;",
            "Lcom/android/internal/os/anr/AnrLatencyTracker;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 488
    if-eqz p2, :cond_0

    .line 489
    invoke-virtual {p2}, Lcom/android/internal/os/anr/AnrLatencyTracker;->processCpuTrackerMethodsCalled()V

    .line 491
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .local v0, "extraPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 493
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 494
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 496
    const-wide/16 v1, 0xc8

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 498
    goto :goto_0

    .line 497
    :catch_0
    move-exception v1

    .line 500
    :goto_0
    monitor-enter p0

    .line 501
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 503
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->countWorkingStats()I

    move-result v1

    .line 504
    .local v1, "workingStatsNumber":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    .line 505
    invoke-virtual {p0, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v3

    .line 506
    .local v3, "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget v4, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_2

    .line 507
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    if-eqz v4, :cond_1

    .line 508
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Collecting stacks for extra pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 518
    .end local v1    # "workingStatsNumber":I
    .end local v2    # "i":I
    .end local v3    # "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 511
    .restart local v1    # "workingStatsNumber":I
    .restart local v2    # "i":I
    .restart local v3    # "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_1
    :goto_2
    iget v4, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 513
    :cond_2
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping next CPU consuming process, not a java proc: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    .end local v3    # "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 518
    .end local v1    # "workingStatsNumber":I
    .end local v2    # "i":I
    :cond_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 519
    if-eqz p2, :cond_4

    .line 520
    invoke-virtual {p2}, Lcom/android/internal/os/anr/AnrLatencyTracker;->processCpuTrackerMethodsReturned()V

    .line 522
    :cond_4
    return-object v0

    .line 518
    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 494
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private static synthetic lambda$dumpStackTraces$0(Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "processCpuTracker"    # Lcom/android/internal/os/ProcessCpuTracker;
    .param p1, "lastPids"    # Landroid/util/SparseBooleanArray;
    .param p2, "latencyTracker"    # Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 139
    invoke-static {p0, p1, p2}, Lcom/android/server/am/StackTracesDumpHelper;->getExtraPids(Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static maybePruneOldTraces(Ljava/io/File;)V
    .locals 10
    .param p0, "tracesDir"    # Ljava/io/File;

    .line 533
    const-string v0, "ActivityManager"

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 534
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_0

    return-void

    .line 536
    :cond_0
    const-string/jumbo v2, "tombstoned.max_anr_count"

    const/16 v3, 0x40

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 537
    .local v2, "max":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 539
    .local v3, "now":J
    :try_start_0
    new-instance v5, Lcom/android/server/am/StackTracesDumpHelper$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/server/am/StackTracesDumpHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v5}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v5

    invoke-static {v1, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 540
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_4

    .line 541
    if-gt v5, v2, :cond_1

    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long v6, v3, v6

    const-wide/32 v8, 0x5265c00

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    :cond_1
    goto :goto_1

    .line 556
    .end local v5    # "i":I
    :catch_0
    move-exception v5

    goto :goto_3

    .line 548
    .restart local v5    # "i":I
    :goto_1
    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 549
    aget-object v6, v1, v5

    invoke-static {v6}, Lcom/android/server/am/StackTracesDumpHelper;->deleteRecursive(Ljava/io/File;)V

    goto :goto_2

    .line 550
    :cond_2
    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_3

    .line 552
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to prune stale trace file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v1, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 560
    .end local v5    # "i":I
    goto :goto_4

    .line 556
    :goto_3
    nop

    .line 559
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "tombstone modification times changed while sorting; not pruning"

    invoke-static {v0, v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 561
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :goto_4
    return-void
.end method

.method private static stringifyHeaders(Ljava/util/LinkedHashMap;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 669
    .local p0, "headers":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 670
    .local v0, "headersString":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 671
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 676
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static writeUptimeStartHeaderForPid(ILjava/lang/String;)I
    .locals 3
    .param p0, "pid"    # I
    .param p1, "fileName"    # Ljava/lang/String;

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- dumping pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 629
    invoke-static {p1, v0}, Lcom/android/server/am/StackTracesDumpHelper;->appendtoANRFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
