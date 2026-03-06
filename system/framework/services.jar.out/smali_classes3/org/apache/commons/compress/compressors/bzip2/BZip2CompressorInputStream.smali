.class public Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "BZip2CompressorInputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/compressors/bzip2/BZip2Constants;
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    }
.end annotation


# static fields
.field private static final EOF:I = 0x0

.field private static final NO_RAND_PART_A_STATE:I = 0x5

.field private static final NO_RAND_PART_B_STATE:I = 0x6

.field private static final NO_RAND_PART_C_STATE:I = 0x7

.field private static final RAND_PART_A_STATE:I = 0x2

.field private static final RAND_PART_B_STATE:I = 0x3

.field private static final RAND_PART_C_STATE:I = 0x4

.field private static final START_BLOCK_STATE:I = 0x1


# instance fields
.field private bin:Lorg/apache/commons/compress/utils/BitInputStream;

.field private blockRandomised:Z

.field private blockSize100k:I

.field private computedBlockCRC:I

.field private computedCombinedCRC:I

.field private final crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

.field private currentState:I

.field private data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

.field private final decompressConcatenated:Z

.field private last:I

.field private nInUse:I

.field private origPtr:I

.field private storedBlockCRC:I

.field private storedCombinedCRC:I

.field private su_ch2:I

.field private su_chPrev:I

.field private su_count:I

.field private su_i2:I

.field private su_j2:I

.field private su_rNToGo:I

.field private su_rTPos:I

.field private su_tPos:I

.field private su_z:C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "decompressConcatenated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 63
    new-instance v0, Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 131
    new-instance v1, Lorg/apache/commons/compress/utils/BitInputStream;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-ne p1, v2, :cond_0

    new-instance v2, Lorg/apache/commons/compress/utils/CloseShieldFilterInputStream;

    invoke-direct {v2, p1}, Lorg/apache/commons/compress/utils/CloseShieldFilterInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/compress/utils/BitInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 133
    iput-boolean p2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->decompressConcatenated:Z

    .line 135
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->init(Z)Z

    .line 136
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->initBlock()V

    .line 137
    return-void
.end method

