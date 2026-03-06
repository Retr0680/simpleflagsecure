.class public Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;
.super Ljava/io/InputStream;
.source "ChecksumCalculatingInputStream.java"


# instance fields
.field private final checksum:Ljava/util/zip/Checksum;

.field private final in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/util/zip/Checksum;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "checksum"    # Ljava/util/zip/Checksum;
    .param p2, "in"    # Ljava/io/InputStream;

    .line 33
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 35
    if-eqz p1, :cond_1

    .line 39
    if-eqz p2, :cond_0

    .line 43
    iput-object p1, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->checksum:Ljava/util/zip/Checksum;

    .line 44
    iput-object p2, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->in:Ljava/io/InputStream;

    .line 45
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter in must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter checksum must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 102
    iget-object v0, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

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

    .line 55
    iget-object v0, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 56
    .local v0, "ret":I
    if-ltz v0, :cond_0

    .line 57
    iget-object v1, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v1, v0}, Ljava/util/zip/Checksum;->update(I)V

    .line 59
    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 82
    .local v0, "ret":I
    if-ltz v0, :cond_0

    .line 83
    iget-object v1, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v1, p1, p2, v0}, Ljava/util/zip/Checksum;->update([BII)V

    .line 85
    :cond_0
    return v0
.end method

.method public skip(J)J
    .locals 2
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    .line 92
    const-wide/16 v0, 0x1

    return-wide v0

    .line 94
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
