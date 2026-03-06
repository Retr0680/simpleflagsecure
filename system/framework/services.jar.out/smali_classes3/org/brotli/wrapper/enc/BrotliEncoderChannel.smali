.class public Lorg/brotli/wrapper/enc/BrotliEncoderChannel;
.super Lorg/brotli/wrapper/enc/Encoder;
.source "BrotliEncoderChannel.java"

# interfaces
.implements Ljava/nio/channels/WritableByteChannel;


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x4000


# instance fields
.field private final mutex:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/nio/channels/WritableByteChannel;)V
    .locals 1
    .param p1, "destination"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    new-instance v0, Lorg/brotli/wrapper/enc/Encoder$Parameters;

    invoke-direct {v0}, Lorg/brotli/wrapper/enc/Encoder$Parameters;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/brotli/wrapper/enc/BrotliEncoderChannel;-><init>(Ljava/nio/channels/WritableByteChannel;Lorg/brotli/wrapper/enc/Encoder$Parameters;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/WritableByteChannel;Lorg/brotli/wrapper/enc/Encoder$Parameters;)V
    .locals 1
    .param p1, "destination"    # Ljava/nio/channels/WritableByteChannel;
    .param p2, "params"    # Lorg/brotli/wrapper/enc/Encoder$Parameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    const/16 v0, 0x4000

    invoke-direct {p0, p1, p2, v0}, Lorg/brotli/wrapper/enc/BrotliEncoderChannel;-><init>(Ljava/nio/channels/WritableByteChannel;Lorg/brotli/wrapper/enc/Encoder$Parameters;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/WritableByteChannel;Lorg/brotli/wrapper/enc/Encoder$Parameters;I)V
    .locals 1
    .param p1, "destination"    # Ljava/nio/channels/WritableByteChannel;
    .param p2, "params"    # Lorg/brotli/wrapper/enc/Encoder$Parameters;
    .param p3, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lorg/brotli/wrapper/enc/Encoder;-><init>(Ljava/nio/channels/WritableByteChannel;Lorg/brotli/wrapper/enc/Encoder$Parameters;I)V

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/brotli/wrapper/enc/BrotliEncoderChannel;->mutex:Ljava/lang/Object;

    .line 34
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

    .line 54
    iget-object v0, p0, Lorg/brotli/wrapper/enc/BrotliEncoderChannel;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 55
    :try_start_0
    invoke-super {p0}, Lorg/brotli/wrapper/enc/Encoder;->close()V

    .line 56
    monitor-exit v0

    .line 57
    return-void

    .line 56
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isOpen()Z
    .locals 2

    .line 47
    iget-object v0, p0, Lorg/brotli/wrapper/enc/BrotliEncoderChannel;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_0
    iget-boolean v1, p0, Lorg/brotli/wrapper/enc/Encoder;->closed:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lorg/brotli/wrapper/enc/BrotliEncoderChannel;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_0
    iget-boolean v1, p0, Lorg/brotli/wrapper/enc/Encoder;->closed:Z

    if-nez v1, :cond_1

    .line 65
    const/4 v1, 0x0

    .line 66
    .local v1, "result":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;->PROCESS:Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

    invoke-virtual {p0, v2}, Lorg/brotli/wrapper/enc/Encoder;->encode(Lorg/brotli/wrapper/enc/EncoderJNI$Operation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    iget-object v3, p0, Lorg/brotli/wrapper/enc/Encoder;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 68
    .local v2, "limit":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 69
    .local v3, "slice":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 70
    iget-object v4, p0, Lorg/brotli/wrapper/enc/Encoder;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 71
    add-int/2addr v1, v2

    .line 72
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 73
    nop

    .end local v2    # "limit":I
    .end local v3    # "slice":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 75
    .end local v1    # "result":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 74
    .restart local v1    # "result":I
    :cond_0
    monitor-exit v0

    return v1

    .line 63
    .end local v1    # "result":I
    :cond_1
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local p0    # "this":Lorg/brotli/wrapper/enc/BrotliEncoderChannel;
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    throw v1

    .line 75
    .restart local p0    # "this":Lorg/brotli/wrapper/enc/BrotliEncoderChannel;
    .restart local p1    # "src":Ljava/nio/ByteBuffer;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
