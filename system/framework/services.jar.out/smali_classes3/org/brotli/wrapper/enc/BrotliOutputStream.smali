.class public Lorg/brotli/wrapper/enc/BrotliOutputStream;
.super Ljava/io/OutputStream;
.source "BrotliOutputStream.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x4000


# instance fields
.field private final encoder:Lorg/brotli/wrapper/enc/Encoder;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "destination"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    new-instance v0, Lorg/brotli/wrapper/enc/Encoder$Parameters;

    invoke-direct {v0}, Lorg/brotli/wrapper/enc/Encoder$Parameters;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/brotli/wrapper/enc/BrotliOutputStream;-><init>(Ljava/io/OutputStream;Lorg/brotli/wrapper/enc/Encoder$Parameters;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/brotli/wrapper/enc/Encoder$Parameters;)V
    .locals 1
    .param p1, "destination"    # Ljava/io/OutputStream;
    .param p2, "params"    # Lorg/brotli/wrapper/enc/Encoder$Parameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    const/16 v0, 0x4000

    invoke-direct {p0, p1, p2, v0}, Lorg/brotli/wrapper/enc/BrotliOutputStream;-><init>(Ljava/io/OutputStream;Lorg/brotli/wrapper/enc/Encoder$Parameters;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/brotli/wrapper/enc/Encoder$Parameters;I)V
    .locals 2
    .param p1, "destination"    # Ljava/io/OutputStream;
    .param p2, "params"    # Lorg/brotli/wrapper/enc/Encoder$Parameters;
    .param p3, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 31
    new-instance v0, Lorg/brotli/wrapper/enc/Encoder;

    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lorg/brotli/wrapper/enc/Encoder;-><init>(Ljava/nio/channels/WritableByteChannel;Lorg/brotli/wrapper/enc/Encoder$Parameters;I)V

    iput-object v0, p0, Lorg/brotli/wrapper/enc/BrotliOutputStream;->encoder:Lorg/brotli/wrapper/enc/Encoder;

    .line 32
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lorg/brotli/wrapper/enc/BrotliOutputStream;->encoder:Lorg/brotli/wrapper/enc/Encoder;

    invoke-virtual {v0}, Lorg/brotli/wrapper/enc/Encoder;->close()V

    .line 46
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/brotli/wrapper/enc/BrotliOutputStream;->encoder:Lorg/brotli/wrapper/enc/Encoder;

    iget-boolean v0, v0, Lorg/brotli/wrapper/enc/Encoder;->closed:Z

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lorg/brotli/wrapper/enc/BrotliOutputStream;->encoder:Lorg/brotli/wrapper/enc/Encoder;

    invoke-virtual {v0}, Lorg/brotli/wrapper/enc/Encoder;->flush()V

    .line 54
    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "write after close"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/brotli/wrapper/enc/BrotliOutputStream;->encoder:Lorg/brotli/wrapper/enc/Encoder;

    iget-boolean v0, v0, Lorg/brotli/wrapper/enc/Encoder;->closed:Z

    if-nez v0, :cond_1

    .line 61
    :goto_0
    iget-object v0, p0, Lorg/brotli/wrapper/enc/BrotliOutputStream;->encoder:Lorg/brotli/wrapper/enc/Encoder;

    sget-object v1, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;->PROCESS:Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

    invoke-virtual {v0, v1}, Lorg/brotli/wrapper/enc/Encoder;->encode(Lorg/brotli/wrapper/enc/EncoderJNI$Operation;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lorg/brotli/wrapper/enc/BrotliOutputStream;->encoder:Lorg/brotli/wrapper/enc/Encoder;

    iget-object v0, v0, Lorg/brotli/wrapper/enc/Encoder;->inputBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 65
    return-void

    .line 59
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "write after close"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/brotli/wrapper/enc/BrotliOutputStream;->write([BII)V

    .line 70
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/brotli/wrapper/enc/BrotliOutputStream;->encoder:Lorg/brotli/wrapper/enc/Encoder;

    iget-boolean v0, v0, Lorg/brotli/wrapper/enc/Encoder;->closed:Z

    if-nez v0, :cond_2

    .line 77
    :goto_0
    if-lez p3, :cond_1

    .line 78
    iget-object v0, p0, Lorg/brotli/wrapper/enc/BrotliOutputStream;->encoder:Lorg/brotli/wrapper/enc/Encoder;

    sget-object v1, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;->PROCESS:Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

    invoke-virtual {v0, v1}, Lorg/brotli/wrapper/enc/Encoder;->encode(Lorg/brotli/wrapper/enc/EncoderJNI$Operation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/brotli/wrapper/enc/BrotliOutputStream;->encoder:Lorg/brotli/wrapper/enc/Encoder;

    iget-object v0, v0, Lorg/brotli/wrapper/enc/Encoder;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 82
    .local v0, "limit":I
    iget-object v1, p0, Lorg/brotli/wrapper/enc/BrotliOutputStream;->encoder:Lorg/brotli/wrapper/enc/Encoder;

    iget-object v1, v1, Lorg/brotli/wrapper/enc/Encoder;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 83
    add-int/2addr p2, v0

    .line 84
    sub-int/2addr p3, v0

    .line 85
    .end local v0    # "limit":I
    goto :goto_0

    .line 86
    :cond_1
    return-void

    .line 75
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "write after close"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
