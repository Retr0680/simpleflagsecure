.class public Lorg/brotli/wrapper/dec/BrotliDecoderChannel;
.super Lorg/brotli/wrapper/dec/Decoder;
.source "BrotliDecoderChannel.java"

# interfaces
.implements Ljava/nio/channels/ReadableByteChannel;


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x4000


# instance fields
.field private final mutex:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .locals 1
    .param p1, "source"    # Ljava/nio/channels/ReadableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    const/16 v0, 0x4000

    invoke-direct {p0, p1, v0}, Lorg/brotli/wrapper/dec/BrotliDecoderChannel;-><init>(Ljava/nio/channels/ReadableByteChannel;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;I)V
    .locals 1
    .param p1, "source"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Lorg/brotli/wrapper/dec/Decoder;-><init>(Ljava/nio/channels/ReadableByteChannel;I)V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/brotli/wrapper/dec/BrotliDecoderChannel;->mutex:Ljava/lang/Object;

    .line 32
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/brotli/wrapper/dec/BrotliDecoderChannel;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_0
    invoke-super {p0}, Lorg/brotli/wrapper/dec/Decoder;->close()V

    .line 49
    monitor-exit v0

    .line 50
    return-void

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isOpen()Z
    .locals 2

    .line 40
    iget-object v0, p0, Lorg/brotli/wrapper/dec/BrotliDecoderChannel;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 41
    :try_start_0
    iget-boolean v1, p0, Lorg/brotli/wrapper/dec/Decoder;->closed:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 42
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lorg/brotli/wrapper/dec/BrotliDecoderChannel;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 55
    :try_start_0
    iget-boolean v1, p0, Lorg/brotli/wrapper/dec/Decoder;->closed:Z

    if-nez v1, :cond_3

    .line 58
    const/4 v1, 0x0

    .line 59
    .local v1, "result":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    invoke-virtual {p0}, Lorg/brotli/wrapper/dec/Decoder;->decode()I

    move-result v2

    .line 61
    .local v2, "outputSize":I
    if-gtz v2, :cond_1

    .line 62
    if-nez v1, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    monitor-exit v0

    return v3

    .line 67
    .end local v1    # "result":I
    .end local v2    # "outputSize":I
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 64
    .restart local v1    # "result":I
    .restart local v2    # "outputSize":I
    :cond_1
    invoke-virtual {p0, p1}, Lorg/brotli/wrapper/dec/Decoder;->consume(Ljava/nio/ByteBuffer;)I

    move-result v3

    add-int/2addr v1, v3

    .line 65
    .end local v2    # "outputSize":I
    goto :goto_0

    .line 66
    :cond_2
    monitor-exit v0

    return v1

    .line 56
    .end local v1    # "result":I
    :cond_3
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local p0    # "this":Lorg/brotli/wrapper/dec/BrotliDecoderChannel;
    .end local p1    # "dst":Ljava/nio/ByteBuffer;
    throw v1

    .line 67
    .restart local p0    # "this":Lorg/brotli/wrapper/dec/BrotliDecoderChannel;
    .restart local p1    # "dst":Ljava/nio/ByteBuffer;
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
