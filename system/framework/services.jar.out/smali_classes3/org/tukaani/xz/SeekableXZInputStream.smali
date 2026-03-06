.class public Lorg/tukaani/xz/SeekableXZInputStream;
.super Lorg/tukaani/xz/SeekableInputStream;
.source "SeekableXZInputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final arrayCache:Lorg/tukaani/xz/ArrayCache;

.field private blockCount:I

.field private blockDecoder:Lorg/tukaani/xz/BlockInputStream;

.field private check:Lorg/tukaani/xz/check/Check;

.field private checkTypes:I

.field private final curBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

.field private curPos:J

.field private endReached:Z

.field private exception:Ljava/io/IOException;

.field private in:Lorg/tukaani/xz/SeekableInputStream;

.field private indexMemoryUsage:I

.field private largestBlockSize:J

.field private final memoryLimit:I

.field private final queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

.field private seekNeeded:Z

.field private seekPos:J

.field private final streams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/tukaani/xz/index/IndexDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final tempBuf:[B

.field private uncompressedSize:J

.field private final verifyCheck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    const-class v0, Lorg/tukaani/xz/SeekableXZInputStream;

    return-void
.end method

.method public constructor <init>(Lorg/tukaani/xz/SeekableInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/tukaani/xz/SeekableInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/tukaani/xz/SeekableXZInputStream;-><init>(Lorg/tukaani/xz/SeekableInputStream;I)V

    .line 231
    return-void
.end method

.method public constructor <init>(Lorg/tukaani/xz/SeekableInputStream;I)V
    .locals 1
    .param p1, "in"    # Lorg/tukaani/xz/SeekableInputStream;
    .param p2, "memoryLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/tukaani/xz/SeekableXZInputStream;-><init>(Lorg/tukaani/xz/SeekableInputStream;IZ)V

    .line 306
    return-void
.end method

.method public constructor <init>(Lorg/tukaani/xz/SeekableInputStream;ILorg/tukaani/xz/ArrayCache;)V
    .locals 1
    .param p1, "in"    # Lorg/tukaani/xz/SeekableInputStream;
    .param p2, "memoryLimit"    # I
    .param p3, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/tukaani/xz/SeekableXZInputStream;-><init>(Lorg/tukaani/xz/SeekableInputStream;IZLorg/tukaani/xz/ArrayCache;)V

    .line 353
    return-void
.end method

.method public constructor <init>(Lorg/tukaani/xz/SeekableInputStream;IZ)V
    .locals 1
    .param p1, "in"    # Lorg/tukaani/xz/SeekableInputStream;
    .param p2, "memoryLimit"    # I
    .param p3, "verifyCheck"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/tukaani/xz/SeekableXZInputStream;-><init>(Lorg/tukaani/xz/SeekableInputStream;IZLorg/tukaani/xz/ArrayCache;)V

    .line 414
    return-void
.end method

.method public constructor <init>(Lorg/tukaani/xz/SeekableInputStream;IZLorg/tukaani/xz/ArrayCache;)V
    .locals 22
    .param p1, "in"    # Lorg/tukaani/xz/SeekableInputStream;
    .param p2, "memoryLimit"    # I
    .param p3, "verifyCheck"    # Z
    .param p4, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-direct {v1}, Lorg/tukaani/xz/SeekableInputStream;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput v0, v1, Lorg/tukaani/xz/SeekableXZInputStream;->indexMemoryUsage:I

    .line 120
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    .line 126
    iput v0, v1, Lorg/tukaani/xz/SeekableXZInputStream;->checkTypes:I

    .line 131
    const-wide/16 v8, 0x0

    iput-wide v8, v1, Lorg/tukaani/xz/SeekableXZInputStream;->uncompressedSize:J

    .line 136
    iput-wide v8, v1, Lorg/tukaani/xz/SeekableXZInputStream;->largestBlockSize:J

    .line 141
    iput v0, v1, Lorg/tukaani/xz/SeekableXZInputStream;->blockCount:I

    .line 169
    const/4 v2, 0x0

    iput-object v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    .line 174
    iput-wide v8, v1, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    .line 185
    iput-boolean v0, v1, Lorg/tukaani/xz/SeekableXZInputStream;->seekNeeded:Z

    .line 191
    iput-boolean v0, v1, Lorg/tukaani/xz/SeekableXZInputStream;->endReached:Z

    .line 196
    iput-object v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->exception:Ljava/io/IOException;

    .line 202
    const/4 v0, 0x1

    new-array v2, v0, [B

    iput-object v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->tempBuf:[B

    .line 465
    move-object/from16 v10, p4

    iput-object v10, v1, Lorg/tukaani/xz/SeekableXZInputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    .line 466
    move/from16 v11, p3

    iput-boolean v11, v1, Lorg/tukaani/xz/SeekableXZInputStream;->verifyCheck:Z

    .line 467
    iput-object v3, v1, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    .line 468
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v12, v2

    .line 472
    .local v12, "inData":Ljava/io/DataInputStream;
    invoke-virtual {v3, v8, v9}, Lorg/tukaani/xz/SeekableInputStream;->seek(J)V

    .line 473
    sget-object v2, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    array-length v2, v2

    new-array v2, v2, [B

    .line 474
    .local v2, "buf":[B
    invoke-virtual {v12, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 475
    sget-object v4, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 480
    .end local v2    # "buf":[B
    invoke-virtual {v3}, Lorg/tukaani/xz/SeekableInputStream;->length()J

    move-result-wide v4

    .line 481
    .local v4, "pos":J
    const-wide/16 v6, 0x3

    and-long/2addr v6, v4

    cmp-long v2, v6, v8

    if-nez v2, :cond_b

    .line 486
    const/16 v2, 0xc

    new-array v13, v2, [B

    .line 487
    .local v13, "buf":[B
    const-wide/16 v6, 0x0

    move-wide v14, v6

    move/from16 v7, p2

    .line 489
    .end local p2    # "memoryLimit":I
    .local v7, "memoryLimit":I
    .local v14, "streamPadding":J
    :goto_0
    cmp-long v2, v4, v8

    if-lez v2, :cond_9

    .line 490
    const-wide/16 v16, 0xc

    cmp-long v2, v4, v16

    if-ltz v2, :cond_8

    .line 494
    move-wide/from16 v18, v8

    sub-long v8, v4, v16

    invoke-virtual {v3, v8, v9}, Lorg/tukaani/xz/SeekableInputStream;->seek(J)V

    .line 495
    invoke-virtual {v12, v13}, Ljava/io/DataInputStream;->readFully([B)V

    .line 500
    const/16 v2, 0x8

    aget-byte v2, v13, v2

    if-nez v2, :cond_0

    const/16 v2, 0x9

    aget-byte v2, v13, v2

    if-nez v2, :cond_0

    const/16 v2, 0xa

    aget-byte v2, v13, v2

    if-nez v2, :cond_0

    const/16 v2, 0xb

    aget-byte v2, v13, v2

    if-nez v2, :cond_0

    .line 502
    const-wide/16 v8, 0x4

    add-long/2addr v14, v8

    .line 503
    sub-long/2addr v4, v8

    .line 504
    move-wide/from16 v8, v18

    goto :goto_0

    .line 508
    :cond_0
    sub-long v8, v4, v16

    .line 512
    .end local v4    # "pos":J
    .local v8, "pos":J
    invoke-static {v13}, Lorg/tukaani/xz/common/DecoderUtil;->decodeStreamFooter([B)Lorg/tukaani/xz/common/StreamFlags;

    move-result-object v4

    .line 513
    .local v4, "streamFooter":Lorg/tukaani/xz/common/StreamFlags;
    iget-wide v5, v4, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    cmp-long v2, v5, v8

    if-gez v2, :cond_7

    .line 519
    iget v2, v4, Lorg/tukaani/xz/common/StreamFlags;->checkType:I

    invoke-static {v2}, Lorg/tukaani/xz/check/Check;->getInstance(I)Lorg/tukaani/xz/check/Check;

    move-result-object v2

    iput-object v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->check:Lorg/tukaani/xz/check/Check;

    .line 522
    iget v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->checkTypes:I

    iget v5, v4, Lorg/tukaani/xz/common/StreamFlags;->checkType:I

    shl-int v5, v0, v5

    or-int/2addr v2, v5

    iput v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->checkTypes:I

    .line 525
    iget-wide v5, v4, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    sub-long v5, v8, v5

    invoke-virtual {v3, v5, v6}, Lorg/tukaani/xz/SeekableInputStream;->seek(J)V

    .line 530
    :try_start_0
    new-instance v2, Lorg/tukaani/xz/index/IndexDecoder;
    :try_end_0
    .catch Lorg/tukaani/xz/MemoryLimitException; {:try_start_0 .. :try_end_0} :catch_1

    move-wide v5, v14

    .end local v14    # "streamPadding":J
    .local v5, "streamPadding":J
    :try_start_1
    invoke-direct/range {v2 .. v7}, Lorg/tukaani/xz/index/IndexDecoder;-><init>(Lorg/tukaani/xz/SeekableInputStream;Lorg/tukaani/xz/common/StreamFlags;JI)V
    :try_end_1
    .catch Lorg/tukaani/xz/MemoryLimitException; {:try_start_1 .. :try_end_1} :catch_0

    .line 539
    .end local v5    # "streamPadding":J
    .local v2, "index":Lorg/tukaani/xz/index/IndexDecoder;
    .restart local v14    # "streamPadding":J
    nop

    .line 542
    iget v5, v1, Lorg/tukaani/xz/SeekableXZInputStream;->indexMemoryUsage:I

    invoke-virtual {v2}, Lorg/tukaani/xz/index/IndexDecoder;->getMemoryUsage()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v1, Lorg/tukaani/xz/SeekableXZInputStream;->indexMemoryUsage:I

    .line 543
    if-ltz v7, :cond_1

    .line 544
    invoke-virtual {v2}, Lorg/tukaani/xz/index/IndexDecoder;->getMemoryUsage()I

    move-result v5

    sub-int/2addr v7, v5

    .line 545
    nop

    .line 549
    :cond_1
    iget-wide v5, v1, Lorg/tukaani/xz/SeekableXZInputStream;->largestBlockSize:J

    invoke-virtual {v2}, Lorg/tukaani/xz/index/IndexDecoder;->getLargestBlockSize()J

    move-result-wide v20

    cmp-long v5, v5, v20

    if-gez v5, :cond_2

    .line 550
    invoke-virtual {v2}, Lorg/tukaani/xz/index/IndexDecoder;->getLargestBlockSize()J

    move-result-wide v5

    iput-wide v5, v1, Lorg/tukaani/xz/SeekableXZInputStream;->largestBlockSize:J

    .line 554
    :cond_2
    invoke-virtual {v2}, Lorg/tukaani/xz/index/IndexDecoder;->getStreamSize()J

    move-result-wide v5

    sub-long v5, v5, v16

    .line 555
    .local v5, "off":J
    cmp-long v16, v8, v5

    if-ltz v16, :cond_6

    .line 560
    sub-long/2addr v8, v5

    .line 561
    invoke-virtual {v3, v8, v9}, Lorg/tukaani/xz/SeekableInputStream;->seek(J)V

    .line 564
    invoke-virtual {v12, v13}, Ljava/io/DataInputStream;->readFully([B)V

    .line 565
    move/from16 v16, v0

    invoke-static {v13}, Lorg/tukaani/xz/common/DecoderUtil;->decodeStreamHeader([B)Lorg/tukaani/xz/common/StreamFlags;

    move-result-object v0

    .line 568
    .local v0, "streamHeader":Lorg/tukaani/xz/common/StreamFlags;
    invoke-static {v0, v4}, Lorg/tukaani/xz/common/DecoderUtil;->areStreamFlagsEqual(Lorg/tukaani/xz/common/StreamFlags;Lorg/tukaani/xz/common/StreamFlags;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 574
    move-object/from16 v17, v4

    .end local v4    # "streamFooter":Lorg/tukaani/xz/common/StreamFlags;
    .local v17, "streamFooter":Lorg/tukaani/xz/common/StreamFlags;
    iget-wide v3, v1, Lorg/tukaani/xz/SeekableXZInputStream;->uncompressedSize:J

    invoke-virtual {v2}, Lorg/tukaani/xz/index/IndexDecoder;->getUncompressedSize()J

    move-result-wide v20

    add-long v3, v3, v20

    iput-wide v3, v1, Lorg/tukaani/xz/SeekableXZInputStream;->uncompressedSize:J

    .line 575
    iget-wide v3, v1, Lorg/tukaani/xz/SeekableXZInputStream;->uncompressedSize:J

    cmp-long v3, v3, v18

    if-ltz v3, :cond_4

    .line 579
    iget v3, v1, Lorg/tukaani/xz/SeekableXZInputStream;->blockCount:I

    invoke-virtual {v2}, Lorg/tukaani/xz/index/IndexDecoder;->getRecordCount()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v1, Lorg/tukaani/xz/SeekableXZInputStream;->blockCount:I

    .line 580
    iget v3, v1, Lorg/tukaani/xz/SeekableXZInputStream;->blockCount:I

    if-ltz v3, :cond_3

    .line 585
    iget-object v3, v1, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    const-wide/16 v14, 0x0

    .line 589
    .end local v0    # "streamHeader":Lorg/tukaani/xz/common/StreamFlags;
    .end local v2    # "index":Lorg/tukaani/xz/index/IndexDecoder;
    .end local v5    # "off":J
    .end local v17    # "streamFooter":Lorg/tukaani/xz/common/StreamFlags;
    move-object/from16 v3, p1

    move-wide v4, v8

    move/from16 v0, v16

    move-wide/from16 v8, v18

    goto/16 :goto_0

    .line 581
    .restart local v0    # "streamHeader":Lorg/tukaani/xz/common/StreamFlags;
    .restart local v2    # "index":Lorg/tukaani/xz/index/IndexDecoder;
    .restart local v5    # "off":J
    .restart local v17    # "streamFooter":Lorg/tukaani/xz/common/StreamFlags;
    :cond_3
    new-instance v3, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v4, "XZ file has over 2147483647 Blocks"

    invoke-direct {v3, v4}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 576
    :cond_4
    new-instance v3, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v4, "XZ file is too big"

    invoke-direct {v3, v4}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 569
    .end local v17    # "streamFooter":Lorg/tukaani/xz/common/StreamFlags;
    .restart local v4    # "streamFooter":Lorg/tukaani/xz/common/StreamFlags;
    :cond_5
    move-object/from16 v17, v4

    .end local v4    # "streamFooter":Lorg/tukaani/xz/common/StreamFlags;
    .restart local v17    # "streamFooter":Lorg/tukaani/xz/common/StreamFlags;
    new-instance v3, Lorg/tukaani/xz/CorruptedInputException;

    const-string v4, "XZ Stream Footer does not match Stream Header"

    invoke-direct {v3, v4}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 556
    .end local v0    # "streamHeader":Lorg/tukaani/xz/common/StreamFlags;
    .end local v17    # "streamFooter":Lorg/tukaani/xz/common/StreamFlags;
    .restart local v4    # "streamFooter":Lorg/tukaani/xz/common/StreamFlags;
    :cond_6
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    const-string v3, "XZ Index indicates too big compressed size for the XZ Stream"

    invoke-direct {v0, v3}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    .end local v2    # "index":Lorg/tukaani/xz/index/IndexDecoder;
    .end local v14    # "streamPadding":J
    .local v5, "streamPadding":J
    :catch_0
    move-exception v0

    move-wide v14, v5

    move-object/from16 v17, v4

    .end local v4    # "streamFooter":Lorg/tukaani/xz/common/StreamFlags;
    .end local v5    # "streamPadding":J
    .restart local v14    # "streamPadding":J
    .restart local v17    # "streamFooter":Lorg/tukaani/xz/common/StreamFlags;
    goto :goto_1

    .end local v17    # "streamFooter":Lorg/tukaani/xz/common/StreamFlags;
    .restart local v4    # "streamFooter":Lorg/tukaani/xz/common/StreamFlags;
    :catch_1
    move-exception v0

    move-object/from16 v17, v4

    .line 535
    .end local v4    # "streamFooter":Lorg/tukaani/xz/common/StreamFlags;
    .local v0, "e":Lorg/tukaani/xz/MemoryLimitException;
    .restart local v17    # "streamFooter":Lorg/tukaani/xz/common/StreamFlags;
    :goto_1
    nop

    .line 536
    new-instance v2, Lorg/tukaani/xz/MemoryLimitException;

    .line 537
    invoke-virtual {v0}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryNeeded()I

    move-result v3

    iget v4, v1, Lorg/tukaani/xz/SeekableXZInputStream;->indexMemoryUsage:I

    add-int/2addr v3, v4

    iget v4, v1, Lorg/tukaani/xz/SeekableXZInputStream;->indexMemoryUsage:I

    add-int/2addr v4, v7

    invoke-direct {v2, v3, v4}, Lorg/tukaani/xz/MemoryLimitException;-><init>(II)V

    throw v2

    .line 514
    .end local v0    # "e":Lorg/tukaani/xz/MemoryLimitException;
    .end local v17    # "streamFooter":Lorg/tukaani/xz/common/StreamFlags;
    .restart local v4    # "streamFooter":Lorg/tukaani/xz/common/StreamFlags;
    :cond_7
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    const-string v2, "Backward Size in XZ Stream Footer is too big"

    invoke-direct {v0, v2}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    .end local v8    # "pos":J
    .local v4, "pos":J
    :cond_8
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    .line 591
    :cond_9
    move/from16 v16, v0

    .line 594
    iput v7, v1, Lorg/tukaani/xz/SeekableXZInputStream;->memoryLimit:I

    .line 599
    iget-object v0, v1, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    iget-object v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/tukaani/xz/index/IndexDecoder;

    .line 600
    .local v0, "prev":Lorg/tukaani/xz/index/IndexDecoder;
    iget-object v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_a

    .line 601
    iget-object v3, v1, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/tukaani/xz/index/IndexDecoder;

    .line 602
    .local v3, "cur":Lorg/tukaani/xz/index/IndexDecoder;
    invoke-virtual {v3, v0}, Lorg/tukaani/xz/index/IndexDecoder;->setOffsets(Lorg/tukaani/xz/index/IndexDecoder;)V

    .line 603
    move-object v0, v3

    .line 600
    .end local v3    # "cur":Lorg/tukaani/xz/index/IndexDecoder;
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_a
    nop

    .line 610
    .end local v2    # "i":I
    iget-object v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    iget-object v3, v1, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/tukaani/xz/index/IndexDecoder;

    .line 611
    .local v2, "first":Lorg/tukaani/xz/index/IndexDecoder;
    new-instance v3, Lorg/tukaani/xz/index/BlockInfo;

    invoke-direct {v3, v2}, Lorg/tukaani/xz/index/BlockInfo;-><init>(Lorg/tukaani/xz/index/IndexDecoder;)V

    iput-object v3, v1, Lorg/tukaani/xz/SeekableXZInputStream;->curBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    .line 615
    new-instance v3, Lorg/tukaani/xz/index/BlockInfo;

    invoke-direct {v3, v2}, Lorg/tukaani/xz/index/BlockInfo;-><init>(Lorg/tukaani/xz/index/IndexDecoder;)V

    iput-object v3, v1, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    .line 616
    return-void

    .line 482
    .end local v0    # "prev":Lorg/tukaani/xz/index/IndexDecoder;
    .end local v2    # "first":Lorg/tukaani/xz/index/IndexDecoder;
    .end local v7    # "memoryLimit":I
    .end local v13    # "buf":[B
    .end local v14    # "streamPadding":J
    .restart local p2    # "memoryLimit":I
    :cond_b
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    const-string v2, "XZ file size is not a multiple of 4 bytes"

    invoke-direct {v0, v2}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    .end local v4    # "pos":J
    .local v2, "buf":[B
    :cond_c
    new-instance v0, Lorg/tukaani/xz/XZFormatException;

    invoke-direct {v0}, Lorg/tukaani/xz/XZFormatException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Lorg/tukaani/xz/SeekableInputStream;Lorg/tukaani/xz/ArrayCache;)V
    .locals 1
    .param p1, "in"    # Lorg/tukaani/xz/SeekableInputStream;
    .param p2, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/tukaani/xz/SeekableXZInputStream;-><init>(Lorg/tukaani/xz/SeekableInputStream;ILorg/tukaani/xz/ArrayCache;)V

    .line 268
    return-void
.end method

.method private initBlockDecoder()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1146
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/BlockInputStream;->close()V

    .line 1148
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    goto :goto_0

    .line 1162
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1155
    :catch_1
    move-exception v0

    goto :goto_2

    .line 1151
    :cond_0
    :goto_0
    new-instance v1, Lorg/tukaani/xz/BlockInputStream;

    iget-object v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    iget-object v3, p0, Lorg/tukaani/xz/SeekableXZInputStream;->check:Lorg/tukaani/xz/check/Check;

    iget-boolean v4, p0, Lorg/tukaani/xz/SeekableXZInputStream;->verifyCheck:Z

    iget v5, p0, Lorg/tukaani/xz/SeekableXZInputStream;->memoryLimit:I

    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    iget-wide v6, v0, Lorg/tukaani/xz/index/BlockInfo;->unpaddedSize:J

    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    iget-wide v8, v0, Lorg/tukaani/xz/index/BlockInfo;->uncompressedSize:J

    iget-object v10, p0, Lorg/tukaani/xz/SeekableXZInputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-direct/range {v1 .. v10}, Lorg/tukaani/xz/BlockInputStream;-><init>(Ljava/io/InputStream;Lorg/tukaani/xz/check/Check;ZIJJLorg/tukaani/xz/ArrayCache;)V

    iput-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;
    :try_end_0
    .catch Lorg/tukaani/xz/MemoryLimitException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/tukaani/xz/IndexIndicatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1165
    nop

    .line 1166
    return-void

    .line 1162
    :goto_1
    nop

    .line 1164
    .local v0, "e":Lorg/tukaani/xz/IndexIndicatorException;
    new-instance v1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v1

    .line 1155
    .end local v0    # "e":Lorg/tukaani/xz/IndexIndicatorException;
    :goto_2
    nop

    .line 1158
    .local v0, "e":Lorg/tukaani/xz/MemoryLimitException;
    nop

    .line 1159
    new-instance v1, Lorg/tukaani/xz/MemoryLimitException;

    .line 1160
    invoke-virtual {v0}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryNeeded()I

    move-result v2

    iget v3, p0, Lorg/tukaani/xz/SeekableXZInputStream;->indexMemoryUsage:I

    add-int/2addr v2, v3

    iget v3, p0, Lorg/tukaani/xz/SeekableXZInputStream;->memoryLimit:I

    iget v4, p0, Lorg/tukaani/xz/SeekableXZInputStream;->indexMemoryUsage:I

    add-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lorg/tukaani/xz/MemoryLimitException;-><init>(II)V

    throw v1
.end method

.method private locateBlockByNumber(Lorg/tukaani/xz/index/BlockInfo;I)V
    .locals 3
    .param p1, "info"    # Lorg/tukaani/xz/index/BlockInfo;
    .param p2, "blockNumber"    # I

    .line 1119
    if-ltz p2, :cond_2

    iget v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockCount:I

    if-ge p2, v0, :cond_2

    .line 1124
    iget v0, p1, Lorg/tukaani/xz/index/BlockInfo;->blockNumber:I

    if-ne v0, p2, :cond_0

    .line 1125
    return-void

    .line 1129
    :cond_0
    const/4 v0, 0x0

    .line 1130
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/tukaani/xz/index/IndexDecoder;

    .line 1131
    .local v1, "index":Lorg/tukaani/xz/index/IndexDecoder;
    invoke-virtual {v1, p2}, Lorg/tukaani/xz/index/IndexDecoder;->hasRecord(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1132
    invoke-virtual {v1, p1, p2}, Lorg/tukaani/xz/index/IndexDecoder;->setBlockInfo(Lorg/tukaani/xz/index/BlockInfo;I)V

    .line 1133
    return-void

    .line 1131
    :cond_1
    nop

    .line 1129
    .end local v1    # "index":Lorg/tukaani/xz/index/IndexDecoder;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1120
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid XZ Block number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private locateBlockByPos(Lorg/tukaani/xz/index/BlockInfo;J)V
    .locals 3
    .param p1, "info"    # Lorg/tukaani/xz/index/BlockInfo;
    .param p2, "pos"    # J

    .line 1092
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->uncompressedSize:J

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 1098
    const/4 v0, 0x0

    .line 1099
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/tukaani/xz/index/IndexDecoder;

    .line 1100
    .local v1, "index":Lorg/tukaani/xz/index/IndexDecoder;
    invoke-virtual {v1, p2, p3}, Lorg/tukaani/xz/index/IndexDecoder;->hasUncompressedOffset(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1101
    nop

    .line 1105
    .end local v0    # "i":I
    invoke-virtual {v1, p1, p2, p3}, Lorg/tukaani/xz/index/IndexDecoder;->locateBlock(Lorg/tukaani/xz/index/BlockInfo;J)V

    .line 1107
    nop

    .line 1108
    nop

    .line 1109
    nop

    .line 1110
    nop

    .line 1111
    return-void

    .line 1098
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1093
    .end local v0    # "i":I
    .end local v1    # "index":Lorg/tukaani/xz/index/IndexDecoder;
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid uncompressed position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private seek()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1021
    iget-boolean v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekNeeded:Z

    if-nez v0, :cond_1

    .line 1022
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    invoke-virtual {v0}, Lorg/tukaani/xz/index/BlockInfo;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    invoke-virtual {v0}, Lorg/tukaani/xz/index/BlockInfo;->setNext()V

    .line 1024
    invoke-direct {p0}, Lorg/tukaani/xz/SeekableXZInputStream;->initBlockDecoder()V

    .line 1025
    return-void

    .line 1028
    :cond_0
    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    iput-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    .line 1031
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekNeeded:Z

    .line 1034
    iget-wide v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    iget-wide v3, p0, Lorg/tukaani/xz/SeekableXZInputStream;->uncompressedSize:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3

    .line 1035
    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    iput-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    .line 1037
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    if-eqz v0, :cond_2

    .line 1038
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/BlockInputStream;->close()V

    .line 1039
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    .line 1042
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->endReached:Z

    .line 1043
    return-void

    .line 1046
    :cond_3
    iput-boolean v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->endReached:Z

    .line 1049
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    iget-wide v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    invoke-direct {p0, v0, v1, v2}, Lorg/tukaani/xz/SeekableXZInputStream;->locateBlockByPos(Lorg/tukaani/xz/index/BlockInfo;J)V

    .line 1061
    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    iget-object v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    iget-wide v2, v2, Lorg/tukaani/xz/index/BlockInfo;->uncompressedOffset:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    iget-wide v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 1063
    :cond_4
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    iget-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    iget-wide v1, v1, Lorg/tukaani/xz/index/BlockInfo;->compressedOffset:J

    invoke-virtual {v0, v1, v2}, Lorg/tukaani/xz/SeekableInputStream;->seek(J)V

    .line 1067
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    invoke-virtual {v0}, Lorg/tukaani/xz/index/BlockInfo;->getCheckType()I

    move-result v0

    invoke-static {v0}, Lorg/tukaani/xz/check/Check;->getInstance(I)Lorg/tukaani/xz/check/Check;

    move-result-object v0

    iput-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->check:Lorg/tukaani/xz/check/Check;

    .line 1070
    invoke-direct {p0}, Lorg/tukaani/xz/SeekableXZInputStream;->initBlockDecoder()V

    .line 1071
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    iget-wide v0, v0, Lorg/tukaani/xz/index/BlockInfo;->uncompressedOffset:J

    iput-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    .line 1076
    :cond_5
    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    iget-wide v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    .line 1080
    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    iget-wide v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    sub-long/2addr v0, v2

    .line 1081
    .local v0, "skipAmount":J
    iget-object v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    invoke-virtual {v2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_6

    .line 1084
    iget-wide v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    iput-wide v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    goto :goto_0

    .line 1082
    :cond_6
    new-instance v2, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v2}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v2

    .line 1086
    .end local v0    # "skipAmount":J
    :cond_7
    :goto_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 879
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    if-eqz v0, :cond_3

    .line 882
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_2

    .line 885
    iget-boolean v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->endReached:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekNeeded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 888
    :cond_1
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/BlockInputStream;->available()I

    move-result v0

    return v0

    .line 886
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 883
    :cond_2
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->exception:Ljava/io/IOException;

    throw v0

    .line 880
    :cond_3
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 900
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/tukaani/xz/SeekableXZInputStream;->close(Z)V

    .line 901
    return-void
.end method

.method public close(Z)V
    .locals 2
    .param p1, "closeInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 927
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    if-eqz v0, :cond_2

    .line 928
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/BlockInputStream;->close()V

    .line 930
    iput-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    .line 934
    :cond_0
    if-eqz p1, :cond_1

    .line 935
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 937
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    .line 938
    throw v0

    .line 937
    :cond_1
    :goto_0
    iput-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    .line 938
    nop

    .line 940
    :cond_2
    return-void
.end method

.method public getBlockCheckType(I)I
    .locals 1
    .param p1, "blockNumber"    # I

    .line 744
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    invoke-direct {p0, v0, p1}, Lorg/tukaani/xz/SeekableXZInputStream;->locateBlockByNumber(Lorg/tukaani/xz/index/BlockInfo;I)V

    .line 745
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    invoke-virtual {v0}, Lorg/tukaani/xz/index/BlockInfo;->getCheckType()I

    move-result v0

    return v0
.end method

.method public getBlockCompPos(I)J
    .locals 2
    .param p1, "blockNumber"    # I

    .line 712
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    invoke-direct {p0, v0, p1}, Lorg/tukaani/xz/SeekableXZInputStream;->locateBlockByNumber(Lorg/tukaani/xz/index/BlockInfo;I)V

    .line 713
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    iget-wide v0, v0, Lorg/tukaani/xz/index/BlockInfo;->compressedOffset:J

    return-wide v0
.end method

.method public getBlockCompSize(I)J
    .locals 4
    .param p1, "blockNumber"    # I

    .line 728
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    invoke-direct {p0, v0, p1}, Lorg/tukaani/xz/SeekableXZInputStream;->locateBlockByNumber(Lorg/tukaani/xz/index/BlockInfo;I)V

    .line 729
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    iget-wide v0, v0, Lorg/tukaani/xz/index/BlockInfo;->unpaddedSize:J

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    const-wide/16 v2, -0x4

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getBlockCount()I
    .locals 1

    .line 669
    iget v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockCount:I

    return v0
.end method

.method public getBlockNumber(J)I
    .locals 1
    .param p1, "pos"    # J

    .line 759
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    invoke-direct {p0, v0, p1, p2}, Lorg/tukaani/xz/SeekableXZInputStream;->locateBlockByPos(Lorg/tukaani/xz/index/BlockInfo;J)V

    .line 760
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    iget v0, v0, Lorg/tukaani/xz/index/BlockInfo;->blockNumber:I

    return v0
.end method

.method public getBlockPos(I)J
    .locals 2
    .param p1, "blockNumber"    # I

    .line 682
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    invoke-direct {p0, v0, p1}, Lorg/tukaani/xz/SeekableXZInputStream;->locateBlockByNumber(Lorg/tukaani/xz/index/BlockInfo;I)V

    .line 683
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    iget-wide v0, v0, Lorg/tukaani/xz/index/BlockInfo;->uncompressedOffset:J

    return-wide v0
.end method

.method public getBlockSize(I)J
    .locals 2
    .param p1, "blockNumber"    # I

    .line 696
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    invoke-direct {p0, v0, p1}, Lorg/tukaani/xz/SeekableXZInputStream;->locateBlockByNumber(Lorg/tukaani/xz/index/BlockInfo;I)V

    .line 697
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    iget-wide v0, v0, Lorg/tukaani/xz/index/BlockInfo;->uncompressedSize:J

    return-wide v0
.end method

.method public getCheckTypes()I
    .locals 1

    .line 629
    iget v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->checkTypes:I

    return v0
.end method

.method public getIndexMemoryUsage()I
    .locals 1

    .line 639
    iget v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->indexMemoryUsage:I

    return v0
.end method

.method public getLargestBlockSize()J
    .locals 2

    .line 651
    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->largestBlockSize:J

    return-wide v0
.end method

.method public getStreamCount()I
    .locals 1

    .line 660
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public length()J
    .locals 2

    .line 947
    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->uncompressedSize:J

    return-wide v0
.end method

.method public position()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 956
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    if-eqz v0, :cond_1

    .line 959
    iget-boolean v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekNeeded:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    :goto_0
    return-wide v0

    .line 957
    :cond_1
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 778
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->tempBuf:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/tukaani/xz/SeekableXZInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->tempBuf:[B

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    :goto_0
    return v1
.end method

.method public read([BII)I
    .locals 7
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 813
    if-ltz p2, :cond_b

    if-ltz p3, :cond_b

    add-int v0, p2, p3

    if-ltz v0, :cond_b

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_b

    .line 816
    if-nez p3, :cond_0

    .line 817
    const/4 v0, 0x0

    return v0

    .line 819
    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    if-eqz v0, :cond_a

    .line 822
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_9

    .line 825
    const/4 v0, 0x0

    .line 828
    .local v0, "size":I
    :try_start_0
    iget-boolean v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekNeeded:Z

    if-eqz v1, :cond_1

    .line 829
    invoke-direct {p0}, Lorg/tukaani/xz/SeekableXZInputStream;->seek()V

    goto :goto_0

    .line 852
    :catch_0
    move-exception v1

    goto :goto_4

    .line 831
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->endReached:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    .line 832
    return v2

    .line 834
    :cond_2
    :goto_1
    if-lez p3, :cond_6

    .line 835
    iget-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    if-nez v1, :cond_3

    .line 836
    invoke-direct {p0}, Lorg/tukaani/xz/SeekableXZInputStream;->seek()V

    .line 837
    iget-boolean v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->endReached:Z

    if-eqz v1, :cond_3

    .line 838
    goto :goto_3

    .line 841
    :cond_3
    iget-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    invoke-virtual {v1, p1, p2, p3}, Lorg/tukaani/xz/BlockInputStream;->read([BII)I

    move-result v1

    .line 843
    .local v1, "ret":I
    if-lez v1, :cond_4

    .line 844
    iget-wide v3, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    .line 845
    add-int/2addr v0, v1

    .line 846
    add-int/2addr p2, v1

    .line 847
    sub-int/2addr p3, v1

    goto :goto_2

    .line 848
    :cond_4
    if-ne v1, v2, :cond_5

    .line 849
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    .end local v1    # "ret":I
    :cond_5
    :goto_2
    goto :goto_1

    .line 862
    :cond_6
    :goto_3
    goto :goto_5

    .line 852
    :goto_4
    nop

    .line 856
    .local v1, "e":Ljava/io/IOException;
    instance-of v2, v1, Ljava/io/EOFException;

    if-eqz v2, :cond_7

    .line 857
    new-instance v2, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v2}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    move-object v1, v2

    .line 859
    :cond_7
    iput-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->exception:Ljava/io/IOException;

    .line 860
    if-eqz v0, :cond_8

    .line 864
    .end local v1    # "e":Ljava/io/IOException;
    :goto_5
    return v0

    .line 861
    .restart local v1    # "e":Ljava/io/IOException;
    :cond_8
    throw v1

    .line 823
    .end local v0    # "size":I
    .end local v1    # "e":Ljava/io/IOException;
    :cond_9
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->exception:Ljava/io/IOException;

    throw v0

    .line 820
    :cond_a
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 814
    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public seek(J)V
    .locals 3
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 979
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    if-eqz v0, :cond_1

    .line 982
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 985
    iput-wide p1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    .line 986
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekNeeded:Z

    .line 987
    return-void

    .line 983
    :cond_0
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative seek position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 980
    :cond_1
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public seekToBlock(I)V
    .locals 3
    .param p1, "blockNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1000
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    if-eqz v0, :cond_1

    .line 1003
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockCount:I

    if-ge p1, v0, :cond_0

    .line 1009
    invoke-virtual {p0, p1}, Lorg/tukaani/xz/SeekableXZInputStream;->getBlockPos(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    .line 1010
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekNeeded:Z

    .line 1011
    return-void

    .line 1004
    :cond_0
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid XZ Block number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1001
    :cond_1
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
