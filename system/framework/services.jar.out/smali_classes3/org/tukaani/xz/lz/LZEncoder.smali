.class public abstract Lorg/tukaani/xz/lz/LZEncoder;
.super Ljava/lang/Object;
.source "LZEncoder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final MF_BT4:I = 0x14

.field public static final MF_HC4:I = 0x4


# instance fields
.field final buf:[B

.field final bufSize:I

.field private finishing:Z

.field private final keepSizeAfter:I

.field private final keepSizeBefore:I

.field final matchLenMax:I

.field final niceLen:I

.field private pendingSize:I

.field private readLimit:I

.field readPos:I

.field private writePos:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 17
    return-void
.end method

.method constructor <init>(IIIIILorg/tukaani/xz/ArrayCache;)V
    .locals 2
    .param p1, "dictSize"    # I
    .param p2, "extraSizeBefore"    # I
    .param p3, "extraSizeAfter"    # I
    .param p4, "niceLen"    # I
    .param p5, "matchLenMax"    # I
    .param p6, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    .line 42
    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readLimit:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->finishing:Z

    .line 44
    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    .line 45
    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->pendingSize:I

    .line 142
    invoke-static {p1, p2, p3, p5}, Lorg/tukaani/xz/lz/LZEncoder;->getBufSize(IIII)I

    move-result v1

    iput v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->bufSize:I

    .line 144
    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->bufSize:I

    invoke-virtual {p6, v1, v0}, Lorg/tukaani/xz/ArrayCache;->getByteArray(IZ)[B

    move-result-object v0

    iput-object v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    .line 146
    add-int v0, p2, p1

    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->keepSizeBefore:I

    .line 147
    add-int v0, p3, p5

    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->keepSizeAfter:I

    .line 149
    iput p5, p0, Lorg/tukaani/xz/lz/LZEncoder;->matchLenMax:I

    .line 150
    iput p4, p0, Lorg/tukaani/xz/lz/LZEncoder;->niceLen:I

    .line 151
    return-void
.end method

.method private static getBufSize(IIII)I
    .locals 4
    .param p0, "dictSize"    # I
    .param p1, "extraSizeBefore"    # I
    .param p2, "extraSizeAfter"    # I
    .param p3, "matchLenMax"    # I

    .line 63
    add-int v0, p1, p0

    .line 64
    .local v0, "keepSizeBefore":I
    add-int v1, p2, p3

    .line 65
    .local v1, "keepSizeAfter":I
    div-int/lit8 v2, p0, 0x2

    const/high16 v3, 0x40000

    add-int/2addr v2, v3

    const/high16 v3, 0x20000000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 66
    .local v2, "reserveSize":I
    add-int v3, v0, v1

    add-int/2addr v3, v2

    return v3
.end method

.method public static getInstance(IIIIIIILorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/lz/LZEncoder;
    .locals 10
    .param p0, "dictSize"    # I
    .param p1, "extraSizeBefore"    # I
    .param p2, "extraSizeAfter"    # I
    .param p3, "niceLen"    # I
    .param p4, "matchLenMax"    # I
    .param p5, "mf"    # I
    .param p6, "depthLimit"    # I
    .param p7, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 124
    sparse-switch p5, :sswitch_data_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 130
    :sswitch_0
    new-instance v1, Lorg/tukaani/xz/lz/BT4;

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lorg/tukaani/xz/lz/BT4;-><init>(IIIIIILorg/tukaani/xz/ArrayCache;)V

    return-object v1

    .line 126
    :sswitch_1
    new-instance v2, Lorg/tukaani/xz/lz/HC4;

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lorg/tukaani/xz/lz/HC4;-><init>(IIIIIILorg/tukaani/xz/ArrayCache;)V

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getMemoryUsage(IIIII)I
    .locals 2
    .param p0, "dictSize"    # I
    .param p1, "extraSizeBefore"    # I
    .param p2, "extraSizeAfter"    # I
    .param p3, "matchLenMax"    # I
    .param p4, "mf"    # I

    .line 77
    invoke-static {p0, p1, p2, p3}, Lorg/tukaani/xz/lz/LZEncoder;->getBufSize(IIII)I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    add-int/lit8 v0, v0, 0xa

    .line 80
    .local v0, "m":I
    sparse-switch p4, :sswitch_data_0

    .line 90
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 86
    :sswitch_0
    invoke-static {p0}, Lorg/tukaani/xz/lz/BT4;->getMemoryUsage(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    goto :goto_0

    .line 82
    :sswitch_1
    invoke-static {p0}, Lorg/tukaani/xz/lz/HC4;->getMemoryUsage(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    nop

    .line 93
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method private moveWindow()V
    .locals 5

    .line 185
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->keepSizeBefore:I

    sub-int/2addr v0, v1

    and-int/lit8 v0, v0, -0x10

    .line 186
    .local v0, "moveOffset":I
    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    sub-int/2addr v1, v0

    .line 187
    .local v1, "moveSize":I
    iget-object v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget-object v3, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    iget v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    .line 190
    iget v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->readLimit:I

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->readLimit:I

    .line 191
    iget v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    .line 192
    return-void
.end method

.method static normalize([III)V
    .locals 2
    .param p0, "positions"    # [I
    .param p1, "positionsCount"    # I
    .param p2, "normalizationOffset"    # I

    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 50
    aget v1, p0, v0

    if-gt v1, p2, :cond_0

    .line 51
    const/4 v1, 0x0

    aput v1, p0, v0

    goto :goto_1

    .line 53
    :cond_0
    aget v1, p0, v0

    sub-int/2addr v1, p2

    aput v1, p0, v0

    .line 49
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 55
    .end local v0    # "i":I
    return-void
.end method

.method private processPendingBytes()V
    .locals 2

    .line 237
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->pendingSize:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readLimit:I

    if-ge v0, v1, :cond_0

    .line 238
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->pendingSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    .line 239
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->pendingSize:I

    .line 240
    .local v0, "oldPendingSize":I
    const/4 v1, 0x0

    iput v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->pendingSize:I

    .line 241
    invoke-virtual {p0, v0}, Lorg/tukaani/xz/lz/LZEncoder;->skip(I)V

    .line 242
    nop

    .line 244
    .end local v0    # "oldPendingSize":I
    :cond_0
    return-void
.end method


# virtual methods
.method public copyUncompressed(Ljava/io/OutputStream;II)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "backward"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v1, p2

    invoke-virtual {p1, v0, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 284
    return-void
.end method

.method public fillWindow([BII)I
    .locals 3
    .param p1, "in"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 198
    nop

    .line 201
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->bufSize:I

    iget v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->keepSizeAfter:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 202
    invoke-direct {p0}, Lorg/tukaani/xz/lz/LZEncoder;->moveWindow()V

    .line 206
    :cond_0
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->bufSize:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_1

    .line 207
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->bufSize:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    sub-int p3, v0, v1

    .line 209
    :cond_1
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    .line 214
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->keepSizeAfter:I

    if-lt v0, v1, :cond_2

    .line 215
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->keepSizeAfter:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readLimit:I

    .line 217
    :cond_2
    invoke-direct {p0}, Lorg/tukaani/xz/lz/LZEncoder;->processPendingBytes()V

    .line 221
    return p3
.end method

.method public getAvail()I
    .locals 2

    .line 294
    nop

    .line 295
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getByte(I)I
    .locals 2
    .param p1, "backward"    # I

    .line 316
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int/2addr v1, p1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getByte(II)I
    .locals 2
    .param p1, "forward"    # I
    .param p2, "backward"    # I

    .line 325
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/2addr v1, p1

    sub-int/2addr v1, p2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getMatchLen(II)I
    .locals 5
    .param p1, "dist"    # I
    .param p2, "lenLimit"    # I

    .line 337
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 338
    .local v0, "backPos":I
    const/4 v1, 0x0

    .line 340
    .local v1, "len":I
    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v3, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/2addr v3, v1

    aget-byte v2, v2, v3

    iget-object v3, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    add-int v4, v0, v1

    aget-byte v3, v3, v4

    if-ne v2, v3, :cond_0

    .line 341
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    :cond_0
    return v1
.end method

.method public getMatchLen(III)I
    .locals 6
    .param p1, "forward"    # I
    .param p2, "dist"    # I
    .param p3, "lenLimit"    # I

    .line 356
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/2addr v0, p1

    .line 357
    .local v0, "curPos":I
    sub-int v1, v0, p2

    add-int/lit8 v1, v1, -0x1

    .line 358
    .local v1, "backPos":I
    const/4 v2, 0x0

    .line 360
    .local v2, "len":I
    :goto_0
    if-ge v2, p3, :cond_0

    iget-object v3, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    add-int v4, v0, v2

    aget-byte v3, v3, v4

    iget-object v4, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    add-int v5, v1, v2

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_0

    .line 361
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 363
    :cond_0
    return v2
.end method

.method public abstract getMatches()Lorg/tukaani/xz/lz/Matches;
.end method

.method public getPos()I
    .locals 1

    .line 303
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    return v0
.end method

.method public hasEnoughData(I)Z
    .locals 2
    .param p1, "alreadyReadLen"    # I

    .line 278
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int/2addr v0, p1

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readLimit:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStarted()Z
    .locals 2

    .line 251
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method movePos(II)I
    .locals 2
    .param p1, "requiredForFlushing"    # I
    .param p2, "requiredForFinishing"    # I

    .line 404
    nop

    .line 406
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    .line 407
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int/2addr v0, v1

    .line 409
    .local v0, "avail":I
    if-ge v0, p1, :cond_1

    .line 410
    if-lt v0, p2, :cond_0

    iget-boolean v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->finishing:Z

    if-nez v1, :cond_1

    .line 411
    :cond_0
    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->pendingSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->pendingSize:I

    .line 412
    const/4 v0, 0x0

    .line 416
    :cond_1
    return v0
.end method

.method public putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V
    .locals 1
    .param p1, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 154
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    invoke-virtual {p1, v0}, Lorg/tukaani/xz/ArrayCache;->putArray([B)V

    .line 155
    return-void
.end method

.method public setFinishing()V
    .locals 2

    .line 268
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readLimit:I

    .line 269
    iput-boolean v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->finishing:Z

    .line 270
    invoke-direct {p0}, Lorg/tukaani/xz/lz/LZEncoder;->processPendingBytes()V

    .line 271
    return-void
.end method

.method public setFlushing()V
    .locals 1

    .line 259
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readLimit:I

    .line 260
    invoke-direct {p0}, Lorg/tukaani/xz/lz/LZEncoder;->processPendingBytes()V

    .line 261
    return-void
.end method

.method public setPresetDict(I[B)V
    .locals 4
    .param p1, "dictSize"    # I
    .param p2, "presetDict"    # [B

    .line 163
    nop

    .line 164
    nop

    .line 166
    if-eqz p2, :cond_0

    .line 169
    array-length v0, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 170
    .local v0, "copySize":I
    array-length v1, p2

    sub-int/2addr v1, v0

    .line 171
    .local v1, "offset":I
    iget-object v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    const/4 v3, 0x0

    invoke-static {p2, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    iget v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    .line 173
    invoke-virtual {p0, v0}, Lorg/tukaani/xz/lz/LZEncoder;->skip(I)V

    .line 175
    .end local v0    # "copySize":I
    .end local v1    # "offset":I
    :cond_0
    return-void
.end method

.method public abstract skip(I)V
.end method

.method public verifyMatches(Lorg/tukaani/xz/lz/Matches;)Z
    .locals 4
    .param p1, "matches"    # Lorg/tukaani/xz/lz/Matches;

    .line 377
    invoke-virtual {p0}, Lorg/tukaani/xz/lz/LZEncoder;->getAvail()I

    move-result v0

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->matchLenMax:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 379
    .local v0, "lenLimit":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p1, Lorg/tukaani/xz/lz/Matches;->count:I

    if-ge v1, v2, :cond_1

    .line 380
    iget-object v2, p1, Lorg/tukaani/xz/lz/Matches;->dist:[I

    aget v2, v2, v1

    invoke-virtual {p0, v2, v0}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(II)I

    move-result v2

    iget-object v3, p1, Lorg/tukaani/xz/lz/Matches;->len:[I

    aget v3, v3, v1

    if-eq v2, v3, :cond_0

    .line 381
    const/4 v2, 0x0

    return v2

    .line 379
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 383
    .end local v1    # "i":I
    const/4 v1, 0x1

    return v1
.end method
