.class public Lorg/tukaani/xz/SingleXZInputStream;
.super Ljava/io/InputStream;
.source "SingleXZInputStream.java"


# instance fields
.field private final arrayCache:Lorg/tukaani/xz/ArrayCache;

.field private blockDecoder:Lorg/tukaani/xz/BlockInputStream;

.field private final check:Lorg/tukaani/xz/check/Check;

.field private endReached:Z

.field private exception:Ljava/io/IOException;

.field private in:Ljava/io/InputStream;

.field private final indexHash:Lorg/tukaani/xz/index/IndexHash;

.field private final memoryLimit:I

.field private final streamHeaderFlags:Lorg/tukaani/xz/common/StreamFlags;

.field private final tempBuf:[B

.field private final verifyCheck:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/tukaani/xz/SingleXZInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 95
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

    .line 164
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/tukaani/xz/SingleXZInputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 165
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILorg/tukaani/xz/ArrayCache;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "memoryLimit"    # I
    .param p3, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/tukaani/xz/SingleXZInputStream;-><init>(Ljava/io/InputStream;IZLorg/tukaani/xz/ArrayCache;)V

    .line 205
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "memoryLimit"    # I
    .param p3, "verifyCheck"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/tukaani/xz/SingleXZInputStream;-><init>(Ljava/io/InputStream;IZLorg/tukaani/xz/ArrayCache;)V

    .line 262
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZLorg/tukaani/xz/ArrayCache;)V
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "memoryLimit"    # I
    .param p3, "verifyCheck"    # Z
    .param p4, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    invoke-static {p1}, Lorg/tukaani/xz/SingleXZInputStream;->readStreamHeader(Ljava/io/InputStream;)[B

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .end local p1    # "in":Ljava/io/InputStream;
    .end local p2    # "memoryLimit":I
    .end local p3    # "verifyCheck":Z
    .end local p4    # "arrayCache":Lorg/tukaani/xz/ArrayCache;
    .local v1, "in":Ljava/io/InputStream;
    .local v2, "memoryLimit":I
    .local v3, "verifyCheck":Z
    .local v5, "arrayCache":Lorg/tukaani/xz/ArrayCache;
    invoke-direct/range {v0 .. v5}, Lorg/tukaani/xz/SingleXZInputStream;-><init>(Ljava/io/InputStream;IZ[BLorg/tukaani/xz/ArrayCache;)V

    .line 308
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;IZ[BLorg/tukaani/xz/ArrayCache;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "memoryLimit"    # I
    .param p3, "verifyCheck"    # Z
    .param p4, "streamHeader"    # [B
    .param p5, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    .line 50
    new-instance v1, Lorg/tukaani/xz/index/IndexHash;

    invoke-direct {v1}, Lorg/tukaani/xz/index/IndexHash;-><init>()V

    iput-object v1, p0, Lorg/tukaani/xz/SingleXZInputStream;->indexHash:Lorg/tukaani/xz/index/IndexHash;

    .line 51
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/tukaani/xz/SingleXZInputStream;->endReached:Z

    .line 52
    iput-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->exception:Ljava/io/IOException;

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->tempBuf:[B

    .line 313
    iput-object p5, p0, Lorg/tukaani/xz/SingleXZInputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    .line 314
    iput-object p1, p0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    .line 315
    iput p2, p0, Lorg/tukaani/xz/SingleXZInputStream;->memoryLimit:I

    .line 316
    iput-boolean p3, p0, Lorg/tukaani/xz/SingleXZInputStream;->verifyCheck:Z

    .line 317
    invoke-static {p4}, Lorg/tukaani/xz/common/DecoderUtil;->decodeStreamHeader([B)Lorg/tukaani/xz/common/StreamFlags;

    move-result-object v0

    iput-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->streamHeaderFlags:Lorg/tukaani/xz/common/StreamFlags;

    .line 318
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->streamHeaderFlags:Lorg/tukaani/xz/common/StreamFlags;

    iget v0, v0, Lorg/tukaani/xz/common/StreamFlags;->checkType:I

    invoke-static {v0}, Lorg/tukaani/xz/check/Check;->getInstance(I)Lorg/tukaani/xz/check/Check;

    move-result-object v0

    iput-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->check:Lorg/tukaani/xz/check/Check;

    .line 319
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

    .line 129
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/tukaani/xz/SingleXZInputStream;-><init>(Ljava/io/InputStream;ILorg/tukaani/xz/ArrayCache;)V

    .line 130
    return-void
.end method

.method private static readStreamHeader(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 62
    .local v0, "streamHeader":[B
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 63
    return-object v0
.end method

.method private validateStreamFooter()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 453
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 454
    .local v0, "buf":[B
    new-instance v1, Ljava/io/DataInputStream;

    iget-object v2, p0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 455
    invoke-static {v0}, Lorg/tukaani/xz/common/DecoderUtil;->decodeStreamFooter([B)Lorg/tukaani/xz/common/StreamFlags;

    move-result-object v1

    .line 457
    .local v1, "streamFooterFlags":Lorg/tukaani/xz/common/StreamFlags;
    iget-object v2, p0, Lorg/tukaani/xz/SingleXZInputStream;->streamHeaderFlags:Lorg/tukaani/xz/common/StreamFlags;

    invoke-static {v2, v1}, Lorg/tukaani/xz/common/DecoderUtil;->areStreamFlagsEqual(Lorg/tukaani/xz/common/StreamFlags;Lorg/tukaani/xz/common/StreamFlags;)Z

    move-result v2

    nop

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/tukaani/xz/SingleXZInputStream;->indexHash:Lorg/tukaani/xz/index/IndexHash;

    .line 459
    invoke-virtual {v2}, Lorg/tukaani/xz/index/IndexHash;->getIndexSize()J

    move-result-wide v2

    iget-wide v4, v1, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 462
    return-void

    .line 460
    :cond_0
    new-instance v2, Lorg/tukaani/xz/CorruptedInputException;

    const-string v3, "XZ Stream Footer does not match Stream Header"

    invoke-direct {v2, v3}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 479
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_1

    .line 482
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/BlockInputStream;->available()I

    move-result v0

    :goto_0
    return v0

    .line 480
    :cond_1
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->exception:Ljava/io/IOException;

    throw v0

    .line 477
    :cond_2
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

    .line 494
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/tukaani/xz/SingleXZInputStream;->close(Z)V

    .line 495
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

    .line 521
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 522
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/BlockInputStream;->close()V

    .line 524
    iput-object v1, p0, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    .line 528
    :cond_0
    if-eqz p1, :cond_1

    .line 529
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 531
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    .line 532
    throw v0

    .line 531
    :cond_1
    :goto_0
    iput-object v1, p0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    .line 532
    nop

    .line 534
    :cond_2
    return-void
.end method

.method public getCheckName()Ljava/lang/String;
    .locals 1

    .line 336
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v0}, Lorg/tukaani/xz/check/Check;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCheckType()I
    .locals 1

    .line 327
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->streamHeaderFlags:Lorg/tukaani/xz/common/StreamFlags;

    iget v0, v0, Lorg/tukaani/xz/common/StreamFlags;->checkType:I

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->tempBuf:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/tukaani/xz/SingleXZInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->tempBuf:[B

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    :goto_0
    return v1
.end method

.method public read([BII)I
    .locals 17
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-ltz p2, :cond_a

    if-ltz p3, :cond_a

    add-int v0, p2, p3

    if-ltz v0, :cond_a

    add-int v0, p2, p3

    array-length v3, v2

    if-gt v0, v3, :cond_a

    .line 402
    if-nez p3, :cond_0

    .line 403
    const/4 v0, 0x0

    return v0

    .line 405
    :cond_0
    iget-object v0, v1, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    .line 408
    iget-object v0, v1, Lorg/tukaani/xz/SingleXZInputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_8

    .line 411
    iget-boolean v0, v1, Lorg/tukaani/xz/SingleXZInputStream;->endReached:Z

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    .line 412
    return v3

    .line 414
    :cond_1
    const/4 v0, 0x0

    move/from16 v4, p2

    move/from16 v5, p3

    move v6, v0

    .line 417
    .end local p2    # "off":I
    .end local p3    # "len":I
    .local v4, "off":I
    .local v5, "len":I
    .local v6, "size":I
    :goto_0
    if-lez v5, :cond_7

    .line 418
    :try_start_0
    iget-object v0, v1, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    .line 420
    :try_start_1
    new-instance v7, Lorg/tukaani/xz/BlockInputStream;

    iget-object v8, v1, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    iget-object v9, v1, Lorg/tukaani/xz/SingleXZInputStream;->check:Lorg/tukaani/xz/check/Check;

    iget-boolean v10, v1, Lorg/tukaani/xz/SingleXZInputStream;->verifyCheck:Z

    iget v11, v1, Lorg/tukaani/xz/SingleXZInputStream;->memoryLimit:I

    iget-object v0, v1, Lorg/tukaani/xz/SingleXZInputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    const-wide/16 v12, -0x1

    const-wide/16 v14, -0x1

    move-object/from16 v16, v0

    invoke-direct/range {v7 .. v16}, Lorg/tukaani/xz/BlockInputStream;-><init>(Ljava/io/InputStream;Lorg/tukaani/xz/check/Check;ZIJJLorg/tukaani/xz/ArrayCache;)V

    iput-object v7, v1, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;
    :try_end_1
    .catch Lorg/tukaani/xz/IndexIndicatorException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 428
    goto :goto_1

    .line 443
    :catch_0
    move-exception v0

    goto :goto_3

    .line 423
    :catch_1
    move-exception v0

    nop

    .line 424
    .local v0, "e":Lorg/tukaani/xz/IndexIndicatorException;
    :try_start_2
    iget-object v7, v1, Lorg/tukaani/xz/SingleXZInputStream;->indexHash:Lorg/tukaani/xz/index/IndexHash;

    iget-object v8, v1, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v7, v8}, Lorg/tukaani/xz/index/IndexHash;->validate(Ljava/io/InputStream;)V

    .line 425
    invoke-direct {v1}, Lorg/tukaani/xz/SingleXZInputStream;->validateStreamFooter()V

    .line 426
    const/4 v7, 0x1

    iput-boolean v7, v1, Lorg/tukaani/xz/SingleXZInputStream;->endReached:Z

    .line 427
    if-lez v6, :cond_2

    move v3, v6

    :cond_2
    return v3

    .line 431
    .end local v0    # "e":Lorg/tukaani/xz/IndexIndicatorException;
    :cond_3
    :goto_1
    iget-object v0, v1, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    invoke-virtual {v0, v2, v4, v5}, Lorg/tukaani/xz/BlockInputStream;->read([BII)I

    move-result v0

    .line 433
    .local v0, "ret":I
    if-lez v0, :cond_4

    .line 434
    add-int/2addr v6, v0

    .line 435
    add-int/2addr v4, v0

    .line 436
    sub-int/2addr v5, v0

    goto :goto_2

    .line 437
    :cond_4
    if-ne v0, v3, :cond_5

    .line 438
    iget-object v7, v1, Lorg/tukaani/xz/SingleXZInputStream;->indexHash:Lorg/tukaani/xz/index/IndexHash;

    iget-object v8, v1, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    invoke-virtual {v8}, Lorg/tukaani/xz/BlockInputStream;->getUnpaddedSize()J

    move-result-wide v8

    iget-object v10, v1, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    .line 439
    invoke-virtual {v10}, Lorg/tukaani/xz/BlockInputStream;->getUncompressedSize()J

    move-result-wide v10

    .line 438
    invoke-virtual {v7, v8, v9, v10, v11}, Lorg/tukaani/xz/index/IndexHash;->add(JJ)V

    .line 440
    const/4 v7, 0x0

    iput-object v7, v1, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 442
    .end local v0    # "ret":I
    :cond_5
    :goto_2
    goto :goto_0

    .line 443
    :goto_3
    nop

    .line 444
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, v1, Lorg/tukaani/xz/SingleXZInputStream;->exception:Ljava/io/IOException;

    .line 445
    if-eqz v6, :cond_6

    goto :goto_4

    .line 446
    :cond_6
    throw v0

    .line 447
    .end local v0    # "e":Ljava/io/IOException;
    :cond_7
    nop

    .line 449
    :goto_4
    return v6

    .line 409
    .end local v4    # "off":I
    .end local v5    # "len":I
    .end local v6    # "size":I
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :cond_8
    iget-object v0, v1, Lorg/tukaani/xz/SingleXZInputStream;->exception:Ljava/io/IOException;

    throw v0

    .line 406
    :cond_9
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v3, "Stream closed"

    invoke-direct {v0, v3}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
