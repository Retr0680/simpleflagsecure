.class public Lcom/android/server/power/stats/BatteryHistoryDirectory;
.super Ljava/lang/Object;
.source "BatteryHistoryDirectory.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;,
        Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final DEFAULT_COMPRESSOR:Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;

.field private static final FILE_FORMAT_BYTES:I = 0x4

.field private static final FILE_FORMAT_COMPRESSED_PARCEL:[B

.field private static final FILE_FORMAT_PARCEL:[B

.field private static final FILE_SUFFIX:Ljava/lang/String; = ".bh"

.field public static final TAG:Ljava/lang/String; = "BatteryHistoryDirectory"


# instance fields
.field private final mCompressor:Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;

.field private final mDirectory:Ljava/io/File;

.field private mFileCompressionEnabled:Z

.field private final mHistoryFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mMaxHistorySize:I

.field private mWaitForDirectoryLock:Z


# direct methods
.method public static synthetic $r8$lambda$4_IaI9G7_lCfmgCS4OX1O0RYuI8(Lcom/android/server/power/stats/BatteryHistoryDirectory;Ljava/util/List;Ljava/util/Set;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lambda$ensureInitialized$2(Ljava/util/List;Ljava/util/Set;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GNciJzgYSSxlT7k25HNe9uFcdo8(Lcom/android/server/power/stats/BatteryHistoryDirectory;Landroid/util/AtomicFile;[B)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lambda$writeFragment$0(Landroid/util/AtomicFile;[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$HJcDn7BYV6qYFdm9J-T1ZR61QyE(Lcom/android/server/power/stats/BatteryHistoryDirectory;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lambda$writeFragment$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$t-NcGBV2AhPe8Gl0d2zXWSPrsEM(Lcom/android/server/power/stats/BatteryHistoryDirectory;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lambda$ensureInitialized$3(Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 59
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/power/stats/BatteryHistoryDirectory;->FILE_FORMAT_PARCEL:[B

    .line 60
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->FILE_FORMAT_COMPRESSED_PARCEL:[B

    .line 92
    new-instance v0, Lcom/android/server/power/stats/BatteryHistoryDirectory$1;

    invoke-direct {v0}, Lcom/android/server/power/stats/BatteryHistoryDirectory$1;-><init>()V

    sput-object v0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->DEFAULT_COMPRESSOR:Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;

    return-void

    nop

    :array_0
    .array-data 1
        0x50t
        0x52t
        0x43t
        0x4ct
    .end array-data

    :array_1
    .array-data 1
        0x47t
        0x5at
        0x49t
        0x50t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 1
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxHistorySize"    # I

    .line 121
    sget-object v0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->DEFAULT_COMPRESSOR:Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;-><init>(Ljava/io/File;ILcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;)V
    .locals 2
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxHistorySize"    # I
    .param p3, "compressor"    # Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mWaitForDirectoryLock:Z

    .line 126
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    .line 127
    iput p2, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mMaxHistorySize:I

    .line 128
    iget v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mMaxHistorySize:I

    if-nez v0, :cond_0

    .line 129
    const-string v0, "BatteryHistoryDirectory"

    const-string/jumbo v1, "maxHistorySize should not be zero"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    iput-object p3, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mCompressor:Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;

    .line 132
    return-void
.end method

.method private deleteFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    .line 309
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 310
    move-object v0, p1

    check-cast v0, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 311
    return-void
.end method

.method private ensureInitialized()V
    .locals 8

    .line 324
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 325
    return-void

    .line 328
    :cond_0
    const-wide/32 v0, 0x80000

    const-string v2, "BatteryStatsHistory.load"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 329
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 330
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 331
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HistoryDir does not exist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BatteryHistoryDirectory"

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v4, "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 336
    .local v5, "dedup":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;>;"
    iget-object v6, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    new-instance v7, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v4, v5}, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/BatteryHistoryDirectory;Ljava/util/List;Ljava/util/Set;)V

    invoke-virtual {v6, v7}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 351
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 352
    iget-object v6, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 353
    iget-object v6, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 355
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mInitialized:Z

    .line 356
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 358
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v4}, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/BatteryHistoryDirectory;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 370
    :cond_3
    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 372
    :goto_0
    return-void
.end method

.method private synthetic lambda$ensureInitialized$2(Ljava/util/List;Ljava/util/Set;Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .param p1, "toRemove"    # Ljava/util/List;
    .param p2, "dedup"    # Ljava/util/Set;
    .param p3, "dir"    # Ljava/io/File;
    .param p4, "name"    # Ljava/lang/String;

    .line 337
    const-string v0, ".bh"

    invoke-virtual {p4, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 338
    .local v0, "b":I
    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 339
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    return v1

    .line 343
    :cond_0
    :try_start_0
    invoke-virtual {p4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 344
    .local v2, "monotonicTime":J
    new-instance v4, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object v5, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    invoke-direct {v4, v5, v2, v3}, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;-><init>(Ljava/io/File;J)V

    invoke-interface {p2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    nop

    .line 349
    .end local v2    # "monotonicTime":J
    const/4 v1, 0x1

    return v1

    .line 345
    :catch_0
    move-exception v2

    .line 346
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    return v1
.end method

.method private synthetic lambda$ensureInitialized$3(Ljava/util/List;)V
    .locals 6
    .param p1, "toRemove"    # Ljava/util/List;

    .line 359
    const-string v0, "BatteryStatsHistory.load"

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    .line 361
    const/4 v1, 0x0

    const-wide/32 v2, 0x80000

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 362
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    nop

    .end local v5    # "file":Ljava/io/File;
    goto :goto_0

    .line 365
    :catchall_0
    move-exception v4

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 366
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 367
    nop

    .line 368
    return-void

    .line 365
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 366
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 367
    throw v4
.end method

.method private synthetic lambda$writeFragment$0(Landroid/util/AtomicFile;[B)V
    .locals 0
    .param p1, "file"    # Landroid/util/AtomicFile;
    .param p2, "data"    # [B

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->writeHistoryFragmentCompressed(Landroid/util/AtomicFile;[B)V

    return-void
.end method

.method private synthetic lambda$writeFragment$1()V
    .locals 0

    .line 197
    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->trim()V

    return-void
.end method

.method private static readByte(Ljava/io/InputStream;)I
    .locals 2
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 540
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 541
    .local v0, "out":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 544
    return v0

    .line 542
    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
.end method

.method private static readInt(Ljava/io/InputStream;)I
    .locals 2
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 533
    invoke-static {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->readByte(Ljava/io/InputStream;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    .line 534
    invoke-static {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->readByte(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 535
    invoke-static {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->readByte(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 536
    invoke-static {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->readByte(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    .line 533
    return v0
.end method

.method private trim()V
    .locals 7

    .line 497
    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    .line 499
    const-string v0, "BatteryStatsHistory.trim"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 501
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 504
    const/4 v0, 0x0

    .line 505
    .local v0, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 506
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    add-int/2addr v0, v4

    .line 505
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 518
    .end local v0    # "size":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 510
    .restart local v0    # "size":I
    :cond_0
    :goto_1
    iget v3, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mMaxHistorySize:I

    if-le v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 511
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    .line 512
    .local v3, "oldest":Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;
    iget-object v5, v3, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    .line 513
    .local v5, "length":I
    iget-object v6, v3, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->delete()V

    .line 514
    iget-object v6, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 515
    sub-int/2addr v0, v5

    .line 516
    .end local v3    # "oldest":Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;
    .end local v5    # "length":I
    goto :goto_1

    .line 518
    .end local v0    # "size":I
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 519
    nop

    .line 521
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 522
    nop

    .line 523
    return-void

    .line 521
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 518
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 519
    nop

    .end local p0    # "this":Lcom/android/server/power/stats/BatteryHistoryDirectory;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 521
    .restart local p0    # "this":Lcom/android/server/power/stats/BatteryHistoryDirectory;
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 522
    throw v0
.end method

.method private writeHistoryFragmentCompressed(Landroid/util/AtomicFile;[B)V
    .locals 9
    .param p1, "file"    # Landroid/util/AtomicFile;
    .param p2, "data"    # [B

    .line 206
    array-length v0, p2

    int-to-long v0, v0

    .line 207
    .local v0, "uncompressedSize":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 208
    return-void

    .line 211
    :cond_0
    const-string v2, "BatteryStatsHistory.compressHistoryFile"

    const-wide/32 v3, 0x80000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    .line 213
    const/4 v2, 0x0

    .line 215
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 216
    .local v5, "startTimeNs":J
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v7

    move-object v2, v7

    .line 217
    sget-object v7, Lcom/android/server/power/stats/BatteryHistoryDirectory;->FILE_FORMAT_COMPRESSED_PARCEL:[B

    invoke-virtual {v2, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 218
    array-length v7, p2

    invoke-static {v2, v7}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->writeInt(Ljava/io/OutputStream;I)V

    .line 220
    iget-object v7, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mCompressor:Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;

    invoke-interface {v7, v2, p2}, Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;->compress(Ljava/io/OutputStream;[B)V

    .line 221
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    .end local v5    # "startTimeNs":J
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 238
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 239
    goto :goto_1

    .line 237
    :catchall_0
    move-exception v5

    goto :goto_2

    .line 233
    :catch_0
    move-exception v5

    nop

    .line 234
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "BatteryHistoryDirectory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error compressing battery history chunk "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 240
    :goto_1
    return-void

    .line 237
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 238
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 239
    throw v5
.end method

.method private static writeInt(Ljava/io/OutputStream;I)V
    .locals 1
    .param p0, "stream"    # Ljava/io/OutputStream;
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    shr-int/lit8 v0, p1, 0x18

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 527
    shr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 528
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 529
    shr-int/lit8 v0, p1, 0x0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 530
    return-void
.end method


# virtual methods
.method public createFragment(J)Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    .locals 5
    .param p1, "monotonicStartTime"    # J

    .line 431
    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    .line 433
    new-instance v0, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;-><init>(Ljava/io/File;J)V

    .line 434
    .local v0, "file":Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    .line 437
    :try_start_0
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    goto :goto_0

    .line 443
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 438
    :catch_0
    move-exception v1

    nop

    .line 439
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "BatteryHistoryDirectory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create history file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 444
    nop

    .line 446
    return-object v0

    .line 443
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 444
    throw v1
.end method

.method public getEarliestFragment()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    .locals 2

    .line 403
    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    .line 404
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 407
    return-object v0

    .line 411
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 409
    :cond_0
    nop

    .line 411
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 409
    const/4 v0, 0x0

    return-object v0

    .line 411
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 412
    throw v0
.end method

.method getFileNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 388
    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    .line 389
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    .line 391
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    .line 393
    .local v2, "historyFile":Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;
    iget-object v3, v2, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    nop

    .end local v2    # "historyFile":Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;
    goto :goto_0

    .line 397
    .end local v0    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 395
    .restart local v0    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    nop

    .line 397
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 395
    return-object v0

    .line 397
    .end local v0    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 398
    throw v0
.end method

.method public getFragments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;",
            ">;"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    .line 382
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    return-object v0

    .line 378
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Reading battery history without a lock"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLatestFragment()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    .locals 2

    .line 417
    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    .line 418
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 421
    return-object v0

    .line 425
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 423
    :cond_0
    nop

    .line 425
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 423
    const/4 v0, 0x0

    return-object v0

    .line 425
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 426
    throw v0
.end method

.method public getMaxHistorySize()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mMaxHistorySize:I

    return v0
.end method

.method public getSize()I
    .locals 4

    .line 464
    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    .line 466
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, "ret":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 470
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 469
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 474
    .end local v0    # "ret":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 469
    .restart local v0    # "ret":I
    .restart local v1    # "i":I
    :cond_0
    nop

    .line 472
    .end local v1    # "i":I
    nop

    .line 474
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 472
    return v0

    .line 474
    .end local v0    # "ret":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 475
    throw v0
.end method

.method public hasCompletedFragments()Z
    .locals 2

    .line 451
    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    .line 453
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 458
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 456
    return v1

    .line 458
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 459
    throw v0
.end method

.method public isLocked()Z
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    return v0
.end method

.method public lock()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 154
    return-void
.end method

.method makeDirectoryLockUnconditional()V
    .locals 1

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mWaitForDirectoryLock:Z

    .line 163
    return-void
.end method

.method public readFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)[B
    .locals 17
    .param p1, "fragment"    # Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    .line 244
    const-string v1, "BatteryHistoryDirectory"

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    .line 245
    .local v2, "file":Landroid/util/AtomicFile;
    invoke-virtual {v2}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 246
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->deleteFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V

    .line 247
    return-object v3

    .line 249
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 250
    .local v4, "start":J
    const-string v0, "BatteryStatsHistory.read"

    const-wide/32 v6, 0x80000

    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 251
    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v0

    .line 252
    .local v8, "stream":Ljava/io/FileInputStream;
    const/4 v0, 0x4

    :try_start_1
    new-array v9, v0, [B

    .line 253
    .local v9, "header":[B
    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v11, -0x1

    const-string v12, "Invalid battery history file format "

    if-ne v0, v11, :cond_2

    .line 254
    :try_start_2
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v0, v13, v15

    if-nez v0, :cond_1

    .line 255
    new-array v0, v10, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 299
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 304
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 255
    return-object v0

    .line 304
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .end local v9    # "header":[B
    :catchall_0
    move-exception v0

    move-object/from16 v13, p0

    goto/16 :goto_9

    .line 299
    :catch_0
    move-exception v0

    move-object/from16 v13, p0

    move-object/from16 v16, v3

    goto/16 :goto_8

    .line 251
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v0

    move-object/from16 v13, p0

    :goto_0
    move-object/from16 v16, v3

    :goto_1
    move-object v3, v0

    goto/16 :goto_6

    .line 258
    .restart local v9    # "header":[B
    :cond_1
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->deleteFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 260
    nop

    .line 299
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 304
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 260
    return-object v3

    .line 264
    :cond_2
    :try_start_6
    sget-object v0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->FILE_FORMAT_COMPRESSED_PARCEL:[B

    invoke-static {v9, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    const/4 v0, 0x1

    .local v0, "isCompressed":Z
    goto :goto_2

    .line 266
    .end local v0    # "isCompressed":Z
    :cond_3
    sget-object v0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->FILE_FORMAT_PARCEL:[B

    invoke-static {v9, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 267
    const/4 v0, 0x0

    .line 274
    .restart local v0    # "isCompressed":Z
    :goto_2
    invoke-static {v8}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->readInt(Ljava/io/InputStream;)I

    move-result v10

    .line 275
    .local v10, "size":I
    if-ltz v10, :cond_8

    const v13, 0x989680

    if-le v10, v13, :cond_4

    move-object/from16 v13, p0

    move-object/from16 v16, v3

    goto :goto_5

    .line 281
    :cond_4
    new-array v12, v10, [B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 282
    .local v12, "data":[B
    if-eqz v0, :cond_5

    .line 283
    move-object/from16 v13, p0

    :try_start_7
    iget-object v11, v13, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mCompressor:Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;

    invoke-interface {v11, v12, v8}, Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;->uncompress([BLjava/io/InputStream;)V

    move-object/from16 v16, v3

    goto :goto_4

    .line 251
    .end local v0    # "isCompressed":Z
    .end local v9    # "header":[B
    .end local v10    # "size":I
    .end local v12    # "data":[B
    :catchall_2
    move-exception v0

    goto :goto_0

    .line 285
    .restart local v0    # "isCompressed":Z
    .restart local v9    # "header":[B
    .restart local v10    # "size":I
    .restart local v12    # "data":[B
    :cond_5
    move-object/from16 v13, p0

    const/4 v14, 0x0

    .line 286
    .local v14, "pos":I
    :goto_3
    array-length v15, v12

    if-ge v14, v15, :cond_7

    .line 287
    array-length v15, v12

    sub-int/2addr v15, v14

    invoke-virtual {v8, v12, v14, v15}, Ljava/io/FileInputStream;->read([BII)I

    move-result v15

    .line 288
    .local v15, "count":I
    if-eq v15, v11, :cond_6

    .line 291
    add-int/2addr v14, v15

    .line 292
    .end local v15    # "count":I
    goto :goto_3

    .line 289
    .restart local v15    # "count":I
    :cond_6
    new-instance v11, Ljava/io/IOException;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v16, v3

    :try_start_8
    const-string v3, "Invalid battery history file format"

    invoke-direct {v11, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "file":Landroid/util/AtomicFile;
    .end local v4    # "start":J
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/power/stats/BatteryHistoryDirectory;
    .end local p1    # "fragment":Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    throw v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 251
    .end local v0    # "isCompressed":Z
    .end local v9    # "header":[B
    .end local v10    # "size":I
    .end local v12    # "data":[B
    .end local v14    # "pos":I
    .end local v15    # "count":I
    .restart local v2    # "file":Landroid/util/AtomicFile;
    .restart local v4    # "start":J
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/power/stats/BatteryHistoryDirectory;
    .restart local p1    # "fragment":Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    :catchall_3
    move-exception v0

    goto :goto_1

    .line 286
    .restart local v0    # "isCompressed":Z
    .restart local v9    # "header":[B
    .restart local v10    # "size":I
    .restart local v12    # "data":[B
    .restart local v14    # "pos":I
    :cond_7
    move-object/from16 v16, v3

    .line 298
    .end local v14    # "pos":I
    :goto_4
    nop

    .line 299
    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 304
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 298
    return-object v12

    .line 304
    .end local v0    # "isCompressed":Z
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .end local v9    # "header":[B
    .end local v10    # "size":I
    .end local v12    # "data":[B
    :catchall_4
    move-exception v0

    goto/16 :goto_9

    .line 299
    :catch_1
    move-exception v0

    goto :goto_8

    .line 275
    .restart local v0    # "isCompressed":Z
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "header":[B
    .restart local v10    # "size":I
    :cond_8
    move-object/from16 v13, p0

    move-object/from16 v16, v3

    .line 276
    :goto_5
    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->deleteFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 278
    nop

    .line 299
    :try_start_b
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 304
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 278
    return-object v16

    .line 269
    .end local v0    # "isCompressed":Z
    .end local v10    # "size":I
    :cond_9
    move-object/from16 v13, p0

    move-object/from16 v16, v3

    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->deleteFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 271
    nop

    .line 299
    :try_start_d
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 304
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 271
    return-object v16

    .line 251
    .end local v9    # "header":[B
    :goto_6
    if-eqz v8, :cond_a

    :try_start_e
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    :try_start_f
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_7
    nop

    .end local v2    # "file":Landroid/util/AtomicFile;
    .end local v4    # "start":J
    .end local p0    # "this":Lcom/android/server/power/stats/BatteryHistoryDirectory;
    .end local p1    # "fragment":Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    throw v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 299
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "file":Landroid/util/AtomicFile;
    .restart local v4    # "start":J
    .restart local p0    # "this":Lcom/android/server/power/stats/BatteryHistoryDirectory;
    .restart local p1    # "fragment":Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    :goto_8
    nop

    .line 300
    .local v0, "e":Ljava/lang/Exception;
    :try_start_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading file "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->deleteFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 302
    nop

    .line 304
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 302
    return-object v16

    .line 304
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 305
    throw v0
.end method

.method public reset()V
    .locals 3

    .line 480
    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    .line 482
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    .line 488
    .local v1, "file":Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V

    .line 489
    .end local v1    # "file":Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;
    goto :goto_0

    .line 492
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 493
    nop

    .line 494
    return-void

    .line 492
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 493
    throw v0
.end method

.method public setFileCompressionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 135
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mFileCompressionEnabled:Z

    .line 136
    return-void
.end method

.method setMaxHistorySize(I)V
    .locals 0
    .param p1, "maxHistorySize"    # I

    .line 139
    iput p1, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mMaxHistorySize:I

    .line 140
    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->trim()V

    .line 141
    return-void
.end method

.method public tryLock()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mWaitForDirectoryLock:Z

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 169
    const/4 v0, 0x1

    return v0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    return v0
.end method

.method public unlock()V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 316
    return-void
.end method

.method public writeFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;[BZ)V
    .locals 6
    .param p1, "fragment"    # Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    .param p2, "data"    # [B
    .param p3, "fragmentComplete"    # Z

    .line 177
    move-object v0, p1

    check-cast v0, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    .line 178
    .local v0, "file":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 180
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 181
    .local v2, "startTimeMs":J
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v1, v4

    .line 182
    sget-object v4, Lcom/android/server/power/stats/BatteryHistoryDirectory;->FILE_FORMAT_PARCEL:[B

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 183
    array-length v4, p2

    invoke-static {v1, v4}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->writeInt(Ljava/io/OutputStream;I)V

    .line 184
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 185
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 186
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 192
    if-eqz p3, :cond_1

    .line 193
    iget-boolean v4, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mFileCompressionEnabled:Z

    if-eqz v4, :cond_0

    .line 194
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v0, p2}, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/stats/BatteryHistoryDirectory;Landroid/util/AtomicFile;[B)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 199
    .end local v2    # "startTimeMs":J
    :catch_0
    move-exception v2

    goto :goto_1

    .line 197
    .restart local v2    # "startTimeMs":J
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/stats/BatteryHistoryDirectory;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v2    # "startTimeMs":J
    :cond_1
    goto :goto_2

    .line 199
    :goto_1
    nop

    .line 200
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "BatteryHistoryDirectory"

    const-string v4, "Error writing battery history fragment"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 203
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method
