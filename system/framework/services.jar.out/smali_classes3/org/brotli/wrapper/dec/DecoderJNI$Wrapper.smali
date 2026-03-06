.class public Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;
.super Ljava/lang/Object;
.source "DecoderJNI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/brotli/wrapper/dec/DecoderJNI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wrapper"
.end annotation


# instance fields
.field private final context:[J

.field private fresh:Z

.field private final inputBuffer:Ljava/nio/ByteBuffer;

.field private lastStatus:Lorg/brotli/wrapper/dec/DecoderJNI$Status;


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "inputBufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->context:[J

    .line 32
    sget-object v0, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->NEEDS_MORE_INPUT:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    iput-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->lastStatus:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->fresh:Z

    .line 36
    iget-object v1, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->context:[J

    int-to-long v2, p1

    aput-wide v2, v1, v0

    .line 37
    iget-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->context:[J

    invoke-static {v0}, Lorg/brotli/wrapper/dec/DecoderJNI;->-$$Nest$smnativeCreate([J)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 38
    iget-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->context:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 41
    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "failed to initialize native brotli decoder"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseStatus()V
    .locals 4

    .line 62
    iget-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->context:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    .line 63
    .local v0, "status":J
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 64
    sget-object v2, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->DONE:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    iput-object v2, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->lastStatus:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    goto :goto_0

    .line 65
    :cond_0
    const-wide/16 v2, 0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 66
    sget-object v2, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->NEEDS_MORE_INPUT:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    iput-object v2, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->lastStatus:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    goto :goto_0

    .line 67
    :cond_1
    const-wide/16 v2, 0x3

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 68
    sget-object v2, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->NEEDS_MORE_OUTPUT:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    iput-object v2, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->lastStatus:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    goto :goto_0

    .line 69
    :cond_2
    const-wide/16 v2, 0x4

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 70
    sget-object v2, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->OK:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    iput-object v2, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->lastStatus:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    goto :goto_0

    .line 72
    :cond_3
    sget-object v2, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->ERROR:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    iput-object v2, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->lastStatus:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    .line 74
    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 6

    .line 105
    iget-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->context:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->context:[J

    invoke-static {v0}, Lorg/brotli/wrapper/dec/DecoderJNI;->-$$Nest$smnativeDestroy([J)V

    .line 109
    iget-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->context:[J

    aput-wide v4, v0, v1

    .line 110
    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "brotli decoder is already destroyed"

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

    .line 114
    iget-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->context:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->destroy()V

    .line 118
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 119
    return-void
.end method

.method public getInputBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->inputBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getStatus()Lorg/brotli/wrapper/dec/DecoderJNI$Status;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->lastStatus:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    return-object v0
.end method

.method public hasOutput()Z
    .locals 4

    .line 85
    iget-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->context:[J

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

.method public pull()Ljava/nio/ByteBuffer;
    .locals 6

    .line 89
    iget-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->context:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->lastStatus:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    sget-object v2, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->NEEDS_MORE_OUTPUT:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->hasOutput()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    .line 93
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pulling output from decoder in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->lastStatus:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :goto_0
    iput-boolean v1, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->fresh:Z

    .line 96
    iget-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->context:[J

    invoke-static {v0}, Lorg/brotli/wrapper/dec/DecoderJNI;->-$$Nest$smnativePull([J)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 97
    .local v0, "result":Ljava/nio/ByteBuffer;
    invoke-direct {p0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->parseStatus()V

    .line 98
    return-object v0

    .line 90
    .end local v0    # "result":Ljava/nio/ByteBuffer;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "brotli decoder is already destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public push(I)V
    .locals 6
    .param p1, "length"    # I

    .line 44
    if-ltz p1, :cond_5

    .line 47
    iget-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->context:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    .line 50
    iget-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->lastStatus:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    sget-object v2, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->NEEDS_MORE_INPUT:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->lastStatus:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    sget-object v2, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->OK:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    if-ne v0, v2, :cond_1

    :cond_0
    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushing input to decoder in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->lastStatus:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :goto_0
    iget-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->lastStatus:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    sget-object v2, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->OK:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    if-ne v0, v2, :cond_2

    if-nez p1, :cond_3

    :cond_2
    goto :goto_1

    .line 54
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pushing input to decoder in OK state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :goto_1
    iput-boolean v1, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->fresh:Z

    .line 57
    iget-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->context:[J

    invoke-static {v0, p1}, Lorg/brotli/wrapper/dec/DecoderJNI;->-$$Nest$smnativePush([JI)V

    .line 58
    invoke-direct {p0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->parseStatus()V

    .line 59
    return-void

    .line 48
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "brotli decoder is already destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative block length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
