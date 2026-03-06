.class public abstract Lorg/tukaani/xz/rangecoder/RangeEncoder;
.super Lorg/tukaani/xz/rangecoder/RangeCoder;
.source "RangeEncoder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BIT_PRICE_SHIFT_BITS:I = 0x4

.field private static final MOVE_REDUCING_BITS:I = 0x4

.field private static final prices:[I


# instance fields
.field private cache:B

.field cacheSize:J

.field private low:J

.field private range:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    nop

    .line 19
    const/16 v0, 0x80

    new-array v0, v0, [I

    sput-object v0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->prices:[I

    .line 33
    const/16 v0, 0x8

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x800

    if-ge v0, v1, :cond_2

    .line 35
    move v1, v0

    .line 36
    .local v1, "w":I
    const/4 v2, 0x0

    .line 38
    .local v2, "bitCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 39
    mul-int/2addr v1, v1

    .line 40
    shl-int/lit8 v2, v2, 0x1

    .line 42
    :goto_2
    const/high16 v4, -0x10000

    and-int/2addr v4, v1

    if-eqz v4, :cond_0

    .line 43
    ushr-int/lit8 v1, v1, 0x1

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 38
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 48
    .end local v3    # "j":I
    sget-object v3, Lorg/tukaani/xz/rangecoder/RangeEncoder;->prices:[I

    shr-int/lit8 v4, v0, 0x4

    rsub-int v5, v2, 0xa1

    aput v5, v3, v4

    .line 34
    .end local v1    # "w":I
    .end local v2    # "bitCount":I
    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 33
    :cond_2
    nop

    .line 52
    .end local v0    # "i":I
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/tukaani/xz/rangecoder/RangeCoder;-><init>()V

    return-void
.end method

.method public static getBitPrice(II)I
    .locals 2
    .param p0, "prob"    # I
    .param p1, "bit"    # I

    .line 123
    nop

    .line 124
    sget-object v0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->prices:[I

    neg-int v1, p1

    and-int/lit16 v1, v1, 0x7ff

    xor-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public static getBitTreePrice([SI)I
    .locals 4
    .param p0, "probs"    # [S
    .param p1, "symbol"    # I

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "price":I
    array-length v1, p0

    or-int/2addr p1, v1

    .line 149
    :cond_0
    and-int/lit8 v1, p1, 0x1

    .line 150
    .local v1, "bit":I
    const/4 v2, 0x1

    ushr-int/2addr p1, v2

    .line 151
    aget-short v3, p0, p1

    invoke-static {v3, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 152
    .end local v1    # "bit":I
    if-ne p1, v2, :cond_0

    .line 154
    return v0
.end method

.method public static getDirectBitsPrice(I)I
    .locals 1
    .param p0, "count"    # I

    .line 198
    shl-int/lit8 v0, p0, 0x4

    return v0
.end method

.method public static getReverseBitTreePrice([SI)I
    .locals 5
    .param p0, "probs"    # [S
    .param p1, "symbol"    # I

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "price":I
    const/4 v1, 0x1

    .line 173
    .local v1, "index":I
    array-length v2, p0

    or-int/2addr p1, v2

    .line 176
    :cond_0
    and-int/lit8 v2, p1, 0x1

    .line 177
    .local v2, "bit":I
    const/4 v3, 0x1

    ushr-int/2addr p1, v3

    .line 178
    aget-short v4, p0, v1

    invoke-static {v4, v2}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 179
    shl-int/lit8 v4, v1, 0x1

    or-int v1, v4, v2

    .line 180
    .end local v2    # "bit":I
    if-ne p1, v3, :cond_0

    .line 182
    return v0
.end method

.method private shiftLow()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-wide v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    .line 84
    .local v0, "lowHi":I
    const-wide/16 v1, 0x1

    if-nez v0, :cond_0

    iget-wide v3, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    const-wide v5, 0xff000000L

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    .line 85
    :cond_0
    iget-byte v3, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cache:B

    .line 88
    .local v3, "temp":I
    :cond_1
    add-int v4, v3, v0

    invoke-virtual {p0, v4}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->writeByte(I)V

    .line 89
    const/16 v3, 0xff

    .line 90
    iget-wide v4, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cacheSize:J

    sub-long/2addr v4, v1

    iput-wide v4, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cacheSize:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 92
    iget-wide v4, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    const/16 v6, 0x18

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    iput-byte v4, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cache:B

    .line 95
    .end local v3    # "temp":I
    :cond_2
    iget-wide v3, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cacheSize:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cacheSize:J

    .line 96
    iget-wide v1, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    const-wide/32 v3, 0xffffff

    and-long/2addr v1, v3

    const/16 v3, 0x8

    shl-long/2addr v1, v3

    iput-wide v1, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    .line 97
    return-void
.end method


# virtual methods
.method public encodeBit([SII)V
    .locals 8
    .param p1, "probs"    # [S
    .param p2, "index"    # I
    .param p3, "bit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    aget-short v0, p1, p2

    .line 102
    .local v0, "prob":I
    iget v1, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    ushr-int/lit8 v1, v1, 0xb

    mul-int/2addr v1, v0

    .line 105
    .local v1, "bound":I
    if-nez p3, :cond_0

    .line 106
    iput v1, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    .line 107
    rsub-int v2, v0, 0x800

    ushr-int/lit8 v2, v2, 0x5

    add-int/2addr v2, v0

    int-to-short v2, v2

    aput-short v2, p1, p2

    goto :goto_0

    .line 110
    :cond_0
    iget-wide v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    int-to-long v4, v1

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    .line 111
    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    .line 112
    ushr-int/lit8 v2, v0, 0x5

    sub-int v2, v0, v2

    int-to-short v2, v2

    aput-short v2, p1, p2

    .line 115
    :goto_0
    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    .line 116
    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    shl-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    .line 117
    invoke-direct {p0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->shiftLow()V

    .line 119
    :cond_1
    return-void
.end method

.method public encodeBitTree([SI)V
    .locals 4
    .param p1, "probs"    # [S
    .param p2, "symbol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    const/4 v0, 0x1

    .line 130
    .local v0, "index":I
    array-length v1, p1

    .line 133
    .local v1, "mask":I
    :cond_0
    const/4 v2, 0x1

    ushr-int/2addr v1, v2

    .line 134
    and-int v3, p2, v1

    .line 135
    .local v3, "bit":I
    invoke-virtual {p0, p1, v0, v3}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 137
    shl-int/2addr v0, v2

    .line 138
    if-eqz v3, :cond_1

    .line 139
    or-int/lit8 v0, v0, 0x1

    .line 141
    .end local v3    # "bit":I
    :cond_1
    if-ne v1, v2, :cond_0

    .line 142
    return-void
.end method

.method public encodeDirectBits(II)V
    .locals 4
    .param p1, "value"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    nop

    :cond_0
    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    ushr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    .line 188
    iget-wide v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    add-int/lit8 p2, p2, -0x1

    ushr-int v3, p1, p2

    and-int/lit8 v3, v3, 0x1

    rsub-int/lit8 v3, v3, 0x0

    and-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    .line 190
    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 191
    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    .line 192
    invoke-direct {p0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->shiftLow()V

    .line 194
    :cond_1
    if-nez p2, :cond_0

    .line 195
    return-void
.end method

.method public encodeReverseBitTree([SI)V
    .locals 4
    .param p1, "probs"    # [S
    .param p2, "symbol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    const/4 v0, 0x1

    .line 160
    .local v0, "index":I
    array-length v1, p1

    or-int/2addr p2, v1

    .line 163
    :cond_0
    and-int/lit8 v1, p2, 0x1

    .line 164
    .local v1, "bit":I
    const/4 v2, 0x1

    ushr-int/2addr p2, v2

    .line 165
    invoke-virtual {p0, p1, v0, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 166
    shl-int/lit8 v3, v0, 0x1

    or-int v0, v3, v1

    .line 167
    .end local v1    # "bit":I
    if-ne p2, v2, :cond_0

    .line 168
    return-void
.end method

.method public finish()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 70
    invoke-direct {p0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->shiftLow()V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 76
    .end local v0    # "i":I
    const/4 v0, -0x1

    return v0
.end method

.method public getPendingSize()I
    .locals 1

    .line 65
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public reset()V
    .locals 2

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    .line 57
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cache:B

    .line 58
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cacheSize:J

    .line 59
    return-void
.end method

.method abstract writeByte(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
