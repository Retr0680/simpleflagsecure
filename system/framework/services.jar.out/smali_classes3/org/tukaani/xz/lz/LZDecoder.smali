.class public final Lorg/tukaani/xz/lz/LZDecoder;
.super Ljava/lang/Object;
.source "LZDecoder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final buf:[B

.field private final bufSize:I

.field private full:I

.field private limit:I

.field private pendingDist:I

.field private pendingLen:I

.field private pos:I

.field private start:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 18
    return-void
.end method

.method public constructor <init>(I[BLorg/tukaani/xz/ArrayCache;)V
    .locals 4
    .param p1, "dictSize"    # I
    .param p2, "presetDict"    # [B
    .param p3, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    .line 22
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 23
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    .line 24
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    .line 25
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    .line 26
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingDist:I

    .line 29
    iput p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    .line 30
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    invoke-virtual {p3, v1, v0}, Lorg/tukaani/xz/ArrayCache;->getByteArray(IZ)[B

    move-result-object v1

    iput-object v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    .line 32
    if-eqz p2, :cond_0

    .line 33
    array-length v1, p2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 34
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iput v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    .line 35
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iput v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    .line 36
    array-length v1, p2

    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    invoke-static {p2, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public copyUncompressed(Ljava/io/DataInputStream;I)V
    .locals 3
    .param p1, "inData"    # Ljava/io/DataInputStream;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 145
    .local v0, "copySize":I
    iget-object v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 146
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 148
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    if-ge v1, v2, :cond_0

    .line 149
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iput v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    .line 150
    :cond_0
    return-void
.end method

.method public flush([BI)I
    .locals 3
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .line 153
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    sub-int/2addr v0, v1

    .line 154
    .local v0, "copySize":I
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    if-ne v1, v2, :cond_0

    .line 155
    const/4 v1, 0x0

    iput v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 157
    :cond_0
    iget-object v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iput v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    .line 160
    return v0
.end method

.method public getByte(I)I
    .locals 2
    .param p1, "dist"    # I

    .line 72
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 73
    .local v0, "offset":I
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    if-lt p1, v1, :cond_0

    .line 74
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    add-int/2addr v0, v1

    .line 76
    :cond_0
    iget-object v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    return v1
.end method

.method public getPos()I
    .locals 1

    .line 68
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    return v0
.end method

.method public hasPending()Z
    .locals 1

    .line 64
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSpace()Z
    .locals 2

    .line 60
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V
    .locals 1
    .param p1, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 41
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    invoke-virtual {p1, v0}, Lorg/tukaani/xz/ArrayCache;->putArray([B)V

    .line 42
    return-void
.end method

.method public putByte(B)V
    .locals 3
    .param p1, "b"    # B

    .line 80
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    aput-byte p1, v0, v1

    .line 82
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    if-ge v0, v1, :cond_0

    .line 83
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    .line 84
    :cond_0
    return-void
.end method

.method public repeat(II)V
    .locals 6
    .param p1, "dist"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    if-ltz p1, :cond_3

    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    if-ge p1, v0, :cond_3

    .line 90
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 91
    .local v0, "left":I
    sub-int v1, p2, v0

    iput v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    .line 92
    iput p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingDist:I

    .line 94
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 95
    .local v1, "back":I
    if-gez v1, :cond_0

    .line 98
    nop

    .line 99
    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    add-int/2addr v1, v2

    .line 104
    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    sub-int/2addr v2, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 105
    .local v2, "copySize":I
    nop

    .line 107
    iget-object v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget-object v4, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget v5, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    invoke-static {v3, v1, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    iget v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 109
    const/4 v1, 0x0

    .line 110
    sub-int/2addr v0, v2

    .line 112
    if-nez v0, :cond_0

    .line 113
    return-void

    .line 116
    .end local v2    # "copySize":I
    :cond_0
    nop

    .line 117
    nop

    .line 127
    :cond_1
    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 128
    .restart local v2    # "copySize":I
    iget-object v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget-object v4, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget v5, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    invoke-static {v3, v1, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 130
    sub-int/2addr v0, v2

    .line 131
    .end local v2    # "copySize":I
    if-gtz v0, :cond_1

    .line 133
    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    iget v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    if-ge v2, v3, :cond_2

    .line 134
    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iput v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    .line 135
    :cond_2
    return-void

    .line 88
    .end local v0    # "left":I
    .end local v1    # "back":I
    :cond_3
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0
.end method

.method public repeatPending()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    if-lez v0, :cond_0

    .line 139
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingDist:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    invoke-virtual {p0, v0, v1}, Lorg/tukaani/xz/lz/LZDecoder;->repeat(II)V

    .line 140
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    .line 46
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 47
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    .line 48
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    .line 49
    iget-object v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    add-int/lit8 v2, v2, -0x1

    aput-byte v0, v1, v2

    .line 50
    return-void
.end method

.method public setLimit(I)V
    .locals 2
    .param p1, "outMax"    # I

    .line 53
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v0, v1

    if-gt v0, p1, :cond_0

    .line 54
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    goto :goto_0

    .line 56
    :cond_0
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    .line 57
    :goto_0
    return-void
.end method