.method private static bsGetBit(Lorg/apache/commons/compress/utils/BitInputStream;)Z
    .locals 2
    .param p0, "bin"    # Lorg/apache/commons/compress/utils/BitInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static bsGetInt(Lorg/apache/commons/compress/utils/BitInputStream;)I
    .locals 1
    .param p0, "bin"    # Lorg/apache/commons/compress/utils/BitInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    const/16 v0, 0x20

    invoke-static {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v0

    return v0
.end method

.method private static bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C
    .locals 1
    .param p0, "bin"    # Lorg/apache/commons/compress/utils/BitInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method private static bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I
    .locals 4
    .param p0, "bin"    # Lorg/apache/commons/compress/utils/BitInputStream;
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    move-result-wide v0

    .line 392
    .local v0, "thech":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 395
    long-to-int v2, v0

    return v2

    .line 393
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "unexpected end of stream"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static checkBounds(IILjava/lang/String;)V
    .locals 3
    .param p0, "checkVal"    # I
    .param p1, "limitExclusive"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    const-string v0, "Corrupted input, "

    if-ltz p0, :cond_1

    .line 415
    if-ge p0, p1, :cond_0

    .line 418
    return-void

    .line 416
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " value too big"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 413
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " value negative"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private complete()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetInt(Lorg/apache/commons/compress/utils/BitInputStream;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedCombinedCRC:I

    .line 359
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 360
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 362
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedCombinedCRC:I

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    if-ne v1, v2, :cond_2

    .line 368
    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->decompressConcatenated:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->init(Z)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    .line 363
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BZip2 CRC error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createHuffmanDecodingTables(II)V
    .locals 20
    .param p1, "alphaSize"    # I
    .param p2, "nGroups"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 552
    .local v1, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    iget-object v2, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->temp_charArray2d:[[C

    .line 553
    .local v2, "len":[[C
    iget-object v3, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->minLens:[I

    .line 554
    .local v3, "minLens":[I
    iget-object v4, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->limit:[[I

    .line 555
    .local v4, "limit":[[I
    iget-object v5, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->base:[[I

    .line 556
    .local v5, "base":[[I
    iget-object v6, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->perm:[[I

    .line 558
    .local v6, "perm":[[I
    const/4 v7, 0x0

    .local v7, "t":I
    :goto_0
    move/from16 v8, p2

    if-ge v7, v8, :cond_3

    .line 559
    const/16 v9, 0x20

    .line 560
    .local v9, "minLen":I
    const/4 v10, 0x0

    .line 561
    .local v10, "maxLen":I
    aget-object v11, v2, v7

    .line 562
    .local v11, "len_t":[C
    move/from16 v12, p1

    .local v12, "i":I
    :goto_1
    add-int/lit8 v12, v12, -0x1

    if-ltz v12, :cond_2

    .line 563
    aget-char v13, v11, v12

    .line 564
    .local v13, "lent":C
    if-le v13, v10, :cond_0

    .line 565
    move v10, v13

    .line 567
    :cond_0
    if-ge v13, v9, :cond_1

    .line 568
    move v9, v13

    .line 570
    .end local v13    # "lent":C
    :cond_1
    goto :goto_1

    .line 562
    :cond_2
    nop

    .line 571
    .end local v12    # "i":I
    aget-object v13, v4, v7

    aget-object v14, v5, v7

    aget-object v15, v6, v7

    aget-object v16, v2, v7

    move/from16 v19, p1

    move/from16 v17, v9

    move/from16 v18, v10

    .end local v9    # "minLen":I
    .end local v10    # "maxLen":I
    .local v17, "minLen":I
    .local v18, "maxLen":I
    invoke-static/range {v13 .. v19}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->hbCreateDecodeTables([I[I[I[CIII)V

    .line 573
    aput v17, v3, v7

    .line 558
    .end local v11    # "len_t":[C
    .end local v17    # "minLen":I
    .end local v18    # "maxLen":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 575
    .end local v7    # "t":I
    return-void
.end method

.method private endBlock()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->getFinalCRC()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedBlockCRC:I

    .line 342
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedBlockCRC:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedBlockCRC:I

    if-ne v0, v1, :cond_0

    .line 352
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 354
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedBlockCRC:I

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 355
    return-void

    .line 345
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedCombinedCRC:I

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedCombinedCRC:I

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 347
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedBlockCRC:I

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 349
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BZip2 CRC error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAndMoveToFrontDecode()V
    .locals 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 578
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 579
    .local v1, "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    const/16 v2, 0x18

    invoke-static {v1, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v2

    iput v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->origPtr:I

    .line 580
    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->recvDecodingTables()V

    .line 582
    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 583
    .local v2, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    iget-object v3, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    .line 584
    .local v3, "ll8":[B
    iget-object v4, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->unzftab:[I

    .line 585
    .local v4, "unzftab":[I
    iget-object v5, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selector:[B

    .line 586
    .local v5, "selector":[B
    iget-object v6, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->seqToUnseq:[B

    .line 587
    .local v6, "seqToUnseq":[B
    iget-object v7, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->getAndMoveToFrontDecode_yy:[C

    .line 588
    .local v7, "yy":[C
    iget-object v8, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->minLens:[I

    .line 589
    .local v8, "minLens":[I
    iget-object v9, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->limit:[[I

    .line 590
    .local v9, "limit":[[I
    iget-object v10, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->base:[[I

    .line 591
    .local v10, "base":[[I
    iget-object v11, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->perm:[[I

    .line 592
    .local v11, "perm":[[I
    iget v12, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockSize100k:I

    const v13, 0x186a0

    mul-int/2addr v12, v13

    .line 599
    .local v12, "limitLast":I
    const/16 v13, 0x100

    .local v13, "i":I
    :goto_0
    add-int/lit8 v13, v13, -0x1

    const/4 v14, 0x0

    if-ltz v13, :cond_0

    .line 600
    int-to-char v15, v13

    aput-char v15, v7, v13

    .line 601
    aput v14, v4, v13

    goto :goto_0

    .line 599
    :cond_0
    nop

    .line 604
    .end local v13    # "i":I
    const/4 v13, 0x0

    .line 605
    .local v13, "groupNo":I
    const/16 v15, 0x31

    .line 606
    .local v15, "groupPos":I
    iget v14, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->nInUse:I

    move-object/from16 v17, v2

    .end local v2    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    .local v17, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    const/4 v2, 0x1

    add-int/2addr v14, v2

    .line 607
    .local v14, "eob":I
    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->getAndMoveToFrontDecode0()I

    move-result v18

    .line 608
    .local v18, "nextSym":I
    const/16 v19, -0x1

    .line 609
    .local v19, "lastShadow":I
    aget-byte v2, v5, v13

    and-int/lit16 v2, v2, 0xff

    .line 610
    .local v2, "zt":I
    move-object/from16 v21, v4

    .end local v4    # "unzftab":[I
    .local v21, "unzftab":[I
    const/4 v4, 0x6

    move-object/from16 v22, v5

    .end local v5    # "selector":[B
    .local v22, "selector":[B
    const-string v5, "zt"

    invoke-static {v2, v4, v5}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 611
    aget-object v23, v10, v2

    .line 612
    .local v23, "base_zt":[I
    aget-object v24, v9, v2

    .line 613
    .local v24, "limit_zt":[I
    aget-object v25, v11, v2

    .line 614
    .local v25, "perm_zt":[I
    aget v26, v8, v2

    move/from16 v4, v19

    move/from16 v19, v2

    move v2, v4

    move/from16 v4, v18

    .line 616
    .end local v18    # "nextSym":I
    .local v2, "lastShadow":I
    .local v4, "nextSym":I
    .local v19, "zt":I
    .local v26, "minLens_zt":I
    :goto_1
    if-eq v4, v14, :cond_d

    .line 617
    move-object/from16 v27, v6

    .end local v6    # "seqToUnseq":[B
    .local v27, "seqToUnseq":[B
    const-string v6, "zvec"

    move-object/from16 v28, v8

    .end local v8    # "minLens":[I
    .local v28, "minLens":[I
    const-string v8, "groupNo"

    move-object/from16 v29, v9

    .end local v9    # "limit":[[I
    .local v29, "limit":[[I
    const-string v9, "yy"

    move-object/from16 v31, v10

    .end local v10    # "base":[[I
    .local v31, "base":[[I
    const-string v10, " exceeds "

    move-object/from16 v33, v11

    .end local v11    # "perm":[[I
    .local v33, "perm":[[I
    const-string v11, "zn"

    move/from16 v34, v13

    .end local v13    # "groupNo":I
    .local v34, "groupNo":I
    if-eqz v4, :cond_7

    const/4 v13, 0x1

    if-ne v4, v13, :cond_1

    move/from16 v36, v4

    goto/16 :goto_6

    .line 668
    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v12, :cond_6

    .line 672
    const/16 v10, 0x101

    const-string v13, "nextSym"

    invoke-static {v4, v10, v13}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 674
    add-int/lit8 v10, v4, -0x1

    aget-char v10, v7, v10

    .line 675
    .local v10, "tmp":C
    const/16 v13, 0x100

    invoke-static {v10, v13, v9}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 676
    aget-byte v9, v27, v10

    and-int/lit16 v9, v9, 0xff

    aget v13, v21, v9

    const/16 v20, 0x1

    add-int/lit8 v13, v13, 0x1

    aput v13, v21, v9

    .line 677
    aget-byte v9, v27, v10

    aput-byte v9, v3, v2

    .line 684
    const/16 v9, 0x10

    if-gt v4, v9, :cond_3

    .line 685
    add-int/lit8 v9, v4, -0x1

    .local v9, "j":I
    :goto_2
    if-lez v9, :cond_2

    .line 686
    add-int/lit8 v13, v9, -0x1

    .end local v9    # "j":I
    .local v13, "j":I
    aget-char v32, v7, v13

    aput-char v32, v7, v9

    move v9, v13

    goto :goto_2

    .line 685
    .end local v13    # "j":I
    .restart local v9    # "j":I
    :cond_2
    nop

    .line 686
    .end local v9    # "j":I
    move/from16 v36, v4

    const/4 v13, 0x0

    goto :goto_3

    .line 689
    :cond_3
    add-int/lit8 v9, v4, -0x1

    move/from16 v36, v4

    const/4 v4, 0x1

    const/4 v13, 0x0

    .end local v4    # "nextSym":I
    .local v36, "nextSym":I
    invoke-static {v7, v13, v7, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 692
    :goto_3
    aput-char v10, v7, v13

    .line 694
    if-nez v15, :cond_4

    .line 695
    const/16 v4, 0x31

    .line 696
    .end local v15    # "groupPos":I
    .local v4, "groupPos":I
    add-int/lit8 v13, v34, 0x1

    const/16 v9, 0x4652

    .end local v34    # "groupNo":I
    .local v13, "groupNo":I
    invoke-static {v13, v9, v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 697
    aget-byte v8, v22, v13

    and-int/lit16 v8, v8, 0xff

    .line 698
    .end local v19    # "zt":I
    .local v8, "zt":I
    const/4 v9, 0x6

    invoke-static {v8, v9, v5}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 699
    aget-object v9, v31, v8

    .line 700
    .end local v23    # "base_zt":[I
    .local v9, "base_zt":[I
    aget-object v15, v29, v8

    .line 701
    .end local v24    # "limit_zt":[I
    .local v15, "limit_zt":[I
    aget-object v19, v33, v8

    .line 702
    .end local v25    # "perm_zt":[I
    .local v19, "perm_zt":[I
    aget v23, v28, v8

    move-object/from16 v24, v15

    move-object/from16 v25, v19

    move/from16 v26, v23

    move v15, v4

    move/from16 v19, v8

    move-object/from16 v23, v9

    .end local v26    # "minLens_zt":I
    .local v23, "minLens_zt":I
    goto :goto_4

    .line 704
    .end local v4    # "groupPos":I
    .end local v8    # "zt":I
    .end local v9    # "base_zt":[I
    .end local v13    # "groupNo":I
    .local v15, "groupPos":I
    .local v19, "zt":I
    .local v23, "base_zt":[I
    .restart local v24    # "limit_zt":[I
    .restart local v25    # "perm_zt":[I
    .restart local v26    # "minLens_zt":I
    .restart local v34    # "groupNo":I
    :cond_4
    add-int/lit8 v15, v15, -0x1

    move/from16 v13, v34

    .line 707
    .end local v34    # "groupNo":I
    .restart local v13    # "groupNo":I
    :goto_4
    move/from16 v4, v26

    .line 708
    .local v4, "zn":I
    const/16 v8, 0x102

    invoke-static {v4, v8, v11}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 709
    invoke-static {v1, v4}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v9

    .line 710
    .local v9, "zvec":I
    :goto_5
    aget v8, v24, v4

    if-le v9, v8, :cond_5

    .line 711
    add-int/lit8 v4, v4, 0x1

    const/16 v8, 0x102

    invoke-static {v4, v8, v11}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 712
    shl-int/lit8 v30, v9, 0x1

    const/4 v8, 0x1

    invoke-static {v1, v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v32

    or-int v9, v30, v32

    const/16 v8, 0x102

    goto :goto_5

    .line 714
    :cond_5
    aget v8, v23, v4

    sub-int v8, v9, v8

    .line 715
    .local v8, "idx":I
    const/16 v11, 0x102

    invoke-static {v8, v11, v6}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 716
    aget v4, v25, v8

    .line 717
    .end local v8    # "idx":I
    .end local v9    # "zvec":I
    .end local v10    # "tmp":C
    .end local v36    # "nextSym":I
    .local v4, "nextSym":I
    move-object/from16 v6, v27

    move-object/from16 v8, v28

    move-object/from16 v9, v29

    move-object/from16 v10, v31

    move-object/from16 v11, v33

    goto/16 :goto_1

    .line 669
    .end local v13    # "groupNo":I
    .restart local v34    # "groupNo":I
    :cond_6
    move/from16 v36, v4

    .end local v4    # "nextSym":I
    .restart local v36    # "nextSym":I
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "block overrun in MTF, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 617
    .end local v36    # "nextSym":I
    .restart local v4    # "nextSym":I
    :cond_7
    move/from16 v36, v4

    .line 618
    .end local v4    # "nextSym":I
    .restart local v36    # "nextSym":I
    :goto_6
    const/4 v4, -0x1

    .line 620
    .local v4, "s":I
    const/4 v13, 0x1

    move/from16 v40, v13

    move v13, v4

    move/from16 v4, v36

    move/from16 v36, v26

    move-object/from16 v26, v25

    move-object/from16 v25, v24

    move-object/from16 v24, v23

    move/from16 v23, v19

    move/from16 v19, v15

    move/from16 v15, v40

    .line 621
    .local v4, "nextSym":I
    .local v13, "s":I
    .local v15, "n":I
    .local v19, "groupPos":I
    .local v23, "zt":I
    .local v24, "base_zt":[I
    .local v25, "limit_zt":[I
    .local v26, "perm_zt":[I
    .local v36, "minLens_zt":I
    :goto_7
    if-nez v4, :cond_8

    .line 622
    add-int/2addr v13, v15

    move-object/from16 v37, v7

    goto :goto_8

    .line 623
    :cond_8
    move-object/from16 v37, v7

    const/4 v7, 0x1

    .end local v7    # "yy":[C
    .local v37, "yy":[C
    if-ne v4, v7, :cond_b

    .line 624
    shl-int/lit8 v7, v15, 0x1

    add-int/2addr v13, v7

    .line 629
    :goto_8
    if-nez v19, :cond_9

    .line 630
    const/16 v7, 0x31

    .line 631
    .end local v19    # "groupPos":I
    .local v7, "groupPos":I
    move/from16 v38, v4

    .end local v4    # "nextSym":I
    .local v38, "nextSym":I
    add-int/lit8 v4, v34, 0x1

    move/from16 v19, v7

    const/16 v7, 0x4652

    .end local v7    # "groupPos":I
    .end local v34    # "groupNo":I
    .local v4, "groupNo":I
    .restart local v19    # "groupPos":I
    invoke-static {v4, v7, v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 632
    aget-byte v7, v22, v4

    and-int/lit16 v7, v7, 0xff

    .line 633
    .end local v23    # "zt":I
    .local v7, "zt":I
    move/from16 v34, v4

    const/4 v4, 0x6

    .end local v4    # "groupNo":I
    .restart local v34    # "groupNo":I
    invoke-static {v7, v4, v5}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 634
    aget-object v24, v31, v7

    .line 635
    aget-object v25, v29, v7

    .line 636
    aget-object v26, v33, v7

    .line 637
    aget v36, v28, v7

    move/from16 v23, v7

    goto :goto_9

    .line 639
    .end local v7    # "zt":I
    .end local v38    # "nextSym":I
    .local v4, "nextSym":I
    .restart local v23    # "zt":I
    :cond_9
    move/from16 v38, v4

    const/4 v4, 0x6

    .end local v4    # "nextSym":I
    .restart local v38    # "nextSym":I
    add-int/lit8 v19, v19, -0x1

    .line 642
    :goto_9
    move/from16 v7, v36

    .line 643
    .local v7, "zn":I
    const/16 v4, 0x102

    invoke-static {v7, v4, v11}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 644
    invoke-static {v1, v7}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v35

    move/from16 v4, v35

    .line 645
    .local v4, "zvec":I
    :goto_a
    move-object/from16 v39, v5

    aget v5, v25, v7

    if-le v4, v5, :cond_a

    .line 646
    add-int/lit8 v7, v7, 0x1

    const/16 v5, 0x102

    invoke-static {v7, v5, v11}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 647
    shl-int/lit8 v35, v4, 0x1

    const/4 v5, 0x1

    invoke-static {v1, v5}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v20

    or-int v4, v35, v20

    move-object/from16 v5, v39

    goto :goto_a

    .line 649
    :cond_a
    const/4 v5, 0x1

    aget v20, v24, v7

    sub-int v5, v4, v20

    .line 650
    .local v5, "tmp":I
    move-object/from16 v20, v1

    const/16 v1, 0x102

    .end local v1    # "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    .local v20, "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    invoke-static {v5, v1, v6}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 651
    aget v4, v26, v5

    .line 620
    .end local v5    # "tmp":I
    .end local v7    # "zn":I
    .end local v38    # "nextSym":I
    .local v4, "nextSym":I
    shl-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v20

    move-object/from16 v7, v37

    move-object/from16 v5, v39

    goto :goto_7

    .line 623
    .end local v20    # "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    .restart local v1    # "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    :cond_b
    move-object/from16 v20, v1

    move/from16 v38, v4

    move-object/from16 v39, v5

    .line 654
    .end local v1    # "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    .end local v4    # "nextSym":I
    .end local v15    # "n":I
    .restart local v20    # "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    .restart local v38    # "nextSym":I
    const/16 v16, 0x0

    aget-char v1, v37, v16

    .line 655
    .local v1, "yy0":I
    const/16 v4, 0x100

    invoke-static {v1, v4, v9}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 656
    aget-byte v4, v27, v1

    .line 657
    .local v4, "ch":B
    and-int/lit16 v5, v4, 0xff

    aget v6, v21, v5

    add-int/lit8 v7, v13, 0x1

    add-int/2addr v6, v7

    aput v6, v21, v5

    .line 659
    add-int/lit8 v2, v2, 0x1

    move v5, v2

    .line 660
    .local v5, "from":I
    add-int/2addr v2, v13

    .line 661
    add-int/lit8 v6, v2, 0x1

    invoke-static {v3, v5, v6, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 663
    if-ge v2, v12, :cond_c

    .line 667
    .end local v1    # "yy0":I
    .end local v4    # "ch":B
    .end local v5    # "from":I
    .end local v13    # "s":I
    move/from16 v15, v19

    move-object/from16 v1, v20

    move/from16 v19, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v6, v27

    move-object/from16 v8, v28

    move-object/from16 v9, v29

    move-object/from16 v10, v31

    move-object/from16 v11, v33

    move/from16 v13, v34

    move/from16 v26, v36

    move-object/from16 v7, v37

    move/from16 v4, v38

    move-object/from16 v5, v39

    goto/16 :goto_1

    .line 664
    .restart local v1    # "yy0":I
    .restart local v4    # "ch":B
    .restart local v5    # "from":I
    .restart local v13    # "s":I
    :cond_c
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "block overrun while expanding RLE in MTF, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 720
    .end local v5    # "from":I
    .end local v20    # "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    .end local v27    # "seqToUnseq":[B
    .end local v28    # "minLens":[I
    .end local v29    # "limit":[[I
    .end local v31    # "base":[[I
    .end local v33    # "perm":[[I
    .end local v34    # "groupNo":I
    .end local v36    # "minLens_zt":I
    .end local v37    # "yy":[C
    .end local v38    # "nextSym":I
    .local v1, "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    .local v4, "nextSym":I
    .restart local v6    # "seqToUnseq":[B
    .local v7, "yy":[C
    .local v8, "minLens":[I
    .local v9, "limit":[[I
    .local v10, "base":[[I
    .restart local v11    # "perm":[[I
    .local v13, "groupNo":I
    .local v15, "groupPos":I
    .local v19, "zt":I
    .local v23, "base_zt":[I
    .local v24, "limit_zt":[I
    .local v25, "perm_zt":[I
    .local v26, "minLens_zt":I
    :cond_d
    iput v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    .line 721
    return-void
.end method

.method private getAndMoveToFrontDecode0()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 724
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 725
    .local v0, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selector:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 726
    .local v1, "zt":I
    const/4 v2, 0x6

    const-string v3, "zt"

    invoke-static {v1, v2, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 727
    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->limit:[[I

    aget-object v2, v2, v1

    .line 728
    .local v2, "limit_zt":[I
    iget-object v3, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->minLens:[I

    aget v3, v3, v1

    .line 729
    .local v3, "zn":I
    const/16 v4, 0x102

    const-string v5, "zn"

    invoke-static {v3, v4, v5}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 730
    iget-object v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-static {v6, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v6

    .line 731
    .local v6, "zvec":I
    :goto_0
    aget v7, v2, v3

    if-le v6, v7, :cond_0

    .line 732
    add-int/lit8 v3, v3, 0x1

    invoke-static {v3, v4, v5}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 733
    shl-int/lit8 v7, v6, 0x1

    iget-object v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v8

    or-int v6, v7, v8

    goto :goto_0

    .line 735
    :cond_0
    iget-object v5, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->base:[[I

    aget-object v5, v5, v1

    aget v5, v5, v3

    sub-int v5, v6, v5

    .line 736
    .local v5, "tmp":I
    const-string v7, "zvec"

    invoke-static {v5, v4, v7}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 738
    iget-object v4, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->perm:[[I

    aget-object v4, v4, v1

    aget v4, v4, v5

    return v4
.end method

.method private static hbCreateDecodeTables([I[I[I[CIII)V
    .locals 5
    .param p0, "limit"    # [I
    .param p1, "base"    # [I
    .param p2, "perm"    # [I
    .param p3, "length"    # [C
    .param p4, "minLen"    # I
    .param p5, "maxLen"    # I
    .param p6, "alphaSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    move v0, p4

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "pp":I
    :goto_0
    if-gt v0, p5, :cond_2

    .line 428
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, p6, :cond_1

    .line 429
    aget-char v3, p3, v2

    if-ne v3, v0, :cond_0

    .line 430
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "pp":I
    .local v3, "pp":I
    aput v2, p2, v1

    move v1, v3

    .line 428
    .end local v3    # "pp":I
    .restart local v1    # "pp":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 427
    .end local v2    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 435
    .end local v0    # "i":I
    .end local v1    # "pp":I
    const/16 v0, 0x17

    .restart local v0    # "i":I
    :goto_2
    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-lez v0, :cond_3

    .line 436
    aput v1, p1, v0

    .line 437
    aput v1, p0, v0

    goto :goto_2

    .line 435
    :cond_3
    nop

    .line 440
    .end local v0    # "i":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, p6, :cond_4

    .line 441
    aget-char v2, p3, v0

    .line 442
    .local v2, "l":I
    const/16 v3, 0x102

    const-string v4, "length"

    invoke-static {v2, v3, v4}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 443
    add-int/lit8 v3, v2, 0x1

    aget v4, p1, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, p1, v3

    .line 440
    .end local v2    # "l":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    nop

    .line 446
    .end local v0    # "i":I
    const/4 v0, 0x1

    .restart local v0    # "i":I
    aget v1, p1, v1

    .local v1, "b":I
    :goto_4
    const/16 v2, 0x17

    if-ge v0, v2, :cond_5

    .line 447
    aget v2, p1, v0

    add-int/2addr v1, v2

    .line 448
    aput v1, p1, v0

    .line 446
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    nop

    .line 451
    .end local v0    # "i":I
    .end local v1    # "b":I
    move v0, p4

    .restart local v0    # "i":I
    const/4 v1, 0x0

    .local v1, "vec":I
    aget v2, p1, v0

    .local v2, "b":I
    :goto_5
    if-gt v0, p5, :cond_6

    .line 452
    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    .line 453
    .local v3, "nb":I
    sub-int v4, v3, v2

    add-int/2addr v1, v4

    .line 454
    move v2, v3

    .line 455
    add-int/lit8 v4, v1, -0x1

    aput v4, p0, v0

    .line 456
    shl-int/lit8 v1, v1, 0x1

    .line 451
    .end local v3    # "nb":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    nop

    .line 459
    .end local v0    # "i":I
    .end local v1    # "vec":I
    .end local v2    # "b":I
    add-int/lit8 v0, p4, 0x1

    .restart local v0    # "i":I
    :goto_6
    if-gt v0, p5, :cond_7

    .line 460
    add-int/lit8 v1, v0, -0x1

    aget v1, p0, v1

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x1

    aget v2, p1, v0

    sub-int/2addr v1, v2

    aput v1, p1, v0

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    nop

    .line 462
    .end local v0    # "i":I
    return-void
.end method

.method private init(Z)Z
    .locals 6
    .param p1, "isFirstStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    if-eqz v0, :cond_6

    .line 249
    if-nez p1, :cond_0

    .line 250
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/BitInputStream;->clearBitCache()V

    .line 253
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->readNextByte(Lorg/apache/commons/compress/utils/BitInputStream;)I

    move-result v0

    .line 254
    .local v0, "magic0":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    .line 255
    return v2

    .line 257
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->readNextByte(Lorg/apache/commons/compress/utils/BitInputStream;)I

    move-result v1

    .line 258
    .local v1, "magic1":I
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->readNextByte(Lorg/apache/commons/compress/utils/BitInputStream;)I

    move-result v3

    .line 260
    .local v3, "magic2":I
    const/16 v4, 0x42

    if-ne v0, v4, :cond_2

    const/16 v4, 0x5a

    if-ne v1, v4, :cond_2

    const/16 v4, 0x68

    if-eq v3, v4, :cond_3

    :cond_2
    goto :goto_0

    .line 266
    :cond_3
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-direct {p0, v4}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->readNextByte(Lorg/apache/commons/compress/utils/BitInputStream;)I

    move-result v4

    .line 267
    .local v4, "blockSize":I
    const/16 v5, 0x31

    if-lt v4, v5, :cond_4

    const/16 v5, 0x39

    if-gt v4, v5, :cond_4

    .line 271
    add-int/lit8 v5, v4, -0x30

    iput v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockSize100k:I

    .line 273
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 275
    const/4 v2, 0x1

    return v2

    .line 268
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string v5, "BZip2 block size is invalid"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 261
    .end local v4    # "blockSize":I
    :goto_0
    new-instance v2, Ljava/io/IOException;

    if-eqz p1, :cond_5

    .line 262
    const-string v4, "Stream is not in the BZip2 format"

    goto :goto_1

    .line 263
    :cond_5
    const-string v4, "Garbage after a valid BZip2 stream"

    :goto_1
    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 246
    .end local v0    # "magic0":I
    .end local v1    # "magic1":I
    .end local v3    # "magic2":I
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No InputStream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initBlock()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 289
    .local v0, "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    :cond_0
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C

    move-result v1

    .line 290
    .local v1, "magic0":C
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C

    move-result v2

    .line 291
    .local v2, "magic1":C
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C

    move-result v3

    .line 292
    .local v3, "magic2":C
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C

    move-result v4

    .line 293
    .local v4, "magic3":C
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C

    move-result v5

    .line 294
    .local v5, "magic4":C
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C

    move-result v6

    .line 297
    .local v6, "magic5":C
    const/16 v7, 0x17

    if-ne v1, v7, :cond_2

    const/16 v7, 0x72

    if-ne v2, v7, :cond_2

    const/16 v7, 0x45

    if-ne v3, v7, :cond_2

    const/16 v7, 0x38

    if-ne v4, v7, :cond_2

    const/16 v7, 0x50

    if-ne v5, v7, :cond_2

    const/16 v7, 0x90

    if-eq v6, v7, :cond_1

    .line 299
    goto :goto_0

    .line 305
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->complete()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 306
    return-void

    .line 310
    :cond_2
    :goto_0
    const/16 v7, 0x31

    const/4 v8, 0x0

    if-ne v1, v7, :cond_5

    const/16 v7, 0x41

    if-ne v2, v7, :cond_5

    const/16 v7, 0x59

    if-ne v3, v7, :cond_5

    const/16 v9, 0x26

    if-ne v4, v9, :cond_5

    const/16 v9, 0x53

    if-ne v5, v9, :cond_5

    if-ne v6, v7, :cond_5

    .line 320
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetInt(Lorg/apache/commons/compress/utils/BitInputStream;)I

    move-result v7

    iput v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedBlockCRC:I

    .line 321
    const/4 v7, 0x1

    invoke-static {v0, v7}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v9

    if-ne v9, v7, :cond_3

    move v8, v7

    :cond_3
    iput-boolean v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockRandomised:Z

    .line 327
    iget-object v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    if-nez v8, :cond_4

    .line 328
    new-instance v8, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget v9, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockSize100k:I

    invoke-direct {v8, v9}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;-><init>(I)V

    iput-object v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 332
    :cond_4
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->getAndMoveToFrontDecode()V

    .line 334
    iget-object v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v8}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->initialiseCRC()V

    .line 335
    iput v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 336
    return-void

    .line 317
    :cond_5
    iput v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 318
    new-instance v7, Ljava/io/IOException;

    const-string v8, "bad block header"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private makeMaps()V
    .locals 6

    .line 194
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->inUse:[Z

    .line 195
    .local v0, "inUse":[Z
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->seqToUnseq:[B

    .line 197
    .local v1, "seqToUnseq":[B
    const/4 v2, 0x0

    .line 199
    .local v2, "nInUseShadow":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x100

    if-ge v3, v4, :cond_1

    .line 200
    aget-boolean v4, v0, v3

    if-eqz v4, :cond_0

    .line 201
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "nInUseShadow":I
    .local v4, "nInUseShadow":I
    int-to-byte v5, v3

    aput-byte v5, v1, v2

    move v2, v4

    .line 199
    .end local v4    # "nInUseShadow":I
    .restart local v2    # "nInUseShadow":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 205
    .end local v3    # "i":I
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->nInUse:I

    .line 206
    return-void
.end method

.method public static matches([BI)Z
    .locals 4
    .param p0, "signature"    # [B
    .param p1, "length"    # I

    .line 967
    const/4 v0, 0x3

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    aget-byte v0, p0, v1

    const/16 v2, 0x42

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    aget-byte v2, p0, v0

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v3, 0x68

    if-ne v2, v3, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private read0()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    packed-switch v0, :pswitch_data_0

    .line 235
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 232
    :pswitch_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartC()I

    move-result v0

    return v0

    .line 229
    :pswitch_1
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartB()I

    move-result v0

    return v0

    .line 226
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 223
    :pswitch_3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartC()I

    move-result v0

    return v0

    .line 220
    :pswitch_4
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartB()I

    move-result v0

    return v0

    .line 217
    :pswitch_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 214
    :pswitch_6
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupBlock()I

    move-result v0

    return v0

    .line 211
    :pswitch_7
    const/4 v0, -0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readNextByte(Lorg/apache/commons/compress/utils/BitInputStream;)I
    .locals 3
    .param p1, "in"    # Lorg/apache/commons/compress/utils/BitInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    move-result-wide v0

    .line 241
    .local v0, "b":J
    long-to-int v2, v0

    return v2
.end method

.method private recvDecodingTables()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 465
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 466
    .local v1, "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 467
    .local v2, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    iget-object v3, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->inUse:[Z

    .line 468
    .local v3, "inUse":[Z
    iget-object v4, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->recvDecodingTables_pos:[B

    .line 469
    .local v4, "pos":[B
    iget-object v5, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selector:[B

    .line 470
    .local v5, "selector":[B
    iget-object v6, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selectorMtf:[B

    .line 472
    .local v6, "selectorMtf":[B
    const/4 v7, 0x0

    .line 475
    .local v7, "inUse16":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/16 v9, 0x10

    const/4 v10, 0x1

    if-ge v8, v9, :cond_1

    .line 476
    invoke-static {v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit(Lorg/apache/commons/compress/utils/BitInputStream;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 477
    shl-int v9, v10, v8

    or-int/2addr v7, v9

    .line 475
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 481
    .end local v8    # "i":I
    const/4 v8, 0x0

    invoke-static {v3, v8}, Ljava/util/Arrays;->fill([ZZ)V

    .line 482
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v9, :cond_4

    .line 483
    shl-int v12, v10, v11

    and-int/2addr v12, v7

    if-eqz v12, :cond_3

    .line 484
    shl-int/lit8 v12, v11, 0x4

    .line 485
    .local v12, "i16":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    if-ge v13, v9, :cond_3

    .line 486
    invoke-static {v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit(Lorg/apache/commons/compress/utils/BitInputStream;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 487
    add-int v14, v12, v13

    aput-boolean v10, v3, v14

    .line 485
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 482
    .end local v12    # "i16":I
    .end local v13    # "j":I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    nop

    .line 493
    .end local v11    # "i":I
    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->makeMaps()V

    .line 494
    iget v9, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->nInUse:I

    add-int/lit8 v9, v9, 0x2

    .line 496
    .local v9, "alphaSize":I
    const/4 v11, 0x3

    invoke-static {v1, v11}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v11

    .line 497
    .local v11, "nGroups":I
    const/16 v12, 0xf

    invoke-static {v1, v12}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v12

    .line 498
    .local v12, "nSelectors":I
    const/16 v13, 0x103

    const-string v14, "alphaSize"

    invoke-static {v9, v13, v14}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 499
    const/4 v13, 0x7

    const-string v14, "nGroups"

    invoke-static {v11, v13, v14}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 500
    const/16 v13, 0x4653

    const-string v14, "nSelectors"

    invoke-static {v12, v13, v14}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 502
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    if-ge v13, v12, :cond_6

    .line 503
    const/4 v14, 0x0

    .line 504
    .local v14, "j":I
    :goto_4
    invoke-static {v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit(Lorg/apache/commons/compress/utils/BitInputStream;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 505
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 507
    :cond_5
    int-to-byte v15, v14

    aput-byte v15, v6, v13

    .line 502
    .end local v14    # "j":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_6
    nop

    .line 511
    .end local v13    # "i":I
    move v13, v11

    .local v13, "v":I
    :goto_5
    const/4 v14, -0x1

    add-int/2addr v13, v14

    if-ltz v13, :cond_7

    .line 512
    int-to-byte v14, v13

    aput-byte v14, v4, v13

    goto :goto_5

    .line 511
    :cond_7
    nop

    .line 515
    .end local v13    # "v":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_6
    if-ge v13, v12, :cond_9

    .line 516
    aget-byte v15, v6, v13

    and-int/lit16 v15, v15, 0xff

    .line 517
    .local v15, "v":I
    move/from16 v16, v8

    const/4 v8, 0x6

    const-string v10, "selectorMtf"

    invoke-static {v15, v8, v10}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 518
    aget-byte v8, v4, v15

    .line 519
    .local v8, "tmp":B
    :goto_7
    if-lez v15, :cond_8

    .line 521
    add-int/lit8 v10, v15, -0x1

    aget-byte v10, v4, v10

    aput-byte v10, v4, v15

    .line 522
    add-int/lit8 v15, v15, -0x1

    goto :goto_7

    .line 524
    :cond_8
    aput-byte v8, v4, v16

    .line 525
    aput-byte v8, v5, v13

    .line 515
    .end local v8    # "tmp":B
    .end local v15    # "v":I
    add-int/lit8 v13, v13, 0x1

    move/from16 v8, v16

    const/4 v10, 0x1

    goto :goto_6

    :cond_9
    nop

    .line 528
    .end local v13    # "i":I
    iget-object v8, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->temp_charArray2d:[[C

    .line 531
    .local v8, "len":[[C
    const/4 v10, 0x0

    .local v10, "t":I
    :goto_8
    if-ge v10, v11, :cond_d

    .line 532
    const/4 v13, 0x5

    invoke-static {v1, v13}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v13

    .line 533
    .local v13, "curr":I
    aget-object v15, v8, v10

    .line 534
    .local v15, "len_t":[C
    const/16 v16, 0x0

    move/from16 v14, v16

    .local v14, "i":I
    :goto_9
    if-ge v14, v9, :cond_c

    .line 535
    :goto_a
    invoke-static {v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit(Lorg/apache/commons/compress/utils/BitInputStream;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 536
    invoke-static {v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit(Lorg/apache/commons/compress/utils/BitInputStream;)Z

    move-result v17

    if-eqz v17, :cond_a

    const/16 v17, -0x1

    goto :goto_b

    :cond_a
    const/16 v17, 0x1

    :goto_b
    add-int v13, v13, v17

    goto :goto_a

    .line 538
    :cond_b
    move-object/from16 v17, v1

    .end local v1    # "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    .local v17, "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    int-to-char v1, v13

    aput-char v1, v15, v14

    .line 534
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v17

    goto :goto_9

    .end local v17    # "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    .restart local v1    # "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    :cond_c
    move-object/from16 v17, v1

    .line 531
    .end local v1    # "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    .end local v13    # "curr":I
    .end local v14    # "i":I
    .end local v15    # "len_t":[C
    .restart local v17    # "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    add-int/lit8 v10, v10, 0x1

    const/4 v14, -0x1

    goto :goto_8

    .end local v17    # "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    .restart local v1    # "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    :cond_d
    nop

    .line 543
    .end local v10    # "t":I
    invoke-direct {v0, v9, v11}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->createHuffmanDecodingTables(II)V

    .line 544
    return-void
.end method

.method private setupBlock()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 742
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    if-nez v0, :cond_1

    :cond_0
    goto/16 :goto_2

    .line 746
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->cftab:[I

    .line 747
    .local v0, "cftab":[I
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 748
    .local v1, "ttLen":I
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    invoke-virtual {v3, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->initTT(I)[I

    move-result-object v3

    .line 749
    .local v3, "tt":[I
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v4, v4, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    .line 750
    .local v4, "ll8":[B
    const/4 v5, 0x0

    aput v5, v0, v5

    .line 751
    iget-object v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v6, v6, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->unzftab:[I

    const/16 v7, 0x100

    invoke-static {v6, v5, v0, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 753
    const/4 v2, 0x1

    .local v2, "i":I
    aget v6, v0, v5

    .local v6, "c":I
    :goto_0
    if-gt v2, v7, :cond_2

    .line 754
    aget v8, v0, v2

    add-int/2addr v6, v8

    .line 755
    aput v6, v0, v2

    .line 753
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 758
    .end local v2    # "i":I
    .end local v6    # "c":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    iget v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    .local v6, "lastShadow":I
    :goto_1
    if-gt v2, v6, :cond_3

    .line 759
    aget-byte v8, v4, v2

    and-int/lit16 v8, v8, 0xff

    aget v9, v0, v8

    add-int/lit8 v10, v9, 0x1

    aput v10, v0, v8

    .line 760
    .local v9, "tmp":I
    const-string v8, "tt index"

    invoke-static {v9, v1, v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 761
    aput v2, v3, v9

    .line 758
    .end local v9    # "tmp":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    nop

    .line 764
    .end local v2    # "i":I
    .end local v6    # "lastShadow":I
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->origPtr:I

    if-ltz v2, :cond_5

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->origPtr:I

    array-length v6, v3

    if-ge v2, v6, :cond_5

    .line 768
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->origPtr:I

    aget v2, v3, v2

    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 769
    iput v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 770
    iput v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 771
    iput v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 773
    iget-boolean v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockRandomised:Z

    if-eqz v2, :cond_4

    .line 774
    iput v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 775
    iput v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    .line 776
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()I

    move-result v2

    return v2

    .line 778
    :cond_4
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()I

    move-result v2

    return v2

    .line 765
    :cond_5
    new-instance v2, Ljava/io/IOException;

    const-string v5, "stream corrupted"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 743
    .end local v0    # "cftab":[I
    .end local v1    # "ttLen":I
    .end local v3    # "tt":[I
    .end local v4    # "ll8":[B
    :goto_2
    const/4 v0, -0x1

    return v0
.end method

.method private setupNoRandPartA()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 807
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    if-gt v0, v1, :cond_0

    .line 808
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    .line 809
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 810
    .local v0, "su_ch2Shadow":I
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 811
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v2, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    array-length v2, v2

    const-string v3, "su_tPos"

    invoke-static {v1, v2, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 812
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget v1, v1, v2

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 813
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 814
    const/4 v1, 0x6

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 815
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(I)V

    .line 816
    return v0

    .line 818
    .end local v0    # "su_ch2Shadow":I
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 819
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->endBlock()V

    .line 820
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->initBlock()V

    .line 821
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupBlock()I

    move-result v0

    return v0
.end method

.method private setupNoRandPartB()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 866
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 867
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 868
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()I

    move-result v0

    return v0

    .line 869
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 870
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    array-length v1, v1

    const-string v2, "su_tPos"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 871
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    .line 872
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 873
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 874
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartC()I

    move-result v0

    return v0

    .line 876
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()I

    move-result v0

    return v0
.end method

.method private setupNoRandPartC()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 881
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    iget-char v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    if-ge v0, v1, :cond_0

    .line 882
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 883
    .local v0, "su_ch2Shadow":I
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(I)V

    .line 884
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 885
    const/4 v1, 0x7

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 886
    return v0

    .line 888
    .end local v0    # "su_ch2Shadow":I
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 889
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 890
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()I

    move-result v0

    return v0
.end method

.method private setupRandPartA()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 782
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    if-gt v0, v1, :cond_3

    .line 783
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    .line 784
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 785
    .local v0, "su_ch2Shadow":I
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v2, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    array-length v2, v2

    const-string v3, "su_tPos"

    invoke-static {v1, v2, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 786
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget v1, v1, v2

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 787
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 788
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    invoke-static {v1}, Lorg/apache/commons/compress/compressors/bzip2/Rand;->rNums(I)I

    move-result v1

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 789
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    const/16 v4, 0x200

    if-ne v1, v4, :cond_1

    .line 790
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    goto :goto_0

    .line 793
    :cond_0
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 795
    :cond_1
    :goto_0
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    if-ne v1, v3, :cond_2

    move v2, v3

    :cond_2
    xor-int v1, v0, v2

    move v0, v1

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 796
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 797
    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 798
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(I)V

    .line 799
    return v0

    .line 801
    .end local v0    # "su_ch2Shadow":I
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->endBlock()V

    .line 802
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->initBlock()V

    .line 803
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupBlock()I

    move-result v0

    return v0
.end method

.method private setupRandPartB()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 825
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    .line 826
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 827
    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 828
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()I

    move-result v0

    return v0

    .line 829
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4

    .line 830
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    .line 831
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v2, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    array-length v2, v2

    const-string v4, "su_tPos"

    invoke-static {v0, v2, v4}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 832
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget v0, v0, v2

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 833
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 834
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/Rand;->rNums(I)I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 835
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    const/16 v4, 0x200

    if-ne v0, v4, :cond_2

    .line 836
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    goto :goto_0

    .line 839
    :cond_1
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 841
    :cond_2
    :goto_0
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 842
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 843
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    if-ne v0, v3, :cond_3

    .line 844
    iget-char v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    xor-int/2addr v0, v3

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    .line 846
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartC()I

    move-result v0

    return v0

    .line 848
    :cond_4
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 849
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()I

    move-result v0

    return v0
.end method

.method private setupRandPartC()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 854
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    iget-char v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    if-ge v0, v1, :cond_0

    .line 855
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(I)V

    .line 856
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 857
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    return v0

    .line 859
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 860
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 861
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 862
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()I

    move-result v0

    return v0
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 374
    .local v0, "inShadow":Lorg/apache/commons/compress/utils/BitInputStream;
    if-eqz v0, :cond_0

    .line 376
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/BitInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 379
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 380
    goto :goto_0

    .line 378
    :catchall_0
    move-exception v2

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 379
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 380
    throw v2

    .line 382
    :cond_0
    :goto_0
    return-void
.end method

.method public getCompressedCount()J
    .locals 2

    .line 190
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/BitInputStream;->getBytesRead()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    if-eqz v0, :cond_1

    .line 142
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->read0()I

    move-result v0

    .line 143
    .local v0, "r":I
    if-gez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    .line 144
    return v0

    .line 146
    .end local v0    # "r":I
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "dest"    # [B
    .param p2, "offs"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    const-string v0, ") < 0."

    const-string v1, "offs("

    if-ltz p2, :cond_6

    .line 160
    if-ltz p3, :cond_5

    .line 163
    add-int v0, p2, p3

    array-length v2, p1

    if-gt v0, v2, :cond_4

    .line 167
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    if-eqz v0, :cond_3

    .line 170
    if-nez p3, :cond_0

    .line 171
    const/4 v0, 0x0

    return v0

    .line 174
    :cond_0
    add-int v0, p2, p3

    .line 175
    .local v0, "hi":I
    move v1, p2

    .line 177
    .local v1, "destOffs":I
    :goto_0
    nop

    nop

    if-ge v1, v0, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->read0()I

    move-result v2

    move v3, v2

    .local v3, "b":I
    if-ltz v2, :cond_1

    .line 178
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "destOffs":I
    .local v2, "destOffs":I
    int-to-byte v4, v3

    aput-byte v4, p1, v1

    .line 179
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    move v1, v2

    goto :goto_0

    .line 182
    .end local v2    # "destOffs":I
    .end local v3    # "b":I
    .restart local v1    # "destOffs":I
    :cond_1
    if-ne v1, p2, :cond_2

    const/4 v2, -0x1

    goto :goto_1

    :cond_2
    sub-int v2, v1, p2

    :goto_1
    return v2

    .line 168
    .end local v0    # "hi":I
    .end local v1    # "destOffs":I
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") + len("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") > dest.length("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_5
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "len("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_6
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
