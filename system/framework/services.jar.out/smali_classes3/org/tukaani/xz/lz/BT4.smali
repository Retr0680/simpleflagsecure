.class final Lorg/tukaani/xz/lz/BT4;
.super Lorg/tukaani/xz/lz/LZEncoder;
.source "BT4.java"


# instance fields
.field private cyclicPos:I

.field private final cyclicSize:I

.field private final depthLimit:I

.field private final hash:Lorg/tukaani/xz/lz/Hash234;

.field private lzPos:I

.field private final matches:Lorg/tukaani/xz/lz/Matches;

.field private final tree:[I


# direct methods
.method constructor <init>(IIIIIILorg/tukaani/xz/ArrayCache;)V
    .locals 7
    .param p1, "dictSize"    # I
    .param p2, "beforeSizeMin"    # I
    .param p3, "readAheadMax"    # I
    .param p4, "niceLen"    # I
    .param p5, "matchLenMax"    # I
    .param p6, "depthLimit"    # I
    .param p7, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 32
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p7

    .end local p1    # "dictSize":I
    .end local p2    # "beforeSizeMin":I
    .end local p3    # "readAheadMax":I
    .end local p4    # "niceLen":I
    .end local p5    # "matchLenMax":I
    .end local p7    # "arrayCache":Lorg/tukaani/xz/ArrayCache;
    .local v1, "dictSize":I
    .local v2, "beforeSizeMin":I
    .local v3, "readAheadMax":I
    .local v4, "niceLen":I
    .local v5, "matchLenMax":I
    .local v6, "arrayCache":Lorg/tukaani/xz/ArrayCache;
    invoke-direct/range {v0 .. v6}, Lorg/tukaani/xz/lz/LZEncoder;-><init>(IIIIILorg/tukaani/xz/ArrayCache;)V

    .line 22
    const/4 p1, -0x1

    iput p1, v0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    .line 35
    add-int/lit8 p1, v1, 0x1

    iput p1, v0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    .line 36
    iget p1, v0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    iput p1, v0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    .line 38
    new-instance p1, Lorg/tukaani/xz/lz/Hash234;

    invoke-direct {p1, v1, v6}, Lorg/tukaani/xz/lz/Hash234;-><init>(ILorg/tukaani/xz/ArrayCache;)V

    iput-object p1, v0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    .line 39
    iget p1, v0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    mul-int/lit8 p1, p1, 0x2

    const/4 p2, 0x0

    invoke-virtual {v6, p1, p2}, Lorg/tukaani/xz/ArrayCache;->getIntArray(IZ)[I

    move-result-object p1

    iput-object p1, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    .line 44
    new-instance p1, Lorg/tukaani/xz/lz/Matches;

    add-int/lit8 p4, v4, -0x1

    invoke-direct {p1, p4}, Lorg/tukaani/xz/lz/Matches;-><init>(I)V

    iput-object p1, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    .line 46
    if-lez p6, :cond_0

    move p4, p6

    goto :goto_0

    :cond_0
    div-int/lit8 p4, v4, 0x2

    add-int/lit8 p4, p4, 0x10

    :goto_0
    iput p4, v0, Lorg/tukaani/xz/lz/BT4;->depthLimit:I

    .line 47
    return-void
.end method

.method static getMemoryUsage(I)I
    .locals 2
    .param p0, "dictSize"    # I

    .line 26
    invoke-static {p0}, Lorg/tukaani/xz/lz/Hash234;->getMemoryUsage(I)I

    move-result v0

    div-int/lit16 v1, p0, 0x80

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private movePos()I
    .locals 4

    .line 56
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->niceLen:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/tukaani/xz/lz/LZEncoder;->movePos(II)I

    move-result v0

    .line 58
    .local v0, "avail":I
    if-eqz v0, :cond_1

    .line 59
    iget v1, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 60
    iget v1, p0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    sub-int/2addr v2, v1

    .line 61
    .local v2, "normalizationOffset":I
    iget-object v1, p0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v1, v2}, Lorg/tukaani/xz/lz/Hash234;->normalize(I)V

    .line 62
    iget-object v1, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    iget v3, p0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v1, v3, v2}, Lorg/tukaani/xz/lz/LZEncoder;->normalize([III)V

    .line 63
    iget v1, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    .line 66
    .end local v2    # "normalizationOffset":I
    :cond_0
    iget v1, p0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    iget v2, p0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    if-ne v1, v2, :cond_1

    .line 67
    const/4 v1, 0x0

    iput v1, p0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    .line 70
    :cond_1
    return v0
.end method

.method private skip(II)V
    .locals 11
    .param p1, "niceLenLimit"    # I
    .param p2, "currentMatch"    # I

    .line 198
    iget v0, p0, Lorg/tukaani/xz/lz/BT4;->depthLimit:I

    .line 200
    .local v0, "depth":I
    iget v1, p0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 201
    .local v1, "ptr0":I
    iget v2, p0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    shl-int/lit8 v2, v2, 0x1

    .line 202
    .local v2, "ptr1":I
    const/4 v3, 0x0

    .line 203
    .local v3, "len0":I
    const/4 v4, 0x0

    .line 206
    .local v4, "len1":I
    :goto_0
    iget v5, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    sub-int/2addr v5, p2

    .line 208
    .local v5, "delta":I
    add-int/lit8 v6, v0, -0x1

    .end local v0    # "depth":I
    .local v6, "depth":I
    const/4 v7, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    if-lt v5, v0, :cond_1

    :cond_0
    goto/16 :goto_2

    .line 214
    :cond_1
    iget v0, p0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    sub-int/2addr v0, v5

    .line 215
    iget v8, p0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    if-le v5, v8, :cond_2

    iget v7, p0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    :cond_2
    add-int/2addr v0, v7

    shl-int/lit8 v0, v0, 0x1

    .line 216
    .local v0, "pair":I
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 218
    .local v7, "len":I
    iget-object v8, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v9, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/2addr v9, v7

    sub-int/2addr v9, v5

    aget-byte v8, v8, v9

    iget-object v9, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v10, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/2addr v10, v7

    aget-byte v9, v9, v10

    nop

    if-ne v8, v9, :cond_5

    .line 223
    :cond_3
    add-int/lit8 v7, v7, 0x1

    if-ne v7, p1, :cond_4

    .line 224
    iget-object v8, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    iget-object v9, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aget v9, v9, v0

    aput v9, v8, v2

    .line 225
    iget-object v8, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    iget-object v9, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    add-int/lit8 v10, v0, 0x1

    aget v9, v9, v10

    aput v9, v8, v1

    .line 226
    return-void

    .line 228
    :cond_4
    iget-object v8, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v9, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/2addr v9, v7

    sub-int/2addr v9, v5

    aget-byte v8, v8, v9

    iget-object v9, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v10, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/2addr v10, v7

    aget-byte v9, v9, v10

    if-eq v8, v9, :cond_3

    .line 231
    :cond_5
    iget-object v8, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v9, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/2addr v9, v7

    sub-int/2addr v9, v5

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    iget-object v9, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v10, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/2addr v10, v7

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    if-ge v8, v9, :cond_6

    .line 233
    iget-object v8, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aput p2, v8, v2

    .line 234
    add-int/lit8 v2, v0, 0x1

    .line 235
    iget-object v8, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aget p2, v8, v2

    .line 236
    move v4, v7

    goto :goto_1

    .line 238
    :cond_6
    iget-object v8, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aput p2, v8, v1

    .line 239
    move v1, v0

    .line 240
    iget-object v8, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aget p2, v8, v1

    .line 241
    move v3, v7

    .line 243
    .end local v0    # "pair":I
    .end local v5    # "delta":I
    .end local v7    # "len":I
    :goto_1
    move v0, v6

    goto/16 :goto_0

    .line 209
    .restart local v5    # "delta":I
    :goto_2
    iget-object v0, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aput v7, v0, v1

    .line 210
    iget-object v0, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aput v7, v0, v2

    .line 211
    return-void
.end method


# virtual methods
.method public getMatches()Lorg/tukaani/xz/lz/Matches;
    .locals 21

    .line 74
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    const/4 v2, 0x0

    iput v2, v1, Lorg/tukaani/xz/lz/Matches;->count:I

    .line 76
    iget v1, v0, Lorg/tukaani/xz/lz/LZEncoder;->matchLenMax:I

    .line 77
    .local v1, "matchLenLimit":I
    iget v3, v0, Lorg/tukaani/xz/lz/LZEncoder;->niceLen:I

    .line 78
    .local v3, "niceLenLimit":I
    invoke-direct {v0}, Lorg/tukaani/xz/lz/BT4;->movePos()I

    move-result v4

    .line 80
    .local v4, "avail":I
    if-ge v4, v1, :cond_1

    .line 81
    if-nez v4, :cond_0

    .line 82
    iget-object v2, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    return-object v2

    .line 84
    :cond_0
    move v1, v4

    .line 85
    if-le v3, v4, :cond_1

    .line 86
    move v3, v4

    .line 89
    :cond_1
    iget-object v5, v0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget-object v6, v0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v7, v0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    invoke-virtual {v5, v6, v7}, Lorg/tukaani/xz/lz/Hash234;->calcHashes([BI)V

    .line 90
    iget v5, v0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    iget-object v6, v0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v6}, Lorg/tukaani/xz/lz/Hash234;->getHash2Pos()I

    move-result v6

    sub-int/2addr v5, v6

    .line 91
    .local v5, "delta2":I
    iget v6, v0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    iget-object v7, v0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v7}, Lorg/tukaani/xz/lz/Hash234;->getHash3Pos()I

    move-result v7

    sub-int/2addr v6, v7

    .line 92
    .local v6, "delta3":I
    iget-object v7, v0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v7}, Lorg/tukaani/xz/lz/Hash234;->getHash4Pos()I

    move-result v7

    .line 93
    .local v7, "currentMatch":I
    iget-object v8, v0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget v9, v0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    invoke-virtual {v8, v9}, Lorg/tukaani/xz/lz/Hash234;->updateTables(I)V

    .line 95
    const/4 v8, 0x0

    .line 101
    .local v8, "lenBest":I
    iget v9, v0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    const/4 v10, 0x1

    if-ge v5, v9, :cond_2

    iget-object v9, v0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v11, v0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int/2addr v11, v5

    aget-byte v9, v9, v11

    iget-object v11, v0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v12, v0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    aget-byte v11, v11, v12

    if-ne v9, v11, :cond_2

    .line 102
    const/4 v8, 0x2

    .line 103
    iget-object v9, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v9, v9, Lorg/tukaani/xz/lz/Matches;->len:[I

    const/4 v11, 0x2

    aput v11, v9, v2

    .line 104
    iget-object v9, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v9, v9, Lorg/tukaani/xz/lz/Matches;->dist:[I

    add-int/lit8 v11, v5, -0x1

    aput v11, v9, v2

    .line 105
    iget-object v9, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iput v10, v9, Lorg/tukaani/xz/lz/Matches;->count:I

    .line 112
    :cond_2
    if-eq v5, v6, :cond_3

    iget v9, v0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    if-ge v6, v9, :cond_3

    iget-object v9, v0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v11, v0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int/2addr v11, v6

    aget-byte v9, v9, v11

    iget-object v11, v0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v12, v0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    aget-byte v11, v11, v12

    if-ne v9, v11, :cond_3

    .line 114
    const/4 v8, 0x3

    .line 115
    iget-object v9, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v9, v9, Lorg/tukaani/xz/lz/Matches;->dist:[I

    iget-object v11, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v12, v11, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v11, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v11, v6, -0x1

    aput v11, v9, v12

    .line 116
    move v5, v6

    .line 120
    :cond_3
    iget-object v9, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v9, v9, Lorg/tukaani/xz/lz/Matches;->count:I

    nop

    if-lez v9, :cond_5

    .line 121
    :goto_0
    if-ge v8, v1, :cond_4

    iget-object v9, v0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v11, v0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/2addr v11, v8

    sub-int/2addr v11, v5

    aget-byte v9, v9, v11

    iget-object v11, v0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v12, v0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/2addr v12, v8

    aget-byte v11, v11, v12

    if-ne v9, v11, :cond_4

    .line 123
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 125
    :cond_4
    iget-object v9, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v9, v9, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v11, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v11, v11, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v11, v10

    aput v8, v9, v11

    .line 129
    if-lt v8, v3, :cond_5

    .line 130
    invoke-direct {v0, v3, v7}, Lorg/tukaani/xz/lz/BT4;->skip(II)V

    .line 131
    iget-object v2, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    return-object v2

    .line 137
    :cond_5
    const/4 v9, 0x3

    if-ge v8, v9, :cond_6

    .line 138
    const/4 v8, 0x3

    .line 140
    :cond_6
    iget v9, v0, Lorg/tukaani/xz/lz/BT4;->depthLimit:I

    .line 142
    .local v9, "depth":I
    iget v11, v0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    shl-int/2addr v11, v10

    add-int/2addr v11, v10

    .line 143
    .local v11, "ptr0":I
    iget v12, v0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    shl-int/2addr v12, v10

    .line 144
    .local v12, "ptr1":I
    const/4 v13, 0x0

    .line 145
    .local v13, "len0":I
    const/4 v14, 0x0

    .line 148
    .local v14, "len1":I
    :goto_1
    iget v15, v0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    sub-int/2addr v15, v7

    .line 153
    .local v15, "delta":I
    add-int/lit8 v16, v9, -0x1

    .end local v9    # "depth":I
    .local v16, "depth":I
    if-eqz v9, :cond_e

    iget v9, v0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    if-lt v15, v9, :cond_7

    move/from16 v17, v2

    move/from16 v20, v4

    goto/16 :goto_4

    .line 159
    :cond_7
    iget v9, v0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    sub-int/2addr v9, v15

    .line 160
    move/from16 v17, v2

    iget v2, v0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    if-le v15, v2, :cond_8

    iget v2, v0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    goto :goto_2

    :cond_8
    move/from16 v2, v17

    :goto_2
    add-int/2addr v9, v2

    shl-int/lit8 v2, v9, 0x1

    .line 161
    .local v2, "pair":I
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 163
    .local v9, "len":I
    move/from16 v18, v10

    iget-object v10, v0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    move/from16 v19, v2

    .end local v2    # "pair":I
    .local v19, "pair":I
    iget v2, v0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/2addr v2, v9

    sub-int/2addr v2, v15

    aget-byte v2, v10, v2

    iget-object v10, v0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    move/from16 v20, v4

    .end local v4    # "avail":I
    .local v20, "avail":I
    iget v4, v0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/2addr v4, v9

    aget-byte v4, v10, v4

    nop

    if-ne v2, v4, :cond_c

    .line 164
    :cond_9
    add-int/lit8 v9, v9, 0x1

    if-ge v9, v1, :cond_a

    .line 165
    iget-object v2, v0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v4, v0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/2addr v4, v9

    sub-int/2addr v4, v15

    aget-byte v2, v2, v4

    iget-object v4, v0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v10, v0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/2addr v10, v9

    aget-byte v4, v4, v10

    if-eq v2, v4, :cond_9

    .line 166
    nop

    .line 168
    :cond_a
    if-le v9, v8, :cond_c

    .line 169
    move v2, v9

    .line 170
    .end local v8    # "lenBest":I
    .local v2, "lenBest":I
    iget-object v4, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v4, v4, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v8, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v8, v8, Lorg/tukaani/xz/lz/Matches;->count:I

    aput v9, v4, v8

    .line 171
    iget-object v4, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v4, v4, Lorg/tukaani/xz/lz/Matches;->dist:[I

    iget-object v8, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v8, v8, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v10, v15, -0x1

    aput v10, v4, v8

    .line 172
    iget-object v4, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v8, v4, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v4, Lorg/tukaani/xz/lz/Matches;->count:I

    .line 174
    if-lt v9, v3, :cond_b

    .line 175
    iget-object v4, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    iget-object v8, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aget v8, v8, v19

    aput v8, v4, v12

    .line 176
    iget-object v4, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    iget-object v8, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    add-int/lit8 v10, v19, 0x1

    aget v8, v8, v10

    aput v8, v4, v11

    .line 177
    iget-object v4, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    return-object v4

    .line 174
    :cond_b
    move v8, v2

    .line 182
    .end local v2    # "lenBest":I
    .restart local v8    # "lenBest":I
    :cond_c
    iget-object v2, v0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v4, v0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/2addr v4, v9

    sub-int/2addr v4, v15

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    iget-object v4, v0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v10, v0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/2addr v10, v9

    aget-byte v4, v4, v10

    and-int/lit16 v4, v4, 0xff

    if-ge v2, v4, :cond_d

    .line 184
    iget-object v2, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aput v7, v2, v12

    .line 185
    add-int/lit8 v2, v19, 0x1

    .line 186
    .end local v12    # "ptr1":I
    .local v2, "ptr1":I
    iget-object v4, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aget v4, v4, v2

    .line 187
    .end local v7    # "currentMatch":I
    .local v4, "currentMatch":I
    move v7, v9

    move v12, v2

    move v14, v7

    move v7, v4

    .end local v14    # "len1":I
    .local v7, "len1":I
    goto :goto_3

    .line 189
    .end local v2    # "ptr1":I
    .end local v4    # "currentMatch":I
    .local v7, "currentMatch":I
    .restart local v12    # "ptr1":I
    .restart local v14    # "len1":I
    :cond_d
    iget-object v2, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aput v7, v2, v11

    .line 190
    move/from16 v2, v19

    .line 191
    .end local v11    # "ptr0":I
    .local v2, "ptr0":I
    iget-object v4, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aget v4, v4, v2

    .line 192
    .end local v7    # "currentMatch":I
    .restart local v4    # "currentMatch":I
    move v7, v9

    move v11, v2

    move v13, v7

    move v7, v4

    .line 194
    .end local v2    # "ptr0":I
    .end local v4    # "currentMatch":I
    .end local v9    # "len":I
    .end local v15    # "delta":I
    .end local v19    # "pair":I
    .restart local v7    # "currentMatch":I
    .restart local v11    # "ptr0":I
    :goto_3
    move/from16 v9, v16

    move/from16 v2, v17

    move/from16 v10, v18

    move/from16 v4, v20

    goto/16 :goto_1

    .line 153
    .end local v20    # "avail":I
    .local v4, "avail":I
    .restart local v15    # "delta":I
    :cond_e
    move/from16 v17, v2

    move/from16 v20, v4

    .line 154
    .end local v4    # "avail":I
    .restart local v20    # "avail":I
    :goto_4
    iget-object v2, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aput v17, v2, v11

    .line 155
    iget-object v2, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aput v17, v2, v12

    .line 156
    iget-object v2, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    return-object v2
.end method

.method public putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V
    .locals 1
    .param p1, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 50
    iget-object v0, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    invoke-virtual {p1, v0}, Lorg/tukaani/xz/ArrayCache;->putArray([I)V

    .line 51
    iget-object v0, p0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v0, p1}, Lorg/tukaani/xz/lz/Hash234;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    .line 52
    invoke-super {p0, p1}, Lorg/tukaani/xz/lz/LZEncoder;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    .line 53
    return-void
.end method

.method public skip(I)V
    .locals 5
    .param p1, "len"    # I

    .line 247
    nop

    :goto_0
    add-int/lit8 v0, p1, -0x1

    .end local p1    # "len":I
    .local v0, "len":I
    if-lez p1, :cond_2

    .line 248
    iget p1, p0, Lorg/tukaani/xz/lz/LZEncoder;->niceLen:I

    .line 249
    .local p1, "niceLenLimit":I
    invoke-direct {p0}, Lorg/tukaani/xz/lz/BT4;->movePos()I

    move-result v1

    .line 251
    .local v1, "avail":I
    if-ge v1, p1, :cond_1

    .line 252
    if-nez v1, :cond_0

    .line 253
    goto :goto_1

    .line 255
    :cond_0
    move p1, v1

    .line 258
    :cond_1
    iget-object v2, p0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget-object v3, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v4, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    invoke-virtual {v2, v3, v4}, Lorg/tukaani/xz/lz/Hash234;->calcHashes([BI)V

    .line 259
    iget-object v2, p0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v2}, Lorg/tukaani/xz/lz/Hash234;->getHash4Pos()I

    move-result v2

    .line 260
    .local v2, "currentMatch":I
    iget-object v3, p0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget v4, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    invoke-virtual {v3, v4}, Lorg/tukaani/xz/lz/Hash234;->updateTables(I)V

    .line 262
    invoke-direct {p0, p1, v2}, Lorg/tukaani/xz/lz/BT4;->skip(II)V

    .line 263
    .end local v1    # "avail":I
    .end local v2    # "currentMatch":I
    .end local p1    # "niceLenLimit":I
    nop

    .line 247
    :goto_1
    move p1, v0

    goto :goto_0

    .line 264
    :cond_2
    return-void
.end method
