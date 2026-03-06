.class LTestAllocSpeed;
.super Ljava/lang/Object;
.source "TestAllocSpeed.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static compressing:Z

.field private static volatile exception:Ljava/io/IOException;

.field private static repeats:I

.field private static final testdata:[B

.field private static testdataSize:I


# instance fields
.field private final rng:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/high16 v0, 0x100000

    new-array v0, v0, [B

    sput-object v0, LTestAllocSpeed;->testdata:[B

    .line 37
    const/4 v0, 0x0

    sput-object v0, LTestAllocSpeed;->exception:Ljava/io/IOException;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "seed"    # J

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p1, p2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, LTestAllocSpeed;->rng:Ljava/util/Random;

    .line 43
    return-void
.end method

.method private compress()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    sget v1, LTestAllocSpeed;->testdataSize:I

    add-int/lit16 v1, v1, 0x400

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 48
    .local v0, "byteStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/tukaani/xz/LZMA2Options;

    invoke-direct {v1}, Lorg/tukaani/xz/LZMA2Options;-><init>()V

    .line 49
    .local v1, "options":Lorg/tukaani/xz/LZMA2Options;
    iget-object v2, p0, LTestAllocSpeed;->rng:Ljava/util/Random;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x10

    const/4 v3, 0x1

    shl-int v2, v3, v2

    invoke-virtual {v1, v2}, Lorg/tukaani/xz/LZMA2Options;->setDictSize(I)V

    .line 51
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget v3, LTestAllocSpeed;->repeats:I

    if-ge v2, v3, :cond_0

    .line 52
    new-instance v3, Lorg/tukaani/xz/XZOutputStream;

    invoke-direct {v3, v0, v1}, Lorg/tukaani/xz/XZOutputStream;-><init>(Ljava/io/OutputStream;Lorg/tukaani/xz/FilterOptions;)V

    .line 53
    .local v3, "out":Lorg/tukaani/xz/XZOutputStream;
    sget-object v4, LTestAllocSpeed;->testdata:[B

    const/4 v5, 0x0

    sget v6, LTestAllocSpeed;->testdataSize:I

    invoke-virtual {v3, v4, v5, v6}, Lorg/tukaani/xz/XZOutputStream;->write([BII)V

    .line 54
    invoke-virtual {v3}, Lorg/tukaani/xz/XZOutputStream;->finish()V

    .line 51
    .end local v3    # "out":Lorg/tukaani/xz/XZOutputStream;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 56
    .end local v2    # "i":I
    return-void
.end method

.method private decompress()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, LTestAllocSpeed;->testdata:[B

    const/4 v2, 0x0

    sget v3, LTestAllocSpeed;->testdataSize:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 61
    .local v0, "byteStream":Ljava/io/ByteArrayInputStream;
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 63
    .local v1, "outbuf":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget v3, LTestAllocSpeed;->repeats:I

    if-ge v2, v3, :cond_1

    .line 64
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 65
    new-instance v3, Lorg/tukaani/xz/XZInputStream;

    invoke-direct {v3, v0}, Lorg/tukaani/xz/XZInputStream;-><init>(Ljava/io/InputStream;)V

    .line 66
    .local v3, "in":Lorg/tukaani/xz/XZInputStream;
    :goto_1
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    goto :goto_1

    .line 63
    .end local v3    # "in":Lorg/tukaani/xz/XZInputStream;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 68
    .end local v2    # "i":I
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, LTestAllocSpeed;->compressing:Z

    .line 84
    const/4 v0, 0x1

    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, LTestAllocSpeed;->repeats:I

    .line 85
    const/4 v1, 0x2

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 87
    .local v1, "threadCount":I
    if-lt v1, v0, :cond_3

    const/16 v0, 0x40

    if-gt v1, v0, :cond_3

    .line 90
    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    sget-object v2, LTestAllocSpeed;->testdata:[B

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    sput v0, LTestAllocSpeed;->testdataSize:I

    .line 92
    invoke-static {}, Lorg/tukaani/xz/BasicArrayCache;->getInstance()Lorg/tukaani/xz/BasicArrayCache;

    move-result-object v0

    invoke-static {v0}, Lorg/tukaani/xz/ArrayCache;->setDefaultCache(Lorg/tukaani/xz/ArrayCache;)V

    .line 94
    new-array v0, v1, [Ljava/lang/Thread;

    .line 95
    .local v0, "threads":[Ljava/lang/Thread;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 96
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, LTestAllocSpeed;

    int-to-long v5, v2

    invoke-direct {v4, v5, v6}, LTestAllocSpeed;-><init>(J)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v3, v0, v2

    .line 97
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 100
    .end local v2    # "i":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 101
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 103
    .end local v2    # "i":I
    sget-object v2, LTestAllocSpeed;->exception:Ljava/io/IOException;

    if-nez v2, :cond_2

    .line 105
    return-void

    .line 104
    :cond_2
    sget-object v2, LTestAllocSpeed;->exception:Ljava/io/IOException;

    throw v2

    .line 88
    .end local v0    # "threads":[Ljava/lang/Thread;
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Thread count must be 1-64"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 72
    :try_start_0
    sget-boolean v0, LTestAllocSpeed;->compressing:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, LTestAllocSpeed;->compress()V

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    goto :goto_1

    .line 75
    :cond_0
    invoke-direct {p0}, LTestAllocSpeed;->decompress()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    goto :goto_2

    .line 77
    :goto_1
    nop

    .line 78
    .local v0, "e":Ljava/io/IOException;
    sput-object v0, LTestAllocSpeed;->exception:Ljava/io/IOException;

    .line 80
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method
