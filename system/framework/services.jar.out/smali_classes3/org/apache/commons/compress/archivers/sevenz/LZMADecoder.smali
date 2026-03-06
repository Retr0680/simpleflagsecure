.class Lorg/apache/commons/compress/archivers/sevenz/LZMADecoder;
.super Lorg/apache/commons/compress/archivers/sevenz/CoderBase;
.source "LZMADecoder.java"


# direct methods
.method constructor <init>()V
    .locals 3

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lorg/tukaani/xz/LZMA2Options;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/Number;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;-><init>([Ljava/lang/Class;)V

    .line 33
    return-void
.end method

.method private getDictionarySize(Lorg/apache/commons/compress/archivers/sevenz/Coder;)I
    .locals 3
    .param p1, "coder"    # Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 81
    iget-object v0, p1, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian([BII)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private getOptions(Ljava/lang/Object;)Lorg/tukaani/xz/LZMA2Options;
    .locals 2
    .param p1, "opts"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    instance-of v0, p1, Lorg/tukaani/xz/LZMA2Options;

    if-eqz v0, :cond_0

    .line 86
    move-object v0, p1

    check-cast v0, Lorg/tukaani/xz/LZMA2Options;

    return-object v0

    .line 88
    :cond_0
    new-instance v0, Lorg/tukaani/xz/LZMA2Options;

    invoke-direct {v0}, Lorg/tukaani/xz/LZMA2Options;-><init>()V

    .line 89
    .local v0, "options":Lorg/tukaani/xz/LZMA2Options;
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/LZMADecoder;->numberOptionOrDefault(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/tukaani/xz/LZMA2Options;->setDictSize(I)V

    .line 90
    return-object v0
.end method

.method private numberOptionOrDefault(Ljava/lang/Object;)I
    .locals 1
    .param p1, "opts"    # Ljava/lang/Object;

    .line 94
    const/high16 v0, 0x800000

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;->numberOptionOrDefault(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method decode(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;
    .locals 8
    .param p1, "archiveName"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "uncompressedLength"    # J
    .param p5, "coder"    # Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .param p6, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget-object v0, p5, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    const/4 v1, 0x0

    aget-byte v6, v0, v1

    .line 39
    .local v6, "propsByte":B
    invoke-direct {p0, p5}, Lorg/apache/commons/compress/archivers/sevenz/LZMADecoder;->getDictionarySize(Lorg/apache/commons/compress/archivers/sevenz/Coder;)I

    move-result v7

    .line 40
    .local v7, "dictSize":I
    const v0, 0x7ffffff0

    if-gt v7, v0, :cond_0

    .line 43
    new-instance v2, Lorg/tukaani/xz/LZMAInputStream;

    move-object v3, p2

    move-wide v4, p3

    .end local p2    # "in":Ljava/io/InputStream;
    .end local p3    # "uncompressedLength":J
    .local v3, "in":Ljava/io/InputStream;
    .local v4, "uncompressedLength":J
    invoke-direct/range {v2 .. v7}, Lorg/tukaani/xz/LZMAInputStream;-><init>(Ljava/io/InputStream;JBI)V

    return-object v2

    .line 41
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "uncompressedLength":J
    .restart local p2    # "in":Ljava/io/InputStream;
    .restart local p3    # "uncompressedLength":J
    :cond_0
    move-object v3, p2

    move-wide v4, p3

    .end local p2    # "in":Ljava/io/InputStream;
    .end local p3    # "uncompressedLength":J
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "uncompressedLength":J
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Dictionary larger than 4GiB maximum size used in "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method encode(Ljava/io/OutputStream;Ljava/lang/Object;)Ljava/io/OutputStream;
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "opts"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    new-instance v0, Lorg/apache/commons/compress/utils/FlushShieldFilterOutputStream;

    new-instance v1, Lorg/tukaani/xz/LZMAOutputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/sevenz/LZMADecoder;->getOptions(Ljava/lang/Object;)Lorg/tukaani/xz/LZMA2Options;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lorg/tukaani/xz/LZMAOutputStream;-><init>(Ljava/io/OutputStream;Lorg/tukaani/xz/LZMA2Options;Z)V

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/utils/FlushShieldFilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method getOptionsAsProperties(Ljava/lang/Object;)[B
    .locals 8
    .param p1, "opts"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/LZMADecoder;->getOptions(Ljava/lang/Object;)Lorg/tukaani/xz/LZMA2Options;

    move-result-object v0

    .line 57
    .local v0, "options":Lorg/tukaani/xz/LZMA2Options;
    invoke-virtual {v0}, Lorg/tukaani/xz/LZMA2Options;->getPb()I

    move-result v1

    const/4 v2, 0x5

    mul-int/2addr v1, v2

    invoke-virtual {v0}, Lorg/tukaani/xz/LZMA2Options;->getLp()I

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x9

    invoke-virtual {v0}, Lorg/tukaani/xz/LZMA2Options;->getLc()I

    move-result v3

    add-int/2addr v1, v3

    int-to-byte v1, v1

    .line 58
    .local v1, "props":B
    invoke-virtual {v0}, Lorg/tukaani/xz/LZMA2Options;->getDictSize()I

    move-result v3

    .line 59
    .local v3, "dictSize":I
    new-array v2, v2, [B

    .line 60
    .local v2, "o":[B
    const/4 v4, 0x0

    aput-byte v1, v2, v4

    .line 61
    int-to-long v4, v3

    const/4 v6, 0x1

    const/4 v7, 0x4

    invoke-static {v2, v4, v5, v6, v7}, Lorg/apache/commons/compress/utils/ByteUtils;->toLittleEndian([BJII)V

    .line 62
    return-object v2
.end method

.method getOptionsFromCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 7
    .param p1, "coder"    # Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object v0, p1, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    .line 68
    .local v0, "propsByte":B
    and-int/lit16 v1, v0, 0xff

    .line 69
    .local v1, "props":I
    div-int/lit8 v2, v1, 0x2d

    .line 70
    .local v2, "pb":I
    mul-int/lit8 v3, v2, 0x9

    mul-int/lit8 v3, v3, 0x5

    sub-int/2addr v1, v3

    .line 71
    div-int/lit8 v3, v1, 0x9

    .line 72
    .local v3, "lp":I
    mul-int/lit8 v4, v3, 0x9

    sub-int v4, v1, v4

    .line 73
    .local v4, "lc":I
    new-instance v5, Lorg/tukaani/xz/LZMA2Options;

    invoke-direct {v5}, Lorg/tukaani/xz/LZMA2Options;-><init>()V

    .line 74
    .local v5, "opts":Lorg/tukaani/xz/LZMA2Options;
    invoke-virtual {v5, v2}, Lorg/tukaani/xz/LZMA2Options;->setPb(I)V

    .line 75
    invoke-virtual {v5, v4, v3}, Lorg/tukaani/xz/LZMA2Options;->setLcLp(II)V

    .line 76
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/LZMADecoder;->getDictionarySize(Lorg/apache/commons/compress/archivers/sevenz/Coder;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/tukaani/xz/LZMA2Options;->setDictSize(I)V

    .line 77
    return-object v5
.end method
