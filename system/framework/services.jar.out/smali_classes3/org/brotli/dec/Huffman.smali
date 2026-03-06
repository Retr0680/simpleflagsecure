.class final Lorg/brotli/dec/Huffman;
.super Ljava/lang/Object;
.source "Huffman.java"


# static fields
.field private static final MAX_LENGTH:I = 0xf


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildHuffmanTable([III[II)I
    .locals 23
    .param p0, "tableGroup"    # [I
    .param p1, "tableIdx"    # I
    .param p2, "rootBits"    # I
    .param p3, "codeLengths"    # [I
    .param p4, "codeLengthsSize"    # I

    .line 66
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    aget v3, v0, p1

    .line 68
    .local v3, "tableOffset":I
    new-array v4, v2, [I

    .line 70
    .local v4, "sorted":[I
    const/16 v5, 0x10

    new-array v6, v5, [I

    .line 71
    .local v6, "count":[I
    new-array v7, v5, [I

    .line 75
    .local v7, "offset":[I
    const/4 v8, 0x0

    .local v8, "symbol":I
    :goto_0
    const/4 v9, 0x1

    if-ge v8, v2, :cond_0

    .line 76
    aget v10, p3, v8

    aget v11, v6, v10

    add-int/2addr v11, v9

    aput v11, v6, v10

    .line 75
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 80
    :cond_0
    const/4 v10, 0x0

    aput v10, v7, v9

    .line 81
    const/4 v11, 0x1

    .local v11, "len":I
    :goto_1
    const/16 v12, 0xf

    if-ge v11, v12, :cond_1

    .line 82
    add-int/lit8 v12, v11, 0x1

    aget v13, v7, v11

    aget v14, v6, v11

    add-int/2addr v13, v14

    aput v13, v7, v12

    .line 81
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 86
    .end local v11    # "len":I
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v2, :cond_3

    .line 87
    aget v11, p3, v8

    if-eqz v11, :cond_2

    .line 88
    aget v11, p3, v8

    aget v13, v7, v11

    add-int/lit8 v14, v13, 0x1

    aput v14, v7, v11

    aput v8, v4, v13

    .line 86
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 92
    :cond_3
    move/from16 v11, p2

    .line 93
    .local v11, "tableBits":I
    shl-int v13, v9, v11

    .line 94
    .local v13, "tableSize":I
    move v14, v13

    .line 97
    .local v14, "totalSize":I
    aget v15, v7, v12

    if-ne v15, v9, :cond_5

    .line 98
    const/4 v5, 0x0

    .local v5, "key":I
    :goto_3
    if-ge v5, v14, :cond_4

    .line 99
    add-int v9, v3, v5

    aget v12, v4, v10

    aput v12, v0, v9

    .line 98
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 101
    :cond_4
    return v14

    .line 105
    .end local v5    # "key":I
    :cond_5
    const/4 v10, 0x0

    .line 106
    .local v10, "key":I
    const/4 v8, 0x0

    .line 107
    const/4 v15, 0x1

    .local v15, "len":I
    const/16 v16, 0x2

    move/from16 v22, v16

    move/from16 v16, v5

    move/from16 v5, v22

    .local v5, "step":I
    :goto_4
    if-gt v15, v1, :cond_7

    .line 108
    :goto_5
    aget v17, v6, v15

    if-lez v17, :cond_6

    .line 109
    move/from16 v17, v9

    add-int v9, v3, v10

    shl-int/lit8 v18, v15, 0x10

    add-int/lit8 v19, v8, 0x1

    .end local v8    # "symbol":I
    .local v19, "symbol":I
    aget v8, v4, v8

    or-int v8, v18, v8

    invoke-static {v0, v9, v5, v13, v8}, Lorg/brotli/dec/Huffman;->replicateValue([IIIII)V

    .line 111
    invoke-static {v10, v15}, Lorg/brotli/dec/Huffman;->getNextKey(II)I

    move-result v10

    .line 108
    aget v8, v6, v15

    add-int/lit8 v8, v8, -0x1

    aput v8, v6, v15

    move/from16 v9, v17

    move/from16 v8, v19

    goto :goto_5

    .line 107
    .end local v19    # "symbol":I
    .restart local v8    # "symbol":I
    :cond_6
    move/from16 v17, v9

    add-int/lit8 v15, v15, 0x1

    shl-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    move/from16 v17, v9

    .line 116
    .end local v5    # "step":I
    .end local v15    # "len":I
    add-int/lit8 v5, v14, -0x1

    .line 117
    .local v5, "mask":I
    const/4 v9, -0x1

    .line 118
    .local v9, "low":I
    move v15, v3

    .line 119
    .local v15, "currentOffset":I
    add-int/lit8 v18, v1, 0x1

    .local v18, "len":I
    const/16 v19, 0x2

    move/from16 v2, v18

    move/from16 v18, v3

    move/from16 v3, v19

    .local v2, "len":I
    .local v3, "step":I
    .local v18, "tableOffset":I
    :goto_6
    nop

    if-gt v2, v12, :cond_a

    .line 120
    :goto_7
    aget v19, v6, v2

    if-lez v19, :cond_9

    .line 121
    and-int v12, v10, v5

    if-eq v12, v9, :cond_8

    .line 122
    add-int/2addr v15, v13

    .line 123
    invoke-static {v6, v2, v1}, Lorg/brotli/dec/Huffman;->nextTableBitSize([III)I

    move-result v11

    .line 124
    shl-int v13, v17, v11

    .line 125
    add-int/2addr v14, v13

    .line 126
    and-int v9, v10, v5

    .line 127
    add-int v12, v18, v9

    add-int v20, v11, v1

    shl-int/lit8 v20, v20, 0x10

    sub-int v21, v15, v18

    sub-int v21, v21, v9

    or-int v20, v20, v21

    aput v20, v0, v12

    .line 130
    :cond_8
    shr-int v12, v10, v1

    add-int/2addr v12, v15

    sub-int v20, v2, v1

    shl-int/lit8 v20, v20, 0x10

    add-int/lit8 v21, v8, 0x1

    .end local v8    # "symbol":I
    .local v21, "symbol":I
    aget v8, v4, v8

    or-int v8, v20, v8

    invoke-static {v0, v12, v3, v13, v8}, Lorg/brotli/dec/Huffman;->replicateValue([IIIII)V

    .line 132
    invoke-static {v10, v2}, Lorg/brotli/dec/Huffman;->getNextKey(II)I

    move-result v10

    .line 120
    aget v8, v6, v2

    add-int/lit8 v8, v8, -0x1

    aput v8, v6, v2

    move/from16 v8, v21

    const/16 v12, 0xf

    goto :goto_7

    .line 119
    .end local v21    # "symbol":I
    .restart local v8    # "symbol":I
    :cond_9
    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v3, v3, 0x1

    const/16 v12, 0xf

    goto :goto_6

    .line 135
    .end local v2    # "len":I
    .end local v3    # "step":I
    :cond_a
    return v14
.end method

.method private static getNextKey(II)I
    .locals 2
    .param p0, "key"    # I
    .param p1, "len"    # I

    .line 22
    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 23
    .local v0, "step":I
    :goto_0
    and-int v1, p0, v0

    if-eqz v1, :cond_0

    .line 24
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    :cond_0
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, p0

    add-int/2addr v1, v0

    return v1
.end method

.method private static nextTableBitSize([III)I
    .locals 2
    .param p0, "count"    # [I
    .param p1, "len"    # I
    .param p2, "rootBits"    # I

    .line 47
    const/4 v0, 0x1

    sub-int v1, p1, p2

    shl-int/2addr v0, v1

    .line 48
    .local v0, "left":I
    :goto_0
    const/16 v1, 0xf

    if-ge p1, v1, :cond_1

    .line 49
    aget v1, p0, p1

    sub-int/2addr v0, v1

    .line 50
    if-gtz v0, :cond_0

    .line 51
    goto :goto_1

    .line 53
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 54
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_1
    :goto_1
    sub-int v1, p1, p2

    return v1
.end method

.method private static replicateValue([IIIII)V
    .locals 1
    .param p0, "table"    # [I
    .param p1, "offset"    # I
    .param p2, "step"    # I
    .param p3, "end"    # I
    .param p4, "item"    # I

    .line 36
    nop

    :cond_0
    sub-int/2addr p3, p2

    .line 37
    add-int v0, p1, p3

    aput p4, p0, v0

    .line 38
    if-gtz p3, :cond_0

    .line 39
    return-void
.end method
