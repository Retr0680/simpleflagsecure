.class public Lorg/tukaani/xz/common/DecoderUtil;
.super Lorg/tukaani/xz/common/Util;
.source "DecoderUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lorg/tukaani/xz/common/Util;-><init>()V

    return-void
.end method

.method public static areStreamFlagsEqual(Lorg/tukaani/xz/common/StreamFlags;Lorg/tukaani/xz/common/StreamFlags;)Z
    .locals 2
    .param p0, "a"    # Lorg/tukaani/xz/common/StreamFlags;
    .param p1, "b"    # Lorg/tukaani/xz/common/StreamFlags;

    .line 94
    iget v0, p0, Lorg/tukaani/xz/common/StreamFlags;->checkType:I

    iget v1, p1, Lorg/tukaani/xz/common/StreamFlags;->checkType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static decodeStreamFlags([BI)Lorg/tukaani/xz/common/StreamFlags;
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    .line 83
    aget-byte v0, p0, p1

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 86
    new-instance v0, Lorg/tukaani/xz/common/StreamFlags;

    invoke-direct {v0}, Lorg/tukaani/xz/common/StreamFlags;-><init>()V

    .line 87
    .local v0, "streamFlags":Lorg/tukaani/xz/common/StreamFlags;
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    iput v1, v0, Lorg/tukaani/xz/common/StreamFlags;->checkType:I

    .line 89
    return-object v0

    .line 84
    .end local v0    # "streamFlags":Lorg/tukaani/xz/common/StreamFlags;
    :cond_0
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    invoke-direct {v0}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>()V

    throw v0
.end method

.method public static decodeStreamFooter([B)Lorg/tukaani/xz/common/StreamFlags;
    .locals 7
    .param p0, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    const/16 v0, 0xa

    aget-byte v0, p0, v0

    sget-object v1, Lorg/tukaani/xz/XZ;->FOOTER_MAGIC:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    const-string v3, "XZ Stream Footer is corrupt"

    if-ne v0, v1, :cond_2

    const/16 v0, 0xb

    aget-byte v0, p0, v0

    sget-object v1, Lorg/tukaani/xz/XZ;->FOOTER_MAGIC:[B

    const/4 v4, 0x1

    aget-byte v1, v1, v4

    if-ne v0, v1, :cond_2

    .line 61
    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-static {p0, v1, v0, v2}, Lorg/tukaani/xz/common/DecoderUtil;->isCRC32Valid([BIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    const/16 v0, 0x8

    :try_start_0
    invoke-static {p0, v0}, Lorg/tukaani/xz/common/DecoderUtil;->decodeStreamFlags([BI)Lorg/tukaani/xz/common/StreamFlags;

    move-result-object v0
    :try_end_0
    .catch Lorg/tukaani/xz/UnsupportedOptionsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .local v0, "streamFlags":Lorg/tukaani/xz/common/StreamFlags;
    nop

    .line 72
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    .line 73
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 74
    iget-wide v3, v0, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    add-int/lit8 v5, v2, 0x4

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v2, 0x8

    shl-int/2addr v5, v6

    int-to-long v5, v5

    or-long/2addr v3, v5

    iput-wide v3, v0, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 76
    .end local v2    # "i":I
    iget-wide v1, v0, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    const-wide/16 v3, 0x4

    mul-long/2addr v1, v3

    iput-wide v1, v0, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    .line 78
    return-object v0

    .line 67
    .end local v0    # "streamFlags":Lorg/tukaani/xz/common/StreamFlags;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Lorg/tukaani/xz/UnsupportedOptionsException;
    new-instance v1, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v2, "Unsupported options in XZ Stream Footer"

    invoke-direct {v1, v2}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    .end local v0    # "e":Lorg/tukaani/xz/UnsupportedOptionsException;
    :cond_1
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v3}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_2
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v3}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeStreamHeader([B)Lorg/tukaani/xz/common/StreamFlags;
    .locals 3
    .param p0, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 38
    aget-byte v1, p0, v0

    sget-object v2, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    aget-byte v2, v2, v0

    if-ne v1, v2, :cond_0

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_0
    new-instance v1, Lorg/tukaani/xz/XZFormatException;

    invoke-direct {v1}, Lorg/tukaani/xz/XZFormatException;-><init>()V

    throw v1

    .line 37
    :cond_1
    nop

    .line 41
    .end local v0    # "i":I
    sget-object v0, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    array-length v0, v0

    sget-object v1, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    array-length v1, v1

    const/4 v2, 0x2

    add-int/2addr v1, v2

    invoke-static {p0, v0, v2, v1}, Lorg/tukaani/xz/common/DecoderUtil;->isCRC32Valid([BIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    :try_start_0
    sget-object v0, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    array-length v0, v0

    invoke-static {p0, v0}, Lorg/tukaani/xz/common/DecoderUtil;->decodeStreamFlags([BI)Lorg/tukaani/xz/common/StreamFlags;

    move-result-object v0
    :try_end_0
    .catch Lorg/tukaani/xz/UnsupportedOptionsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Lorg/tukaani/xz/UnsupportedOptionsException;
    new-instance v1, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v2, "Unsupported options in XZ Stream Header"

    invoke-direct {v1, v2}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    .end local v0    # "e":Lorg/tukaani/xz/UnsupportedOptionsException;
    :cond_2
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    const-string v1, "XZ Stream Header is corrupt"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeVLI(Ljava/io/InputStream;)J
    .locals 8
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 99
    .local v0, "b":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 102
    and-int/lit8 v2, v0, 0x7f

    int-to-long v2, v2

    .line 103
    .local v2, "num":J
    const/4 v4, 0x0

    .line 105
    .local v4, "i":I
    :goto_0
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_3

    .line 106
    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x9

    if-ge v4, v5, :cond_2

    .line 109
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 110
    if-eq v0, v1, :cond_1

    .line 113
    if-eqz v0, :cond_0

    .line 116
    and-int/lit8 v5, v0, 0x7f

    int-to-long v5, v5

    mul-int/lit8 v7, v4, 0x7

    shl-long/2addr v5, v7

    or-long/2addr v2, v5

    goto :goto_0

    .line 114
    :cond_0
    new-instance v1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v1

    .line 111
    :cond_1
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 107
    :cond_2
    new-instance v1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v1

    .line 119
    :cond_3
    return-wide v2

    .line 100
    .end local v2    # "num":J
    .end local v4    # "i":I
    :cond_4
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public static isCRC32Valid([BIII)Z
    .locals 6
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "ref_off"    # I

    .line 24
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 25
    .local v0, "crc32":Ljava/util/zip/CRC32;
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 26
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    .line 28
    .local v1, "value":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 29
    mul-int/lit8 v4, v3, 0x8

    ushr-long v4, v1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    add-int v5, p3, v3

    aget-byte v5, p0, v5

    if-eq v4, v5, :cond_0

    .line 30
    const/4 v4, 0x0

    return v4

    .line 28
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 32
    .end local v3    # "i":I
    const/4 v3, 0x1

    return v3
.end method
