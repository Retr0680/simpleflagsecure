.class public Lorg/brotli/wrapper/dec/BrotliInputStream;
.super Ljava/io/InputStream;
.source "BrotliInputStream.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x4000


# instance fields
.field private final decoder:Lorg/brotli/wrapper/dec/Decoder;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "source"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    const/16 v0, 0x4000

    invoke-direct {p0, p1, v0}, Lorg/brotli/wrapper/dec/BrotliInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "source"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 30
    new-instance v0, Lorg/brotli/wrapper/dec/Decoder;

    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/brotli/wrapper/dec/Decoder;-><init>(Ljava/nio/channels/ReadableByteChannel;I)V

    iput-object v0, p0, Lorg/brotli/wrapper/dec/BrotliInputStream;->decoder:Lorg/brotli/wrapper/dec/Decoder;

    .line 31
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/brotli/wrapper/dec/BrotliInputStream;->decoder:Lorg/brotli/wrapper/dec/Decoder;

    iget-object v0, v0, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/brotli/wrapper/dec/BrotliInputStream;->decoder:Lorg/brotli/wrapper/dec/Decoder;

    iget-object v0, v0, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/brotli/wrapper/dec/BrotliInputStream;->decoder:Lorg/brotli/wrapper/dec/Decoder;

    invoke-virtual {v0}, Lorg/brotli/wrapper/dec/Decoder;->close()V

    .line 44
    return-void
.end method

.method public enableEagerOutput()V
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/brotli/wrapper/dec/BrotliInputStream;->decoder:Lorg/brotli/wrapper/dec/Decoder;

    invoke-virtual {v0}, Lorg/brotli/wrapper/dec/Decoder;->enableEagerOutput()V

    .line 39
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/brotli/wrapper/dec/BrotliInputStream;->decoder:Lorg/brotli/wrapper/dec/Decoder;

    iget-boolean v0, v0, Lorg/brotli/wrapper/dec/Decoder;->closed:Z

    if-nez v0, :cond_2

    .line 59
    :cond_0
    iget-object v0, p0, Lorg/brotli/wrapper/dec/BrotliInputStream;->decoder:Lorg/brotli/wrapper/dec/Decoder;

    invoke-virtual {v0}, Lorg/brotli/wrapper/dec/Decoder;->decode()I

    move-result v0

    .line 60
    .local v0, "decoded":I
    if-eqz v0, :cond_0

    .line 61
    nop

    .line 65
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 66
    return v1

    .line 68
    :cond_1
    iget-object v1, p0, Lorg/brotli/wrapper/dec/BrotliInputStream;->decoder:Lorg/brotli/wrapper/dec/Decoder;

    iget-object v1, v1, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    return v1

    .line 54
    .end local v0    # "decoded":I
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "read after close"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/brotli/wrapper/dec/BrotliInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/brotli/wrapper/dec/BrotliInputStream;->decoder:Lorg/brotli/wrapper/dec/Decoder;

    iget-boolean v0, v0, Lorg/brotli/wrapper/dec/Decoder;->closed:Z

    if-nez v0, :cond_3

    .line 81
    iget-object v0, p0, Lorg/brotli/wrapper/dec/BrotliInputStream;->decoder:Lorg/brotli/wrapper/dec/Decoder;

    invoke-virtual {v0}, Lorg/brotli/wrapper/dec/Decoder;->decode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 82
    return v1

    .line 84
    :cond_0
    const/4 v0, 0x0

    .line 85
    .local v0, "result":I
    :goto_0
    if-lez p3, :cond_2

    .line 86
    iget-object v2, p0, Lorg/brotli/wrapper/dec/BrotliInputStream;->decoder:Lorg/brotli/wrapper/dec/Decoder;

    iget-object v2, v2, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 87
    .local v2, "limit":I
    iget-object v3, p0, Lorg/brotli/wrapper/dec/BrotliInputStream;->decoder:Lorg/brotli/wrapper/dec/Decoder;

    iget-object v3, v3, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1, p2, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 88
    add-int/2addr p2, v2

    .line 89
    sub-int/2addr p3, v2

    .line 90
    add-int/2addr v0, v2

    .line 91
    iget-object v3, p0, Lorg/brotli/wrapper/dec/BrotliInputStream;->decoder:Lorg/brotli/wrapper/dec/Decoder;

    invoke-virtual {v3}, Lorg/brotli/wrapper/dec/Decoder;->decode()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 92
    goto :goto_1

    .line 91
    :cond_1
    nop

    .line 94
    .end local v2    # "limit":I
    goto :goto_0

    .line 95
    :cond_2
    :goto_1
    return v0

    .line 79
    .end local v0    # "result":I
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "read after close"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .locals 5
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/brotli/wrapper/dec/BrotliInputStream;->decoder:Lorg/brotli/wrapper/dec/Decoder;

    iget-boolean v0, v0, Lorg/brotli/wrapper/dec/Decoder;->closed:Z

    if-nez v0, :cond_2

    .line 103
    const-wide/16 v0, 0x0

    .line 104
    .local v0, "result":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    .line 105
    iget-object v2, p0, Lorg/brotli/wrapper/dec/BrotliInputStream;->decoder:Lorg/brotli/wrapper/dec/Decoder;

    invoke-virtual {v2}, Lorg/brotli/wrapper/dec/Decoder;->decode()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 106
    goto :goto_1

    .line 108
    :cond_0
    iget-object v2, p0, Lorg/brotli/wrapper/dec/BrotliInputStream;->decoder:Lorg/brotli/wrapper/dec/Decoder;

    iget-object v2, v2, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 109
    .local v2, "limit":I
    iget-object v3, p0, Lorg/brotli/wrapper/dec/BrotliInputStream;->decoder:Lorg/brotli/wrapper/dec/Decoder;

    invoke-virtual {v3, v2}, Lorg/brotli/wrapper/dec/Decoder;->discard(I)V

    .line 110
    int-to-long v3, v2

    add-long/2addr v0, v3

    .line 111
    int-to-long v3, v2

    sub-long/2addr p1, v3

    .line 112
    .end local v2    # "limit":I
    goto :goto_0

    .line 113
    :cond_1
    :goto_1
    return-wide v0

    .line 101
    .end local v0    # "result":J
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "read after close"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
