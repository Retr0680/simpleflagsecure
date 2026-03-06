.class public abstract Lorg/tukaani/xz/rangecoder/RangeDecoder;
.super Lorg/tukaani/xz/rangecoder/RangeCoder;
.source "RangeDecoder.java"


# instance fields
.field code:I

.field range:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lorg/tukaani/xz/rangecoder/RangeCoder;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    .line 17
    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    return-void
.end method


# virtual methods
.method public decodeBit([SI)I
    .locals 4
    .param p1, "probs"    # [S
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->normalize()V

    .line 24
    aget-short v0, p1, p2

    .line 25
    .local v0, "prob":I
    iget v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    ushr-int/lit8 v1, v1, 0xb

    mul-int/2addr v1, v0

    .line 29
    .local v1, "bound":I
    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    xor-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 30
    iput v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    .line 31
    rsub-int v2, v0, 0x800

    ushr-int/lit8 v2, v2, 0x5

    add-int/2addr v2, v0

    int-to-short v2, v2

    aput-short v2, p1, p2

    .line 33
    const/4 v2, 0x0

    .local v2, "bit":I
    goto :goto_0

    .line 35
    .end local v2    # "bit":I
    :cond_0
    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    .line 36
    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    .line 37
    ushr-int/lit8 v2, v0, 0x5

    sub-int v2, v0, v2

    int-to-short v2, v2

    aput-short v2, p1, p2

    .line 38
    const/4 v2, 0x1

    .line 41
    .restart local v2    # "bit":I
    :goto_0
    return v2
.end method

.method public decodeBitTree([S)I
    .locals 3
    .param p1, "probs"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    const/4 v0, 0x1

    .line 48
    .local v0, "symbol":I
    :cond_0
    shl-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    move-result v2

    or-int v0, v1, v2

    .line 49
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 51
    array-length v1, p1

    sub-int v1, v0, v1

    return v1
.end method

.method public decodeDirectBits(I)I
    .locals 5
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    .line 72
    .local v0, "result":I
    :cond_0
    invoke-virtual {p0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->normalize()V

    .line 74
    iget v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    ushr-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    .line 75
    iget v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    sub-int/2addr v1, v2

    ushr-int/lit8 v1, v1, 0x1f

    .line 76
    .local v1, "t":I
    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    iget v3, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    add-int/lit8 v4, v1, -0x1

    and-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    .line 77
    shl-int/lit8 v2, v0, 0x1

    rsub-int/lit8 v3, v1, 0x1

    or-int v0, v2, v3

    .line 78
    .end local v1    # "t":I
    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_0

    .line 80
    return v0
.end method

.method public decodeReverseBitTree([S)I
    .locals 5
    .param p1, "probs"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x1

    .line 56
    .local v0, "symbol":I
    const/4 v1, 0x0

    .line 57
    .local v1, "i":I
    const/4 v2, 0x0

    .line 60
    .local v2, "result":I
    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    move-result v3

    .line 61
    .local v3, "bit":I
    shl-int/lit8 v4, v0, 0x1

    or-int v0, v4, v3

    .line 62
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    shl-int v1, v3, v1

    or-int/2addr v2, v1

    .line 63
    .end local v3    # "bit":I
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 65
    return v2

    .line 63
    :cond_0
    move v1, v4

    goto :goto_0
.end method

.method public abstract normalize()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
