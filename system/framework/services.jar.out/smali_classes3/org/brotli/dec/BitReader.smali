.class final Lorg/brotli/dec/BitReader;
.super Ljava/lang/Object;
.source "BitReader.java"


# static fields
.field static final BITNESS:I

.field private static final BUFFER_SIZE:I = 0x1040

.field private static final BYTENESS:I

.field private static final CAPACITY:I = 0x1000

.field private static final DEBUG:I

.field private static final HALF_BITNESS:I

.field private static final HALF_BUFFER_SIZE:I

.field private static final HALF_SIZE:I

.field private static final HALF_WATERLINE:I

.field private static final HALVES_CAPACITY:I

.field private static final LOG_BITNESS:I

.field private static final LOG_HALF_SIZE:I

.field private static final SAFEGUARD:I = 0x24

.field private static final SLACK:I = 0x40

.field private static final WATERLINE:I = 0xfdc


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    invoke-static {}, Lorg/brotli/dec/Utils;->getLogBintness()I

    move-result v0

    sput v0, Lorg/brotli/dec/BitReader;->LOG_BITNESS:I

    .line 20
    invoke-static {}, Lorg/brotli/dec/Utils;->isDebugMode()I

    move-result v0

    sput v0, Lorg/brotli/dec/BitReader;->DEBUG:I

    .line 22
    const/4 v0, 0x1

    sget v1, Lorg/brotli/dec/BitReader;->LOG_BITNESS:I

    shl-int/2addr v0, v1

    sput v0, Lorg/brotli/dec/BitReader;->BITNESS:I

    .line 24
    sget v0, Lorg/brotli/dec/BitReader;->BITNESS:I

    div-int/lit8 v0, v0, 0x8

    sput v0, Lorg/brotli/dec/BitReader;->BYTENESS:I

    .line 35
    sget v0, Lorg/brotli/dec/BitReader;->BITNESS:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lorg/brotli/dec/BitReader;->HALF_BITNESS:I

    .line 36
    sget v0, Lorg/brotli/dec/BitReader;->BYTENESS:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lorg/brotli/dec/BitReader;->HALF_SIZE:I

    .line 37
    const/16 v0, 0x1000

    sget v1, Lorg/brotli/dec/BitReader;->HALF_SIZE:I

    div-int/2addr v0, v1

    sput v0, Lorg/brotli/dec/BitReader;->HALVES_CAPACITY:I

    .line 38
    const/16 v0, 0x1040

    sget v1, Lorg/brotli/dec/BitReader;->HALF_SIZE:I

    div-int/2addr v0, v1

    sput v0, Lorg/brotli/dec/BitReader;->HALF_BUFFER_SIZE:I

    .line 39
    const/16 v0, 0xfdc

    sget v1, Lorg/brotli/dec/BitReader;->HALF_SIZE:I

    div-int/2addr v0, v1

    sput v0, Lorg/brotli/dec/BitReader;->HALF_WATERLINE:I

    .line 41
    sget v0, Lorg/brotli/dec/BitReader;->LOG_BITNESS:I

    add-int/lit8 v0, v0, -0x4

    sput v0, Lorg/brotli/dec/BitReader;->LOG_HALF_SIZE:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static assertAccumulatorHealthy(Lorg/brotli/dec/State;)V
    .locals 3
    .param p0, "s"    # Lorg/brotli/dec/State;

    .line 98
    iget v0, p0, Lorg/brotli/dec/State;->bitOffset:I

    sget v1, Lorg/brotli/dec/BitReader;->BITNESS:I

    if-gt v0, v1, :cond_0

    .line 101
    return-void

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accumulator underloaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/brotli/dec/State;->bitOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static bytesToNibbles(Lorg/brotli/dec/State;I)V
    .locals 6
    .param p0, "s"    # Lorg/brotli/dec/State;
    .param p1, "byteLen"    # I

    .line 271
    iget-object v0, p0, Lorg/brotli/dec/State;->byteBuffer:[B

    .line 272
    .local v0, "byteBuffer":[B
    sget v1, Lorg/brotli/dec/BitReader;->LOG_HALF_SIZE:I

    shr-int v1, p1, v1

    .line 273
    .local v1, "halfLen":I
    sget v2, Lorg/brotli/dec/BitReader;->BITNESS:I

    const/16 v3, 0x40

    if-ne v2, v3, :cond_1

    .line 274
    iget-object v2, p0, Lorg/brotli/dec/State;->intBuffer:[I

    .line 275
    .local v2, "intBuffer":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 276
    mul-int/lit8 v4, v3, 0x4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    mul-int/lit8 v5, v3, 0x4

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    mul-int/lit8 v5, v3, 0x4

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    mul-int/lit8 v5, v3, 0x4

    add-int/lit8 v5, v5, 0x3

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    aput v4, v2, v3

    .line 275
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 281
    .end local v2    # "intBuffer":[I
    .end local v3    # "i":I
    goto :goto_2

    .line 282
    :cond_1
    iget-object v2, p0, Lorg/brotli/dec/State;->shortBuffer:[S

    .line 283
    .local v2, "shortBuffer":[S
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 284
    mul-int/lit8 v4, v3, 0x2

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v3

    .line 283
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 288
    .end local v2    # "shortBuffer":[S
    .end local v3    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method static checkHealth(Lorg/brotli/dec/State;I)V
    .locals 3
    .param p0, "s"    # Lorg/brotli/dec/State;
    .param p1, "endOfStream"    # I

    .line 85
    iget v0, p0, Lorg/brotli/dec/State;->endOfStreamReached:I

    if-nez v0, :cond_0

    .line 86
    return-void

    .line 88
    :cond_0
    iget v0, p0, Lorg/brotli/dec/State;->halfOffset:I

    sget v1, Lorg/brotli/dec/BitReader;->LOG_HALF_SIZE:I

    shl-int/2addr v0, v1

    iget v1, p0, Lorg/brotli/dec/State;->bitOffset:I

    add-int/lit8 v1, v1, 0x7

    shr-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    sget v1, Lorg/brotli/dec/BitReader;->BYTENESS:I

    sub-int/2addr v0, v1

    .line 89
    .local v0, "byteOffset":I
    iget v1, p0, Lorg/brotli/dec/State;->tailBytes:I

    if-gt v0, v1, :cond_3

    .line 92
    if-eqz p1, :cond_1

    iget v1, p0, Lorg/brotli/dec/State;->tailBytes:I

    if-ne v0, v1, :cond_2

    :cond_1
    goto :goto_0

    .line 93
    :cond_2
    new-instance v1, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v2, "Unused bytes after end"

    invoke-direct {v1, v2}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :goto_0
    return-void

    .line 90
    :cond_3
    new-instance v1, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v2, "Read after end"

    invoke-direct {v1, v2}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static copyBytes(Lorg/brotli/dec/State;[BII)V
    .locals 4
    .param p0, "s"    # Lorg/brotli/dec/State;
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 215
    iget v0, p0, Lorg/brotli/dec/State;->bitOffset:I

    and-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_8

    .line 220
    :goto_0
    iget v0, p0, Lorg/brotli/dec/State;->bitOffset:I

    sget v1, Lorg/brotli/dec/BitReader;->BITNESS:I

    if-eq v0, v1, :cond_0

    if-eqz p3, :cond_0

    .line 221
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "offset":I
    .local v0, "offset":I
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->peekBits(Lorg/brotli/dec/State;)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 222
    iget p2, p0, Lorg/brotli/dec/State;->bitOffset:I

    add-int/lit8 p2, p2, 0x8

    iput p2, p0, Lorg/brotli/dec/State;->bitOffset:I

    .line 223
    add-int/lit8 p3, p3, -0x1

    move p2, v0

    goto :goto_0

    .line 225
    .end local v0    # "offset":I
    .restart local p2    # "offset":I
    :cond_0
    if-nez p3, :cond_1

    .line 226
    return-void

    .line 230
    :cond_1
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->halfAvailable(Lorg/brotli/dec/State;)I

    move-result v0

    sget v1, Lorg/brotli/dec/BitReader;->LOG_HALF_SIZE:I

    shr-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 231
    .local v0, "copyNibbles":I
    if-lez v0, :cond_2

    .line 232
    iget v1, p0, Lorg/brotli/dec/State;->halfOffset:I

    sget v2, Lorg/brotli/dec/BitReader;->LOG_HALF_SIZE:I

    shl-int/2addr v1, v2

    .line 233
    .local v1, "readOffset":I
    sget v2, Lorg/brotli/dec/BitReader;->LOG_HALF_SIZE:I

    shl-int v2, v0, v2

    .line 234
    .local v2, "delta":I
    iget-object v3, p0, Lorg/brotli/dec/State;->byteBuffer:[B

    invoke-static {v3, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    add-int/2addr p2, v2

    .line 236
    sub-int/2addr p3, v2

    .line 237
    iget v3, p0, Lorg/brotli/dec/State;->halfOffset:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/brotli/dec/State;->halfOffset:I

    .line 239
    .end local v1    # "readOffset":I
    .end local v2    # "delta":I
    :cond_2
    if-nez p3, :cond_3

    .line 240
    return-void

    .line 244
    :cond_3
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->halfAvailable(Lorg/brotli/dec/State;)I

    move-result v1

    if-lez v1, :cond_5

    .line 246
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 247
    :goto_1
    if-eqz p3, :cond_4

    .line 248
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "offset":I
    .local v1, "offset":I
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->peekBits(Lorg/brotli/dec/State;)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    .line 249
    iget p2, p0, Lorg/brotli/dec/State;->bitOffset:I

    add-int/lit8 p2, p2, 0x8

    iput p2, p0, Lorg/brotli/dec/State;->bitOffset:I

    .line 250
    add-int/lit8 p3, p3, -0x1

    move p2, v1

    goto :goto_1

    .line 252
    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    :cond_4
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lorg/brotli/dec/BitReader;->checkHealth(Lorg/brotli/dec/State;I)V

    .line 253
    return-void

    .line 257
    :cond_5
    :goto_2
    if-lez p3, :cond_7

    .line 258
    iget-object v1, p0, Lorg/brotli/dec/State;->input:Ljava/io/InputStream;

    invoke-static {v1, p1, p2, p3}, Lorg/brotli/dec/Utils;->readInput(Ljava/io/InputStream;[BII)I

    move-result v1

    .line 259
    .local v1, "len":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    .line 262
    add-int/2addr p2, v1

    .line 263
    sub-int/2addr p3, v1

    .line 264
    .end local v1    # "len":I
    goto :goto_2

    .line 260
    .restart local v1    # "len":I
    :cond_6
    new-instance v2, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v3, "Unexpected end of input"

    invoke-direct {v2, v3}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 265
    .end local v1    # "len":I
    :cond_7
    return-void

    .line 216
    .end local v0    # "copyNibbles":I
    :cond_8
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v1, "Unaligned copyBytes"

    invoke-direct {v0, v1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static doFillBitWindow(Lorg/brotli/dec/State;)V
    .locals 5
    .param p0, "s"    # Lorg/brotli/dec/State;

    .line 121
    sget v0, Lorg/brotli/dec/BitReader;->DEBUG:I

    if-eqz v0, :cond_0

    .line 122
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->assertAccumulatorHealthy(Lorg/brotli/dec/State;)V

    .line 124
    :cond_0
    sget v0, Lorg/brotli/dec/BitReader;->BITNESS:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    .line 125
    iget-object v0, p0, Lorg/brotli/dec/State;->intBuffer:[I

    iget v1, p0, Lorg/brotli/dec/State;->halfOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/brotli/dec/State;->halfOffset:I

    aget v0, v0, v1

    int-to-long v0, v0

    sget v2, Lorg/brotli/dec/BitReader;->HALF_BITNESS:I

    shl-long/2addr v0, v2

    iget-wide v2, p0, Lorg/brotli/dec/State;->accumulator64:J

    sget v4, Lorg/brotli/dec/BitReader;->HALF_BITNESS:I

    ushr-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/brotli/dec/State;->accumulator64:J

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lorg/brotli/dec/State;->shortBuffer:[S

    iget v1, p0, Lorg/brotli/dec/State;->halfOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/brotli/dec/State;->halfOffset:I

    aget-short v0, v0, v1

    sget v1, Lorg/brotli/dec/BitReader;->HALF_BITNESS:I

    shl-int/2addr v0, v1

    iget v1, p0, Lorg/brotli/dec/State;->accumulator32:I

    sget v2, Lorg/brotli/dec/BitReader;->HALF_BITNESS:I

    ushr-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lorg/brotli/dec/State;->accumulator32:I

    .line 131
    :goto_0
    iget v0, p0, Lorg/brotli/dec/State;->bitOffset:I

    sget v1, Lorg/brotli/dec/BitReader;->HALF_BITNESS:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/brotli/dec/State;->bitOffset:I

    .line 132
    return-void
.end method

.method static doReadMoreInput(Lorg/brotli/dec/State;)V
    .locals 6
    .param p0, "s"    # Lorg/brotli/dec/State;

    .line 58
    iget v0, p0, Lorg/brotli/dec/State;->endOfStreamReached:I

    if-eqz v0, :cond_1

    .line 59
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->halfAvailable(Lorg/brotli/dec/State;)I

    move-result v0

    const/4 v1, -0x2

    if-lt v0, v1, :cond_0

    .line 60
    return-void

    .line 62
    :cond_0
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v1, "No more input"

    invoke-direct {v0, v1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    iget v0, p0, Lorg/brotli/dec/State;->halfOffset:I

    sget v1, Lorg/brotli/dec/BitReader;->LOG_HALF_SIZE:I

    shl-int/2addr v0, v1

    .line 65
    .local v0, "readOffset":I
    rsub-int v1, v0, 0x1000

    .line 67
    .local v1, "bytesInBuffer":I
    iget-object v2, p0, Lorg/brotli/dec/State;->byteBuffer:[B

    const/4 v3, 0x0

    const/16 v4, 0x1000

    invoke-static {v2, v3, v0, v4}, Lorg/brotli/dec/Utils;->copyBytesWithin([BIII)V

    .line 68
    iput v3, p0, Lorg/brotli/dec/State;->halfOffset:I

    .line 69
    :goto_0
    if-ge v1, v4, :cond_3

    .line 70
    rsub-int v2, v1, 0x1000

    .line 71
    .local v2, "spaceLeft":I
    iget-object v3, p0, Lorg/brotli/dec/State;->input:Ljava/io/InputStream;

    iget-object v5, p0, Lorg/brotli/dec/State;->byteBuffer:[B

    invoke-static {v3, v5, v1, v2}, Lorg/brotli/dec/Utils;->readInput(Ljava/io/InputStream;[BII)I

    move-result v3

    .line 73
    .local v3, "len":I
    if-gtz v3, :cond_2

    .line 74
    const/4 v4, 0x1

    iput v4, p0, Lorg/brotli/dec/State;->endOfStreamReached:I

    .line 75
    iput v1, p0, Lorg/brotli/dec/State;->tailBytes:I

    .line 76
    sget v5, Lorg/brotli/dec/BitReader;->HALF_SIZE:I

    sub-int/2addr v5, v4

    add-int/2addr v1, v5

    .line 77
    goto :goto_1

    .line 79
    :cond_2
    add-int/2addr v1, v3

    .line 80
    .end local v2    # "spaceLeft":I
    .end local v3    # "len":I
    goto :goto_0

    .line 81
    :cond_3
    :goto_1
    invoke-static {p0, v1}, Lorg/brotli/dec/BitReader;->bytesToNibbles(Lorg/brotli/dec/State;I)V

    .line 82
    return-void
.end method

.method static fillBitWindow(Lorg/brotli/dec/State;)V
    .locals 5
    .param p0, "s"    # Lorg/brotli/dec/State;

    .line 104
    sget v0, Lorg/brotli/dec/BitReader;->DEBUG:I

    if-eqz v0, :cond_0

    .line 105
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->assertAccumulatorHealthy(Lorg/brotli/dec/State;)V

    .line 107
    :cond_0
    iget v0, p0, Lorg/brotli/dec/State;->bitOffset:I

    sget v1, Lorg/brotli/dec/BitReader;->HALF_BITNESS:I

    if-lt v0, v1, :cond_2

    .line 109
    sget v0, Lorg/brotli/dec/BitReader;->BITNESS:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    .line 110
    iget-object v0, p0, Lorg/brotli/dec/State;->intBuffer:[I

    iget v1, p0, Lorg/brotli/dec/State;->halfOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/brotli/dec/State;->halfOffset:I

    aget v0, v0, v1

    int-to-long v0, v0

    sget v2, Lorg/brotli/dec/BitReader;->HALF_BITNESS:I

    shl-long/2addr v0, v2

    iget-wide v2, p0, Lorg/brotli/dec/State;->accumulator64:J

    sget v4, Lorg/brotli/dec/BitReader;->HALF_BITNESS:I

    ushr-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/brotli/dec/State;->accumulator64:J

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lorg/brotli/dec/State;->shortBuffer:[S

    iget v1, p0, Lorg/brotli/dec/State;->halfOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/brotli/dec/State;->halfOffset:I

    aget-short v0, v0, v1

    sget v1, Lorg/brotli/dec/BitReader;->HALF_BITNESS:I

    shl-int/2addr v0, v1

    iget v1, p0, Lorg/brotli/dec/State;->accumulator32:I

    sget v2, Lorg/brotli/dec/BitReader;->HALF_BITNESS:I

    ushr-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lorg/brotli/dec/State;->accumulator32:I

    .line 116
    :goto_0
    iget v0, p0, Lorg/brotli/dec/State;->bitOffset:I

    sget v1, Lorg/brotli/dec/BitReader;->HALF_BITNESS:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/brotli/dec/State;->bitOffset:I

    .line 118
    :cond_2
    return-void
.end method

.method static halfAvailable(Lorg/brotli/dec/State;)I
    .locals 3
    .param p0, "s"    # Lorg/brotli/dec/State;

    .line 207
    sget v0, Lorg/brotli/dec/BitReader;->HALVES_CAPACITY:I

    .line 208
    .local v0, "limit":I
    iget v1, p0, Lorg/brotli/dec/State;->endOfStreamReached:I

    if-eqz v1, :cond_0

    .line 209
    iget v1, p0, Lorg/brotli/dec/State;->tailBytes:I

    sget v2, Lorg/brotli/dec/BitReader;->HALF_SIZE:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    sget v2, Lorg/brotli/dec/BitReader;->LOG_HALF_SIZE:I

    shr-int v0, v1, v2

    .line 211
    :cond_0
    iget v1, p0, Lorg/brotli/dec/State;->halfOffset:I

    sub-int v1, v0, v1

    return v1
.end method

.method static initBitReader(Lorg/brotli/dec/State;)V
    .locals 3
    .param p0, "s"    # Lorg/brotli/dec/State;

    .line 169
    const/16 v0, 0x1040

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/brotli/dec/State;->byteBuffer:[B

    .line 170
    sget v0, Lorg/brotli/dec/BitReader;->BITNESS:I

    const/16 v1, 0x40

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 171
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/brotli/dec/State;->accumulator64:J

    .line 172
    sget v0, Lorg/brotli/dec/BitReader;->HALF_BUFFER_SIZE:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/brotli/dec/State;->intBuffer:[I

    goto :goto_0

    .line 174
    :cond_0
    iput v2, p0, Lorg/brotli/dec/State;->accumulator32:I

    .line 175
    sget v0, Lorg/brotli/dec/BitReader;->HALF_BUFFER_SIZE:I

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/brotli/dec/State;->shortBuffer:[S

    .line 177
    :goto_0
    sget v0, Lorg/brotli/dec/BitReader;->BITNESS:I

    iput v0, p0, Lorg/brotli/dec/State;->bitOffset:I

    .line 178
    sget v0, Lorg/brotli/dec/BitReader;->HALVES_CAPACITY:I

    iput v0, p0, Lorg/brotli/dec/State;->halfOffset:I

    .line 179
    iput v2, p0, Lorg/brotli/dec/State;->endOfStreamReached:I

    .line 180
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->prepare(Lorg/brotli/dec/State;)V

    .line 181
    return-void
.end method

.method static jumpToByteBoundary(Lorg/brotli/dec/State;)V
    .locals 4
    .param p0, "s"    # Lorg/brotli/dec/State;

    .line 197
    sget v0, Lorg/brotli/dec/BitReader;->BITNESS:I

    iget v1, p0, Lorg/brotli/dec/State;->bitOffset:I

    sub-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x7

    .line 198
    .local v0, "padding":I
    if-eqz v0, :cond_1

    .line 199
    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v1

    .line 200
    .local v1, "paddingBits":I
    if-nez v1, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    new-instance v2, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v3, "Corrupted padding bits"

    invoke-direct {v2, v3}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 204
    .end local v1    # "paddingBits":I
    :cond_1
    :goto_0
    return-void
.end method

.method static peekBits(Lorg/brotli/dec/State;)I
    .locals 3
    .param p0, "s"    # Lorg/brotli/dec/State;

    .line 135
    sget v0, Lorg/brotli/dec/BitReader;->BITNESS:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 136
    iget-wide v0, p0, Lorg/brotli/dec/State;->accumulator64:J

    iget v2, p0, Lorg/brotli/dec/State;->bitOffset:I

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    .line 138
    :cond_0
    iget v0, p0, Lorg/brotli/dec/State;->accumulator32:I

    iget v1, p0, Lorg/brotli/dec/State;->bitOffset:I

    ushr-int/2addr v0, v1

    return v0
.end method

.method private static prepare(Lorg/brotli/dec/State;)V
    .locals 1
    .param p0, "s"    # Lorg/brotli/dec/State;

    .line 184
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/State;)V

    .line 185
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->checkHealth(Lorg/brotli/dec/State;I)V

    .line 186
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->doFillBitWindow(Lorg/brotli/dec/State;)V

    .line 187
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->doFillBitWindow(Lorg/brotli/dec/State;)V

    .line 188
    return-void
.end method

.method static readBits(Lorg/brotli/dec/State;I)I
    .locals 2
    .param p0, "s"    # Lorg/brotli/dec/State;
    .param p1, "n"    # I

    .line 155
    sget v0, Lorg/brotli/dec/BitReader;->HALF_BITNESS:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 156
    invoke-static {p0, p1}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v0

    return v0

    .line 158
    :cond_0
    const/16 v0, 0x10

    if-gt p1, v0, :cond_1

    invoke-static {p0, p1}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lorg/brotli/dec/BitReader;->readManyBits(Lorg/brotli/dec/State;I)I

    move-result v0

    :goto_0
    return v0
.end method

.method static readFewBits(Lorg/brotli/dec/State;I)I
    .locals 3
    .param p0, "s"    # Lorg/brotli/dec/State;
    .param p1, "n"    # I

    .line 149
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->peekBits(Lorg/brotli/dec/State;)I

    move-result v0

    const/4 v1, 0x1

    shl-int v2, v1, p1

    sub-int/2addr v2, v1

    and-int/2addr v0, v2

    .line 150
    .local v0, "val":I
    iget v1, p0, Lorg/brotli/dec/State;->bitOffset:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/brotli/dec/State;->bitOffset:I

    .line 151
    return v0
.end method

.method private static readManyBits(Lorg/brotli/dec/State;I)I
    .locals 3
    .param p0, "s"    # Lorg/brotli/dec/State;
    .param p1, "n"    # I

    .line 163
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v1

    .line 164
    .local v1, "low":I
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->doFillBitWindow(Lorg/brotli/dec/State;)V

    .line 165
    add-int/lit8 v2, p1, -0x10

    invoke-static {p0, v2}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v2

    shl-int/lit8 v0, v2, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method static readMoreInput(Lorg/brotli/dec/State;)V
    .locals 2
    .param p0, "s"    # Lorg/brotli/dec/State;

    .line 52
    iget v0, p0, Lorg/brotli/dec/State;->halfOffset:I

    sget v1, Lorg/brotli/dec/BitReader;->HALF_WATERLINE:I

    if-le v0, v1, :cond_0

    .line 53
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->doReadMoreInput(Lorg/brotli/dec/State;)V

    .line 55
    :cond_0
    return-void
.end method

.method static reload(Lorg/brotli/dec/State;)V
    .locals 2
    .param p0, "s"    # Lorg/brotli/dec/State;

    .line 191
    iget v0, p0, Lorg/brotli/dec/State;->bitOffset:I

    sget v1, Lorg/brotli/dec/BitReader;->BITNESS:I

    if-ne v0, v1, :cond_0

    .line 192
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->prepare(Lorg/brotli/dec/State;)V

    .line 194
    :cond_0
    return-void
.end method
