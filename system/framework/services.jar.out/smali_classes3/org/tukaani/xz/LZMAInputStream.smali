.class public Lorg/tukaani/xz/LZMAInputStream;
.super Ljava/io/InputStream;
.source "LZMAInputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DICT_SIZE_MAX:I = 0x7ffffff0


# instance fields
.field private arrayCache:Lorg/tukaani/xz/ArrayCache;

.field private endReached:Z

.field private exception:Ljava/io/IOException;

.field private in:Ljava/io/InputStream;

.field private lz:Lorg/tukaani/xz/lz/LZDecoder;

.field private lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

.field private rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

.field private relaxedEndCondition:Z

.field private remainingSize:J

.field private final tempBuf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lorg/tukaani/xz/LZMAInputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/tukaani/xz/LZMAInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 186
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "memoryLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/tukaani/xz/LZMAInputStream;-><init>(Ljava/io/InputStream;ILorg/tukaani/xz/ArrayCache;)V

    .line 257
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILorg/tukaani/xz/ArrayCache;)V
    .locals 12
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "memoryLimit"    # I
    .param p3, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    .line 57
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->relaxedEndCondition:Z

    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    .line 298
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 301
    .local v0, "inData":Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 304
    .local v5, "propsByte":B
    const/4 v1, 0x0

    .line 305
    .local v1, "dictSize":I
    const/4 v2, 0x0

    move v6, v1

    .end local v1    # "dictSize":I
    .local v2, "i":I
    .local v6, "dictSize":I
    :goto_0
    const/4 v1, 0x4

    if-ge v2, v1, :cond_0

    .line 306
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    mul-int/lit8 v3, v2, 0x8

    shl-int/2addr v1, v3

    or-int/2addr v6, v1

    .line 305
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 312
    .end local v2    # "i":I
    const-wide/16 v1, 0x0

    .line 313
    .local v1, "uncompSize":J
    const/4 v3, 0x0

    move-wide v10, v1

    move v1, v3

    move-wide v3, v10

    .local v1, "i":I
    .local v3, "uncompSize":J
    :goto_1
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 314
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    int-to-long v7, v2

    mul-int/lit8 v2, v1, 0x8

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 317
    .end local v1    # "i":I
    invoke-static {v6, v5}, Lorg/tukaani/xz/LZMAInputStream;->getMemoryUsage(IB)I

    move-result v9

    .line 318
    .local v9, "memoryNeeded":I
    const/4 v1, -0x1

    if-eq p2, v1, :cond_2

    if-gt v9, p2, :cond_3

    :cond_2
    goto :goto_2

    .line 319
    :cond_3
    new-instance v1, Lorg/tukaani/xz/MemoryLimitException;

    invoke-direct {v1, v9, p2}, Lorg/tukaani/xz/MemoryLimitException;-><init>(II)V

    throw v1

    .line 321
    :goto_2
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v8, p3

    .end local p1    # "in":Ljava/io/InputStream;
    .end local p3    # "arrayCache":Lorg/tukaani/xz/ArrayCache;
    .local v2, "in":Ljava/io/InputStream;
    .local v8, "arrayCache":Lorg/tukaani/xz/ArrayCache;
    invoke-direct/range {v1 .. v8}, Lorg/tukaani/xz/LZMAInputStream;->initialize(Ljava/io/InputStream;JBI[BLorg/tukaani/xz/ArrayCache;)V

    .line 322
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JBI)V
    .locals 9
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "uncompSize"    # J
    .param p4, "propsByte"    # B
    .param p5, "dictSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    .line 57
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->relaxedEndCondition:Z

    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    .line 372
    nop

    .line 373
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v8

    .line 372
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    .end local p1    # "in":Ljava/io/InputStream;
    .end local p2    # "uncompSize":J
    .end local p4    # "propsByte":B
    .end local p5    # "dictSize":I
    .local v2, "in":Ljava/io/InputStream;
    .local v3, "uncompSize":J
    .local v5, "propsByte":B
    .local v6, "dictSize":I
    invoke-direct/range {v1 .. v8}, Lorg/tukaani/xz/LZMAInputStream;->initialize(Ljava/io/InputStream;JBI[BLorg/tukaani/xz/ArrayCache;)V

    .line 374
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JBI[B)V
    .locals 9
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "uncompSize"    # J
    .param p4, "propsByte"    # B
    .param p5, "dictSize"    # I
    .param p6, "presetDict"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 410
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    .line 57
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->relaxedEndCondition:Z

    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    .line 411
    nop

    .line 412
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v8

    .line 411
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move-object v7, p6

    .end local p1    # "in":Ljava/io/InputStream;
    .end local p2    # "uncompSize":J
    .end local p4    # "propsByte":B
    .end local p5    # "dictSize":I
    .end local p6    # "presetDict":[B
    .local v2, "in":Ljava/io/InputStream;
    .local v3, "uncompSize":J
    .local v5, "propsByte":B
    .local v6, "dictSize":I
    .local v7, "presetDict":[B
    invoke-direct/range {v1 .. v8}, Lorg/tukaani/xz/LZMAInputStream;->initialize(Ljava/io/InputStream;JBI[BLorg/tukaani/xz/ArrayCache;)V

    .line 413
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JBI[BLorg/tukaani/xz/ArrayCache;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "uncompSize"    # J
    .param p4, "propsByte"    # B
    .param p5, "dictSize"    # I
    .param p6, "presetDict"    # [B
    .param p7, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    .line 57
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->relaxedEndCondition:Z

    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    .line 459
    invoke-direct/range {p0 .. p7}, Lorg/tukaani/xz/LZMAInputStream;->initialize(Ljava/io/InputStream;JBI[BLorg/tukaani/xz/ArrayCache;)V

    .line 461
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JIIII[B)V
    .locals 10
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "uncompSize"    # J
    .param p4, "lc"    # I
    .param p5, "lp"    # I
    .param p6, "pb"    # I
    .param p7, "dictSize"    # I
    .param p8, "presetDict"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 56
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    .line 57
    iput-boolean v1, p0, Lorg/tukaani/xz/LZMAInputStream;->relaxedEndCondition:Z

    .line 59
    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    .line 67
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    .line 499
    nop

    .line 500
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v9

    .line 499
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lorg/tukaani/xz/LZMAInputStream;->initialize(Ljava/io/InputStream;JIIII[BLorg/tukaani/xz/ArrayCache;)V

    .line 501
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JIIII[BLorg/tukaani/xz/ArrayCache;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "uncompSize"    # J
    .param p4, "lc"    # I
    .param p5, "lp"    # I
    .param p6, "pb"    # I
    .param p7, "dictSize"    # I
    .param p8, "presetDict"    # [B
    .param p9, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 547
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    .line 57
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->relaxedEndCondition:Z

    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    .line 548
    invoke-direct/range {p0 .. p9}, Lorg/tukaani/xz/LZMAInputStream;->initialize(Ljava/io/InputStream;JIIII[BLorg/tukaani/xz/ArrayCache;)V

    .line 550
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/tukaani/xz/ArrayCache;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/tukaani/xz/LZMAInputStream;-><init>(Ljava/io/InputStream;ILorg/tukaani/xz/ArrayCache;)V

    .line 222
    return-void
.end method

.method private static getDictSize(I)I
    .locals 2
    .param p0, "dictSize"    # I

    .line 139
    if-ltz p0, :cond_1

    const v0, 0x7ffffff0

    if-gt p0, v0, :cond_1

    .line 153
    const/16 v0, 0x1000

    if-ge p0, v0, :cond_0

    .line 154
    const/16 p0, 0x1000

    .line 158
    :cond_0
    add-int/lit8 v0, p0, 0xf

    and-int/lit8 v0, v0, -0x10

    return v0

    .line 140
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LZMA dictionary is too big for this implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMemoryUsage(IB)I
    .locals 4
    .param p0, "dictSize"    # I
    .param p1, "propsByte"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;,
            Lorg/tukaani/xz/CorruptedInputException;
        }
    .end annotation

    .line 92
    if-ltz p0, :cond_1

    const v0, 0x7ffffff0

    if-gt p0, v0, :cond_1

    .line 96
    and-int/lit16 v0, p1, 0xff

    .line 97
    .local v0, "props":I
    const/16 v1, 0xe0

    if-gt v0, v1, :cond_0

    .line 100
    rem-int/lit8 v0, v0, 0x2d

    .line 101
    div-int/lit8 v1, v0, 0x9

    .line 102
    .local v1, "lp":I
    mul-int/lit8 v2, v1, 0x9

    sub-int v2, v0, v2

    .line 104
    .local v2, "lc":I
    invoke-static {p0, v2, v1}, Lorg/tukaani/xz/LZMAInputStream;->getMemoryUsage(III)I

    move-result v3

    return v3

    .line 98
    .end local v1    # "lp":I
    .end local v2    # "lc":I
    :cond_0
    new-instance v1, Lorg/tukaani/xz/CorruptedInputException;

    const-string v2, "Invalid LZMA properties byte"

    invoke-direct {v1, v2}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    .end local v0    # "props":I
    :cond_1
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v1, "LZMA dictionary is too big for this implementation"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMemoryUsage(III)I
    .locals 3
    .param p0, "dictSize"    # I
    .param p1, "lc"    # I
    .param p2, "lp"    # I

    .line 124
    if-ltz p1, :cond_0

    const/16 v0, 0x8

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    const/4 v0, 0x4

    if-gt p2, v0, :cond_0

    .line 134
    invoke-static {p0}, Lorg/tukaani/xz/LZMAInputStream;->getDictSize(I)I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    add-int/lit8 v0, v0, 0xa

    const/16 v1, 0x600

    add-int v2, p1, p2

    shl-int/2addr v1, v2

    div-int/lit16 v1, v1, 0x400

    add-int/2addr v0, v1

    return v0

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid lc or lp"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initialize(Ljava/io/InputStream;JBI[BLorg/tukaani/xz/ArrayCache;)V
    .locals 12
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "uncompSize"    # J
    .param p4, "propsByte"    # B
    .param p5, "dictSize"    # I
    .param p6, "presetDict"    # [B
    .param p7, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 558
    move/from16 v7, p5

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-ltz v0, :cond_2

    .line 564
    move/from16 v10, p4

    and-int/lit16 v0, v10, 0xff

    .line 565
    .local v0, "props":I
    const/16 v1, 0xe0

    if-gt v0, v1, :cond_1

    .line 568
    div-int/lit8 v6, v0, 0x2d

    .line 569
    .local v6, "pb":I
    mul-int/lit8 v1, v6, 0x9

    mul-int/lit8 v1, v1, 0x5

    sub-int v11, v0, v1

    .line 570
    .end local v0    # "props":I
    .local v11, "props":I
    div-int/lit8 v5, v11, 0x9

    .line 571
    .local v5, "lp":I
    mul-int/lit8 v0, v5, 0x9

    sub-int v4, v11, v0

    .line 575
    .local v4, "lc":I
    if-ltz v7, :cond_0

    const v0, 0x7ffffff0

    if-gt v7, v0, :cond_0

    .line 579
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lorg/tukaani/xz/LZMAInputStream;->initialize(Ljava/io/InputStream;JIIII[BLorg/tukaani/xz/ArrayCache;)V

    .line 581
    return-void

    .line 576
    :cond_0
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v1, "LZMA dictionary is too big for this implementation"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    .end local v4    # "lc":I
    .end local v5    # "lp":I
    .end local v6    # "pb":I
    .end local v11    # "props":I
    .restart local v0    # "props":I
    :cond_1
    new-instance v1, Lorg/tukaani/xz/CorruptedInputException;

    const-string v2, "Invalid LZMA properties byte"

    invoke-direct {v1, v2}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 559
    .end local v0    # "props":I
    :cond_2
    move/from16 v10, p4

    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v1, "Uncompressed size is too big"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initialize(Ljava/io/InputStream;JIIII[BLorg/tukaani/xz/ArrayCache;)V
    .locals 9
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "uncompSize"    # J
    .param p4, "lc"    # I
    .param p5, "lp"    # I
    .param p6, "pb"    # I
    .param p7, "dictSize"    # I
    .param p8, "presetDict"    # [B
    .param p9, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 590
    move-object/from16 v6, p9

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    if-ltz p4, :cond_1

    const/16 v0, 0x8

    if-gt p4, v0, :cond_1

    if-ltz p5, :cond_1

    const/4 v0, 0x4

    if-gt p5, v0, :cond_1

    if-ltz p6, :cond_1

    if-gt p6, v0, :cond_1

    .line 594
    iput-object p1, p0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    .line 595
    iput-object v6, p0, Lorg/tukaani/xz/LZMAInputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    .line 599
    invoke-static/range {p7 .. p7}, Lorg/tukaani/xz/LZMAInputStream;->getDictSize(I)I

    move-result v0

    .line 600
    .end local p7    # "dictSize":I
    .local v0, "dictSize":I
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-ltz v1, :cond_0

    int-to-long v1, v0

    cmp-long v1, v1, p2

    if-lez v1, :cond_0

    .line 601
    long-to-int v1, p2

    invoke-static {v1}, Lorg/tukaani/xz/LZMAInputStream;->getDictSize(I)I

    move-result v0

    move v7, v0

    goto :goto_0

    .line 603
    :cond_0
    move v7, v0

    .end local v0    # "dictSize":I
    .local v7, "dictSize":I
    :goto_0
    new-instance v0, Lorg/tukaani/xz/lz/LZDecoder;

    invoke-static {v7}, Lorg/tukaani/xz/LZMAInputStream;->getDictSize(I)I

    move-result v1

    move-object/from16 v8, p8

    invoke-direct {v0, v1, v8, v6}, Lorg/tukaani/xz/lz/LZDecoder;-><init>(I[BLorg/tukaani/xz/ArrayCache;)V

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    .line 604
    new-instance v0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

    invoke-direct {v0, p1}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

    .line 605
    new-instance v0, Lorg/tukaani/xz/lzma/LZMADecoder;

    iget-object v1, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    iget-object v2, p0, Lorg/tukaani/xz/LZMAInputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/tukaani/xz/lzma/LZMADecoder;-><init>(Lorg/tukaani/xz/lz/LZDecoder;Lorg/tukaani/xz/rangecoder/RangeDecoder;III)V

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    .line 607
    iput-wide p2, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    .line 608
    return-void

    .line 590
    .end local v7    # "dictSize":I
    .restart local p7    # "dictSize":I
    :cond_1
    move-object/from16 v8, p8

    .line 592
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private putArraysToCache()V
    .locals 2

    .line 770
    iget-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    iget-object v1, p0, Lorg/tukaani/xz/LZMAInputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-virtual {v0, v1}, Lorg/tukaani/xz/lz/LZDecoder;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    .line 772
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    .line 774
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 783
    iget-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 784
    invoke-direct {p0}, Lorg/tukaani/xz/LZMAInputStream;->putArraysToCache()V

    .line 787
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 789
    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    .line 790
    goto :goto_0

    .line 789
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    .line 790
    throw v1

    .line 792
    :cond_0
    :goto_0
    return-void
.end method

.method public enableRelaxedEndCondition()V
    .locals 1

    .line 634
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->relaxedEndCondition:Z

    .line 635
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 657
    iget-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/tukaani/xz/LZMAInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    :goto_0
    return v1
.end method

.method public read([BII)I
    .locals 11
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 684
    if-ltz p2, :cond_c

    if-ltz p3, :cond_c

    add-int v0, p2, p3

    if-ltz v0, :cond_c

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_c

    .line 687
    if-nez p3, :cond_0

    .line 688
    const/4 v0, 0x0

    return v0

    .line 690
    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_b

    .line 693
    iget-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_a

    .line 696
    iget-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 697
    return v1

    .line 700
    :cond_1
    const/4 v0, 0x0

    .line 702
    .local v0, "size":I
    :goto_0
    if-lez p3, :cond_9

    .line 706
    move v2, p3

    .line 707
    .local v2, "copySizeMax":I
    :try_start_0
    iget-wide v3, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_2

    iget-wide v3, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    int-to-long v7, p3

    cmp-long v3, v3, v7

    if-gez v3, :cond_2

    .line 708
    iget-wide v3, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    long-to-int v2, v3

    goto :goto_1

    .line 763
    .end local v0    # "size":I
    .end local v2    # "copySizeMax":I
    :catch_0
    move-exception v0

    goto/16 :goto_4

    .line 710
    .restart local v0    # "size":I
    .restart local v2    # "copySizeMax":I
    :cond_2
    :goto_1
    iget-object v3, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v3, v2}, Lorg/tukaani/xz/lz/LZDecoder;->setLimit(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    const/4 v3, 0x1

    :try_start_1
    iget-object v4, p0, Lorg/tukaani/xz/LZMAInputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-virtual {v4}, Lorg/tukaani/xz/lzma/LZMADecoder;->decode()V
    :try_end_1
    .catch Lorg/tukaani/xz/CorruptedInputException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 730
    goto :goto_2

    .line 715
    :catch_1
    move-exception v4

    nop

    .line 720
    .local v4, "e":Lorg/tukaani/xz/CorruptedInputException;
    :try_start_2
    iget-wide v7, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_8

    iget-object v7, p0, Lorg/tukaani/xz/LZMAInputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-virtual {v7}, Lorg/tukaani/xz/lzma/LZMADecoder;->endMarkerDetected()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 723
    iput-boolean v3, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    .line 729
    iget-object v7, p0, Lorg/tukaani/xz/LZMAInputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

    invoke-virtual {v7}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;->normalize()V

    .line 733
    .end local v4    # "e":Lorg/tukaani/xz/CorruptedInputException;
    :goto_2
    iget-object v4, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v4, p1, p2}, Lorg/tukaani/xz/lz/LZDecoder;->flush([BI)I

    move-result v4

    .line 734
    .local v4, "copiedSize":I
    add-int/2addr p2, v4

    .line 735
    sub-int/2addr p3, v4

    .line 736
    add-int/2addr v0, v4

    .line 738
    iget-wide v7, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    cmp-long v7, v7, v5

    if-ltz v7, :cond_3

    .line 740
    iget-wide v7, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    int-to-long v9, v4

    sub-long/2addr v7, v9

    iput-wide v7, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    .line 741
    nop

    .line 743
    iget-wide v7, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    cmp-long v5, v7, v5

    if-nez v5, :cond_3

    .line 744
    iput-boolean v3, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    .line 747
    :cond_3
    iget-boolean v3, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    if-eqz v3, :cond_7

    .line 752
    iget-object v3, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v3}, Lorg/tukaani/xz/lz/LZDecoder;->hasPending()Z

    move-result v3

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lorg/tukaani/xz/LZMAInputStream;->relaxedEndCondition:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/tukaani/xz/LZMAInputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

    .line 753
    invoke-virtual {v3}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 756
    :cond_4
    invoke-direct {p0}, Lorg/tukaani/xz/LZMAInputStream;->putArraysToCache()V

    .line 757
    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    move v1, v0

    :goto_3
    return v1

    .line 754
    :cond_6
    new-instance v1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    .end local p0    # "this":Lorg/tukaani/xz/LZMAInputStream;
    .end local p1    # "buf":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v1

    .line 747
    .restart local p0    # "this":Lorg/tukaani/xz/LZMAInputStream;
    .restart local p1    # "buf":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :cond_7
    nop

    .line 759
    .end local v2    # "copySizeMax":I
    .end local v4    # "copiedSize":I
    goto/16 :goto_0

    .line 721
    .restart local v2    # "copySizeMax":I
    .local v4, "e":Lorg/tukaani/xz/CorruptedInputException;
    :cond_8
    nop

    .end local p0    # "this":Lorg/tukaani/xz/LZMAInputStream;
    .end local p1    # "buf":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 763
    .end local v0    # "size":I
    .end local v2    # "copySizeMax":I
    .end local v4    # "e":Lorg/tukaani/xz/CorruptedInputException;
    .restart local p0    # "this":Lorg/tukaani/xz/LZMAInputStream;
    .restart local p1    # "buf":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :goto_4
    nop

    .line 764
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    .line 765
    throw v0

    .line 761
    .local v0, "size":I
    :cond_9
    return v0

    .line 694
    .end local v0    # "size":I
    :cond_a
    iget-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    throw v0

    .line 691
    :cond_b
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 685
    :cond_c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
