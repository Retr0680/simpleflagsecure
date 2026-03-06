.class public Lorg/tukaani/xz/index/IndexHash;
.super Lorg/tukaani/xz/index/IndexBase;
.source "IndexHash.java"


# instance fields
.field private hash:Lorg/tukaani/xz/check/Check;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    invoke-direct {p0, v0}, Lorg/tukaani/xz/index/IndexBase;-><init>(Lorg/tukaani/xz/XZIOException;)V

    .line 29
    :try_start_0
    new-instance v0, Lorg/tukaani/xz/check/SHA256;

    invoke-direct {v0}, Lorg/tukaani/xz/check/SHA256;-><init>()V

    iput-object v0, p0, Lorg/tukaani/xz/index/IndexHash;->hash:Lorg/tukaani/xz/check/Check;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Lorg/tukaani/xz/check/CRC32;

    invoke-direct {v1}, Lorg/tukaani/xz/check/CRC32;-><init>()V

    iput-object v1, p0, Lorg/tukaani/xz/index/IndexHash;->hash:Lorg/tukaani/xz/check/Check;

    .line 33
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    return-void
.end method


# virtual methods
.method public add(JJ)V
    .locals 3
    .param p1, "unpaddedSize"    # J
    .param p3, "uncompressedSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/XZIOException;
        }
    .end annotation

    .line 37
    invoke-super {p0, p1, p2, p3, p4}, Lorg/tukaani/xz/index/IndexBase;->add(JJ)V

    .line 39
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 40
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 41
    invoke-virtual {v0, p3, p4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 42
    iget-object v1, p0, Lorg/tukaani/xz/index/IndexHash;->hash:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/tukaani/xz/check/Check;->update([B)V

    .line 43
    return-void
.end method

.method public bridge synthetic getIndexSize()J
    .locals 2

    .line 22
    invoke-super {p0}, Lorg/tukaani/xz/index/IndexBase;->getIndexSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getStreamSize()J
    .locals 2

    .line 22
    invoke-super {p0}, Lorg/tukaani/xz/index/IndexBase;->getStreamSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public validate(Ljava/io/InputStream;)V
    .locals 18
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    move-object v2, v0

    .line 49
    .local v2, "crc32":Ljava/util/zip/CRC32;
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/zip/CRC32;->update(I)V

    .line 50
    new-instance v0, Ljava/util/zip/CheckedInputStream;

    move-object/from16 v3, p1

    invoke-direct {v0, v3, v2}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    move-object v4, v0

    .line 56
    .local v4, "inChecked":Ljava/util/zip/CheckedInputStream;
    invoke-static {v4}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v5

    .line 57
    .local v5, "storedRecordCount":J
    iget-wide v7, v1, Lorg/tukaani/xz/index/IndexBase;->recordCount:J

    cmp-long v0, v5, v7

    if-nez v0, :cond_7

    .line 63
    new-instance v0, Lorg/tukaani/xz/index/IndexHash;

    invoke-direct {v0}, Lorg/tukaani/xz/index/IndexHash;-><init>()V

    move-object v7, v0

    .line 64
    .local v7, "stored":Lorg/tukaani/xz/index/IndexHash;
    const-wide/16 v8, 0x0

    .local v8, "i":J
    :goto_0
    iget-wide v10, v1, Lorg/tukaani/xz/index/IndexBase;->recordCount:J

    cmp-long v0, v8, v10

    const-string v10, "XZ Index is corrupt"

    if-gez v0, :cond_1

    .line 65
    invoke-static {v4}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v11

    .line 66
    .local v11, "unpaddedSize":J
    invoke-static {v4}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v13

    .line 69
    .local v13, "uncompressedSize":J
    :try_start_0
    invoke-virtual {v7, v11, v12, v13, v14}, Lorg/tukaani/xz/index/IndexHash;->add(JJ)V
    :try_end_0
    .catch Lorg/tukaani/xz/XZIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    nop

    .line 74
    move-object v15, v2

    .end local v2    # "crc32":Ljava/util/zip/CRC32;
    .local v15, "crc32":Ljava/util/zip/CRC32;
    iget-wide v2, v7, Lorg/tukaani/xz/index/IndexBase;->blocksSum:J

    move-wide/from16 v16, v2

    iget-wide v2, v1, Lorg/tukaani/xz/index/IndexBase;->blocksSum:J

    cmp-long v0, v16, v2

    if-gtz v0, :cond_0

    iget-wide v2, v7, Lorg/tukaani/xz/index/IndexBase;->uncompressedSum:J

    move-wide/from16 v16, v2

    iget-wide v2, v1, Lorg/tukaani/xz/index/IndexBase;->uncompressedSum:J

    cmp-long v0, v16, v2

    if-gtz v0, :cond_0

    iget-wide v2, v7, Lorg/tukaani/xz/index/IndexBase;->indexListSize:J

    move-wide/from16 v16, v2

    iget-wide v2, v1, Lorg/tukaani/xz/index/IndexBase;->indexListSize:J

    cmp-long v0, v16, v2

    if-gtz v0, :cond_0

    .line 64
    .end local v11    # "unpaddedSize":J
    .end local v13    # "uncompressedSize":J
    const-wide/16 v2, 0x1

    add-long/2addr v8, v2

    move-object/from16 v3, p1

    move-object v2, v15

    goto :goto_0

    .line 77
    .restart local v11    # "unpaddedSize":J
    .restart local v13    # "uncompressedSize":J
    :cond_0
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v10}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    .end local v15    # "crc32":Ljava/util/zip/CRC32;
    .restart local v2    # "crc32":Ljava/util/zip/CRC32;
    :catch_0
    move-exception v0

    move-object v15, v2

    .line 71
    .end local v2    # "crc32":Ljava/util/zip/CRC32;
    .local v0, "e":Lorg/tukaani/xz/XZIOException;
    .restart local v15    # "crc32":Ljava/util/zip/CRC32;
    new-instance v2, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v2, v10}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    .end local v0    # "e":Lorg/tukaani/xz/XZIOException;
    .end local v11    # "unpaddedSize":J
    .end local v13    # "uncompressedSize":J
    .end local v15    # "crc32":Ljava/util/zip/CRC32;
    .restart local v2    # "crc32":Ljava/util/zip/CRC32;
    :cond_1
    move-object v15, v2

    .line 80
    .end local v2    # "crc32":Ljava/util/zip/CRC32;
    .end local v8    # "i":J
    .restart local v15    # "crc32":Ljava/util/zip/CRC32;
    iget-wide v2, v7, Lorg/tukaani/xz/index/IndexBase;->blocksSum:J

    iget-wide v8, v1, Lorg/tukaani/xz/index/IndexBase;->blocksSum:J

    cmp-long v0, v2, v8

    if-nez v0, :cond_6

    iget-wide v2, v7, Lorg/tukaani/xz/index/IndexBase;->uncompressedSum:J

    iget-wide v8, v1, Lorg/tukaani/xz/index/IndexBase;->uncompressedSum:J

    cmp-long v0, v2, v8

    if-nez v0, :cond_6

    iget-wide v2, v7, Lorg/tukaani/xz/index/IndexBase;->indexListSize:J

    iget-wide v8, v1, Lorg/tukaani/xz/index/IndexBase;->indexListSize:J

    cmp-long v0, v2, v8

    if-nez v0, :cond_6

    iget-object v0, v7, Lorg/tukaani/xz/index/IndexHash;->hash:Lorg/tukaani/xz/check/Check;

    .line 83
    invoke-virtual {v0}, Lorg/tukaani/xz/check/Check;->finish()[B

    move-result-object v0

    iget-object v2, v1, Lorg/tukaani/xz/index/IndexHash;->hash:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v2}, Lorg/tukaani/xz/check/Check;->finish()[B

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 87
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 88
    .local v0, "inData":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Lorg/tukaani/xz/index/IndexBase;->getIndexPaddingSize()I

    move-result v2

    .local v2, "i":I
    :goto_1
    if-lez v2, :cond_3

    .line 89
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    if-nez v3, :cond_2

    .line 88
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 90
    :cond_2
    new-instance v3, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v3, v10}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 88
    :cond_3
    nop

    .line 93
    .end local v2    # "i":I
    invoke-virtual {v15}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    .line 94
    .local v2, "value":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    const/4 v9, 0x4

    if-ge v8, v9, :cond_5

    .line 95
    mul-int/lit8 v9, v8, 0x8

    ushr-long v11, v2, v9

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v9

    int-to-long v13, v9

    cmp-long v9, v11, v13

    if-nez v9, :cond_4

    .line 94
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 96
    :cond_4
    new-instance v9, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v9, v10}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 94
    :cond_5
    nop

    .line 97
    .end local v8    # "i":I
    return-void

    .line 84
    .end local v0    # "inData":Ljava/io/DataInputStream;
    .end local v2    # "value":J
    :cond_6
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v10}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    .end local v7    # "stored":Lorg/tukaani/xz/index/IndexHash;
    .end local v15    # "crc32":Ljava/util/zip/CRC32;
    .local v2, "crc32":Ljava/util/zip/CRC32;
    :cond_7
    move-object v15, v2

    .end local v2    # "crc32":Ljava/util/zip/CRC32;
    .restart local v15    # "crc32":Ljava/util/zip/CRC32;
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    const-string v2, "XZ Block Header or the start of XZ Index is corrupt"

    invoke-direct {v0, v2}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
