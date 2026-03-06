.class public Lorg/brotli/wrapper/enc/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/brotli/wrapper/enc/Encoder$Parameters;
    }
.end annotation


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field closed:Z

.field private final destination:Ljava/nio/channels/WritableByteChannel;

.field private final encoder:Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;

.field final inputBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/channels/WritableByteChannel;Lorg/brotli/wrapper/enc/Encoder$Parameters;I)V
    .locals 3
    .param p1, "destination"    # Ljava/nio/channels/WritableByteChannel;
    .param p2, "params"    # Lorg/brotli/wrapper/enc/Encoder$Parameters;
    .param p3, "inputBufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-lez p3, :cond_1

    .line 74
    if-eqz p1, :cond_0

    .line 77
    iput-object p1, p0, Lorg/brotli/wrapper/enc/Encoder;->destination:Ljava/nio/channels/WritableByteChannel;

    .line 78
    new-instance v0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;

    invoke-static {p2}, Lorg/brotli/wrapper/enc/Encoder$Parameters;->-$$Nest$fgetquality(Lorg/brotli/wrapper/enc/Encoder$Parameters;)I

    move-result v1

    invoke-static {p2}, Lorg/brotli/wrapper/enc/Encoder$Parameters;->-$$Nest$fgetlgwin(Lorg/brotli/wrapper/enc/Encoder$Parameters;)I

    move-result v2

    invoke-direct {v0, p3, v1, v2}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;-><init>(III)V

    iput-object v0, p0, Lorg/brotli/wrapper/enc/Encoder;->encoder:Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;

    .line 79
    iget-object v0, p0, Lorg/brotli/wrapper/enc/Encoder;->encoder:Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;

    invoke-virtual {v0}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->getInputBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/brotli/wrapper/enc/Encoder;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 80
    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "destination can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer size must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static compress([B)[B
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    new-instance v0, Lorg/brotli/wrapper/enc/Encoder$Parameters;

    invoke-direct {v0}, Lorg/brotli/wrapper/enc/Encoder$Parameters;-><init>()V

    invoke-static {p0, v0}, Lorg/brotli/wrapper/enc/Encoder;->compress([BLorg/brotli/wrapper/enc/Encoder$Parameters;)[B

    move-result-object v0

    return-object v0
.end method

.method public static compress([BLorg/brotli/wrapper/enc/Encoder$Parameters;)[B
    .locals 9
    .param p0, "data"    # [B
    .param p1, "params"    # Lorg/brotli/wrapper/enc/Encoder$Parameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 161
    new-array v0, v1, [B

    .line 162
    .local v0, "empty":[B
    const/4 v1, 0x6

    aput-byte v1, v0, v2

    .line 163
    return-object v0

    .line 166
    .end local v0    # "empty":[B
    :cond_0
    new-instance v0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;

    array-length v3, p0

    invoke-static {p1}, Lorg/brotli/wrapper/enc/Encoder$Parameters;->-$$Nest$fgetquality(Lorg/brotli/wrapper/enc/Encoder$Parameters;)I

    move-result v4

    invoke-static {p1}, Lorg/brotli/wrapper/enc/Encoder$Parameters;->-$$Nest$fgetlgwin(Lorg/brotli/wrapper/enc/Encoder$Parameters;)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;-><init>(III)V

    .line 167
    .local v0, "encoder":Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v3, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v4, 0x0

    .line 170
    .local v4, "totalOutputSize":I
    :try_start_0
    invoke-virtual {v0}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->getInputBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 171
    sget-object v5, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;->FINISH:Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

    array-length v6, p0

    invoke-virtual {v0, v5, v6}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->push(Lorg/brotli/wrapper/enc/EncoderJNI$Operation;I)V

    .line 173
    :goto_0
    invoke-virtual {v0}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 175
    invoke-virtual {v0}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->hasMoreOutput()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 176
    invoke-virtual {v0}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->pull()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 177
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    new-array v6, v6, [B

    .line 178
    .local v6, "chunk":[B
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 179
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    array-length v7, v6

    add-int/2addr v4, v7

    .line 181
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    .end local v6    # "chunk":[B
    goto :goto_0

    .line 188
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 181
    :cond_1
    invoke-virtual {v0}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->isFinished()Z

    move-result v5

    if-nez v5, :cond_2

    .line 182
    sget-object v5, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;->FINISH:Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

    invoke-virtual {v0, v5, v2}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->push(Lorg/brotli/wrapper/enc/EncoderJNI$Operation;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {v0}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->destroy()V

    .line 189
    nop

    .line 190
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v1, :cond_3

    .line 191
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    return-object v1

    .line 193
    :cond_3
    new-array v1, v4, [B

    .line 194
    .local v1, "result":[B
    const/4 v5, 0x0

    .line 195
    .local v5, "offset":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 196
    .local v7, "chunk":[B
    array-length v8, v7

    invoke-static {v7, v2, v1, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    array-length v8, v7

    add-int/2addr v5, v8

    .line 198
    .end local v7    # "chunk":[B
    goto :goto_1

    .line 199
    :cond_4
    return-object v1

    .line 174
    .end local v1    # "result":[B
    .end local v5    # "offset":I
    :cond_5
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "encoding failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "encoder":Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;
    .end local v3    # "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v4    # "totalOutputSize":I
    .end local p0    # "data":[B
    .end local p1    # "params":Lorg/brotli/wrapper/enc/Encoder$Parameters;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    .restart local v0    # "encoder":Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;
    .restart local v3    # "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v4    # "totalOutputSize":I
    .restart local p0    # "data":[B
    .restart local p1    # "params":Lorg/brotli/wrapper/enc/Encoder$Parameters;
    :goto_2
    invoke-virtual {v0}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->destroy()V

    .line 189
    throw v1
.end method

.method private fail(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    :try_start_0
    invoke-virtual {p0}, Lorg/brotli/wrapper/enc/Encoder;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 88
    :goto_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-boolean v0, p0, Lorg/brotli/wrapper/enc/Encoder;->closed:Z

    if-eqz v0, :cond_0

    .line 145
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/brotli/wrapper/enc/Encoder;->closed:Z

    .line 149
    :try_start_0
    sget-object v0, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;->FINISH:Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

    invoke-virtual {p0, v0}, Lorg/brotli/wrapper/enc/Encoder;->encode(Lorg/brotli/wrapper/enc/EncoderJNI$Operation;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    iget-object v0, p0, Lorg/brotli/wrapper/enc/Encoder;->encoder:Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;

    invoke-virtual {v0}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->destroy()V

    .line 152
    iget-object v0, p0, Lorg/brotli/wrapper/enc/Encoder;->destination:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->close()V

    .line 153
    nop

    .line 154
    return-void

    .line 151
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/brotli/wrapper/enc/Encoder;->encoder:Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;

    invoke-virtual {v1}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->destroy()V

    .line 152
    iget-object v1, p0, Lorg/brotli/wrapper/enc/Encoder;->destination:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/WritableByteChannel;->close()V

    .line 153
    throw v0
.end method

.method encode(Lorg/brotli/wrapper/enc/EncoderJNI$Operation;)Z
    .locals 6
    .param p1, "op"    # Lorg/brotli/wrapper/enc/EncoderJNI$Operation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    sget-object v0, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;->PROCESS:Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 114
    .local v0, "force":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 115
    iget-object v3, p0, Lorg/brotli/wrapper/enc/Encoder;->inputBuffer:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lorg/brotli/wrapper/enc/Encoder;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 116
    :cond_1
    iget-object v3, p0, Lorg/brotli/wrapper/enc/Encoder;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 117
    return v2

    .line 119
    :cond_2
    :goto_1
    const/4 v3, 0x1

    .line 121
    .local v3, "hasInput":Z
    :goto_2
    iget-object v4, p0, Lorg/brotli/wrapper/enc/Encoder;->encoder:Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;

    invoke-virtual {v4}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_3

    .line 122
    const-string v4, "encoding failed"

    invoke-direct {p0, v4}, Lorg/brotli/wrapper/enc/Encoder;->fail(Ljava/lang/String;)V

    goto :goto_2

    .line 123
    :cond_3
    invoke-virtual {p0, v0}, Lorg/brotli/wrapper/enc/Encoder;->pushOutput(Z)Z

    move-result v4

    if-nez v4, :cond_4

    .line 124
    return v1

    .line 125
    :cond_4
    iget-object v4, p0, Lorg/brotli/wrapper/enc/Encoder;->encoder:Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;

    invoke-virtual {v4}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->hasMoreOutput()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 126
    iget-object v4, p0, Lorg/brotli/wrapper/enc/Encoder;->encoder:Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;

    invoke-virtual {v4}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->pull()Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lorg/brotli/wrapper/enc/Encoder;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 127
    :cond_5
    iget-object v4, p0, Lorg/brotli/wrapper/enc/Encoder;->encoder:Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;

    invoke-virtual {v4}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->hasRemainingInput()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 128
    iget-object v4, p0, Lorg/brotli/wrapper/enc/Encoder;->encoder:Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;

    invoke-virtual {v4, p1, v1}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->push(Lorg/brotli/wrapper/enc/EncoderJNI$Operation;I)V

    goto :goto_2

    .line 129
    :cond_6
    if-eqz v3, :cond_7

    .line 130
    iget-object v4, p0, Lorg/brotli/wrapper/enc/Encoder;->encoder:Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;

    iget-object v5, p0, Lorg/brotli/wrapper/enc/Encoder;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v4, p1, v5}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->push(Lorg/brotli/wrapper/enc/EncoderJNI$Operation;I)V

    .line 131
    const/4 v3, 0x0

    goto :goto_2

    .line 133
    :cond_7
    iget-object v1, p0, Lorg/brotli/wrapper/enc/Encoder;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 134
    return v2
.end method

.method flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    sget-object v0, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;->FLUSH:Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

    invoke-virtual {p0, v0}, Lorg/brotli/wrapper/enc/Encoder;->encode(Lorg/brotli/wrapper/enc/EncoderJNI$Operation;)Z

    .line 141
    return-void
.end method

.method pushOutput(Z)Z
    .locals 2
    .param p1, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    nop

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/brotli/wrapper/enc/Encoder;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    .line 97
    iget-object v0, p0, Lorg/brotli/wrapper/enc/Encoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lorg/brotli/wrapper/enc/Encoder;->destination:Ljava/nio/channels/WritableByteChannel;

    iget-object v1, p0, Lorg/brotli/wrapper/enc/Encoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 100
    :cond_1
    iget-object v0, p0, Lorg/brotli/wrapper/enc/Encoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/brotli/wrapper/enc/Encoder;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 102
    :cond_2
    if-nez p1, :cond_0

    .line 103
    const/4 v0, 0x0

    return v0

    .line 106
    :cond_3
    const/4 v0, 0x1

    return v0
.end method
