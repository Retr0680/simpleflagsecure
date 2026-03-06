.class public Lorg/brotli/wrapper/dec/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# static fields
.field private static final EMPTY_BUFER:Ljava/nio/ByteBuffer;


# instance fields
.field buffer:Ljava/nio/ByteBuffer;

.field closed:Z

.field private final decoder:Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;

.field eager:Z

.field private final source:Ljava/nio/channels/ReadableByteChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lorg/brotli/wrapper/dec/Decoder;->EMPTY_BUFER:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;I)V
    .locals 2
    .param p1, "source"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "inputBufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-lez p2, :cond_1

    .line 37
    if-eqz p1, :cond_0

    .line 40
    iput-object p1, p0, Lorg/brotli/wrapper/dec/Decoder;->source:Ljava/nio/channels/ReadableByteChannel;

    .line 41
    new-instance v0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;

    invoke-direct {v0, p2}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;-><init>(I)V

    iput-object v0, p0, Lorg/brotli/wrapper/dec/Decoder;->decoder:Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;

    .line 42
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer size must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decompress([B)[B
    .locals 9
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    new-instance v0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;

    array-length v1, p0

    invoke-direct {v0, v1}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;-><init>(I)V

    .line 140
    .local v0, "decoder":Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v2, 0x0

    .line 143
    .local v2, "totalOutputSize":I
    :try_start_0
    invoke-virtual {v0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->getInputBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 144
    array-length v3, p0

    invoke-virtual {v0, v3}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->push(I)V

    .line 145
    :goto_0
    invoke-virtual {v0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->getStatus()Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    move-result-object v3

    sget-object v4, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->DONE:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    const/4 v5, 0x0

    if-eq v3, v4, :cond_0

    .line 146
    sget-object v3, Lorg/brotli/wrapper/dec/Decoder$1;->$SwitchMap$org$brotli$wrapper$dec$DecoderJNI$Status:[I

    invoke-virtual {v0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->getStatus()Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 160
    :pswitch_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "corrupted input"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "decoder":Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;
    .end local v1    # "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "totalOutputSize":I
    .end local p0    # "data":[B
    throw v3

    .line 164
    .restart local v0    # "decoder":Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;
    .restart local v1    # "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v2    # "totalOutputSize":I
    .restart local p0    # "data":[B
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 152
    :pswitch_1
    invoke-virtual {v0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->pull()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 153
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v4, v4, [B

    .line 154
    .local v4, "chunk":[B
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 155
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    array-length v5, v4

    add-int/2addr v2, v5

    .line 157
    goto :goto_0

    .line 148
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    .end local v4    # "chunk":[B
    :pswitch_2
    invoke-virtual {v0, v5}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->push(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {v0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->destroy()V

    .line 165
    nop

    .line 166
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 167
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    return-object v3

    .line 169
    :cond_1
    new-array v3, v2, [B

    .line 170
    .local v3, "result":[B
    const/4 v4, 0x0

    .line 171
    .local v4, "offset":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 172
    .local v7, "chunk":[B
    array-length v8, v7

    invoke-static {v7, v5, v3, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    array-length v8, v7

    add-int/2addr v4, v8

    .line 174
    .end local v7    # "chunk":[B
    goto :goto_1

    .line 175
    :cond_2
    return-object v3

    .line 164
    .end local v3    # "result":[B
    .end local v4    # "offset":I
    :goto_2
    invoke-virtual {v0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->destroy()V

    .line 165
    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private fail(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lorg/brotli/wrapper/dec/Decoder;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 50
    :goto_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-boolean v0, p0, Lorg/brotli/wrapper/dec/Decoder;->closed:Z

    if-eqz v0, :cond_0

    .line 128
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/brotli/wrapper/dec/Decoder;->closed:Z

    .line 131
    iget-object v0, p0, Lorg/brotli/wrapper/dec/Decoder;->decoder:Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;

    invoke-virtual {v0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->destroy()V

    .line 132
    iget-object v0, p0, Lorg/brotli/wrapper/dec/Decoder;->source:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 133
    return-void
.end method

.method consume(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p1, "dst"    # Ljava/nio/ByteBuffer;

    .line 118
    iget-object v0, p0, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 119
    .local v0, "slice":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 120
    .local v1, "limit":I
    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 121
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 122
    invoke-virtual {p0, v1}, Lorg/brotli/wrapper/dec/Decoder;->discard(I)V

    .line 123
    return v1
.end method

.method decode()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    nop

    :goto_0
    iget-object v0, p0, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0

    .line 72
    :cond_1
    :goto_1
    sget-object v0, Lorg/brotli/wrapper/dec/Decoder$1;->$SwitchMap$org$brotli$wrapper$dec$DecoderJNI$Status:[I

    iget-object v1, p0, Lorg/brotli/wrapper/dec/Decoder;->decoder:Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;

    invoke-virtual {v1}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->getStatus()Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, -0x1

    packed-switch v0, :pswitch_data_0

    .line 105
    const-string v0, "corrupted input"

    invoke-direct {p0, v0}, Lorg/brotli/wrapper/dec/Decoder;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :pswitch_0
    iget-object v0, p0, Lorg/brotli/wrapper/dec/Decoder;->decoder:Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;

    invoke-virtual {v0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->pull()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    .line 102
    goto :goto_0

    .line 82
    :pswitch_1
    iget-boolean v0, p0, Lorg/brotli/wrapper/dec/Decoder;->eager:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/brotli/wrapper/dec/Decoder;->decoder:Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;

    invoke-virtual {v0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->hasOutput()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lorg/brotli/wrapper/dec/Decoder;->decoder:Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;

    invoke-virtual {v0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->pull()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    .line 84
    goto :goto_0

    .line 86
    :cond_2
    iget-object v0, p0, Lorg/brotli/wrapper/dec/Decoder;->decoder:Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;

    invoke-virtual {v0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->getInputBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 87
    .local v0, "inputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 88
    iget-object v3, p0, Lorg/brotli/wrapper/dec/Decoder;->source:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v3, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 89
    .local v3, "bytesRead":I
    if-ne v3, v2, :cond_3

    .line 90
    const-string v2, "unexpected end of input"

    invoke-direct {p0, v2}, Lorg/brotli/wrapper/dec/Decoder;->fail(Ljava/lang/String;)V

    .line 92
    :cond_3
    if-nez v3, :cond_4

    .line 94
    sget-object v2, Lorg/brotli/wrapper/dec/Decoder;->EMPTY_BUFER:Ljava/nio/ByteBuffer;

    iput-object v2, p0, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    .line 95
    return v1

    .line 97
    :cond_4
    iget-object v1, p0, Lorg/brotli/wrapper/dec/Decoder;->decoder:Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;

    invoke-virtual {v1, v3}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->push(I)V

    .line 98
    goto :goto_0

    .line 77
    .end local v0    # "inputBuffer":Ljava/nio/ByteBuffer;
    .end local v3    # "bytesRead":I
    :pswitch_2
    iget-object v0, p0, Lorg/brotli/wrapper/dec/Decoder;->decoder:Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;

    invoke-virtual {v0, v1}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->push(I)V

    .line 78
    goto :goto_0

    .line 74
    :pswitch_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method discard(I)V
    .locals 2
    .param p1, "length"    # I

    .line 111
    iget-object v0, p0, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 112
    iget-object v0, p0, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    .line 115
    :cond_0
    return-void
.end method

.method public enableEagerOutput()V
    .locals 1

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/brotli/wrapper/dec/Decoder;->eager:Z

    .line 55
    return-void
.end method
