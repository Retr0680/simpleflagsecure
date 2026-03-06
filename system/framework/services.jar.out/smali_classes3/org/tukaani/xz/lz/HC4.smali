.class final Lorg/tukaani/xz/lz/HC4;
.super Lorg/tukaani/xz/lz/LZEncoder;
.source "HC4.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final chain:[I

.field private cyclicPos:I

.field private final cyclicSize:I

.field private final depthLimit:I

.field private final hash:Lorg/tukaani/xz/lz/Hash234;

.field private lzPos:I

.field private final matches:Lorg/tukaani/xz/lz/Matches;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 15
    return-void
.end method

.method constructor <init>(IIIIIILorg/tukaani/xz/ArrayCache;)V
    .locals 7
    .param p1, "dictSize"    # I
    .param p2, "beforeSizeMin"    # I
    .param p3, "readAheadMax"    # I
    .param p4, "niceLen"    # I
    .param p5, "matchLenMax"    # I
    .param p6, "depthLimit"    # I
    .param p7, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 39
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

    iput p1, v0, Lorg/tukaani/xz/lz/HC4;->cyclicPos:I

    .line 42
    new-instance p1, Lorg/tukaani/xz/lz/Hash234;

    invoke-direct {p1, v1, v6}, Lorg/tukaani/xz/lz/Hash234;-><init>(ILorg/tukaani/xz/ArrayCache;)V

    iput-object p1, v0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    .line 45
    add-int/lit8 p1, v1, 0x1

    iput p1, v0, Lorg/tukaani/xz/lz/HC4;->cyclicSize:I

    .line 46
    iget p1, v0, Lorg/tukaani/xz/lz/HC4;->cyclicSize:I

    const/4 p2, 0x0

    invoke-virtual {v6, p1, p2}, Lorg/tukaani/xz/ArrayCache;->getIntArray(IZ)[I

    move-result-object p1

    iput-object p1, v0, Lorg/tukaani/xz/lz/HC4;->chain:[I

    .line 47
    iget p1, v0, Lorg/tukaani/xz/lz/HC4;->cyclicSize:I

    iput p1, v0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    .line 52
    new-instance p1, Lorg/tukaani/xz/lz/Matches;

    add-int/lit8 p4, v4, -0x1

    invoke-direct {p1, p4}, Lorg/tukaani/xz/lz/Matches;-><init>(I)V

    iput-object p1, v0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    .line 57
    if-lez p6, :cond_0

    move p4, p6

    goto :goto_0

    :cond_0
    div-int/lit8 p4, v4, 0x4

    add-int/lit8 p4, p4, 0x4

    :goto_0
    iput p4, v0, Lorg/tukaani/xz/lz/HC4;->depthLimit:I

    .line 58
    return-void
.end method

.method static getMemoryUsage(I)I
    .locals 2
    .param p0, "dictSize"    # I

    .line 29
    invoke-static {p0}, Lorg/tukaani/xz/lz/Hash234;->getMemoryUsage(I)I

    move-result v0

    div-int/lit16 v1, p0, 0x100

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private movePos()I
    .locals 4

    .line 73
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v0}, Lorg/tukaani/xz/lz/LZEncoder;->movePos(II)I

    move-result v0

    .line 75
    .local v0, "avail":I
    if-eqz v0, :cond_1

    .line 76
    iget v1, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 77
    iget v1, p0, Lorg/tukaani/xz/lz/HC4;->cyclicSize:I

    sub-int/2addr v2, v1

    .line 78
    .local v2, "normalizationOffset":I
    iget-object v1, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v1, v2}, Lorg/tukaani/xz/lz/Hash234;->normalize(I)V

    .line 79
    iget-object v1, p0, Lorg/tukaani/xz/lz/HC4;->chain:[I

    iget v3, p0, Lorg/tukaani/xz/lz/HC4;->cyclicSize:I

    invoke-static {v1, v3, v2}, Lorg/tukaani/xz/lz/LZEncoder;->normalize([III)V

    .line 80
    iget v1, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    .line 83
    .end local v2    # "normalizationOffset":I
    :cond_0
    iget v1, p0, Lorg/tukaani/xz/lz/HC4;->cyclicPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/tukaani/xz/lz/HC4;->cyclicPos:I

    iget v2, p0, Lorg/tukaani/xz/lz/HC4;->cyclicSize:I

    if-ne v1, v2, :cond_1

    .line 84
    const/4 v1, 0x0

    iput v1, p0, Lorg/tukaani/xz/lz/HC4;->cyclicPos:I

    .line 87
    :cond_1
    return v0
.end method


# virtual methods
.method public getMatches()Lorg/tukaani/xz/lz/Matches;
    .locals 15

    .line 91
    iget-object v0, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    const/4 v1, 0x0

    iput v1, v0, Lorg/tukaani/xz/lz/Matches;->count:I

    .line 92
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->matchLenMax:I

    .line 93
    .local v0, "matchLenLimit":I
    iget v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->niceLen:I

    .line 94
    .local v2, "niceLenLimit":I
    invoke-direct {p0}, Lorg/tukaani/xz/lz/HC4;->movePos()I

    move-result v3

    .line 96
    .local v3, "avail":I
    if-ge v3, v0, :cond_1

    .line 97
    if-nez v3, :cond_0

    .line 98
    iget-object v1, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    return-object v1

    .line 100
    :cond_0
    move v0, v3

    .line 101
    if-le v2, v3, :cond_1

    .line 102
    move v2, v3

    .line 105
    :cond_1
    iget-object v4, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget-object v5, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v6, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    invoke-virtual {v4, v5, v6}, Lorg/tukaani/xz/lz/Hash234;->calcHashes([BI)V

    .line 106
    iget v4, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    iget-object v5, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v5}, Lorg/tukaani/xz/lz/Hash234;->getHash2Pos()I

    move-result v5

    sub-int/2addr v4, v5

    .line 107
    .local v4, "delta2":I
    iget v5, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    iget-object v6, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v6}, Lorg/tukaani/xz/lz/Hash234;->getHash3Pos()I

    move-result v6

    sub-int/2addr v5, v6

    .line 108
    .local v5, "delta3":I
    iget-object v6, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v6}, Lorg/tukaani/xz/lz/Hash234;->getHash4Pos()I

    move-result v6

    .line 109
    .local v6, "currentMatch":I
    iget-object v7, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget v8, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    invoke-virtual {v7, v8}, Lorg/tukaani/xz/lz/Hash234;->updateTables(I)V

    .line 111
    iget-object v7, p0, Lorg/tukaani/xz/lz/HC4;->chain:[I

    iget v8, p0, Lorg/tukaani/xz/lz/HC4;->cyclicPos:I

    aput v6, v7, v8

    .line 113
    const/4 v7, 0x0

    .line 119
    .local v7, "lenBest":I
    iget v8, p0, Lorg/tukaani/xz/lz/HC4;->cyclicSize:I

    const/4 v9, 0x1

    if-ge v4, v8, :cond_2

    iget-object v8, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v10, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int/2addr v10, v4

    aget-byte v8, v8, v10

    iget-object v10, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v11, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    aget-byte v10, v10, v11

    if-ne v8, v10, :cond_2

    .line 120
    const/4 v7, 0x2

    .line 121
    iget-object v8, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v8, v8, Lorg/tukaani/xz/lz/Matches;->len:[I

    const/4 v10, 0x2

    aput v10, v8, v1

    .line 122
    iget-object v8, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v8, v8, Lorg/tukaani/xz/lz/Matches;->dist:[I

    add-int/lit8 v10, v4, -0x1

    aput v10, v8, v1

    .line 123
    iget-object v8, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iput v9, v8, Lorg/tukaani/xz/lz/Matches;->count:I

    .line 130
    :cond_2
    if-eq v4, v5, :cond_3

    iget v8, p0, Lorg/tukaani/xz/lz/HC4;->cyclicSize:I

    if-ge v5, v8, :cond_3

    iget-object v8, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v10, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int/2addr v10, v5

    aget-byte v8, v8, v10

    iget-object v10, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v11, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    aget-byte v10, v10, v11

    if-ne v8, v10, :cond_3

    .line 132
    const/4 v7, 0x3

    .line 133
    iget-object v8, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v8, v8, Lorg/tukaani/xz/lz/Matches;->dist:[I

    iget-object v10, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v11, v10, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v10, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v10, v5, -0x1

    aput v10, v8, v11

    .line 134
    move v4, v5

    .line 138
    :cond_3
    iget-object v8, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v8, v8, Lorg/tukaani/xz/lz/Matches;->count:I

    nop

    if-lez v8, :cond_5

    .line 139
    :goto_0
    if-ge v7, v0, :cond_4

    iget-object v8, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v10, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/2addr v10, v7

    sub-int/2addr v10, v4

    aget-byte v8, v8, v10

    iget-object v10, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v11, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/2addr v11, v7

    aget-byte v10, v10, v11

    if-ne v8, v10, :cond_4

    .line 141
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 143
    :cond_4
    iget-object v8, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v8, v8, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v10, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v10, v10, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v10, v9

    aput v7, v8, v10

    .line 147
    if-lt v7, v2, :cond_5

    .line 148
    iget-object v1, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    return-object v1

    .line 153
    :cond_5
    const/4 v8, 0x3

    if-ge v7, v8, :cond_6

    .line 154
    const/4 v7, 0x3

    .line 156
    :cond_6
    iget v8, p0, Lorg/tukaani/xz/lz/HC4;->depthLimit:I

    .line 159
    .local v8, "depth":I
    :goto_1
    iget v10, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    sub-int/2addr v10, v6

    .line 164
    .local v10, "delta":I
    add-int/lit8 v11, v8, -0x1

    .end local v8    # "depth":I
    .local v11, "depth":I
    if-eqz v8, :cond_7

    iget v8, p0, Lorg/tukaani/xz/lz/HC4;->cyclicSize:I

    if-lt v10, v8, :cond_8

    :cond_7
    goto/16 :goto_3

    .line 167
    :cond_8
    iget-object v8, p0, Lorg/tukaani/xz/lz/HC4;->chain:[I

    iget v12, p0, Lorg/tukaani/xz/lz/HC4;->cyclicPos:I

    sub-int/2addr v12, v10

    .line 168
    iget v13, p0, Lorg/tukaani/xz/lz/HC4;->cyclicPos:I

    if-le v10, v13, :cond_9

    iget v13, p0, Lorg/tukaani/xz/lz/HC4;->cyclicSize:I

    goto :goto_2

    :cond_9
    move v13, v1

    :goto_2
    add-int/2addr v12, v13

    aget v6, v8, v12

    .line 173
    iget-object v8, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v12, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/2addr v12, v7

    sub-int/2addr v12, v10

    aget-byte v8, v8, v12

    iget-object v12, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v13, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/2addr v13, v7

    aget-byte v12, v12, v13

    if-ne v8, v12, :cond_c

    iget-object v8, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v12, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int/2addr v12, v10

    aget-byte v8, v8, v12

    iget-object v12, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v13, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    aget-byte v12, v12, v13

    if-ne v8, v12, :cond_c

    .line 176
    const/4 v8, 0x0

    .line 177
    .local v8, "len":I
    :cond_a
    add-int/2addr v8, v9

    if-ge v8, v0, :cond_b

    .line 178
    iget-object v12, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v13, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/2addr v13, v8

    sub-int/2addr v13, v10

    aget-byte v12, v12, v13

    iget-object v13, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v14, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/2addr v14, v8

    aget-byte v13, v13, v14

    if-eq v12, v13, :cond_a

    .line 179
    nop

    .line 183
    :cond_b
    if-le v8, v7, :cond_c

    .line 184
    move v7, v8

    .line 185
    iget-object v12, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v12, v12, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v13, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v13, v13, Lorg/tukaani/xz/lz/Matches;->count:I

    aput v8, v12, v13

    .line 186
    iget-object v12, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v12, v12, Lorg/tukaani/xz/lz/Matches;->dist:[I

    iget-object v13, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v13, v13, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v14, v10, -0x1

    aput v14, v12, v13

    .line 187
    iget-object v12, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v13, v12, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/2addr v13, v9

    iput v13, v12, Lorg/tukaani/xz/lz/Matches;->count:I

    .line 191
    if-lt v8, v2, :cond_c

    .line 192
    iget-object v1, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    return-object v1

    .line 195
    .end local v8    # "len":I
    .end local v10    # "delta":I
    :cond_c
    move v8, v11

    goto :goto_1

    .line 165
    .restart local v10    # "delta":I
    :goto_3
    iget-object v1, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    return-object v1
.end method

.method public putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V
    .locals 1
    .param p1, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 61
    iget-object v0, p0, Lorg/tukaani/xz/lz/HC4;->chain:[I

    invoke-virtual {p1, v0}, Lorg/tukaani/xz/ArrayCache;->putArray([I)V

    .line 62
    iget-object v0, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v0, p1}, Lorg/tukaani/xz/lz/Hash234;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    .line 63
    invoke-super {p0, p1}, Lorg/tukaani/xz/lz/LZEncoder;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    .line 64
    return-void
.end method

.method public skip(I)V
    .locals 3
    .param p1, "len"    # I

    .line 199
    nop

    .line 201
    :goto_0
    add-int/lit8 v0, p1, -0x1

    .end local p1    # "len":I
    .local v0, "len":I
    if-lez p1, :cond_1

    .line 202
    invoke-direct {p0}, Lorg/tukaani/xz/lz/HC4;->movePos()I

    move-result p1

    if-eqz p1, :cond_0

    .line 204
    iget-object p1, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget-object v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    invoke-virtual {p1, v1, v2}, Lorg/tukaani/xz/lz/Hash234;->calcHashes([BI)V

    .line 205
    iget-object p1, p0, Lorg/tukaani/xz/lz/HC4;->chain:[I

    iget v1, p0, Lorg/tukaani/xz/lz/HC4;->cyclicPos:I

    iget-object v2, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v2}, Lorg/tukaani/xz/lz/Hash234;->getHash4Pos()I

    move-result v2

    aput v2, p1, v1

    .line 206
    iget-object p1, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget v1, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    invoke-virtual {p1, v1}, Lorg/tukaani/xz/lz/Hash234;->updateTables(I)V

    .line 201
    :cond_0
    move p1, v0

    goto :goto_0

    .line 209
    :cond_1
    return-void
.end method
