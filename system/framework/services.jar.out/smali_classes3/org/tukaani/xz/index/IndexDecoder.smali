.class public Lorg/tukaani/xz/index/IndexDecoder;
.super Lorg/tukaani/xz/index/IndexBase;
.source "IndexDecoder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private compressedOffset:J

.field private largestBlockSize:J

.field private final memoryUsage:I

.field private recordOffset:I

.field private final streamFlags:Lorg/tukaani/xz/common/StreamFlags;

.field private final streamPadding:J

.field private final uncompressed:[J

.field private uncompressedOffset:J

.field private final unpadded:[J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 22
    return-void
.end method

.method public constructor <init>(Lorg/tukaani/xz/SeekableInputStream;Lorg/tukaani/xz/common/StreamFlags;JI)V
    .locals 21
    .param p1, "in"    # Lorg/tukaani/xz/SeekableInputStream;
    .param p2, "streamFooterFlags"    # Lorg/tukaani/xz/common/StreamFlags;
    .param p3, "streamPadding"    # J
    .param p5, "memoryLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p5

    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    const-string v4, "XZ Index is corrupt"

    invoke-direct {v0, v4}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lorg/tukaani/xz/index/IndexBase;-><init>(Lorg/tukaani/xz/XZIOException;)V

    .line 33
    const-wide/16 v5, 0x0

    iput-wide v5, v1, Lorg/tukaani/xz/index/IndexDecoder;->largestBlockSize:J

    .line 37
    const/4 v0, 0x0

    iput v0, v1, Lorg/tukaani/xz/index/IndexDecoder;->recordOffset:I

    .line 38
    iput-wide v5, v1, Lorg/tukaani/xz/index/IndexDecoder;->compressedOffset:J

    .line 39
    iput-wide v5, v1, Lorg/tukaani/xz/index/IndexDecoder;->uncompressedOffset:J

    .line 45
    iput-object v2, v1, Lorg/tukaani/xz/index/IndexDecoder;->streamFlags:Lorg/tukaani/xz/common/StreamFlags;

    .line 46
    move-wide/from16 v5, p3

    iput-wide v5, v1, Lorg/tukaani/xz/index/IndexDecoder;->streamPadding:J

    .line 50
    invoke-virtual/range {p1 .. p1}, Lorg/tukaani/xz/SeekableInputStream;->position()J

    move-result-wide v7

    iget-wide v9, v2, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    add-long/2addr v7, v9

    const-wide/16 v9, 0x4

    sub-long/2addr v7, v9

    .line 52
    .local v7, "endPos":J
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    move-object v9, v0

    .line 53
    .local v9, "crc32":Ljava/util/zip/CRC32;
    new-instance v0, Ljava/util/zip/CheckedInputStream;

    move-object/from16 v10, p1

    invoke-direct {v0, v10, v9}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    move-object v11, v0

    .line 56
    .local v11, "inChecked":Ljava/util/zip/CheckedInputStream;
    invoke-virtual {v11}, Ljava/util/zip/CheckedInputStream;->read()I

    move-result v0

    if-nez v0, :cond_c

    .line 61
    :try_start_0
    invoke-static {v11}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v12

    .line 67
    .local v12, "count":J
    iget-wide v14, v2, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    const-wide/16 v16, 0x2

    div-long v14, v14, v16

    cmp-long v0, v12, v14

    if-gez v0, :cond_b

    .line 72
    const-wide/32 v14, 0x7fffffff

    cmp-long v0, v12, v14

    if-gtz v0, :cond_a

    .line 78
    const-wide/16 v14, 0x10

    mul-long/2addr v14, v12

    const-wide/16 v16, 0x3ff

    add-long v14, v14, v16

    const-wide/16 v16, 0x400

    div-long v14, v14, v16

    long-to-int v0, v14

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lorg/tukaani/xz/index/IndexDecoder;->memoryUsage:I

    .line 79
    if-ltz v3, :cond_0

    iget v0, v1, Lorg/tukaani/xz/index/IndexDecoder;->memoryUsage:I

    if-gt v0, v3, :cond_1

    :cond_0
    goto :goto_0

    .line 80
    :cond_1
    new-instance v0, Lorg/tukaani/xz/MemoryLimitException;

    iget v14, v1, Lorg/tukaani/xz/index/IndexDecoder;->memoryUsage:I

    invoke-direct {v0, v14, v3}, Lorg/tukaani/xz/MemoryLimitException;-><init>(II)V

    .end local v7    # "endPos":J
    .end local v9    # "crc32":Ljava/util/zip/CRC32;
    .end local v11    # "inChecked":Ljava/util/zip/CheckedInputStream;
    .end local p0    # "this":Lorg/tukaani/xz/index/IndexDecoder;
    .end local p1    # "in":Lorg/tukaani/xz/SeekableInputStream;
    .end local p2    # "streamFooterFlags":Lorg/tukaani/xz/common/StreamFlags;
    .end local p3    # "streamPadding":J
    .end local p5    # "memoryLimit":I
    throw v0

    .line 111
    .end local v12    # "count":J
    .restart local v7    # "endPos":J
    .restart local v9    # "crc32":Ljava/util/zip/CRC32;
    .restart local v11    # "inChecked":Ljava/util/zip/CheckedInputStream;
    .restart local p0    # "this":Lorg/tukaani/xz/index/IndexDecoder;
    .restart local p1    # "in":Lorg/tukaani/xz/SeekableInputStream;
    .restart local p2    # "streamFooterFlags":Lorg/tukaani/xz/common/StreamFlags;
    .restart local p3    # "streamPadding":J
    .restart local p5    # "memoryLimit":I
    :catch_0
    move-exception v0

    goto/16 :goto_4

    .line 83
    .restart local v12    # "count":J
    :goto_0
    long-to-int v0, v12

    new-array v0, v0, [J

    iput-object v0, v1, Lorg/tukaani/xz/index/IndexDecoder;->unpadded:[J

    .line 84
    long-to-int v0, v12

    new-array v0, v0, [J

    iput-object v0, v1, Lorg/tukaani/xz/index/IndexDecoder;->uncompressed:[J

    .line 85
    const/4 v0, 0x0

    .line 88
    .local v0, "record":I
    long-to-int v14, v12

    .local v14, "i":I
    :goto_1
    if-lez v14, :cond_4

    .line 90
    invoke-static {v11}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v15

    move-wide/from16 v17, v15

    .line 91
    .local v17, "unpaddedSize":J
    invoke-static {v11}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v15

    move-wide/from16 v19, v15

    .line 97
    .local v19, "uncompressedSize":J
    invoke-virtual {v10}, Lorg/tukaani/xz/SeekableInputStream;->position()J

    move-result-wide v15

    cmp-long v15, v15, v7

    if-gtz v15, :cond_3

    .line 101
    iget-object v15, v1, Lorg/tukaani/xz/index/IndexDecoder;->unpadded:[J

    iget-wide v2, v1, Lorg/tukaani/xz/index/IndexBase;->blocksSum:J

    add-long v2, v2, v17

    aput-wide v2, v15, v0

    .line 102
    iget-object v2, v1, Lorg/tukaani/xz/index/IndexDecoder;->uncompressed:[J

    move-object v15, v2

    iget-wide v2, v1, Lorg/tukaani/xz/index/IndexBase;->uncompressedSum:J

    add-long v2, v2, v19

    aput-wide v2, v15, v0

    .line 103
    add-int/lit8 v0, v0, 0x1

    .line 104
    move-wide/from16 v2, v17

    move-wide/from16 v5, v19

    .end local v17    # "unpaddedSize":J
    .end local v19    # "uncompressedSize":J
    .local v2, "unpaddedSize":J
    .local v5, "uncompressedSize":J
    invoke-super {v1, v2, v3, v5, v6}, Lorg/tukaani/xz/index/IndexBase;->add(JJ)V

    .line 105
    nop

    .line 108
    move-wide v15, v2

    .end local v2    # "unpaddedSize":J
    .local v15, "unpaddedSize":J
    iget-wide v2, v1, Lorg/tukaani/xz/index/IndexDecoder;->largestBlockSize:J

    cmp-long v2, v2, v5

    if-gez v2, :cond_2

    .line 109
    iput-wide v5, v1, Lorg/tukaani/xz/index/IndexDecoder;->largestBlockSize:J

    .line 88
    .end local v5    # "uncompressedSize":J
    .end local v15    # "unpaddedSize":J
    :cond_2
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v2, p2

    move-wide/from16 v5, p3

    move/from16 v3, p5

    goto :goto_1

    .line 98
    .restart local v17    # "unpaddedSize":J
    .restart local v19    # "uncompressedSize":J
    :cond_3
    move-wide/from16 v15, v17

    move-wide/from16 v5, v19

    .end local v17    # "unpaddedSize":J
    .end local v19    # "uncompressedSize":J
    .restart local v5    # "uncompressedSize":J
    .restart local v15    # "unpaddedSize":J
    new-instance v2, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v2, v4}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    .end local v7    # "endPos":J
    .end local v9    # "crc32":Ljava/util/zip/CRC32;
    .end local v11    # "inChecked":Ljava/util/zip/CheckedInputStream;
    .end local p0    # "this":Lorg/tukaani/xz/index/IndexDecoder;
    .end local p1    # "in":Lorg/tukaani/xz/SeekableInputStream;
    .end local p2    # "streamFooterFlags":Lorg/tukaani/xz/common/StreamFlags;
    .end local p3    # "streamPadding":J
    .end local p5    # "memoryLimit":I
    throw v2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v5    # "uncompressedSize":J
    .end local v15    # "unpaddedSize":J
    .restart local v7    # "endPos":J
    .restart local v9    # "crc32":Ljava/util/zip/CRC32;
    .restart local v11    # "inChecked":Ljava/util/zip/CheckedInputStream;
    .restart local p0    # "this":Lorg/tukaani/xz/index/IndexDecoder;
    .restart local p1    # "in":Lorg/tukaani/xz/SeekableInputStream;
    .restart local p2    # "streamFooterFlags":Lorg/tukaani/xz/common/StreamFlags;
    .restart local p3    # "streamPadding":J
    .restart local p5    # "memoryLimit":I
    :cond_4
    nop

    .line 115
    .end local v0    # "record":I
    .end local v12    # "count":J
    .end local v14    # "i":I
    nop

    .line 119
    invoke-virtual {v1}, Lorg/tukaani/xz/index/IndexBase;->getIndexPaddingSize()I

    move-result v0

    .line 120
    .local v0, "indexPaddingSize":I
    invoke-virtual {v10}, Lorg/tukaani/xz/SeekableInputStream;->position()J

    move-result-wide v2

    int-to-long v5, v0

    add-long/2addr v2, v5

    cmp-long v2, v2, v7

    if-nez v2, :cond_9

    .line 124
    :goto_2
    add-int/lit8 v2, v0, -0x1

    .end local v0    # "indexPaddingSize":I
    .local v2, "indexPaddingSize":I
    if-lez v0, :cond_6

    .line 125
    invoke-virtual {v11}, Ljava/util/zip/CheckedInputStream;->read()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_2

    .line 126
    :cond_5
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v4}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_6
    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    .line 130
    .local v5, "value":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    const/4 v3, 0x4

    if-ge v0, v3, :cond_8

    .line 131
    mul-int/lit8 v3, v0, 0x8

    ushr-long v12, v5, v3

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    invoke-virtual {v10}, Ljava/io/InputStream;->read()I

    move-result v3

    int-to-long v14, v3

    cmp-long v3, v12, v14

    if-nez v3, :cond_7

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 132
    :cond_7
    new-instance v3, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v3, v4}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 130
    :cond_8
    nop

    .line 133
    .end local v0    # "i":I
    return-void

    .line 121
    .end local v2    # "indexPaddingSize":I
    .end local v5    # "value":J
    .local v0, "indexPaddingSize":I
    :cond_9
    new-instance v2, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v2, v4}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    .end local v0    # "indexPaddingSize":I
    .restart local v12    # "count":J
    :cond_a
    :try_start_1
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v2, "XZ Index has over 2147483647 Records"

    invoke-direct {v0, v2}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    .end local v7    # "endPos":J
    .end local v9    # "crc32":Ljava/util/zip/CRC32;
    .end local v11    # "inChecked":Ljava/util/zip/CheckedInputStream;
    .end local p0    # "this":Lorg/tukaani/xz/index/IndexDecoder;
    .end local p1    # "in":Lorg/tukaani/xz/SeekableInputStream;
    .end local p2    # "streamFooterFlags":Lorg/tukaani/xz/common/StreamFlags;
    .end local p3    # "streamPadding":J
    .end local p5    # "memoryLimit":I
    throw v0

    .line 68
    .restart local v7    # "endPos":J
    .restart local v9    # "crc32":Ljava/util/zip/CRC32;
    .restart local v11    # "inChecked":Ljava/util/zip/CheckedInputStream;
    .restart local p0    # "this":Lorg/tukaani/xz/index/IndexDecoder;
    .restart local p1    # "in":Lorg/tukaani/xz/SeekableInputStream;
    .restart local p2    # "streamFooterFlags":Lorg/tukaani/xz/common/StreamFlags;
    .restart local p3    # "streamPadding":J
    .restart local p5    # "memoryLimit":I
    :cond_b
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v4}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    .end local v7    # "endPos":J
    .end local v9    # "crc32":Ljava/util/zip/CRC32;
    .end local v11    # "inChecked":Ljava/util/zip/CheckedInputStream;
    .end local p0    # "this":Lorg/tukaani/xz/index/IndexDecoder;
    .end local p1    # "in":Lorg/tukaani/xz/SeekableInputStream;
    .end local p2    # "streamFooterFlags":Lorg/tukaani/xz/common/StreamFlags;
    .end local p3    # "streamPadding":J
    .end local p5    # "memoryLimit":I
    throw v0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    .end local v12    # "count":J
    .restart local v7    # "endPos":J
    .restart local v9    # "crc32":Ljava/util/zip/CRC32;
    .restart local v11    # "inChecked":Ljava/util/zip/CheckedInputStream;
    .restart local p0    # "this":Lorg/tukaani/xz/index/IndexDecoder;
    .restart local p1    # "in":Lorg/tukaani/xz/SeekableInputStream;
    .restart local p2    # "streamFooterFlags":Lorg/tukaani/xz/common/StreamFlags;
    .restart local p3    # "streamPadding":J
    .restart local p5    # "memoryLimit":I
    :goto_4
    nop

    .line 114
    .local v0, "e":Ljava/io/EOFException;
    new-instance v2, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v2, v4}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    .end local v0    # "e":Ljava/io/EOFException;
    :cond_c
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v4}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic getIndexSize()J
    .locals 2

    .line 22
    invoke-super {p0}, Lorg/tukaani/xz/index/IndexBase;->getIndexSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLargestBlockSize()J
    .locals 2

    .line 164
    iget-wide v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->largestBlockSize:J

    return-wide v0
.end method

.method public getMemoryUsage()I
    .locals 1

    .line 146
    iget v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->memoryUsage:I

    return v0
.end method

.method public getRecordCount()I
    .locals 2

    .line 156
    iget-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->recordCount:J

    long-to-int v0, v0

    return v0
.end method

.method public getStreamFlags()Lorg/tukaani/xz/common/StreamFlags;
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->streamFlags:Lorg/tukaani/xz/common/StreamFlags;

    return-object v0
.end method

.method public bridge synthetic getStreamSize()J
    .locals 2

    .line 22
    invoke-super {p0}, Lorg/tukaani/xz/index/IndexBase;->getStreamSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUncompressedSize()J
    .locals 2

    .line 160
    iget-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->uncompressedSum:J

    return-wide v0
.end method

.method public hasRecord(I)Z
    .locals 6
    .param p1, "blockNumber"    # I

    .line 173
    iget v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->recordOffset:I

    if-lt p1, v0, :cond_0

    int-to-long v0, p1

    iget v2, p0, Lorg/tukaani/xz/index/IndexDecoder;->recordOffset:I

    int-to-long v2, v2

    iget-wide v4, p0, Lorg/tukaani/xz/index/IndexBase;->recordCount:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUncompressedOffset(J)Z
    .locals 4
    .param p1, "pos"    # J

    .line 168
    iget-wide v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->uncompressedOffset:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->uncompressedOffset:J

    iget-wide v2, p0, Lorg/tukaani/xz/index/IndexBase;->uncompressedSum:J

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public locateBlock(Lorg/tukaani/xz/index/BlockInfo;J)V
    .locals 5
    .param p1, "info"    # Lorg/tukaani/xz/index/BlockInfo;
    .param p2, "target"    # J

    .line 178
    nop

    .line 179
    iget-wide v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->uncompressedOffset:J

    sub-long/2addr p2, v0

    .line 180
    nop

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "left":I
    iget-object v1, p0, Lorg/tukaani/xz/index/IndexDecoder;->unpadded:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 185
    .local v1, "right":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 186
    sub-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    .line 188
    .local v2, "i":I
    iget-object v3, p0, Lorg/tukaani/xz/index/IndexDecoder;->uncompressed:[J

    aget-wide v3, v3, v2

    cmp-long v3, v3, p2

    if-gtz v3, :cond_0

    .line 189
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 191
    :cond_0
    move v1, v2

    .line 192
    .end local v2    # "i":I
    :goto_1
    goto :goto_0

    .line 194
    :cond_1
    iget v2, p0, Lorg/tukaani/xz/index/IndexDecoder;->recordOffset:I

    add-int/2addr v2, v0

    invoke-virtual {p0, p1, v2}, Lorg/tukaani/xz/index/IndexDecoder;->setBlockInfo(Lorg/tukaani/xz/index/BlockInfo;I)V

    .line 195
    return-void
.end method

.method public setBlockInfo(Lorg/tukaani/xz/index/BlockInfo;I)V
    .locals 7
    .param p1, "info"    # Lorg/tukaani/xz/index/BlockInfo;
    .param p2, "blockNumber"    # I

    .line 200
    nop

    .line 201
    nop

    .line 203
    iput-object p0, p1, Lorg/tukaani/xz/index/BlockInfo;->index:Lorg/tukaani/xz/index/IndexDecoder;

    .line 204
    iput p2, p1, Lorg/tukaani/xz/index/BlockInfo;->blockNumber:I

    .line 206
    iget v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->recordOffset:I

    sub-int v0, p2, v0

    .line 208
    .local v0, "pos":I
    if-nez v0, :cond_0

    .line 209
    const-wide/16 v1, 0x0

    iput-wide v1, p1, Lorg/tukaani/xz/index/BlockInfo;->compressedOffset:J

    .line 210
    iput-wide v1, p1, Lorg/tukaani/xz/index/BlockInfo;->uncompressedOffset:J

    goto :goto_0

    .line 212
    :cond_0
    iget-object v1, p0, Lorg/tukaani/xz/index/IndexDecoder;->unpadded:[J

    add-int/lit8 v2, v0, -0x1

    aget-wide v1, v1, v2

    const-wide/16 v3, 0x3

    add-long/2addr v1, v3

    const-wide/16 v3, -0x4

    and-long/2addr v1, v3

    iput-wide v1, p1, Lorg/tukaani/xz/index/BlockInfo;->compressedOffset:J

    .line 213
    iget-object v1, p0, Lorg/tukaani/xz/index/IndexDecoder;->uncompressed:[J

    add-int/lit8 v2, v0, -0x1

    aget-wide v1, v1, v2

    iput-wide v1, p1, Lorg/tukaani/xz/index/BlockInfo;->uncompressedOffset:J

    .line 216
    :goto_0
    iget-object v1, p0, Lorg/tukaani/xz/index/IndexDecoder;->unpadded:[J

    aget-wide v1, v1, v0

    iget-wide v3, p1, Lorg/tukaani/xz/index/BlockInfo;->compressedOffset:J

    sub-long/2addr v1, v3

    iput-wide v1, p1, Lorg/tukaani/xz/index/BlockInfo;->unpaddedSize:J

    .line 217
    iget-object v1, p0, Lorg/tukaani/xz/index/IndexDecoder;->uncompressed:[J

    aget-wide v1, v1, v0

    iget-wide v3, p1, Lorg/tukaani/xz/index/BlockInfo;->uncompressedOffset:J

    sub-long/2addr v1, v3

    iput-wide v1, p1, Lorg/tukaani/xz/index/BlockInfo;->uncompressedSize:J

    .line 219
    iget-wide v1, p1, Lorg/tukaani/xz/index/BlockInfo;->compressedOffset:J

    iget-wide v3, p0, Lorg/tukaani/xz/index/IndexDecoder;->compressedOffset:J

    const-wide/16 v5, 0xc

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p1, Lorg/tukaani/xz/index/BlockInfo;->compressedOffset:J

    .line 221
    iget-wide v1, p1, Lorg/tukaani/xz/index/BlockInfo;->uncompressedOffset:J

    iget-wide v3, p0, Lorg/tukaani/xz/index/IndexDecoder;->uncompressedOffset:J

    add-long/2addr v1, v3

    iput-wide v1, p1, Lorg/tukaani/xz/index/BlockInfo;->uncompressedOffset:J

    .line 222
    return-void
.end method

.method public setOffsets(Lorg/tukaani/xz/index/IndexDecoder;)V
    .locals 4
    .param p1, "prev"    # Lorg/tukaani/xz/index/IndexDecoder;

    .line 138
    iget v0, p1, Lorg/tukaani/xz/index/IndexDecoder;->recordOffset:I

    iget-wide v1, p1, Lorg/tukaani/xz/index/IndexBase;->recordCount:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->recordOffset:I

    .line 139
    iget-wide v0, p1, Lorg/tukaani/xz/index/IndexDecoder;->compressedOffset:J

    .line 140
    invoke-virtual {p1}, Lorg/tukaani/xz/index/IndexDecoder;->getStreamSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p1, Lorg/tukaani/xz/index/IndexDecoder;->streamPadding:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->compressedOffset:J

    .line 141
    nop

    .line 142
    iget-wide v0, p1, Lorg/tukaani/xz/index/IndexDecoder;->uncompressedOffset:J

    iget-wide v2, p1, Lorg/tukaani/xz/index/IndexBase;->uncompressedSum:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->uncompressedOffset:J

    .line 143
    return-void
.end method
