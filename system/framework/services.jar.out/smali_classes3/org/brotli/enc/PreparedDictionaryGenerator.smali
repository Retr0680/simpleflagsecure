.class public Lorg/brotli/enc/PreparedDictionaryGenerator;
.super Ljava/lang/Object;
.source "PreparedDictionaryGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/brotli/enc/PreparedDictionaryGenerator$PreparedDictionaryImpl;
    }
.end annotation


# static fields
.field private static final HASH_MULTIPLIER:J = 0x1fe35a7bd3579bd3L

.field private static final MAGIC:I = -0x21431220


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generate(Ljava/nio/ByteBuffer;)Lorg/brotli/enc/PreparedDictionary;
    .locals 4
    .param p0, "src"    # Ljava/nio/ByteBuffer;

    .line 40
    const/16 v0, 0x28

    const/4 v1, 0x5

    const/16 v2, 0x11

    const/4 v3, 0x3

    invoke-static {p0, v2, v3, v0, v1}, Lorg/brotli/enc/PreparedDictionaryGenerator;->generate(Ljava/nio/ByteBuffer;IIII)Lorg/brotli/enc/PreparedDictionary;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Ljava/nio/ByteBuffer;IIII)Lorg/brotli/enc/PreparedDictionary;
    .locals 38
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "bucketBits"    # I
    .param p2, "slotBits"    # I
    .param p3, "hashBits"    # I
    .param p4, "blockBits"    # I

    .line 45
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 46
    const/16 v5, 0xc

    if-gt v4, v5, :cond_11

    .line 49
    const/16 v5, 0x18

    if-ge v1, v5, :cond_10

    .line 52
    sub-int v5, v1, v2

    const/16 v6, 0x10

    if-ge v5, v6, :cond_f

    .line 55
    const/4 v5, 0x1

    shl-int v6, v5, v4

    .line 56
    .local v6, "bucketLimit":I
    shl-int v7, v5, v1

    .line 57
    .local v7, "numBuckets":I
    shl-int v8, v5, v2

    .line 58
    .local v8, "numSlots":I
    add-int/lit8 v9, v8, -0x1

    .line 59
    .local v9, "slotMask":I
    rsub-int/lit8 v10, v1, 0x40

    .line 60
    .local v10, "hashShift":I
    const-wide/16 v11, -0x1

    rsub-int/lit8 v13, v3, 0x40

    ushr-long/2addr v11, v13

    .line 61
    .local v11, "hashMask":J
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v13

    .line 62
    .local v13, "sourceSize":I
    const/16 v14, 0x8

    if-lt v13, v14, :cond_e

    .line 67
    new-array v15, v7, [S

    .line 68
    .local v15, "num":[S
    move/from16 v16, v14

    new-array v14, v7, [I

    .line 69
    .local v14, "bucketHeads":[I
    move/from16 v17, v5

    new-array v5, v13, [I

    .line 71
    .local v5, "nextBucket":[I
    const-wide/16 v18, 0x0

    .line 72
    .local v18, "accumulator":J
    const/16 v20, 0x0

    move/from16 v4, v20

    .local v4, "i":I
    :goto_0
    const-wide/16 v20, 0xff

    move-object/from16 v22, v5

    .end local v5    # "nextBucket":[I
    .local v22, "nextBucket":[I
    const/4 v5, 0x7

    if-ge v4, v5, :cond_0

    .line 73
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    move/from16 v23, v4

    .end local v4    # "i":I
    .local v23, "i":I
    int-to-long v4, v5

    and-long v4, v4, v20

    mul-int/lit8 v20, v23, 0x8

    shl-long v4, v4, v20

    or-long v18, v18, v4

    .line 72
    add-int/lit8 v4, v23, 0x1

    move-object/from16 v5, v22

    .end local v23    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    :cond_0
    move/from16 v23, v4

    .line 75
    .end local v4    # "i":I
    shl-long v4, v18, v16

    .line 77
    .end local v18    # "accumulator":J
    .local v4, "accumulator":J
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move-wide/from16 v23, v4

    .end local v4    # "accumulator":J
    .local v23, "accumulator":J
    add-int/lit8 v4, v18, 0x7

    if-ge v4, v13, :cond_3

    .line 78
    ushr-long v25, v23, v16

    add-int/lit8 v4, v18, 0x7

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    move/from16 v19, v6

    .end local v6    # "bucketLimit":I
    .local v19, "bucketLimit":I
    int-to-long v5, v4

    and-long v4, v5, v20

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    or-long v4, v25, v4

    .line 79
    .end local v23    # "accumulator":J
    .restart local v4    # "accumulator":J
    and-long v23, v4, v11

    const-wide v25, 0x1fe35a7bd3579bd3L    # 4.510769962630363E-155

    mul-long v23, v23, v25

    .line 80
    .local v23, "h":J
    move-wide/from16 v25, v4

    .end local v4    # "accumulator":J
    .local v25, "accumulator":J
    ushr-long v4, v23, v10

    long-to-int v4, v4

    .line 81
    .local v4, "key":I
    aget-short v5, v15, v4

    .line 82
    .local v5, "count":I
    if-nez v5, :cond_1

    const/16 v27, -0x1

    goto :goto_2

    :cond_1
    aget v6, v14, v4

    move/from16 v27, v6

    :goto_2
    aput v27, v22, v18

    .line 83
    aput v18, v14, v4

    .line 84
    add-int/lit8 v5, v5, 0x1

    .line 85
    move/from16 v6, v19

    .end local v19    # "bucketLimit":I
    .restart local v6    # "bucketLimit":I
    if-le v5, v6, :cond_2

    .line 86
    move v5, v6

    .line 88
    :cond_2
    move/from16 v19, v4

    .end local v4    # "key":I
    .local v19, "key":I
    int-to-short v4, v5

    aput-short v4, v15, v19

    .line 77
    .end local v5    # "count":I
    .end local v19    # "key":I
    .end local v23    # "h":J
    add-int/lit8 v18, v18, 0x1

    move-wide/from16 v4, v25

    goto :goto_1

    .end local v25    # "accumulator":J
    .local v23, "accumulator":J
    :cond_3
    nop

    .line 92
    .end local v18    # "i":I
    new-array v4, v8, [I

    .line 93
    .local v4, "slotLimit":[I
    new-array v5, v8, [I

    .line 94
    .local v5, "slotSize":[I
    const/16 v16, 0x0

    .line 95
    .local v16, "totalItems":I
    const/16 v18, 0x0

    move-object/from16 v19, v4

    move/from16 v4, v16

    move-object/from16 v16, v5

    move/from16 v5, v18

    .local v4, "totalItems":I
    .local v5, "i":I
    .local v16, "slotSize":[I
    .local v19, "slotLimit":[I
    :goto_3
    if-ge v5, v8, :cond_8

    .line 96
    const/16 v18, 0x0

    .line 97
    .local v18, "overflow":Z
    aput v6, v19, v5

    .line 99
    :goto_4
    const/16 v18, 0x0

    .line 100
    move/from16 v20, v5

    .end local v5    # "i":I
    .local v20, "i":I
    aget v5, v19, v20

    .line 101
    .local v5, "limit":I
    const/16 v21, 0x0

    .line 102
    .local v21, "count":I
    move/from16 v25, v20

    move/from16 v26, v6

    move/from16 v6, v21

    move/from16 v21, v9

    move/from16 v9, v25

    .local v6, "count":I
    .local v9, "j":I
    .local v21, "slotMask":I
    .local v26, "bucketLimit":I
    :goto_5
    if-ge v9, v7, :cond_6

    .line 103
    move/from16 v25, v9

    .end local v9    # "j":I
    .local v25, "j":I
    aget-short v9, v15, v25

    .line 106
    .local v9, "size":I
    move/from16 v28, v10

    .end local v10    # "hashShift":I
    .local v28, "hashShift":I
    const v10, 0xffff

    if-lt v6, v10, :cond_4

    .line 107
    const/4 v10, 0x1

    .line 108
    .end local v18    # "overflow":Z
    .local v10, "overflow":Z
    move/from16 v18, v10

    goto :goto_6

    .line 110
    .end local v10    # "overflow":Z
    .restart local v18    # "overflow":Z
    :cond_4
    if-le v9, v5, :cond_5

    .line 111
    move v9, v5

    .line 113
    :cond_5
    add-int/2addr v6, v9

    .line 102
    .end local v9    # "size":I
    add-int v9, v25, v8

    move/from16 v10, v28

    .end local v25    # "j":I
    .local v9, "j":I
    goto :goto_5

    .end local v28    # "hashShift":I
    .local v10, "hashShift":I
    :cond_6
    move/from16 v25, v9

    move/from16 v28, v10

    .line 115
    .end local v9    # "j":I
    .end local v10    # "hashShift":I
    .restart local v28    # "hashShift":I
    :goto_6
    if-nez v18, :cond_7

    .line 116
    aput v6, v16, v20

    .line 117
    add-int/2addr v4, v6

    .line 118
    nop

    .line 95
    .end local v5    # "limit":I
    .end local v6    # "count":I
    .end local v18    # "overflow":Z
    add-int/lit8 v5, v20, 0x1

    move/from16 v9, v21

    move/from16 v6, v26

    move/from16 v10, v28

    .end local v20    # "i":I
    .local v5, "i":I
    goto :goto_3

    .line 120
    .local v5, "limit":I
    .restart local v6    # "count":I
    .restart local v18    # "overflow":Z
    .restart local v20    # "i":I
    :cond_7
    aget v9, v19, v20

    add-int/lit8 v9, v9, -0x1

    aput v9, v19, v20

    .line 121
    .end local v5    # "limit":I
    .end local v6    # "count":I
    move/from16 v5, v20

    move/from16 v9, v21

    move/from16 v6, v26

    move/from16 v10, v28

    goto :goto_4

    .line 95
    .end local v18    # "overflow":Z
    .end local v20    # "i":I
    .end local v21    # "slotMask":I
    .end local v26    # "bucketLimit":I
    .end local v28    # "hashShift":I
    .local v5, "i":I
    .local v6, "bucketLimit":I
    .local v9, "slotMask":I
    .restart local v10    # "hashShift":I
    :cond_8
    move/from16 v20, v5

    move/from16 v26, v6

    move/from16 v21, v9

    move/from16 v28, v10

    .line 125
    .end local v5    # "i":I
    .end local v6    # "bucketLimit":I
    .end local v9    # "slotMask":I
    .end local v10    # "hashShift":I
    .restart local v21    # "slotMask":I
    .restart local v26    # "bucketLimit":I
    .restart local v28    # "hashShift":I
    const/16 v5, 0x18

    .line 126
    .local v5, "part0":I
    mul-int/lit8 v6, v8, 0x4

    .line 127
    .local v6, "part1":I
    mul-int/lit8 v9, v7, 0x2

    .line 128
    .local v9, "part2":I
    mul-int/lit8 v10, v4, 0x4

    .line 129
    .local v10, "part3":I
    add-int v18, v5, v6

    add-int v18, v18, v9

    add-int v18, v18, v10

    add-int v18, v18, v13

    .line 130
    .local v18, "allocSize":I
    move/from16 v20, v5

    .end local v5    # "part0":I
    .local v20, "part0":I
    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 131
    .local v5, "flat":Ljava/nio/ByteBuffer;
    move/from16 v25, v6

    .end local v6    # "part1":I
    .local v25, "part1":I
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 132
    .local v6, "pointer":Ljava/nio/ByteBuffer;
    move/from16 v29, v9

    .end local v9    # "part2":I
    .local v29, "part2":I
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 134
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v9

    .line 135
    .local v9, "struct":Ljava/nio/IntBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v30

    move/from16 v31, v10

    .end local v10    # "part3":I
    .local v31, "part3":I
    add-int v10, v30, v20

    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 136
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v10

    .line 137
    .local v10, "slotOffsets":Ljava/nio/IntBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v30

    move-wide/from16 v32, v11

    .end local v11    # "hashMask":J
    .local v32, "hashMask":J
    add-int v11, v30, v25

    invoke-virtual {v6, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 138
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v11

    .line 139
    .local v11, "heads":Ljava/nio/ShortBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    add-int v12, v12, v29

    invoke-virtual {v6, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 140
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v12

    .line 141
    .local v12, "items":Ljava/nio/IntBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v30

    move-object/from16 v34, v14

    .end local v14    # "bucketHeads":[I
    .local v34, "bucketHeads":[I
    add-int v14, v30, v31

    invoke-virtual {v6, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 142
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 144
    .local v14, "sourceCopy":Ljava/nio/ByteBuffer;
    move-object/from16 v30, v6

    .end local v6    # "pointer":Ljava/nio/ByteBuffer;
    .local v30, "pointer":Ljava/nio/ByteBuffer;
    const v6, -0x21431220

    move-object/from16 v35, v15

    .end local v15    # "num":[S
    .local v35, "num":[S
    const/4 v15, 0x0

    invoke-virtual {v9, v15, v6}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 145
    move/from16 v6, v17

    invoke-virtual {v9, v6, v4}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 146
    const/4 v6, 0x2

    invoke-virtual {v9, v6, v13}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 147
    const/4 v6, 0x3

    invoke-virtual {v9, v6, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 148
    const/4 v6, 0x4

    invoke-virtual {v9, v6, v1}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 149
    const/4 v6, 0x5

    invoke-virtual {v9, v6, v2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 151
    const/4 v4, 0x0

    .line 152
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_7
    if-ge v6, v8, :cond_9

    .line 153
    invoke-virtual {v10, v6, v4}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 154
    aget v17, v16, v6

    add-int v4, v4, v17

    .line 155
    aput v15, v16, v6

    .line 152
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_9
    nop

    .line 158
    .end local v6    # "i":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_8
    if-ge v6, v7, :cond_d

    .line 159
    and-int v15, v6, v21

    .line 160
    .local v15, "slot":I
    aget-short v1, v35, v6

    .line 161
    .local v1, "count":I
    aget v2, v19, v15

    if-le v1, v2, :cond_a

    .line 162
    aget v1, v19, v15

    .line 164
    :cond_a
    if-nez v1, :cond_b

    .line 165
    const/4 v2, -0x1

    invoke-virtual {v11, v6, v2}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 166
    move/from16 v17, v4

    goto :goto_a

    .line 168
    :cond_b
    const/4 v2, -0x1

    aget v2, v16, v15

    .line 169
    .local v2, "cursor":I
    int-to-short v3, v2

    invoke-virtual {v11, v6, v3}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 170
    invoke-virtual {v10, v15}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 171
    aget v3, v16, v15

    add-int/2addr v3, v1

    aput v3, v16, v15

    .line 172
    aget v3, v34, v6

    .line 173
    .local v3, "pos":I
    const/16 v17, 0x0

    move/from16 v37, v17

    move/from16 v17, v4

    move/from16 v4, v37

    .local v4, "j":I
    .local v17, "totalItems":I
    :goto_9
    if-ge v4, v1, :cond_c

    .line 174
    add-int/lit8 v36, v2, 0x1

    .end local v2    # "cursor":I
    .local v36, "cursor":I
    invoke-virtual {v12, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 175
    aget v3, v22, v3

    .line 173
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v36

    goto :goto_9

    .end local v36    # "cursor":I
    .restart local v2    # "cursor":I
    :cond_c
    nop

    .line 177
    .end local v4    # "j":I
    add-int/lit8 v2, v2, -0x1

    .line 178
    invoke-virtual {v12, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    const/high16 v36, -0x80000000

    or-int v4, v4, v36

    invoke-virtual {v12, v2, v4}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 158
    .end local v1    # "count":I
    .end local v2    # "cursor":I
    .end local v3    # "pos":I
    .end local v15    # "slot":I
    :goto_a
    add-int/lit8 v6, v6, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v17

    goto :goto_8

    .end local v17    # "totalItems":I
    .local v4, "totalItems":I
    :cond_d
    nop

    .line 181
    .end local v6    # "i":I
    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 183
    new-instance v1, Lorg/brotli/enc/PreparedDictionaryGenerator$PreparedDictionaryImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v5, v2}, Lorg/brotli/enc/PreparedDictionaryGenerator$PreparedDictionaryImpl;-><init>(Ljava/nio/ByteBuffer;Lorg/brotli/enc/PreparedDictionaryGenerator-IA;)V

    return-object v1

    .line 63
    .end local v4    # "totalItems":I
    .end local v5    # "flat":Ljava/nio/ByteBuffer;
    .end local v12    # "items":Ljava/nio/IntBuffer;
    .end local v14    # "sourceCopy":Ljava/nio/ByteBuffer;
    .end local v16    # "slotSize":[I
    .end local v18    # "allocSize":I
    .end local v19    # "slotLimit":[I
    .end local v20    # "part0":I
    .end local v21    # "slotMask":I
    .end local v22    # "nextBucket":[I
    .end local v23    # "accumulator":J
    .end local v25    # "part1":I
    .end local v26    # "bucketLimit":I
    .end local v28    # "hashShift":I
    .end local v29    # "part2":I
    .end local v30    # "pointer":Ljava/nio/ByteBuffer;
    .end local v31    # "part3":I
    .end local v32    # "hashMask":J
    .end local v34    # "bucketHeads":[I
    .end local v35    # "num":[S
    .local v6, "bucketLimit":I
    .local v9, "slotMask":I
    .local v10, "hashShift":I
    .local v11, "hashMask":J
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "src is too short"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    .end local v6    # "bucketLimit":I
    .end local v7    # "numBuckets":I
    .end local v8    # "numSlots":I
    .end local v9    # "slotMask":I
    .end local v10    # "hashShift":I
    .end local v11    # "hashMask":J
    .end local v13    # "sourceSize":I
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "slotBits is too small"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bucketBits is too big"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "blockBits is too big"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
