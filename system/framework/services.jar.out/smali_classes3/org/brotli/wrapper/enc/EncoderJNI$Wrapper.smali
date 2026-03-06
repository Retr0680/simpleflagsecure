.class Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;
.super Ljava/lang/Object;
.source "EncoderJNI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/brotli/wrapper/enc/EncoderJNI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Wrapper"
.end annotation


# instance fields
.field protected final context:[J

.field private fresh:Z

.field private final inputBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(III)V
    .locals 8
    .param p1, "inputBufferSize"    # I
    .param p2, "quality"    # I
    .param p3, "lgwin"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->fresh:Z

    .line 34
    if-lez p1, :cond_1

    .line 37
    iget-object v1, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    int-to-long v2, p1

    aput-wide v2, v1, v0

    .line 38
    iget-object v1, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    int-to-long v2, p2

    const/4 v4, 0x2

    aput-wide v2, v1, v4

    .line 39
    iget-object v1, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    int-to-long v2, p3

    const/4 v5, 0x3

    aput-wide v2, v1, v5

    .line 40
    iget-object v1, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    invoke-static {v1}, Lorg/brotli/wrapper/enc/EncoderJNI;->-$$Nest$smnativeCreate([J)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 41
    iget-object v1, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    const-wide/16 v2, 0x1

    aput-wide v2, v1, v0

    .line 45
    iget-object v0, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    aput-wide v6, v0, v4

    .line 46
    iget-object v0, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    aput-wide v6, v0, v5

    .line 47
    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "failed to initialize native brotli encoder"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "buffer size must be positive"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method destroy()V
    .locals 6

    .line 102
    iget-object v0, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    invoke-static {v0}, Lorg/brotli/wrapper/enc/EncoderJNI;->-$$Nest$smnativeDestroy([J)V

    .line 106
    iget-object v0, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    aput-wide v4, v0, v1

    .line 107
    return-void

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "brotli encoder is already destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->destroy()V

    .line 115
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 116
    return-void
.end method

.method getInputBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->inputBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method hasMoreOutput()Z
    .locals 4

    .line 72
    iget-object v0, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasRemainingInput()Z
    .locals 4

    .line 76
    iget-object v0, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    const/4 v1, 0x3

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isFinished()Z
    .locals 4

    .line 80
    iget-object v0, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    const/4 v1, 0x4

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSuccess()Z
    .locals 6

    .line 68
    iget-object v0, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    const/4 v1, 0x1

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method pull()Ljava/nio/ByteBuffer;
    .locals 6

    .line 88
    iget-object v0, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->hasMoreOutput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iput-boolean v1, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->fresh:Z

    .line 95
    iget-object v0, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    invoke-static {v0}, Lorg/brotli/wrapper/enc/EncoderJNI;->-$$Nest$smnativePull([J)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pulling while data is not ready"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "brotli encoder is already destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method push(Lorg/brotli/wrapper/enc/EncoderJNI$Operation;I)V
    .locals 6
    .param p1, "op"    # Lorg/brotli/wrapper/enc/EncoderJNI$Operation;
    .param p2, "length"    # I

    .line 50
    if-ltz p2, :cond_4

    .line 53
    iget-object v0, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    .line 56
    invoke-virtual {p0}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->hasMoreOutput()Z

    move-result v0

    if-nez v0, :cond_2

    .line 59
    invoke-virtual {p0}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->hasRemainingInput()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    goto :goto_0

    .line 60
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pushing input to encoder over previous input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :goto_0
    iget-object v0, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x1

    aput-wide v2, v0, v4

    .line 63
    iput-boolean v1, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->fresh:Z

    .line 64
    iget-object v0, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    invoke-static {v0, p2}, Lorg/brotli/wrapper/enc/EncoderJNI;->-$$Nest$smnativePush([JI)V

    .line 65
    return-void

    .line 57
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pushing input to encoder in unexpected state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "brotli encoder is already destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative block length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
