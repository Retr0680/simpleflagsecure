.class public Lorg/brotli/integration/BundleChecker;
.super Ljava/lang/Object;
.source "BundleChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final input:Ljava/io/InputStream;

.field private final nextJob:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final sanityCheck:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/concurrent/atomic/AtomicInteger;Z)V
    .locals 0
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "nextJob"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p3, "sanityCheck"    # Z

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/brotli/integration/BundleChecker;->input:Ljava/io/InputStream;

    .line 37
    iput-object p2, p0, Lorg/brotli/integration/BundleChecker;->nextJob:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    iput-boolean p3, p0, Lorg/brotli/integration/BundleChecker;->sanityCheck:Z

    .line 39
    return-void
.end method

.method private decompressAndCalculateCrc(Ljava/util/zip/ZipInputStream;)J
    .locals 4
    .param p1, "input"    # Ljava/util/zip/ZipInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    new-instance v0, Lorg/brotli/integration/BundleChecker$1;

    invoke-direct {v0, p0, p1}, Lorg/brotli/integration/BundleChecker$1;-><init>(Lorg/brotli/integration/BundleChecker;Ljava/io/InputStream;)V

    .line 48
    .local v0, "entryStream":Ljava/io/FilterInputStream;
    new-instance v1, Lorg/brotli/dec/BrotliInputStream;

    invoke-direct {v1, v0}, Lorg/brotli/dec/BrotliInputStream;-><init>(Ljava/io/InputStream;)V

    .line 51
    .local v1, "decompressedStream":Lorg/brotli/dec/BrotliInputStream;
    :try_start_0
    invoke-static {v1}, Lorg/brotli/integration/BundleHelper;->fingerprintStream(Ljava/io/InputStream;)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .local v2, "crc":J
    invoke-virtual {v1}, Lorg/brotli/dec/BrotliInputStream;->close()V

    .line 54
    nop

    .line 55
    return-wide v2

    .line 53
    .end local v2    # "crc":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lorg/brotli/dec/BrotliInputStream;->close()V

    .line 54
    throw v2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "argsOffset":I
    const/4 v1, 0x0

    .line 99
    .local v1, "sanityCheck":Z
    array-length v2, p0

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 100
    aget-object v2, p0, v3

    const-string v4, "-s"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    const/4 v1, 0x1

    .line 102
    const/4 v0, 0x1

    .line 105
    :cond_0
    array-length v2, p0

    if-eq v2, v0, :cond_2

    .line 108
    move v2, v0

    .local v2, "i":I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_1

    .line 109
    new-instance v4, Lorg/brotli/integration/BundleChecker;

    new-instance v5, Ljava/io/FileInputStream;

    aget-object v6, p0, v2

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-direct {v4, v5, v6, v1}, Lorg/brotli/integration/BundleChecker;-><init>(Ljava/io/InputStream;Ljava/util/concurrent/atomic/AtomicInteger;Z)V

    invoke-virtual {v4}, Lorg/brotli/integration/BundleChecker;->run()V

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 111
    .end local v2    # "i":I
    return-void

    .line 106
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Usage: BundleChecker [-s] <fileX.zip> ..."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 60
    const-string v0, ""

    .line 61
    .local v0, "entryName":Ljava/lang/String;
    new-instance v1, Ljava/util/zip/ZipInputStream;

    iget-object v2, p0, Lorg/brotli/integration/BundleChecker;->input:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 63
    .local v1, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v2, 0x0

    .line 65
    .local v2, "entryIndex":I
    :try_start_0
    iget-object v3, p0, Lorg/brotli/integration/BundleChecker;->nextJob:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    .line 66
    .local v3, "jobIndex":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    move-object v5, v4

    .local v5, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v4, :cond_5

    .line 67
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    goto :goto_0

    .line 70
    :cond_0
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "entryIndex":I
    .local v4, "entryIndex":I
    if-eq v2, v3, :cond_1

    .line 71
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 72
    move v2, v4

    goto :goto_0

    .line 91
    .end local v3    # "jobIndex":I
    .end local v4    # "entryIndex":I
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 74
    .restart local v3    # "jobIndex":I
    .restart local v4    # "entryIndex":I
    .restart local v5    # "entry":Ljava/util/zip/ZipEntry;
    :cond_1
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 75
    invoke-static {v0}, Lorg/brotli/integration/BundleHelper;->getExpectedFingerprint(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .local v6, "entryCrc":J
    :try_start_1
    invoke-direct {p0, v1}, Lorg/brotli/integration/BundleChecker;->decompressAndCalculateCrc(Ljava/util/zip/ZipInputStream;)J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/brotli/integration/BundleChecker;->sanityCheck:Z

    if-eqz v2, :cond_3

    :cond_2
    goto :goto_1

    .line 78
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v8, "CRC mismatch"

    invoke-direct {v2, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "entryName":Ljava/lang/String;
    .end local v1    # "zis":Ljava/util/zip/ZipInputStream;
    .end local v3    # "jobIndex":I
    .end local v4    # "entryIndex":I
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v6    # "entryCrc":J
    .end local p0    # "this":Lorg/brotli/integration/BundleChecker;
    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .restart local v0    # "entryName":Ljava/lang/String;
    .restart local v1    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v3    # "jobIndex":I
    .restart local v4    # "entryIndex":I
    .restart local v5    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v6    # "entryCrc":J
    .restart local p0    # "this":Lorg/brotli/integration/BundleChecker;
    :catch_0
    move-exception v2

    goto :goto_2

    .line 84
    :goto_1
    goto :goto_3

    .line 80
    :goto_2
    nop

    .line 81
    .local v2, "iox":Ljava/io/IOException;
    :try_start_2
    iget-boolean v8, p0, Lorg/brotli/integration/BundleChecker;->sanityCheck:Z

    if-eqz v8, :cond_4

    .line 85
    .end local v2    # "iox":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 86
    const-string v2, ""

    move-object v0, v2

    .line 87
    iget-object v2, p0, Lorg/brotli/integration/BundleChecker;->nextJob:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    move v3, v2

    .line 88
    .end local v6    # "entryCrc":J
    move v2, v4

    goto :goto_0

    .line 82
    .restart local v2    # "iox":Ljava/io/IOException;
    .restart local v6    # "entryCrc":J
    :cond_4
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Decompression failed"

    invoke-direct {v8, v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "entryName":Ljava/lang/String;
    .end local v1    # "zis":Ljava/util/zip/ZipInputStream;
    .end local p0    # "this":Lorg/brotli/integration/BundleChecker;
    throw v8

    .line 89
    .end local v4    # "entryIndex":I
    .end local v6    # "entryCrc":J
    .restart local v0    # "entryName":Ljava/lang/String;
    .restart local v1    # "zis":Ljava/util/zip/ZipInputStream;
    .local v2, "entryIndex":I
    .restart local p0    # "this":Lorg/brotli/integration/BundleChecker;
    :cond_5
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    .line 90
    iget-object v4, p0, Lorg/brotli/integration/BundleChecker;->input:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    .end local v2    # "entryIndex":I
    .end local v3    # "jobIndex":I
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    nop

    .line 94
    return-void

    .line 91
    :goto_4
    nop

    .line 92
    .local v2, "ex":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
