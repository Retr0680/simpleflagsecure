.class final Lorg/brotli/dec/Decode;
.super Ljava/lang/Object;
.source "Decode.java"


# static fields
.field static final BLOCK_LENGTH_N_BITS:[I

.field static final BLOCK_LENGTH_OFFSET:[I

.field private static final BLOCK_START:I = 0x2

.field private static final CD_BLOCK_MAP_BITS:I = 0x8

.field private static final CLOSED:I = 0xb

.field static final CMD_LOOKUP:[S

.field private static final CODE_LENGTH_CODES:I = 0x12

.field private static final CODE_LENGTH_CODE_ORDER:[I

.field private static final CODE_LENGTH_REPEAT_CODE:I = 0x10

.field private static final COMPRESSED_BLOCK_START:I = 0x3

.field private static final COPY_FROM_COMPOUND_DICTIONARY:I = 0xe

.field static final COPY_LENGTH_N_BITS:[S

.field private static final COPY_LOOP:I = 0x8

.field private static final COPY_UNCOMPRESSED:I = 0x6

.field private static final DEFAULT_CODE_LENGTH:I = 0x8

.field private static final DISTANCE_CONTEXT_BITS:I = 0x2

.field private static final DISTANCE_SHORT_CODE_INDEX_OFFSET:[I

.field private static final DISTANCE_SHORT_CODE_VALUE_OFFSET:[I

.field private static final FINISHED:I = 0xa

.field private static final FIXED_TABLE:[I

.field private static final HUFFMAN_TABLE_BITS:I = 0x8

.field private static final HUFFMAN_TABLE_MASK:I = 0xff

.field private static final HUFFMAN_TABLE_SIZE_258:I = 0x278

.field private static final HUFFMAN_TABLE_SIZE_26:I = 0x18c

.field private static final INITIALIZED:I = 0x1

.field private static final INIT_WRITE:I = 0xc

.field static final INSERT_LENGTH_N_BITS:[S

.field private static final INSERT_LOOP:I = 0x7

.field private static final LITERAL_CONTEXT_BITS:I = 0x6

.field private static final MAIN_LOOP:I = 0x4

.field private static final MAX_ALLOWED_DISTANCE:I = 0x7ffffffc

.field private static final MAX_DISTANCE_BITS:I = 0x18

.field static final MAX_HUFFMAN_TABLE_SIZE:[I

.field static final MAX_LARGE_WINDOW_BITS:I = 0x1e

.field private static final MAX_LARGE_WINDOW_DISTANCE_BITS:I = 0x3e

.field static final MAX_TRANSFORMED_WORD_LENGTH:I = 0x25

.field static final MIN_LARGE_WINDOW_BITS:I = 0xa

.field private static final NUM_BLOCK_LENGTH_CODES:I = 0x1a

.field private static final NUM_COMMAND_CODES:I = 0x2c0

.field private static final NUM_DISTANCE_SHORT_CODES:I = 0x10

.field private static final NUM_LITERAL_CODES:I = 0x100

.field private static final READ_METADATA:I = 0x5

.field private static final UNINITIALIZED:I = 0x0

.field private static final USE_DICTIONARY:I = 0x9

.field private static final WRITE:I = 0xd


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/brotli/dec/Decode;->MAX_HUFFMAN_TABLE_SIZE:[I

    .line 70
    const/16 v0, 0x10

    const/16 v1, 0x12

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lorg/brotli/dec/Decode;->CODE_LENGTH_CODE_ORDER:[I

    .line 75
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lorg/brotli/dec/Decode;->DISTANCE_SHORT_CODE_INDEX_OFFSET:[I

    .line 79
    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lorg/brotli/dec/Decode;->DISTANCE_SHORT_CODE_VALUE_OFFSET:[I

    .line 86
    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lorg/brotli/dec/Decode;->FIXED_TABLE:[I

    .line 108
    const/16 v0, 0x1a

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lorg/brotli/dec/Decode;->BLOCK_LENGTH_OFFSET:[I

    .line 113
    const/16 v0, 0x18

    const/16 v1, 0x1a

    new-array v1, v1, [I

    fill-array-data v1, :array_6

    sput-object v1, Lorg/brotli/dec/Decode;->BLOCK_LENGTH_N_BITS:[I

    .line 117
    new-array v1, v0, [S

    fill-array-data v1, :array_7

    sput-object v1, Lorg/brotli/dec/Decode;->INSERT_LENGTH_N_BITS:[S

    .line 122
    new-array v0, v0, [S

    fill-array-data v0, :array_8

    sput-object v0, Lorg/brotli/dec/Decode;->COPY_LENGTH_N_BITS:[S

    .line 132
    const/16 v0, 0xb00

    new-array v0, v0, [S

    sput-object v0, Lorg/brotli/dec/Decode;->CMD_LOOKUP:[S

    .line 135
    sget-object v0, Lorg/brotli/dec/Decode;->CMD_LOOKUP:[S

    invoke-static {v0}, Lorg/brotli/dec/Decode;->unpackCommandLookupTable([S)V

    .line 136
    return-void

    nop

    :array_0
    .array-data 4
        0x100
        0x192
        0x1b4
        0x1d4
        0x1f4
        0x216
        0x236
        0x256
        0x276
        0x296
        0x2b6
        0x2d6
        0x2f6
        0x316
        0x336
        0x356
        0x376
        0x398
        0x3b8
        0x3d8
        0x3f8
        0x418
        0x438
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x0
        0x5
        0x11
        0x6
        0x10
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3
        0x2
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        -0x1
        0x1
        -0x2
        0x2
        -0x3
        0x3
        -0x1
        0x1
        -0x2
        0x2
        -0x3
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x20000
        0x20004
        0x20003
        0x30002
        0x20000
        0x20004
        0x20003
        0x40001
        0x20000
        0x20004
        0x20003
        0x30002
        0x20000
        0x20004
        0x20003
        0x40005
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x5
        0x9
        0xd
        0x11
        0x19
        0x21
        0x29
        0x31
        0x41
        0x51
        0x61
        0x71
        0x91
        0xb1
        0xd1
        0xf1
        0x131
        0x171
        0x1f1
        0x2f1
        0x4f1
        0x8f1
        0x10f1
        0x20f1
        0x40f1
    .end array-data

    :array_6
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x5
        0x6
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0x18
    .end array-data

    :array_7
    .array-data 2
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x1s
        0x1s
        0x2s
        0x2s
        0x3s
        0x3s
        0x4s
        0x4s
        0x5s
        0x5s
        0x6s
        0x7s
        0x8s
        0x9s
        0xas
        0xcs
        0xes
        0x18s
    .end array-data

    :array_8
    .array-data 2
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x1s
        0x1s
        0x2s
        0x2s
        0x3s
        0x3s
        0x4s
        0x4s
        0x5s
        0x5s
        0x6s
        0x7s
        0x8s
        0x9s
        0xas
        0x18s
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static attachDictionaryChunk(Lorg/brotli/dec/State;[B)V
    .locals 3
    .param p0, "s"    # Lorg/brotli/dec/State;
    .param p1, "data"    # [B

    .line 270
    iget v0, p0, Lorg/brotli/dec/State;->runningState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 273
    iget v0, p0, Lorg/brotli/dec/State;->cdNumChunks:I

    if-nez v0, :cond_0

    .line 274
    const/16 v0, 0x10

    new-array v2, v0, [[B

    iput-object v2, p0, Lorg/brotli/dec/State;->cdChunks:[[B

    .line 275
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/brotli/dec/State;->cdChunkOffsets:[I

    .line 276
    const/4 v0, -0x1

    iput v0, p0, Lorg/brotli/dec/State;->cdBlockBits:I

    .line 278
    :cond_0
    iget v0, p0, Lorg/brotli/dec/State;->cdNumChunks:I

    const/16 v2, 0xf

    if-eq v0, v2, :cond_1

    .line 281
    iget-object v0, p0, Lorg/brotli/dec/State;->cdChunks:[[B

    iget v2, p0, Lorg/brotli/dec/State;->cdNumChunks:I

    aput-object p1, v0, v2

    .line 282
    iget v0, p0, Lorg/brotli/dec/State;->cdNumChunks:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/brotli/dec/State;->cdNumChunks:I

    .line 283
    iget v0, p0, Lorg/brotli/dec/State;->cdTotalSize:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/brotli/dec/State;->cdTotalSize:I

    .line 284
    iget-object v0, p0, Lorg/brotli/dec/State;->cdChunkOffsets:[I

    iget v1, p0, Lorg/brotli/dec/State;->cdNumChunks:I

    iget v2, p0, Lorg/brotli/dec/State;->cdTotalSize:I

    aput v2, v0, v1

    .line 285
    return-void

    .line 279
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too many dictionary chunks"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "State MUST be freshly initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static calculateDistanceAlphabetLimit(III)I
    .locals 5
    .param p0, "maxDistance"    # I
    .param p1, "npostfix"    # I
    .param p2, "ndirect"    # I

    .line 158
    const/4 v0, 0x2

    shl-int/2addr v0, p1

    add-int/2addr v0, p2

    if-lt p0, v0, :cond_0

    .line 161
    sub-int v0, p0, p2

    shr-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x4

    .line 162
    .local v0, "offset":I
    invoke-static {v0}, Lorg/brotli/dec/Decode;->log2floor(I)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 163
    .local v1, "ndistbits":I
    add-int/lit8 v3, v1, -0x1

    shl-int/2addr v3, v2

    shr-int v4, v0, v1

    and-int/2addr v4, v2

    or-int/2addr v3, v4

    .line 164
    .local v3, "group":I
    add-int/lit8 v4, v3, -0x1

    shl-int/2addr v4, p1

    shl-int/2addr v2, p1

    add-int/2addr v4, v2

    add-int/2addr v4, p2

    add-int/lit8 v4, v4, 0x10

    return v4

    .line 159
    .end local v0    # "offset":I
    .end local v1    # "ndistbits":I
    .end local v3    # "group":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxDistance is too small"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static calculateDistanceAlphabetSize(III)I
    .locals 2
    .param p0, "npostfix"    # I
    .param p1, "ndirect"    # I
    .param p2, "maxndistbits"    # I

    .line 152
    add-int/lit8 v0, p1, 0x10

    shl-int v1, p2, p0

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private static calculateDistanceLut(Lorg/brotli/dec/State;I)V
    .locals 12
    .param p0, "s"    # Lorg/brotli/dec/State;
    .param p1, "alphabetSizeLimit"    # I

    .line 790
    iget-object v0, p0, Lorg/brotli/dec/State;->distExtraBits:[B

    .line 791
    .local v0, "distExtraBits":[B
    iget-object v1, p0, Lorg/brotli/dec/State;->distOffset:[I

    .line 792
    .local v1, "distOffset":[I
    iget v2, p0, Lorg/brotli/dec/State;->distancePostfixBits:I

    .line 793
    .local v2, "npostfix":I
    iget v3, p0, Lorg/brotli/dec/State;->numDirectDistanceCodes:I

    .line 794
    .local v3, "ndirect":I
    const/4 v4, 0x1

    shl-int v5, v4, v2

    .line 795
    .local v5, "postfix":I
    const/4 v6, 0x1

    .line 796
    .local v6, "bits":I
    const/4 v7, 0x0

    .line 799
    .local v7, "half":I
    const/16 v8, 0x10

    .line 802
    .local v8, "i":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_0
    if-ge v9, v3, :cond_0

    .line 803
    const/4 v10, 0x0

    aput-byte v10, v0, v8

    .line 804
    add-int/lit8 v10, v9, 0x1

    aput v10, v1, v8

    .line 805
    add-int/lit8 v8, v8, 0x1

    .line 802
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 809
    .end local v9    # "j":I
    :cond_0
    :goto_1
    if-ge v8, p1, :cond_2

    .line 810
    add-int/lit8 v9, v7, 0x2

    shl-int/2addr v9, v6

    add-int/lit8 v9, v9, -0x4

    shl-int/2addr v9, v2

    add-int/2addr v9, v3

    add-int/2addr v9, v4

    .line 812
    .local v9, "base":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_2
    if-ge v10, v5, :cond_1

    .line 813
    int-to-byte v11, v6

    aput-byte v11, v0, v8

    .line 814
    add-int v11, v9, v10

    aput v11, v1, v8

    .line 815
    add-int/lit8 v8, v8, 0x1

    .line 812
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    nop

    .line 817
    .end local v10    # "j":I
    add-int/2addr v6, v7

    .line 818
    xor-int/lit8 v7, v7, 0x1

    .line 819
    .end local v9    # "base":I
    goto :goto_1

    .line 820
    :cond_2
    return-void
.end method

.method private static calculateFence(Lorg/brotli/dec/State;)I
    .locals 3
    .param p0, "s"    # Lorg/brotli/dec/State;

    .line 950
    iget v0, p0, Lorg/brotli/dec/State;->ringBufferSize:I

    .line 951
    .local v0, "result":I
    iget v1, p0, Lorg/brotli/dec/State;->isEager:I

    if-eqz v1, :cond_0

    .line 952
    iget v1, p0, Lorg/brotli/dec/State;->ringBufferBytesWritten:I

    iget v2, p0, Lorg/brotli/dec/State;->outputLength:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/brotli/dec/State;->outputUsed:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 954
    :cond_0
    return v0
.end method

.method private static checkDupes([II)V
    .locals 4
    .param p0, "symbols"    # [I
    .param p1, "length"    # I

    .line 493
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_2

    .line 494
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_1
    if-ge v1, p1, :cond_1

    .line 495
    aget v2, p0, v0

    aget v3, p0, v1

    if-eq v2, v3, :cond_0

    .line 494
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 496
    :cond_0
    new-instance v2, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v3, "Duplicate simple Huffman code symbol"

    invoke-direct {v2, v3}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 494
    :cond_1
    nop

    .line 493
    .end local v1    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 500
    .end local v0    # "i":I
    return-void
.end method

.method static close(Lorg/brotli/dec/State;)V
    .locals 2
    .param p0, "s"    # Lorg/brotli/dec/State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    iget v0, p0, Lorg/brotli/dec/State;->runningState:I

    if-eqz v0, :cond_2

    .line 313
    iget v0, p0, Lorg/brotli/dec/State;->runningState:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 314
    return-void

    .line 316
    :cond_0
    iput v1, p0, Lorg/brotli/dec/State;->runningState:I

    .line 317
    iget-object v0, p0, Lorg/brotli/dec/State;->input:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lorg/brotli/dec/State;->input:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/brotli/dec/Utils;->closeInput(Ljava/io/InputStream;)V

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/brotli/dec/State;->input:Ljava/io/InputStream;

    .line 321
    :cond_1
    return-void

    .line 311
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "State MUST be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static copyFromCompoundDictionary(Lorg/brotli/dec/State;I)I
    .locals 10
    .param p0, "s"    # Lorg/brotli/dec/State;
    .param p1, "fence"    # I

    .line 1040
    iget v0, p0, Lorg/brotli/dec/State;->pos:I

    .line 1041
    .local v0, "pos":I
    move v1, v0

    .line 1042
    .local v1, "origPos":I
    :goto_0
    iget v2, p0, Lorg/brotli/dec/State;->cdBrLength:I

    iget v3, p0, Lorg/brotli/dec/State;->cdBrCopied:I

    if-eq v2, v3, :cond_4

    .line 1043
    sub-int v2, p1, v0

    .line 1044
    .local v2, "space":I
    iget-object v3, p0, Lorg/brotli/dec/State;->cdChunkOffsets:[I

    iget v4, p0, Lorg/brotli/dec/State;->cdBrIndex:I

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lorg/brotli/dec/State;->cdChunkOffsets:[I

    iget v5, p0, Lorg/brotli/dec/State;->cdBrIndex:I

    aget v4, v4, v5

    sub-int/2addr v3, v4

    .line 1045
    .local v3, "chunkLength":I
    iget v4, p0, Lorg/brotli/dec/State;->cdBrOffset:I

    sub-int v4, v3, v4

    .line 1046
    .local v4, "remChunkLength":I
    iget v5, p0, Lorg/brotli/dec/State;->cdBrLength:I

    iget v6, p0, Lorg/brotli/dec/State;->cdBrCopied:I

    sub-int/2addr v5, v6

    .line 1047
    .local v5, "length":I
    if-le v5, v4, :cond_0

    .line 1048
    move v5, v4

    .line 1050
    :cond_0
    if-le v5, v2, :cond_1

    .line 1051
    move v5, v2

    .line 1053
    :cond_1
    iget-object v6, p0, Lorg/brotli/dec/State;->ringBuffer:[B

    iget-object v7, p0, Lorg/brotli/dec/State;->cdChunks:[[B

    iget v8, p0, Lorg/brotli/dec/State;->cdBrIndex:I

    aget-object v7, v7, v8

    iget v8, p0, Lorg/brotli/dec/State;->cdBrOffset:I

    iget v9, p0, Lorg/brotli/dec/State;->cdBrOffset:I

    add-int/2addr v9, v5

    invoke-static {v6, v0, v7, v8, v9}, Lorg/brotli/dec/Utils;->copyBytes([BI[BII)V

    .line 1055
    add-int/2addr v0, v5

    .line 1056
    iget v6, p0, Lorg/brotli/dec/State;->cdBrOffset:I

    add-int/2addr v6, v5

    iput v6, p0, Lorg/brotli/dec/State;->cdBrOffset:I

    .line 1057
    iget v6, p0, Lorg/brotli/dec/State;->cdBrCopied:I

    add-int/2addr v6, v5

    iput v6, p0, Lorg/brotli/dec/State;->cdBrCopied:I

    .line 1058
    if-ne v5, v4, :cond_2

    .line 1059
    iget v6, p0, Lorg/brotli/dec/State;->cdBrIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/brotli/dec/State;->cdBrIndex:I

    .line 1060
    const/4 v6, 0x0

    iput v6, p0, Lorg/brotli/dec/State;->cdBrOffset:I

    .line 1062
    :cond_2
    if-lt v0, p1, :cond_3

    .line 1063
    goto :goto_1

    .line 1062
    :cond_3
    nop

    .line 1065
    .end local v2    # "space":I
    .end local v3    # "chunkLength":I
    .end local v4    # "remChunkLength":I
    .end local v5    # "length":I
    goto :goto_0

    .line 1066
    :cond_4
    :goto_1
    sub-int v2, v0, v1

    return v2
.end method

.method private static copyUncompressedData(Lorg/brotli/dec/State;)V
    .locals 5
    .param p0, "s"    # Lorg/brotli/dec/State;

    .line 896
    iget-object v0, p0, Lorg/brotli/dec/State;->ringBuffer:[B

    .line 899
    .local v0, "ringBuffer":[B
    iget v1, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    const/4 v2, 0x2

    if-gtz v1, :cond_0

    .line 900
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->reload(Lorg/brotli/dec/State;)V

    .line 901
    iput v2, p0, Lorg/brotli/dec/State;->runningState:I

    .line 902
    return-void

    .line 905
    :cond_0
    iget v1, p0, Lorg/brotli/dec/State;->ringBufferSize:I

    iget v3, p0, Lorg/brotli/dec/State;->pos:I

    sub-int/2addr v1, v3

    iget v3, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 906
    .local v1, "chunkLength":I
    iget v3, p0, Lorg/brotli/dec/State;->pos:I

    invoke-static {p0, v0, v3, v1}, Lorg/brotli/dec/BitReader;->copyBytes(Lorg/brotli/dec/State;[BII)V

    .line 907
    iget v3, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    .line 908
    iget v3, p0, Lorg/brotli/dec/State;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/brotli/dec/State;->pos:I

    .line 909
    iget v3, p0, Lorg/brotli/dec/State;->pos:I

    iget v4, p0, Lorg/brotli/dec/State;->ringBufferSize:I

    if-ne v3, v4, :cond_1

    .line 910
    const/4 v2, 0x6

    iput v2, p0, Lorg/brotli/dec/State;->nextRunningState:I

    .line 911
    const/16 v2, 0xc

    iput v2, p0, Lorg/brotli/dec/State;->runningState:I

    .line 912
    return-void

    .line 915
    :cond_1
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->reload(Lorg/brotli/dec/State;)V

    .line 916
    iput v2, p0, Lorg/brotli/dec/State;->runningState:I

    .line 917
    return-void
.end method

.method private static decodeBlockTypeAndLength(Lorg/brotli/dec/State;II)I
    .locals 6
    .param p0, "s"    # Lorg/brotli/dec/State;
    .param p1, "treeType"    # I
    .param p2, "numBlockTypes"    # I

    .line 668
    iget-object v0, p0, Lorg/brotli/dec/State;->rings:[I

    .line 669
    .local v0, "ringBuffers":[I
    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x4

    .line 670
    .local v1, "offset":I
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 671
    iget-object v2, p0, Lorg/brotli/dec/State;->blockTrees:[I

    mul-int/lit8 v3, p1, 0x2

    invoke-static {v2, v3, p0}, Lorg/brotli/dec/Decode;->readSymbol([IILorg/brotli/dec/State;)I

    move-result v2

    .line 672
    .local v2, "blockType":I
    iget-object v3, p0, Lorg/brotli/dec/State;->blockTrees:[I

    mul-int/lit8 v4, p1, 0x2

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-static {v3, v4, p0}, Lorg/brotli/dec/Decode;->readBlockLength([IILorg/brotli/dec/State;)I

    move-result v3

    .line 674
    .local v3, "result":I
    if-ne v2, v5, :cond_0

    .line 675
    add-int/lit8 v4, v1, 0x1

    aget v4, v0, v4

    add-int/2addr v4, v5

    .end local v2    # "blockType":I
    .local v4, "blockType":I
    goto :goto_0

    .line 676
    .end local v4    # "blockType":I
    .restart local v2    # "blockType":I
    :cond_0
    if-nez v2, :cond_1

    .line 677
    aget v4, v0, v1

    .end local v2    # "blockType":I
    .restart local v4    # "blockType":I
    goto :goto_0

    .line 679
    .end local v4    # "blockType":I
    .restart local v2    # "blockType":I
    :cond_1
    add-int/lit8 v4, v2, -0x2

    .line 681
    .end local v2    # "blockType":I
    .restart local v4    # "blockType":I
    :goto_0
    if-lt v4, p2, :cond_2

    .line 682
    sub-int/2addr v4, p2

    .line 684
    :cond_2
    add-int/lit8 v2, v1, 0x1

    aget v2, v0, v2

    aput v2, v0, v1

    .line 685
    add-int/lit8 v2, v1, 0x1

    aput v4, v0, v2

    .line 686
    return v3
.end method

.method private static decodeCommandBlockSwitch(Lorg/brotli/dec/State;)V
    .locals 2
    .param p0, "s"    # Lorg/brotli/dec/State;

    .line 700
    iget v0, p0, Lorg/brotli/dec/State;->numCommandBlockTypes:I

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lorg/brotli/dec/Decode;->decodeBlockTypeAndLength(Lorg/brotli/dec/State;II)I

    move-result v0

    iput v0, p0, Lorg/brotli/dec/State;->commandBlockLength:I

    .line 701
    iget-object v0, p0, Lorg/brotli/dec/State;->rings:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    iput v0, p0, Lorg/brotli/dec/State;->commandTreeIdx:I

    .line 702
    return-void
.end method

.method private static decodeContextMap(I[BLorg/brotli/dec/State;)I
    .locals 13
    .param p0, "contextMapSize"    # I
    .param p1, "contextMap"    # [B
    .param p2, "s"    # Lorg/brotli/dec/State;

    .line 617
    invoke-static {p2}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/State;)V

    .line 618
    invoke-static {p2}, Lorg/brotli/dec/Decode;->decodeVarLenUnsignedByte(Lorg/brotli/dec/State;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 620
    .local v0, "numTrees":I
    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 621
    invoke-static {p1, v2, p0}, Lorg/brotli/dec/Utils;->fillBytesWithZeroes([BII)V

    .line 622
    return v0

    .line 625
    :cond_0
    invoke-static {p2}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 626
    invoke-static {p2, v1}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v3

    .line 627
    .local v3, "useRleForZeros":I
    const/4 v4, 0x0

    .line 628
    .local v4, "maxRunLengthPrefix":I
    if-eqz v3, :cond_1

    .line 629
    const/4 v5, 0x4

    invoke-static {p2, v5}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .line 631
    :cond_1
    add-int v5, v0, v4

    .line 632
    .local v5, "alphabetSize":I
    sget-object v6, Lorg/brotli/dec/Decode;->MAX_HUFFMAN_TABLE_SIZE:[I

    add-int/lit8 v7, v5, 0x1f

    shr-int/lit8 v7, v7, 0x5

    aget v6, v6, v7

    .line 634
    .local v6, "tableSize":I
    add-int/lit8 v7, v6, 0x1

    new-array v7, v7, [I

    .line 635
    .local v7, "table":[I
    array-length v8, v7

    sub-int/2addr v8, v1

    .line 636
    .local v8, "tableIdx":I
    invoke-static {v5, v5, v7, v8, p2}, Lorg/brotli/dec/Decode;->readHuffmanCode(II[IILorg/brotli/dec/State;)I

    .line 637
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, p0, :cond_6

    .line 638
    invoke-static {p2}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/State;)V

    .line 639
    invoke-static {p2}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 640
    invoke-static {v7, v8, p2}, Lorg/brotli/dec/Decode;->readSymbol([IILorg/brotli/dec/State;)I

    move-result v10

    .line 641
    .local v10, "code":I
    if-nez v10, :cond_2

    .line 642
    aput-byte v2, p1, v9

    .line 643
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 644
    :cond_2
    if-gt v10, v4, :cond_5

    .line 645
    invoke-static {p2}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 646
    shl-int v11, v1, v10

    invoke-static {p2, v10}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v12

    add-int/2addr v11, v12

    .line 647
    .local v11, "reps":I
    :goto_1
    if-eqz v11, :cond_4

    .line 648
    if-ge v9, p0, :cond_3

    .line 651
    aput-byte v2, p1, v9

    .line 652
    add-int/lit8 v9, v9, 0x1

    .line 653
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 649
    :cond_3
    new-instance v1, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v2, "Corrupted context map"

    invoke-direct {v1, v2}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 647
    :cond_4
    nop

    .line 655
    .end local v11    # "reps":I
    goto :goto_2

    .line 656
    :cond_5
    sub-int v11, v10, v4

    int-to-byte v11, v11

    aput-byte v11, p1, v9

    .line 657
    add-int/lit8 v9, v9, 0x1

    .line 659
    .end local v10    # "code":I
    :goto_2
    goto :goto_0

    .line 637
    :cond_6
    nop

    .line 660
    .end local v9    # "i":I
    invoke-static {p2}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 661
    invoke-static {p2, v1}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v2

    if-ne v2, v1, :cond_7

    .line 662
    invoke-static {p1, p0}, Lorg/brotli/dec/Decode;->inverseMoveToFrontTransform([BI)V

    .line 664
    :cond_7
    return v0
.end method

.method private static decodeDistanceBlockSwitch(Lorg/brotli/dec/State;)V
    .locals 3
    .param p0, "s"    # Lorg/brotli/dec/State;

    .line 705
    iget v0, p0, Lorg/brotli/dec/State;->numDistanceBlockTypes:I

    const/4 v1, 0x2

    invoke-static {p0, v1, v0}, Lorg/brotli/dec/Decode;->decodeBlockTypeAndLength(Lorg/brotli/dec/State;II)I

    move-result v0

    iput v0, p0, Lorg/brotli/dec/State;->distanceBlockLength:I

    .line 706
    iget-object v0, p0, Lorg/brotli/dec/State;->rings:[I

    const/16 v2, 0x9

    aget v0, v0, v2

    shl-int/2addr v0, v1

    iput v0, p0, Lorg/brotli/dec/State;->distContextMapSlice:I

    .line 707
    return-void
.end method

.method private static decodeHuffmanTreeGroup(IIILorg/brotli/dec/State;)[I
    .locals 5
    .param p0, "alphabetSizeMax"    # I
    .param p1, "alphabetSizeLimit"    # I
    .param p2, "n"    # I
    .param p3, "s"    # Lorg/brotli/dec/State;

    .line 938
    sget-object v0, Lorg/brotli/dec/Decode;->MAX_HUFFMAN_TABLE_SIZE:[I

    add-int/lit8 v1, p1, 0x1f

    shr-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    .line 939
    .local v0, "maxTableSize":I
    mul-int v1, p2, v0

    add-int/2addr v1, p2

    new-array v1, v1, [I

    .line 940
    .local v1, "group":[I
    move v2, p2

    .line 941
    .local v2, "next":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_0

    .line 942
    aput v2, v1, v3

    .line 943
    invoke-static {p0, p1, v1, v3, p3}, Lorg/brotli/dec/Decode;->readHuffmanCode(II[IILorg/brotli/dec/State;)I

    move-result v4

    add-int/2addr v2, v4

    .line 941
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 945
    .end local v3    # "i":I
    return-object v1
.end method

.method private static decodeLiteralBlockSwitch(Lorg/brotli/dec/State;)V
    .locals 3
    .param p0, "s"    # Lorg/brotli/dec/State;

    .line 690
    iget v0, p0, Lorg/brotli/dec/State;->numLiteralBlockTypes:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/brotli/dec/Decode;->decodeBlockTypeAndLength(Lorg/brotli/dec/State;II)I

    move-result v0

    iput v0, p0, Lorg/brotli/dec/State;->literalBlockLength:I

    .line 691
    iget-object v0, p0, Lorg/brotli/dec/State;->rings:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    .line 692
    .local v0, "literalBlockType":I
    shl-int/lit8 v1, v0, 0x6

    iput v1, p0, Lorg/brotli/dec/State;->contextMapSlice:I

    .line 693
    iget-object v1, p0, Lorg/brotli/dec/State;->contextMap:[B

    iget v2, p0, Lorg/brotli/dec/State;->contextMapSlice:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lorg/brotli/dec/State;->literalTreeIdx:I

    .line 694
    iget-object v1, p0, Lorg/brotli/dec/State;->contextModes:[B

    aget-byte v1, v1, v0

    .line 695
    .local v1, "contextMode":I
    shl-int/lit8 v2, v1, 0x9

    iput v2, p0, Lorg/brotli/dec/State;->contextLookupOffset1:I

    .line 696
    iget v2, p0, Lorg/brotli/dec/State;->contextLookupOffset1:I

    add-int/lit16 v2, v2, 0x100

    iput v2, p0, Lorg/brotli/dec/State;->contextLookupOffset2:I

    .line 697
    return-void
.end method

.method private static decodeMetaBlockLength(Lorg/brotli/dec/State;)V
    .locals 8
    .param p0, "s"    # Lorg/brotli/dec/State;

    .line 340
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 341
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v1

    iput v1, p0, Lorg/brotli/dec/State;->inputEnd:I

    .line 342
    const/4 v1, 0x0

    iput v1, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    .line 343
    iput v1, p0, Lorg/brotli/dec/State;->isUncompressed:I

    .line 344
    iput v1, p0, Lorg/brotli/dec/State;->isMetadata:I

    .line 345
    iget v1, p0, Lorg/brotli/dec/State;->inputEnd:I

    if-eqz v1, :cond_0

    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    return-void

    .line 348
    :cond_0
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v2

    const/4 v3, 0x4

    add-int/2addr v2, v3

    .line 349
    .local v2, "sizeNibbles":I
    const/4 v4, 0x7

    const-string v5, "Exuberant nibble"

    if-ne v2, v4, :cond_6

    .line 350
    iput v0, p0, Lorg/brotli/dec/State;->isMetadata:I

    .line 351
    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v3

    if-nez v3, :cond_5

    .line 354
    invoke-static {p0, v1}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v1

    .line 355
    .local v1, "sizeBytes":I
    if-nez v1, :cond_1

    .line 356
    return-void

    .line 358
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 359
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 360
    const/16 v4, 0x8

    invoke-static {p0, v4}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v4

    .line 361
    .local v4, "bits":I
    if-nez v4, :cond_2

    add-int/lit8 v6, v3, 0x1

    if-ne v6, v1, :cond_2

    if-gt v1, v0, :cond_3

    :cond_2
    goto :goto_1

    .line 362
    :cond_3
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {v0, v5}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :goto_1
    iget v6, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    mul-int/lit8 v7, v3, 0x8

    shl-int v7, v4, v7

    or-int/2addr v6, v7

    iput v6, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    .line 358
    .end local v4    # "bits":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 366
    .end local v1    # "sizeBytes":I
    .end local v3    # "i":I
    goto :goto_4

    .line 352
    :cond_5
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v1, "Corrupted reserved bit"

    invoke-direct {v0, v1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_6
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_9

    .line 368
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 369
    invoke-static {p0, v3}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v4

    .line 370
    .restart local v4    # "bits":I
    if-nez v4, :cond_7

    add-int/lit8 v6, v1, 0x1

    if-ne v6, v2, :cond_7

    if-gt v2, v3, :cond_8

    :cond_7
    goto :goto_3

    .line 371
    :cond_8
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {v0, v5}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :goto_3
    iget v6, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    mul-int/lit8 v7, v1, 0x4

    shl-int v7, v4, v7

    or-int/2addr v6, v7

    iput v6, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    .line 367
    .end local v4    # "bits":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 376
    .end local v1    # "i":I
    :cond_9
    :goto_4
    iget v1, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    .line 377
    iget v1, p0, Lorg/brotli/dec/State;->inputEnd:I

    if-nez v1, :cond_a

    .line 378
    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v0

    iput v0, p0, Lorg/brotli/dec/State;->isUncompressed:I

    .line 380
    :cond_a
    return-void
.end method

.method private static decodeVarLenUnsignedByte(Lorg/brotli/dec/State;)I
    .locals 3
    .param p0, "s"    # Lorg/brotli/dec/State;

    .line 327
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 328
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    const/4 v1, 0x3

    invoke-static {p0, v1}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v1

    .line 330
    .local v1, "n":I
    if-nez v1, :cond_0

    .line 331
    return v0

    .line 333
    :cond_0
    invoke-static {p0, v1}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v2

    shl-int/2addr v0, v1

    add-int/2addr v2, v0

    return v2

    .line 336
    .end local v1    # "n":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static decodeWindowBits(Lorg/brotli/dec/State;)I
    .locals 5
    .param p0, "s"    # Lorg/brotli/dec/State;

    .line 211
    iget v0, p0, Lorg/brotli/dec/State;->isLargeWindow:I

    .line 212
    .local v0, "largeWindowEnabled":I
    const/4 v1, 0x0

    iput v1, p0, Lorg/brotli/dec/State;->isLargeWindow:I

    .line 214
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 215
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 216
    const/16 v1, 0x10

    return v1

    .line 218
    :cond_0
    const/4 v2, 0x3

    invoke-static {p0, v2}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v3

    .line 219
    .local v3, "n":I
    if-eqz v3, :cond_1

    .line 220
    add-int/lit8 v1, v3, 0x11

    return v1

    .line 222
    :cond_1
    invoke-static {p0, v2}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v2

    .line 223
    .end local v3    # "n":I
    .local v2, "n":I
    if-eqz v2, :cond_7

    .line 224
    if-ne v2, v1, :cond_6

    .line 225
    const/4 v3, -0x1

    if-nez v0, :cond_2

    .line 227
    return v3

    .line 229
    :cond_2
    iput v1, p0, Lorg/brotli/dec/State;->isLargeWindow:I

    .line 231
    invoke-static {p0, v1}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v4

    if-ne v4, v1, :cond_3

    .line 232
    return v3

    .line 234
    :cond_3
    const/4 v1, 0x6

    invoke-static {p0, v1}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v1

    .line 235
    .end local v2    # "n":I
    .local v1, "n":I
    const/16 v2, 0xa

    if-lt v1, v2, :cond_4

    const/16 v2, 0x1e

    if-le v1, v2, :cond_5

    :cond_4
    goto :goto_0

    .line 239
    :cond_5
    return v1

    .line 237
    :goto_0
    return v3

    .line 241
    .end local v1    # "n":I
    .restart local v2    # "n":I
    :cond_6
    add-int/lit8 v1, v2, 0x8

    return v1

    .line 244
    :cond_7
    const/16 v1, 0x11

    return v1
.end method

.method static decompress(Lorg/brotli/dec/State;)V
    .locals 19
    .param p0, "s"    # Lorg/brotli/dec/State;

    .line 1073
    move-object/from16 v0, p0

    iget v1, v0, Lorg/brotli/dec/State;->runningState:I

    if-eqz v1, :cond_26

    .line 1076
    iget v1, v0, Lorg/brotli/dec/State;->runningState:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_25

    .line 1079
    iget v1, v0, Lorg/brotli/dec/State;->runningState:I

    const/16 v2, 0x10

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 1080
    invoke-static {v0}, Lorg/brotli/dec/Decode;->decodeWindowBits(Lorg/brotli/dec/State;)I

    move-result v1

    .line 1081
    .local v1, "windowBits":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 1084
    shl-int v5, v4, v1

    iput v5, v0, Lorg/brotli/dec/State;->maxRingBufferSize:I

    .line 1085
    iget v5, v0, Lorg/brotli/dec/State;->maxRingBufferSize:I

    sub-int/2addr v5, v2

    iput v5, v0, Lorg/brotli/dec/State;->maxBackwardDistance:I

    .line 1086
    iput v3, v0, Lorg/brotli/dec/State;->runningState:I

    goto :goto_0

    .line 1082
    :cond_0
    new-instance v2, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v3, "Invalid \'windowBits\' code"

    invoke-direct {v2, v3}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1089
    .end local v1    # "windowBits":I
    :cond_1
    :goto_0
    invoke-static {v0}, Lorg/brotli/dec/Decode;->calculateFence(Lorg/brotli/dec/State;)I

    move-result v1

    .line 1090
    .local v1, "fence":I
    iget v5, v0, Lorg/brotli/dec/State;->ringBufferSize:I

    sub-int/2addr v5, v4

    .line 1091
    .local v5, "ringBufferMask":I
    iget-object v6, v0, Lorg/brotli/dec/State;->ringBuffer:[B

    .line 1093
    .local v6, "ringBuffer":[B
    :goto_1
    iget v7, v0, Lorg/brotli/dec/State;->runningState:I

    const-string v8, "Invalid metablock length"

    const/16 v9, 0xa

    if-eq v7, v9, :cond_22

    .line 1095
    iget v7, v0, Lorg/brotli/dec/State;->runningState:I

    const/4 v9, 0x7

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/4 v12, 0x4

    const/16 v13, 0xc

    packed-switch v7, :pswitch_data_0

    .line 1341
    :pswitch_0
    new-instance v2, Lorg/brotli/dec/BrotliRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lorg/brotli/dec/State;->runningState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1293
    :pswitch_1
    iget v7, v0, Lorg/brotli/dec/State;->pos:I

    invoke-static {v0, v1}, Lorg/brotli/dec/Decode;->copyFromCompoundDictionary(Lorg/brotli/dec/State;I)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v0, Lorg/brotli/dec/State;->pos:I

    .line 1294
    iget v7, v0, Lorg/brotli/dec/State;->pos:I

    if-lt v7, v1, :cond_2

    .line 1295
    const/16 v2, 0xe

    iput v2, v0, Lorg/brotli/dec/State;->nextRunningState:I

    .line 1296
    iput v13, v0, Lorg/brotli/dec/State;->runningState:I

    .line 1297
    return-void

    .line 1299
    :cond_2
    iput v12, v0, Lorg/brotli/dec/State;->runningState:I

    .line 1300
    move/from16 v18, v3

    move/from16 v17, v4

    goto/16 :goto_e

    .line 1318
    :pswitch_2
    iget v7, v0, Lorg/brotli/dec/State;->pos:I

    iget v8, v0, Lorg/brotli/dec/State;->ringBufferSize:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v0, Lorg/brotli/dec/State;->ringBufferBytesReady:I

    .line 1319
    const/16 v7, 0xd

    iput v7, v0, Lorg/brotli/dec/State;->runningState:I

    .line 1322
    :pswitch_3
    invoke-static {v0}, Lorg/brotli/dec/Decode;->writeRingBuffer(Lorg/brotli/dec/State;)I

    move-result v7

    if-nez v7, :cond_3

    .line 1324
    return-void

    .line 1326
    :cond_3
    iget v7, v0, Lorg/brotli/dec/State;->pos:I

    iget v8, v0, Lorg/brotli/dec/State;->maxBackwardDistance:I

    if-lt v7, v8, :cond_4

    .line 1327
    iget v7, v0, Lorg/brotli/dec/State;->maxBackwardDistance:I

    iput v7, v0, Lorg/brotli/dec/State;->maxDistance:I

    .line 1330
    :cond_4
    iget v7, v0, Lorg/brotli/dec/State;->pos:I

    iget v8, v0, Lorg/brotli/dec/State;->ringBufferSize:I

    if-lt v7, v8, :cond_6

    .line 1331
    iget v7, v0, Lorg/brotli/dec/State;->pos:I

    iget v8, v0, Lorg/brotli/dec/State;->ringBufferSize:I

    if-le v7, v8, :cond_5

    .line 1332
    iget v7, v0, Lorg/brotli/dec/State;->ringBufferSize:I

    iget v8, v0, Lorg/brotli/dec/State;->pos:I

    invoke-static {v6, v10, v7, v8}, Lorg/brotli/dec/Utils;->copyBytesWithin([BIII)V

    .line 1334
    :cond_5
    iget v7, v0, Lorg/brotli/dec/State;->pos:I

    and-int/2addr v7, v5

    iput v7, v0, Lorg/brotli/dec/State;->pos:I

    .line 1335
    iput v10, v0, Lorg/brotli/dec/State;->ringBufferBytesWritten:I

    .line 1337
    :cond_6
    iget v7, v0, Lorg/brotli/dec/State;->nextRunningState:I

    iput v7, v0, Lorg/brotli/dec/State;->runningState:I

    .line 1338
    move/from16 v18, v3

    move/from16 v17, v4

    goto/16 :goto_e

    .line 1289
    :pswitch_4
    invoke-static {v0, v1}, Lorg/brotli/dec/Decode;->doUseDictionary(Lorg/brotli/dec/State;I)V

    .line 1290
    move/from16 v18, v3

    move/from16 v17, v4

    goto/16 :goto_e

    .line 1095
    :pswitch_5
    move/from16 v18, v3

    move/from16 v17, v4

    goto/16 :goto_9

    :pswitch_6
    move/from16 v18, v3

    move/from16 v17, v4

    goto/16 :goto_3

    .line 1314
    :pswitch_7
    invoke-static {v0}, Lorg/brotli/dec/Decode;->copyUncompressedData(Lorg/brotli/dec/State;)V

    .line 1315
    move/from16 v18, v3

    move/from16 v17, v4

    goto/16 :goto_e

    .line 1303
    :goto_2
    :pswitch_8
    iget v7, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    if-lez v7, :cond_7

    .line 1304
    invoke-static {v0}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/State;)V

    .line 1306
    invoke-static {v0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 1307
    invoke-static {v0, v11}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    .line 1308
    iget v7, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    sub-int/2addr v7, v4

    iput v7, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    goto :goto_2

    .line 1310
    :cond_7
    iput v3, v0, Lorg/brotli/dec/State;->runningState:I

    .line 1311
    move/from16 v18, v3

    move/from16 v17, v4

    goto/16 :goto_e

    .line 1108
    :pswitch_9
    invoke-static {v0}, Lorg/brotli/dec/Decode;->readMetablockHuffmanCodesAndContextMaps(Lorg/brotli/dec/State;)V

    .line 1109
    iput v12, v0, Lorg/brotli/dec/State;->runningState:I

    .line 1113
    :pswitch_a
    iget v7, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    if-gtz v7, :cond_8

    .line 1114
    iput v3, v0, Lorg/brotli/dec/State;->runningState:I

    .line 1115
    move/from16 v18, v3

    move/from16 v17, v4

    goto/16 :goto_e

    .line 1117
    :cond_8
    invoke-static {v0}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/State;)V

    .line 1118
    iget v7, v0, Lorg/brotli/dec/State;->commandBlockLength:I

    if-nez v7, :cond_9

    .line 1119
    invoke-static {v0}, Lorg/brotli/dec/Decode;->decodeCommandBlockSwitch(Lorg/brotli/dec/State;)V

    .line 1121
    :cond_9
    iget v7, v0, Lorg/brotli/dec/State;->commandBlockLength:I

    sub-int/2addr v7, v4

    iput v7, v0, Lorg/brotli/dec/State;->commandBlockLength:I

    .line 1122
    invoke-static {v0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 1123
    iget-object v7, v0, Lorg/brotli/dec/State;->commandTreeGroup:[I

    iget v8, v0, Lorg/brotli/dec/State;->commandTreeIdx:I

    invoke-static {v7, v8, v0}, Lorg/brotli/dec/Decode;->readSymbol([IILorg/brotli/dec/State;)I

    move-result v7

    shl-int/2addr v7, v3

    .line 1124
    .local v7, "cmdCode":I
    sget-object v8, Lorg/brotli/dec/Decode;->CMD_LOOKUP:[S

    aget-short v8, v8, v7

    .line 1125
    .local v8, "insertAndCopyExtraBits":S
    sget-object v14, Lorg/brotli/dec/Decode;->CMD_LOOKUP:[S

    add-int/lit8 v15, v7, 0x1

    aget-short v14, v14, v15

    .line 1126
    .local v14, "insertLengthOffset":I
    sget-object v15, Lorg/brotli/dec/Decode;->CMD_LOOKUP:[S

    add-int/lit8 v16, v7, 0x2

    aget-short v15, v15, v16

    .line 1127
    .local v15, "copyLengthOffset":I
    sget-object v16, Lorg/brotli/dec/Decode;->CMD_LOOKUP:[S

    add-int/lit8 v17, v7, 0x3

    move/from16 v18, v3

    aget-short v3, v16, v17

    iput v3, v0, Lorg/brotli/dec/State;->distanceCode:I

    .line 1128
    invoke-static {v0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 1130
    and-int/lit16 v3, v8, 0xff

    .line 1131
    .local v3, "extraBits":I
    invoke-static {v0, v3}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/State;I)I

    move-result v16

    move/from16 v17, v4

    add-int v4, v14, v16

    iput v4, v0, Lorg/brotli/dec/State;->insertLength:I

    .line 1133
    .end local v3    # "extraBits":I
    invoke-static {v0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 1135
    shr-int/lit8 v3, v8, 0x8

    .line 1136
    .restart local v3    # "extraBits":I
    invoke-static {v0, v3}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/State;I)I

    move-result v4

    add-int/2addr v4, v15

    iput v4, v0, Lorg/brotli/dec/State;->copyLength:I

    .line 1139
    .end local v3    # "extraBits":I
    iput v10, v0, Lorg/brotli/dec/State;->j:I

    .line 1140
    iput v9, v0, Lorg/brotli/dec/State;->runningState:I

    .line 1144
    .end local v7    # "cmdCode":I
    .end local v8    # "insertAndCopyExtraBits":S
    .end local v14    # "insertLengthOffset":I
    .end local v15    # "copyLengthOffset":I
    :goto_3
    iget v3, v0, Lorg/brotli/dec/State;->trivialLiteralContext:I

    if-eqz v3, :cond_c

    .line 1145
    :cond_a
    iget v3, v0, Lorg/brotli/dec/State;->j:I

    iget v4, v0, Lorg/brotli/dec/State;->insertLength:I

    if-ge v3, v4, :cond_f

    .line 1146
    invoke-static {v0}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/State;)V

    .line 1147
    iget v3, v0, Lorg/brotli/dec/State;->literalBlockLength:I

    if-nez v3, :cond_b

    .line 1148
    invoke-static {v0}, Lorg/brotli/dec/Decode;->decodeLiteralBlockSwitch(Lorg/brotli/dec/State;)V

    .line 1150
    :cond_b
    iget v3, v0, Lorg/brotli/dec/State;->literalBlockLength:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lorg/brotli/dec/State;->literalBlockLength:I

    .line 1151
    invoke-static {v0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 1152
    iget v3, v0, Lorg/brotli/dec/State;->pos:I

    iget-object v4, v0, Lorg/brotli/dec/State;->literalTreeGroup:[I

    iget v7, v0, Lorg/brotli/dec/State;->literalTreeIdx:I

    invoke-static {v4, v7, v0}, Lorg/brotli/dec/Decode;->readSymbol([IILorg/brotli/dec/State;)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v6, v3

    .line 1153
    iget v3, v0, Lorg/brotli/dec/State;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lorg/brotli/dec/State;->pos:I

    .line 1154
    iget v3, v0, Lorg/brotli/dec/State;->j:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lorg/brotli/dec/State;->j:I

    .line 1155
    iget v3, v0, Lorg/brotli/dec/State;->pos:I

    if-lt v3, v1, :cond_a

    .line 1156
    iput v9, v0, Lorg/brotli/dec/State;->nextRunningState:I

    .line 1157
    iput v13, v0, Lorg/brotli/dec/State;->runningState:I

    .line 1158
    goto :goto_5

    .line 1162
    :cond_c
    iget v3, v0, Lorg/brotli/dec/State;->pos:I

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v5

    aget-byte v3, v6, v3

    and-int/lit16 v3, v3, 0xff

    .line 1163
    .local v3, "prevByte1":I
    iget v4, v0, Lorg/brotli/dec/State;->pos:I

    add-int/lit8 v4, v4, -0x2

    and-int/2addr v4, v5

    aget-byte v4, v6, v4

    and-int/lit16 v4, v4, 0xff

    .line 1164
    .local v4, "prevByte2":I
    :goto_4
    iget v7, v0, Lorg/brotli/dec/State;->j:I

    iget v8, v0, Lorg/brotli/dec/State;->insertLength:I

    if-ge v7, v8, :cond_f

    .line 1165
    invoke-static {v0}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/State;)V

    .line 1166
    iget v7, v0, Lorg/brotli/dec/State;->literalBlockLength:I

    if-nez v7, :cond_d

    .line 1167
    invoke-static {v0}, Lorg/brotli/dec/Decode;->decodeLiteralBlockSwitch(Lorg/brotli/dec/State;)V

    .line 1169
    :cond_d
    sget-object v7, Lorg/brotli/dec/Context;->LOOKUP:[I

    iget v8, v0, Lorg/brotli/dec/State;->contextLookupOffset1:I

    add-int/2addr v8, v3

    aget v7, v7, v8

    sget-object v8, Lorg/brotli/dec/Context;->LOOKUP:[I

    iget v14, v0, Lorg/brotli/dec/State;->contextLookupOffset2:I

    add-int/2addr v14, v4

    aget v8, v8, v14

    or-int/2addr v7, v8

    .line 1171
    .local v7, "literalContext":I
    iget-object v8, v0, Lorg/brotli/dec/State;->contextMap:[B

    iget v14, v0, Lorg/brotli/dec/State;->contextMapSlice:I

    add-int/2addr v14, v7

    aget-byte v8, v8, v14

    and-int/lit16 v8, v8, 0xff

    .line 1172
    .local v8, "literalTreeIdx":I
    iget v14, v0, Lorg/brotli/dec/State;->literalBlockLength:I

    add-int/lit8 v14, v14, -0x1

    iput v14, v0, Lorg/brotli/dec/State;->literalBlockLength:I

    .line 1173
    move v4, v3

    .line 1174
    invoke-static {v0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 1175
    iget-object v14, v0, Lorg/brotli/dec/State;->literalTreeGroup:[I

    invoke-static {v14, v8, v0}, Lorg/brotli/dec/Decode;->readSymbol([IILorg/brotli/dec/State;)I

    move-result v3

    .line 1176
    iget v14, v0, Lorg/brotli/dec/State;->pos:I

    int-to-byte v15, v3

    aput-byte v15, v6, v14

    .line 1177
    iget v14, v0, Lorg/brotli/dec/State;->pos:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v0, Lorg/brotli/dec/State;->pos:I

    .line 1178
    iget v14, v0, Lorg/brotli/dec/State;->j:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v0, Lorg/brotli/dec/State;->j:I

    .line 1179
    iget v14, v0, Lorg/brotli/dec/State;->pos:I

    if-lt v14, v1, :cond_e

    .line 1180
    iput v9, v0, Lorg/brotli/dec/State;->nextRunningState:I

    .line 1181
    iput v13, v0, Lorg/brotli/dec/State;->runningState:I

    .line 1182
    goto :goto_5

    .line 1179
    :cond_e
    nop

    .line 1184
    .end local v7    # "literalContext":I
    .end local v8    # "literalTreeIdx":I
    goto :goto_4

    .line 1186
    .end local v3    # "prevByte1":I
    .end local v4    # "prevByte2":I
    :cond_f
    :goto_5
    iget v3, v0, Lorg/brotli/dec/State;->runningState:I

    if-eq v3, v9, :cond_10

    .line 1187
    goto/16 :goto_e

    .line 1189
    :cond_10
    iget v3, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    iget v4, v0, Lorg/brotli/dec/State;->insertLength:I

    sub-int/2addr v3, v4

    iput v3, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    .line 1190
    iget v3, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    if-gtz v3, :cond_11

    .line 1191
    iput v12, v0, Lorg/brotli/dec/State;->runningState:I

    .line 1192
    goto/16 :goto_e

    .line 1194
    :cond_11
    iget v3, v0, Lorg/brotli/dec/State;->distanceCode:I

    .line 1195
    .local v3, "distanceCode":I
    if-gez v3, :cond_12

    .line 1197
    iget-object v4, v0, Lorg/brotli/dec/State;->rings:[I

    iget v7, v0, Lorg/brotli/dec/State;->distRbIdx:I

    aget v4, v4, v7

    iput v4, v0, Lorg/brotli/dec/State;->distance:I

    goto :goto_7

    .line 1199
    :cond_12
    invoke-static {v0}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/State;)V

    .line 1200
    iget v4, v0, Lorg/brotli/dec/State;->distanceBlockLength:I

    if-nez v4, :cond_13

    .line 1201
    invoke-static {v0}, Lorg/brotli/dec/Decode;->decodeDistanceBlockSwitch(Lorg/brotli/dec/State;)V

    .line 1203
    :cond_13
    iget v4, v0, Lorg/brotli/dec/State;->distanceBlockLength:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v0, Lorg/brotli/dec/State;->distanceBlockLength:I

    .line 1204
    invoke-static {v0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 1205
    iget-object v4, v0, Lorg/brotli/dec/State;->distContextMap:[B

    iget v7, v0, Lorg/brotli/dec/State;->distContextMapSlice:I

    add-int/2addr v7, v3

    aget-byte v4, v4, v7

    and-int/lit16 v4, v4, 0xff

    .line 1206
    .local v4, "distTreeIdx":I
    iget-object v7, v0, Lorg/brotli/dec/State;->distanceTreeGroup:[I

    invoke-static {v7, v4, v0}, Lorg/brotli/dec/Decode;->readSymbol([IILorg/brotli/dec/State;)I

    move-result v3

    .line 1207
    if-ge v3, v2, :cond_15

    .line 1208
    iget v7, v0, Lorg/brotli/dec/State;->distRbIdx:I

    sget-object v8, Lorg/brotli/dec/Decode;->DISTANCE_SHORT_CODE_INDEX_OFFSET:[I

    aget v8, v8, v3

    add-int/2addr v7, v8

    and-int/lit8 v7, v7, 0x3

    .line 1209
    .local v7, "index":I
    iget-object v8, v0, Lorg/brotli/dec/State;->rings:[I

    aget v8, v8, v7

    sget-object v9, Lorg/brotli/dec/Decode;->DISTANCE_SHORT_CODE_VALUE_OFFSET:[I

    aget v9, v9, v3

    add-int/2addr v8, v9

    iput v8, v0, Lorg/brotli/dec/State;->distance:I

    .line 1210
    iget v8, v0, Lorg/brotli/dec/State;->distance:I

    if-ltz v8, :cond_14

    .line 1213
    .end local v7    # "index":I
    goto :goto_7

    .line 1211
    .restart local v7    # "index":I
    :cond_14
    new-instance v2, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v8, "Negative distance"

    invoke-direct {v2, v8}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1214
    .end local v7    # "index":I
    :cond_15
    iget-object v7, v0, Lorg/brotli/dec/State;->distExtraBits:[B

    aget-byte v7, v7, v3

    .line 1216
    .local v7, "extraBits":I
    iget v8, v0, Lorg/brotli/dec/State;->bitOffset:I

    add-int/2addr v8, v7

    sget v9, Lorg/brotli/dec/BitReader;->BITNESS:I

    if-gt v8, v9, :cond_16

    .line 1217
    invoke-static {v0, v7}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v8

    .local v8, "bits":I
    goto :goto_6

    .line 1219
    .end local v8    # "bits":I
    :cond_16
    invoke-static {v0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 1220
    invoke-static {v0, v7}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/State;I)I

    move-result v8

    .line 1222
    .restart local v8    # "bits":I
    :goto_6
    iget-object v9, v0, Lorg/brotli/dec/State;->distOffset:[I

    aget v9, v9, v3

    iget v14, v0, Lorg/brotli/dec/State;->distancePostfixBits:I

    shl-int v14, v8, v14

    add-int/2addr v9, v14

    iput v9, v0, Lorg/brotli/dec/State;->distance:I

    .line 1226
    .end local v4    # "distTreeIdx":I
    .end local v7    # "extraBits":I
    .end local v8    # "bits":I
    :goto_7
    iget v4, v0, Lorg/brotli/dec/State;->maxDistance:I

    iget v7, v0, Lorg/brotli/dec/State;->maxBackwardDistance:I

    if-eq v4, v7, :cond_17

    iget v4, v0, Lorg/brotli/dec/State;->pos:I

    iget v7, v0, Lorg/brotli/dec/State;->maxBackwardDistance:I

    if-ge v4, v7, :cond_17

    .line 1228
    iget v4, v0, Lorg/brotli/dec/State;->pos:I

    iput v4, v0, Lorg/brotli/dec/State;->maxDistance:I

    goto :goto_8

    .line 1230
    :cond_17
    iget v4, v0, Lorg/brotli/dec/State;->maxBackwardDistance:I

    iput v4, v0, Lorg/brotli/dec/State;->maxDistance:I

    .line 1233
    :goto_8
    iget v4, v0, Lorg/brotli/dec/State;->distance:I

    iget v7, v0, Lorg/brotli/dec/State;->maxDistance:I

    if-le v4, v7, :cond_18

    .line 1234
    const/16 v4, 0x9

    iput v4, v0, Lorg/brotli/dec/State;->runningState:I

    .line 1235
    goto/16 :goto_e

    .line 1238
    :cond_18
    if-lez v3, :cond_19

    .line 1239
    iget v4, v0, Lorg/brotli/dec/State;->distRbIdx:I

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v4, v4, 0x3

    iput v4, v0, Lorg/brotli/dec/State;->distRbIdx:I

    .line 1240
    iget-object v4, v0, Lorg/brotli/dec/State;->rings:[I

    iget v7, v0, Lorg/brotli/dec/State;->distRbIdx:I

    iget v8, v0, Lorg/brotli/dec/State;->distance:I

    aput v8, v4, v7

    .line 1243
    :cond_19
    iget v4, v0, Lorg/brotli/dec/State;->copyLength:I

    iget v7, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    if-gt v4, v7, :cond_20

    .line 1246
    iput v10, v0, Lorg/brotli/dec/State;->j:I

    .line 1247
    iput v11, v0, Lorg/brotli/dec/State;->runningState:I

    .line 1250
    .end local v3    # "distanceCode":I
    :goto_9
    iget v3, v0, Lorg/brotli/dec/State;->pos:I

    iget v4, v0, Lorg/brotli/dec/State;->distance:I

    sub-int/2addr v3, v4

    and-int/2addr v3, v5

    .line 1251
    .local v3, "src":I
    iget v4, v0, Lorg/brotli/dec/State;->pos:I

    .line 1252
    .local v4, "dst":I
    iget v7, v0, Lorg/brotli/dec/State;->copyLength:I

    iget v8, v0, Lorg/brotli/dec/State;->j:I

    sub-int/2addr v7, v8

    .line 1253
    .local v7, "copyLength":I
    add-int v8, v3, v7

    .line 1254
    .local v8, "srcEnd":I
    add-int v9, v4, v7

    .line 1255
    .local v9, "dstEnd":I
    if-ge v8, v5, :cond_1d

    if-ge v9, v5, :cond_1d

    .line 1256
    if-lt v7, v13, :cond_1a

    if-le v8, v4, :cond_1b

    if-le v9, v3, :cond_1b

    :cond_1a
    goto :goto_a

    .line 1264
    :cond_1b
    invoke-static {v6, v4, v3, v8}, Lorg/brotli/dec/Utils;->copyBytesWithin([BIII)V

    goto :goto_c

    .line 1257
    :goto_a
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_b
    if-ge v10, v7, :cond_1c

    .line 1258
    add-int/lit8 v13, v4, 0x1

    .end local v4    # "dst":I
    .local v13, "dst":I
    add-int/lit8 v14, v3, 0x1

    .end local v3    # "src":I
    .local v14, "src":I
    aget-byte v3, v6, v3

    aput-byte v3, v6, v4

    .line 1259
    add-int/lit8 v3, v13, 0x1

    .end local v13    # "dst":I
    .local v3, "dst":I
    add-int/lit8 v4, v14, 0x1

    .end local v14    # "src":I
    .local v4, "src":I
    aget-byte v14, v6, v14

    aput-byte v14, v6, v13

    .line 1260
    add-int/lit8 v13, v3, 0x1

    .end local v3    # "dst":I
    .restart local v13    # "dst":I
    add-int/lit8 v14, v4, 0x1

    .end local v4    # "src":I
    .restart local v14    # "src":I
    aget-byte v4, v6, v4

    aput-byte v4, v6, v3

    .line 1261
    add-int/lit8 v4, v13, 0x1

    .end local v13    # "dst":I
    .local v4, "dst":I
    add-int/lit8 v3, v14, 0x1

    .end local v14    # "src":I
    .local v3, "src":I
    aget-byte v14, v6, v14

    aput-byte v14, v6, v13

    .line 1257
    add-int/lit8 v10, v10, 0x4

    goto :goto_b

    :cond_1c
    nop

    .line 1266
    .end local v10    # "k":I
    :goto_c
    iget v10, v0, Lorg/brotli/dec/State;->j:I

    add-int/2addr v10, v7

    iput v10, v0, Lorg/brotli/dec/State;->j:I

    .line 1267
    iget v10, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    sub-int/2addr v10, v7

    iput v10, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    .line 1268
    iget v10, v0, Lorg/brotli/dec/State;->pos:I

    add-int/2addr v10, v7

    iput v10, v0, Lorg/brotli/dec/State;->pos:I

    goto :goto_d

    .line 1270
    :cond_1d
    iget v10, v0, Lorg/brotli/dec/State;->j:I

    iget v14, v0, Lorg/brotli/dec/State;->copyLength:I

    if-ge v10, v14, :cond_1e

    .line 1271
    iget v10, v0, Lorg/brotli/dec/State;->pos:I

    iget v14, v0, Lorg/brotli/dec/State;->pos:I

    iget v15, v0, Lorg/brotli/dec/State;->distance:I

    sub-int/2addr v14, v15

    and-int/2addr v14, v5

    aget-byte v14, v6, v14

    aput-byte v14, v6, v10

    .line 1273
    iget v10, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    .line 1274
    iget v10, v0, Lorg/brotli/dec/State;->pos:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v0, Lorg/brotli/dec/State;->pos:I

    .line 1275
    iget v10, v0, Lorg/brotli/dec/State;->j:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v0, Lorg/brotli/dec/State;->j:I

    .line 1276
    iget v10, v0, Lorg/brotli/dec/State;->pos:I

    if-lt v10, v1, :cond_1d

    .line 1277
    iput v11, v0, Lorg/brotli/dec/State;->nextRunningState:I

    .line 1278
    iput v13, v0, Lorg/brotli/dec/State;->runningState:I

    .line 1279
    nop

    .line 1283
    :cond_1e
    :goto_d
    iget v10, v0, Lorg/brotli/dec/State;->runningState:I

    if-ne v10, v11, :cond_1f

    .line 1284
    iput v12, v0, Lorg/brotli/dec/State;->runningState:I

    .line 1093
    .end local v3    # "src":I
    .end local v4    # "dst":I
    .end local v7    # "copyLength":I
    .end local v8    # "srcEnd":I
    .end local v9    # "dstEnd":I
    :cond_1f
    :goto_e
    move/from16 v4, v17

    move/from16 v3, v18

    goto/16 :goto_1

    .line 1244
    .local v3, "distanceCode":I
    :cond_20
    new-instance v2, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v4, "Invalid backward reference"

    invoke-direct {v2, v4}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1097
    .end local v3    # "distanceCode":I
    :pswitch_b
    move/from16 v18, v3

    move/from16 v17, v4

    iget v3, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    if-ltz v3, :cond_21

    .line 1100
    invoke-static {v0}, Lorg/brotli/dec/Decode;->readNextMetablockHeader(Lorg/brotli/dec/State;)V

    .line 1102
    invoke-static {v0}, Lorg/brotli/dec/Decode;->calculateFence(Lorg/brotli/dec/State;)I

    move-result v1

    .line 1103
    iget v3, v0, Lorg/brotli/dec/State;->ringBufferSize:I

    add-int/lit8 v5, v3, -0x1

    .line 1104
    iget-object v6, v0, Lorg/brotli/dec/State;->ringBuffer:[B

    .line 1105
    move/from16 v4, v17

    move/from16 v3, v18

    goto/16 :goto_1

    .line 1098
    :cond_21
    new-instance v2, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {v2, v8}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1344
    :cond_22
    move/from16 v17, v4

    iget v2, v0, Lorg/brotli/dec/State;->runningState:I

    if-ne v2, v9, :cond_24

    .line 1345
    iget v2, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    if-ltz v2, :cond_23

    .line 1348
    invoke-static {v0}, Lorg/brotli/dec/BitReader;->jumpToByteBoundary(Lorg/brotli/dec/State;)V

    .line 1349
    move/from16 v2, v17

    invoke-static {v0, v2}, Lorg/brotli/dec/BitReader;->checkHealth(Lorg/brotli/dec/State;I)V

    goto :goto_f

    .line 1346
    :cond_23
    new-instance v2, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {v2, v8}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1351
    :cond_24
    :goto_f
    return-void

    .line 1077
    .end local v1    # "fence":I
    .end local v5    # "ringBufferMask":I
    .end local v6    # "ringBuffer":[B
    :cond_25
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t decompress after close"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1074
    :cond_26
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t decompress until initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_b
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private static doUseDictionary(Lorg/brotli/dec/State;I)V
    .locals 12
    .param p0, "s"    # Lorg/brotli/dec/State;
    .param p1, "fence"    # I

    .line 958
    iget v0, p0, Lorg/brotli/dec/State;->distance:I

    const v1, 0x7ffffffc

    const-string v2, "Invalid backward reference"

    if-gt v0, v1, :cond_5

    .line 961
    iget v0, p0, Lorg/brotli/dec/State;->distance:I

    iget v1, p0, Lorg/brotli/dec/State;->maxDistance:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v3, p0, Lorg/brotli/dec/State;->cdTotalSize:I

    sub-int/2addr v0, v3

    .line 962
    .local v0, "address":I
    if-gez v0, :cond_0

    .line 963
    neg-int v2, v0

    sub-int/2addr v2, v1

    iget v1, p0, Lorg/brotli/dec/State;->copyLength:I

    invoke-static {p0, v2, v1}, Lorg/brotli/dec/Decode;->initializeCompoundDictionaryCopy(Lorg/brotli/dec/State;II)V

    .line 964
    const/16 v1, 0xe

    iput v1, p0, Lorg/brotli/dec/State;->runningState:I

    goto :goto_0

    .line 967
    :cond_0
    invoke-static {}, Lorg/brotli/dec/Dictionary;->getData()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 968
    .local v4, "dictionaryData":Ljava/nio/ByteBuffer;
    iget v6, p0, Lorg/brotli/dec/State;->copyLength:I

    .line 969
    .local v6, "wordLength":I
    const/16 v3, 0x1f

    if-gt v6, v3, :cond_4

    .line 972
    sget-object v3, Lorg/brotli/dec/Dictionary;->sizeBits:[I

    aget v9, v3, v6

    .line 973
    .local v9, "shift":I
    if-eqz v9, :cond_3

    .line 976
    sget-object v3, Lorg/brotli/dec/Dictionary;->offsets:[I

    aget v3, v3, v6

    .line 977
    .local v3, "offset":I
    shl-int v5, v1, v9

    add-int/lit8 v1, v5, -0x1

    .line 978
    .local v1, "mask":I
    and-int v10, v0, v1

    .line 979
    .local v10, "wordIdx":I
    ushr-int v8, v0, v9

    .line 980
    .local v8, "transformIdx":I
    mul-int v5, v10, v6

    add-int/2addr v5, v3

    .line 981
    .end local v3    # "offset":I
    .local v5, "offset":I
    sget-object v7, Lorg/brotli/dec/Transform;->RFC_TRANSFORMS:Lorg/brotli/dec/Transform$Transforms;

    .line 982
    .local v7, "transforms":Lorg/brotli/dec/Transform$Transforms;
    iget v3, v7, Lorg/brotli/dec/Transform$Transforms;->numTransforms:I

    if-ge v8, v3, :cond_2

    .line 985
    iget-object v2, p0, Lorg/brotli/dec/State;->ringBuffer:[B

    iget v3, p0, Lorg/brotli/dec/State;->pos:I

    invoke-static/range {v2 .. v8}, Lorg/brotli/dec/Transform;->transformDictionaryWord([BILjava/nio/ByteBuffer;IILorg/brotli/dec/Transform$Transforms;I)I

    move-result v2

    .line 987
    .local v2, "len":I
    iget v3, p0, Lorg/brotli/dec/State;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/brotli/dec/State;->pos:I

    .line 988
    iget v3, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    sub-int/2addr v3, v2

    iput v3, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    .line 989
    iget v3, p0, Lorg/brotli/dec/State;->pos:I

    const/4 v11, 0x4

    if-lt v3, p1, :cond_1

    .line 990
    iput v11, p0, Lorg/brotli/dec/State;->nextRunningState:I

    .line 991
    const/16 v3, 0xc

    iput v3, p0, Lorg/brotli/dec/State;->runningState:I

    .line 992
    return-void

    .line 994
    :cond_1
    iput v11, p0, Lorg/brotli/dec/State;->runningState:I

    .line 996
    .end local v1    # "mask":I
    .end local v2    # "len":I
    .end local v4    # "dictionaryData":Ljava/nio/ByteBuffer;
    .end local v5    # "offset":I
    .end local v6    # "wordLength":I
    .end local v7    # "transforms":Lorg/brotli/dec/Transform$Transforms;
    .end local v8    # "transformIdx":I
    .end local v9    # "shift":I
    .end local v10    # "wordIdx":I
    :goto_0
    return-void

    .line 983
    .restart local v1    # "mask":I
    .restart local v4    # "dictionaryData":Ljava/nio/ByteBuffer;
    .restart local v5    # "offset":I
    .restart local v6    # "wordLength":I
    .restart local v7    # "transforms":Lorg/brotli/dec/Transform$Transforms;
    .restart local v8    # "transformIdx":I
    .restart local v9    # "shift":I
    .restart local v10    # "wordIdx":I
    :cond_2
    new-instance v3, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {v3, v2}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 974
    .end local v1    # "mask":I
    .end local v5    # "offset":I
    .end local v7    # "transforms":Lorg/brotli/dec/Transform$Transforms;
    .end local v8    # "transformIdx":I
    .end local v10    # "wordIdx":I
    :cond_3
    new-instance v1, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {v1, v2}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 970
    .end local v9    # "shift":I
    :cond_4
    new-instance v1, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {v1, v2}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 959
    .end local v0    # "address":I
    .end local v4    # "dictionaryData":Ljava/nio/ByteBuffer;
    .end local v6    # "wordLength":I
    :cond_5
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {v0, v2}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static enableEagerOutput(Lorg/brotli/dec/State;)V
    .locals 2
    .param p0, "s"    # Lorg/brotli/dec/State;

    .line 255
    iget v0, p0, Lorg/brotli/dec/State;->runningState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 258
    iput v1, p0, Lorg/brotli/dec/State;->isEager:I

    .line 259
    return-void

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "State MUST be freshly initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static enableLargeWindow(Lorg/brotli/dec/State;)V
    .locals 2
    .param p0, "s"    # Lorg/brotli/dec/State;

    .line 262
    iget v0, p0, Lorg/brotli/dec/State;->runningState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 265
    iput v1, p0, Lorg/brotli/dec/State;->isLargeWindow:I

    .line 266
    return-void

    .line 263
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "State MUST be freshly initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static initState(Lorg/brotli/dec/State;Ljava/io/InputStream;)V
    .locals 3
    .param p0, "s"    # Lorg/brotli/dec/State;
    .param p1, "input"    # Ljava/io/InputStream;

    .line 294
    iget v0, p0, Lorg/brotli/dec/State;->runningState:I

    if-nez v0, :cond_0

    .line 298
    const/16 v0, 0xc13

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/brotli/dec/State;->blockTrees:[I

    .line 299
    iget-object v0, p0, Lorg/brotli/dec/State;->blockTrees:[I

    const/4 v1, 0x0

    const/4 v2, 0x7

    aput v2, v0, v1

    .line 300
    const/4 v0, 0x3

    iput v0, p0, Lorg/brotli/dec/State;->distRbIdx:I

    .line 301
    const v1, 0x7ffffffc

    const/16 v2, 0x78

    invoke-static {v1, v0, v2}, Lorg/brotli/dec/Decode;->calculateDistanceAlphabetLimit(III)I

    move-result v0

    .line 302
    .local v0, "maxDistanceAlphabetLimit":I
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/brotli/dec/State;->distExtraBits:[B

    .line 303
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/brotli/dec/State;->distOffset:[I

    .line 304
    iput-object p1, p0, Lorg/brotli/dec/State;->input:Ljava/io/InputStream;

    .line 305
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->initBitReader(Lorg/brotli/dec/State;)V

    .line 306
    const/4 v1, 0x1

    iput v1, p0, Lorg/brotli/dec/State;->runningState:I

    .line 307
    return-void

    .line 295
    .end local v0    # "maxDistanceAlphabetLimit":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "State MUST be uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static initializeCompoundDictionary(Lorg/brotli/dec/State;)V
    .locals 7
    .param p0, "s"    # Lorg/brotli/dec/State;

    .line 999
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/brotli/dec/State;->cdBlockMap:[B

    .line 1000
    const/16 v0, 0x8

    .line 1002
    .local v0, "blockBits":I
    :goto_0
    iget v1, p0, Lorg/brotli/dec/State;->cdTotalSize:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    ushr-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 1003
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1005
    :cond_0
    add-int/lit8 v0, v0, -0x8

    .line 1006
    iput v0, p0, Lorg/brotli/dec/State;->cdBlockBits:I

    .line 1007
    const/4 v1, 0x0

    .line 1008
    .local v1, "cursor":I
    const/4 v3, 0x0

    .line 1009
    .local v3, "index":I
    :goto_1
    iget v4, p0, Lorg/brotli/dec/State;->cdTotalSize:I

    if-ge v1, v4, :cond_2

    .line 1010
    :goto_2
    iget-object v4, p0, Lorg/brotli/dec/State;->cdChunkOffsets:[I

    add-int/lit8 v5, v3, 0x1

    aget v4, v4, v5

    if-ge v4, v1, :cond_1

    .line 1011
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1013
    :cond_1
    iget-object v4, p0, Lorg/brotli/dec/State;->cdBlockMap:[B

    ushr-int v5, v1, v0

    int-to-byte v6, v3

    aput-byte v6, v4, v5

    .line 1014
    shl-int v4, v2, v0

    add-int/2addr v1, v4

    goto :goto_1

    .line 1016
    :cond_2
    return-void
.end method

.method private static initializeCompoundDictionaryCopy(Lorg/brotli/dec/State;II)V
    .locals 4
    .param p0, "s"    # Lorg/brotli/dec/State;
    .param p1, "address"    # I
    .param p2, "length"    # I

    .line 1019
    iget v0, p0, Lorg/brotli/dec/State;->cdBlockBits:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1020
    invoke-static {p0}, Lorg/brotli/dec/Decode;->initializeCompoundDictionary(Lorg/brotli/dec/State;)V

    .line 1022
    :cond_0
    iget-object v0, p0, Lorg/brotli/dec/State;->cdBlockMap:[B

    iget v1, p0, Lorg/brotli/dec/State;->cdBlockBits:I

    ushr-int v1, p1, v1

    aget-byte v0, v0, v1

    .line 1023
    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lorg/brotli/dec/State;->cdChunkOffsets:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    if-lt p1, v1, :cond_1

    .line 1024
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1026
    :cond_1
    iget v1, p0, Lorg/brotli/dec/State;->cdTotalSize:I

    add-int v2, p1, p2

    if-gt v1, v2, :cond_2

    .line 1030
    iget v1, p0, Lorg/brotli/dec/State;->distRbIdx:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x3

    iput v1, p0, Lorg/brotli/dec/State;->distRbIdx:I

    .line 1031
    iget-object v1, p0, Lorg/brotli/dec/State;->rings:[I

    iget v2, p0, Lorg/brotli/dec/State;->distRbIdx:I

    iget v3, p0, Lorg/brotli/dec/State;->distance:I

    aput v3, v1, v2

    .line 1032
    iget v1, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    sub-int/2addr v1, p2

    iput v1, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    .line 1033
    iput v0, p0, Lorg/brotli/dec/State;->cdBrIndex:I

    .line 1034
    iget-object v1, p0, Lorg/brotli/dec/State;->cdChunkOffsets:[I

    aget v1, v1, v0

    sub-int v1, p1, v1

    iput v1, p0, Lorg/brotli/dec/State;->cdBrOffset:I

    .line 1035
    iput p2, p0, Lorg/brotli/dec/State;->cdBrLength:I

    .line 1036
    const/4 v1, 0x0

    iput v1, p0, Lorg/brotli/dec/State;->cdBrCopied:I

    .line 1037
    return-void

    .line 1027
    :cond_2
    new-instance v1, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v2, "Invalid backward reference"

    invoke-direct {v1, v2}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static inverseMoveToFrontTransform([BI)V
    .locals 4
    .param p0, "v"    # [B
    .param p1, "vLen"    # I

    .line 419
    const/16 v0, 0x100

    new-array v1, v0, [I

    .line 420
    .local v1, "mtf":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 421
    aput v2, v1, v2

    .line 420
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 423
    .end local v2    # "i":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 424
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 425
    .local v2, "index":I
    aget v3, v1, v2

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    .line 426
    if-eqz v2, :cond_1

    .line 427
    invoke-static {v1, v2}, Lorg/brotli/dec/Decode;->moveToFront([II)V

    .line 423
    .end local v2    # "index":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 430
    .end local v0    # "i":I
    return-void
.end method

.method private static log2floor(I)I
    .locals 3
    .param p0, "i"    # I

    .line 139
    const/4 v0, -0x1

    .line 140
    .local v0, "result":I
    const/16 v1, 0x10

    .line 141
    .local v1, "step":I
    :goto_0
    if-lez v1, :cond_1

    .line 142
    ushr-int v2, p0, v1

    if-eqz v2, :cond_0

    .line 143
    add-int/2addr v0, v1

    .line 144
    ushr-int/2addr p0, v1

    .line 146
    :cond_0
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_1
    add-int v2, v0, p0

    return v2
.end method

.method private static maybeReallocateRingBuffer(Lorg/brotli/dec/State;)V
    .locals 6
    .param p0, "s"    # Lorg/brotli/dec/State;

    .line 710
    iget v0, p0, Lorg/brotli/dec/State;->maxRingBufferSize:I

    .line 711
    .local v0, "newSize":I
    iget v1, p0, Lorg/brotli/dec/State;->expectedTotalSize:I

    if-le v0, v1, :cond_1

    .line 713
    iget v1, p0, Lorg/brotli/dec/State;->expectedTotalSize:I

    .line 714
    .local v1, "minimalNewSize":I
    :goto_0
    shr-int/lit8 v2, v0, 0x1

    if-le v2, v1, :cond_0

    .line 715
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 717
    :cond_0
    iget v2, p0, Lorg/brotli/dec/State;->inputEnd:I

    if-nez v2, :cond_1

    const/16 v2, 0x4000

    if-ge v0, v2, :cond_1

    iget v3, p0, Lorg/brotli/dec/State;->maxRingBufferSize:I

    if-lt v3, v2, :cond_1

    .line 718
    const/16 v0, 0x4000

    .line 721
    .end local v1    # "minimalNewSize":I
    :cond_1
    iget v1, p0, Lorg/brotli/dec/State;->ringBufferSize:I

    if-gt v0, v1, :cond_2

    .line 722
    return-void

    .line 724
    :cond_2
    add-int/lit8 v1, v0, 0x25

    .line 725
    .local v1, "ringBufferSizeWithSlack":I
    new-array v2, v1, [B

    .line 726
    .local v2, "newBuffer":[B
    iget-object v3, p0, Lorg/brotli/dec/State;->ringBuffer:[B

    array-length v3, v3

    if-eqz v3, :cond_3

    .line 727
    iget-object v3, p0, Lorg/brotli/dec/State;->ringBuffer:[B

    iget v4, p0, Lorg/brotli/dec/State;->ringBufferSize:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 729
    :cond_3
    iput-object v2, p0, Lorg/brotli/dec/State;->ringBuffer:[B

    .line 730
    iput v0, p0, Lorg/brotli/dec/State;->ringBufferSize:I

    .line 731
    return-void
.end method

.method private static moveToFront([II)V
    .locals 2
    .param p0, "v"    # [I
    .param p1, "index"    # I

    .line 411
    aget v0, p0, p1

    .line 412
    .local v0, "value":I
    :goto_0
    if-lez p1, :cond_0

    .line 413
    add-int/lit8 v1, p1, -0x1

    aget v1, p0, v1

    aput v1, p0, p1

    .line 412
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 415
    :cond_0
    const/4 v1, 0x0

    aput v0, p0, v1

    .line 416
    return-void
.end method

.method private static readBlockLength([IILorg/brotli/dec/State;)I
    .locals 4
    .param p0, "tableGroup"    # [I
    .param p1, "tableIdx"    # I
    .param p2, "s"    # Lorg/brotli/dec/State;

    .line 403
    invoke-static {p2}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 404
    invoke-static {p0, p1, p2}, Lorg/brotli/dec/Decode;->readSymbol([IILorg/brotli/dec/State;)I

    move-result v0

    .line 405
    .local v0, "code":I
    sget-object v1, Lorg/brotli/dec/Decode;->BLOCK_LENGTH_N_BITS:[I

    aget v1, v1, v0

    .line 406
    .local v1, "n":I
    invoke-static {p2}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 407
    sget-object v2, Lorg/brotli/dec/Decode;->BLOCK_LENGTH_OFFSET:[I

    aget v2, v2, v0

    invoke-static {p2, v1}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/State;I)I

    move-result v3

    add-int/2addr v2, v3

    return v2
.end method

.method private static readComplexHuffmanCode(II[IILorg/brotli/dec/State;)I
    .locals 10
    .param p0, "alphabetSizeLimit"    # I
    .param p1, "skip"    # I
    .param p2, "tableGroup"    # [I
    .param p3, "tableIdx"    # I
    .param p4, "s"    # Lorg/brotli/dec/State;

    .line 572
    new-array v0, p0, [I

    .line 573
    .local v0, "codeLengths":[I
    const/16 v1, 0x12

    new-array v2, v1, [I

    .line 574
    .local v2, "codeLengthCodeLengths":[I
    const/16 v3, 0x20

    .line 575
    .local v3, "space":I
    const/4 v4, 0x0

    .line 576
    .local v4, "numCodes":I
    move v5, p1

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_1

    if-lez v3, :cond_1

    .line 577
    sget-object v6, Lorg/brotli/dec/Decode;->CODE_LENGTH_CODE_ORDER:[I

    aget v6, v6, v5

    .line 578
    .local v6, "codeLenIdx":I
    invoke-static {p4}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 579
    invoke-static {p4}, Lorg/brotli/dec/BitReader;->peekBits(Lorg/brotli/dec/State;)I

    move-result v7

    and-int/lit8 v7, v7, 0xf

    .line 581
    .local v7, "p":I
    iget v8, p4, Lorg/brotli/dec/State;->bitOffset:I

    sget-object v9, Lorg/brotli/dec/Decode;->FIXED_TABLE:[I

    aget v9, v9, v7

    shr-int/lit8 v9, v9, 0x10

    add-int/2addr v8, v9

    iput v8, p4, Lorg/brotli/dec/State;->bitOffset:I

    .line 582
    sget-object v8, Lorg/brotli/dec/Decode;->FIXED_TABLE:[I

    aget v8, v8, v7

    const v9, 0xffff

    and-int/2addr v8, v9

    .line 583
    .local v8, "v":I
    aput v8, v2, v6

    .line 584
    if-eqz v8, :cond_0

    .line 585
    const/16 v9, 0x20

    shr-int/2addr v9, v8

    sub-int/2addr v3, v9

    .line 586
    add-int/lit8 v4, v4, 0x1

    .line 576
    .end local v6    # "codeLenIdx":I
    .end local v7    # "p":I
    .end local v8    # "v":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 589
    .end local v5    # "i":I
    :cond_1
    if-eqz v3, :cond_2

    const/4 v1, 0x1

    if-ne v4, v1, :cond_3

    :cond_2
    goto :goto_1

    .line 590
    :cond_3
    new-instance v1, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v5, "Corrupted Huffman code histogram"

    invoke-direct {v1, v5}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 593
    :goto_1
    invoke-static {v2, p0, v0, p4}, Lorg/brotli/dec/Decode;->readHuffmanCodeLengths([II[ILorg/brotli/dec/State;)V

    .line 595
    const/16 v1, 0x8

    invoke-static {p2, p3, v1, v0, p0}, Lorg/brotli/dec/Huffman;->buildHuffmanTable([III[II)I

    move-result v1

    return v1
.end method

.method private static readHuffmanCode(II[IILorg/brotli/dec/State;)I
    .locals 2
    .param p0, "alphabetSizeMax"    # I
    .param p1, "alphabetSizeLimit"    # I
    .param p2, "tableGroup"    # [I
    .param p3, "tableIdx"    # I
    .param p4, "s"    # Lorg/brotli/dec/State;

    .line 606
    invoke-static {p4}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/State;)V

    .line 607
    invoke-static {p4}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 608
    const/4 v0, 0x2

    invoke-static {p4, v0}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v0

    .line 609
    .local v0, "simpleCodeOrSkip":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 610
    invoke-static {p0, p1, p2, p3, p4}, Lorg/brotli/dec/Decode;->readSimpleHuffmanCode(II[IILorg/brotli/dec/State;)I

    move-result v1

    return v1

    .line 612
    :cond_0
    invoke-static {p1, v0, p2, p3, p4}, Lorg/brotli/dec/Decode;->readComplexHuffmanCode(II[IILorg/brotli/dec/State;)I

    move-result v1

    return v1
.end method

.method private static readHuffmanCodeLengths([II[ILorg/brotli/dec/State;)V
    .locals 18
    .param p0, "codeLengthCodeLengths"    # [I
    .param p1, "numSymbols"    # I
    .param p2, "codeLengths"    # [I
    .param p3, "s"    # Lorg/brotli/dec/State;

    .line 434
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    .line 435
    .local v3, "symbol":I
    const/16 v4, 0x8

    .line 436
    .local v4, "prevCodeLen":I
    const/4 v5, 0x0

    .line 437
    .local v5, "repeat":I
    const/4 v6, 0x0

    .line 438
    .local v6, "repeatCodeLen":I
    const v7, 0x8000

    .line 439
    .local v7, "space":I
    const/16 v8, 0x21

    new-array v8, v8, [I

    .line 440
    .local v8, "table":[I
    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    .line 441
    .local v9, "tableIdx":I
    const/4 v10, 0x5

    const/16 v11, 0x12

    move-object/from16 v12, p0

    invoke-static {v8, v9, v10, v12, v11}, Lorg/brotli/dec/Huffman;->buildHuffmanTable([III[II)I

    .line 443
    :goto_0
    if-ge v3, v0, :cond_8

    if-lez v7, :cond_8

    .line 444
    invoke-static {v2}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/State;)V

    .line 445
    invoke-static {v2}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 446
    invoke-static {v2}, Lorg/brotli/dec/BitReader;->peekBits(Lorg/brotli/dec/State;)I

    move-result v10

    and-int/lit8 v10, v10, 0x1f

    .line 447
    .local v10, "p":I
    iget v11, v2, Lorg/brotli/dec/State;->bitOffset:I

    aget v13, v8, v10

    const/16 v14, 0x10

    shr-int/2addr v13, v14

    add-int/2addr v11, v13

    iput v11, v2, Lorg/brotli/dec/State;->bitOffset:I

    .line 448
    aget v11, v8, v10

    const v13, 0xffff

    and-int/2addr v11, v13

    .line 449
    .local v11, "codeLen":I
    if-ge v11, v14, :cond_1

    .line 450
    const/4 v5, 0x0

    .line 451
    add-int/lit8 v13, v3, 0x1

    .end local v3    # "symbol":I
    .local v13, "symbol":I
    aput v11, v1, v3

    .line 452
    if-eqz v11, :cond_0

    .line 453
    move v3, v11

    .line 454
    .end local v4    # "prevCodeLen":I
    .local v3, "prevCodeLen":I
    const v4, 0x8000

    shr-int/2addr v4, v11

    sub-int/2addr v7, v4

    move v4, v3

    move v3, v13

    goto :goto_2

    .line 452
    .end local v3    # "prevCodeLen":I
    .restart local v4    # "prevCodeLen":I
    :cond_0
    move v3, v13

    goto :goto_2

    .line 457
    .end local v13    # "symbol":I
    .local v3, "symbol":I
    :cond_1
    add-int/lit8 v13, v11, -0xe

    .line 458
    .local v13, "extraBits":I
    const/4 v15, 0x0

    .line 459
    .local v15, "newLen":I
    if-ne v11, v14, :cond_2

    .line 460
    move v15, v4

    .line 462
    :cond_2
    if-eq v6, v15, :cond_3

    .line 463
    const/4 v5, 0x0

    .line 464
    move v6, v15

    .line 466
    :cond_3
    move v14, v5

    .line 467
    .local v14, "oldRepeat":I
    if-lez v5, :cond_4

    .line 468
    add-int/lit8 v5, v5, -0x2

    .line 469
    shl-int/2addr v5, v13

    .line 471
    :cond_4
    invoke-static {v2}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 472
    invoke-static {v2, v13}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v16

    add-int/lit8 v16, v16, 0x3

    add-int v5, v5, v16

    .line 473
    sub-int v2, v5, v14

    .line 474
    .local v2, "repeatDelta":I
    move/from16 v16, v4

    .end local v4    # "prevCodeLen":I
    .local v16, "prevCodeLen":I
    add-int v4, v3, v2

    if-gt v4, v0, :cond_7

    .line 477
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_5

    .line 478
    add-int/lit8 v17, v3, 0x1

    .end local v3    # "symbol":I
    .local v17, "symbol":I
    aput v6, v1, v3

    .line 477
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v17

    goto :goto_1

    .end local v17    # "symbol":I
    .restart local v3    # "symbol":I
    :cond_5
    nop

    .line 480
    .end local v4    # "i":I
    if-eqz v6, :cond_6

    .line 481
    rsub-int/lit8 v4, v6, 0xf

    shl-int v4, v2, v4

    sub-int/2addr v7, v4

    move/from16 v4, v16

    goto :goto_2

    .line 480
    :cond_6
    move/from16 v4, v16

    .line 484
    .end local v2    # "repeatDelta":I
    .end local v10    # "p":I
    .end local v11    # "codeLen":I
    .end local v13    # "extraBits":I
    .end local v14    # "oldRepeat":I
    .end local v15    # "newLen":I
    .end local v16    # "prevCodeLen":I
    .local v4, "prevCodeLen":I
    :goto_2
    move-object/from16 v2, p3

    goto :goto_0

    .line 475
    .end local v4    # "prevCodeLen":I
    .restart local v2    # "repeatDelta":I
    .restart local v10    # "p":I
    .restart local v11    # "codeLen":I
    .restart local v13    # "extraBits":I
    .restart local v14    # "oldRepeat":I
    .restart local v15    # "newLen":I
    .restart local v16    # "prevCodeLen":I
    :cond_7
    new-instance v4, Lorg/brotli/dec/BrotliRuntimeException;

    move/from16 v17, v2

    .end local v2    # "repeatDelta":I
    .local v17, "repeatDelta":I
    const-string v2, "symbol + repeatDelta > numSymbols"

    invoke-direct {v4, v2}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 443
    .end local v10    # "p":I
    .end local v11    # "codeLen":I
    .end local v13    # "extraBits":I
    .end local v14    # "oldRepeat":I
    .end local v15    # "newLen":I
    .end local v16    # "prevCodeLen":I
    .end local v17    # "repeatDelta":I
    .restart local v4    # "prevCodeLen":I
    :cond_8
    move/from16 v16, v4

    .line 485
    .end local v4    # "prevCodeLen":I
    .restart local v16    # "prevCodeLen":I
    if-nez v7, :cond_9

    .line 489
    invoke-static {v1, v3, v0}, Lorg/brotli/dec/Utils;->fillIntsWithZeroes([III)V

    .line 490
    return-void

    .line 486
    :cond_9
    new-instance v2, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v4, "Unused space"

    invoke-direct {v2, v4}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static readMetablockHuffmanCodesAndContextMaps(Lorg/brotli/dec/State;)V
    .locals 12
    .param p0, "s"    # Lorg/brotli/dec/State;

    .line 823
    invoke-static {p0}, Lorg/brotli/dec/Decode;->decodeVarLenUnsignedByte(Lorg/brotli/dec/State;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/brotli/dec/State;->numLiteralBlockTypes:I

    .line 824
    iget v0, p0, Lorg/brotli/dec/State;->numLiteralBlockTypes:I

    const/4 v2, 0x0

    invoke-static {p0, v2, v0}, Lorg/brotli/dec/Decode;->readMetablockPartition(Lorg/brotli/dec/State;II)I

    move-result v0

    iput v0, p0, Lorg/brotli/dec/State;->literalBlockLength:I

    .line 825
    invoke-static {p0}, Lorg/brotli/dec/Decode;->decodeVarLenUnsignedByte(Lorg/brotli/dec/State;)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lorg/brotli/dec/State;->numCommandBlockTypes:I

    .line 826
    iget v0, p0, Lorg/brotli/dec/State;->numCommandBlockTypes:I

    invoke-static {p0, v1, v0}, Lorg/brotli/dec/Decode;->readMetablockPartition(Lorg/brotli/dec/State;II)I

    move-result v0

    iput v0, p0, Lorg/brotli/dec/State;->commandBlockLength:I

    .line 827
    invoke-static {p0}, Lorg/brotli/dec/Decode;->decodeVarLenUnsignedByte(Lorg/brotli/dec/State;)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lorg/brotli/dec/State;->numDistanceBlockTypes:I

    .line 828
    iget v0, p0, Lorg/brotli/dec/State;->numDistanceBlockTypes:I

    const/4 v3, 0x2

    invoke-static {p0, v3, v0}, Lorg/brotli/dec/Decode;->readMetablockPartition(Lorg/brotli/dec/State;II)I

    move-result v0

    iput v0, p0, Lorg/brotli/dec/State;->distanceBlockLength:I

    .line 830
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/State;)V

    .line 831
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 832
    invoke-static {p0, v3}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v0

    iput v0, p0, Lorg/brotli/dec/State;->distancePostfixBits:I

    .line 833
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v4

    iget v5, p0, Lorg/brotli/dec/State;->distancePostfixBits:I

    shl-int/2addr v4, v5

    iput v4, p0, Lorg/brotli/dec/State;->numDirectDistanceCodes:I

    .line 835
    iget v4, p0, Lorg/brotli/dec/State;->numLiteralBlockTypes:I

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/brotli/dec/State;->contextModes:[B

    .line 836
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v5, p0, Lorg/brotli/dec/State;->numLiteralBlockTypes:I

    if-ge v4, v5, :cond_1

    .line 838
    add-int/lit8 v5, v4, 0x60

    iget v6, p0, Lorg/brotli/dec/State;->numLiteralBlockTypes:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 839
    .local v5, "limit":I
    :goto_1
    if-ge v4, v5, :cond_0

    .line 840
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 841
    iget-object v6, p0, Lorg/brotli/dec/State;->contextModes:[B

    invoke-static {p0, v3}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    .line 839
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 843
    :cond_0
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/State;)V

    .line 844
    .end local v5    # "limit":I
    goto :goto_0

    .line 836
    :cond_1
    nop

    .line 847
    .end local v4    # "i":I
    iget v4, p0, Lorg/brotli/dec/State;->numLiteralBlockTypes:I

    const/4 v5, 0x6

    shl-int/2addr v4, v5

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/brotli/dec/State;->contextMap:[B

    .line 848
    iget v4, p0, Lorg/brotli/dec/State;->numLiteralBlockTypes:I

    shl-int/2addr v4, v5

    iget-object v6, p0, Lorg/brotli/dec/State;->contextMap:[B

    invoke-static {v4, v6, p0}, Lorg/brotli/dec/Decode;->decodeContextMap(I[BLorg/brotli/dec/State;)I

    move-result v4

    .line 850
    .local v4, "numLiteralTrees":I
    iput v1, p0, Lorg/brotli/dec/State;->trivialLiteralContext:I

    .line 851
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    iget v7, p0, Lorg/brotli/dec/State;->numLiteralBlockTypes:I

    shl-int/2addr v7, v5

    if-ge v6, v7, :cond_3

    .line 852
    iget-object v7, p0, Lorg/brotli/dec/State;->contextMap:[B

    aget-byte v7, v7, v6

    shr-int/lit8 v8, v6, 0x6

    if-eq v7, v8, :cond_2

    .line 853
    iput v2, p0, Lorg/brotli/dec/State;->trivialLiteralContext:I

    .line 854
    goto :goto_3

    .line 851
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 859
    .end local v6    # "j":I
    :cond_3
    :goto_3
    iget v6, p0, Lorg/brotli/dec/State;->numDistanceBlockTypes:I

    shl-int/2addr v6, v3

    new-array v6, v6, [B

    iput-object v6, p0, Lorg/brotli/dec/State;->distContextMap:[B

    .line 860
    iget v6, p0, Lorg/brotli/dec/State;->numDistanceBlockTypes:I

    shl-int/lit8 v3, v6, 0x2

    iget-object v6, p0, Lorg/brotli/dec/State;->distContextMap:[B

    invoke-static {v3, v6, p0}, Lorg/brotli/dec/Decode;->decodeContextMap(I[BLorg/brotli/dec/State;)I

    move-result v3

    .line 863
    .local v3, "numDistTrees":I
    const/16 v6, 0x100

    invoke-static {v6, v6, v4, p0}, Lorg/brotli/dec/Decode;->decodeHuffmanTreeGroup(IIILorg/brotli/dec/State;)[I

    move-result-object v7

    iput-object v7, p0, Lorg/brotli/dec/State;->literalTreeGroup:[I

    .line 865
    iget v7, p0, Lorg/brotli/dec/State;->numCommandBlockTypes:I

    const/16 v8, 0x2c0

    invoke-static {v8, v8, v7, p0}, Lorg/brotli/dec/Decode;->decodeHuffmanTreeGroup(IIILorg/brotli/dec/State;)[I

    move-result-object v7

    iput-object v7, p0, Lorg/brotli/dec/State;->commandTreeGroup:[I

    .line 867
    iget v7, p0, Lorg/brotli/dec/State;->distancePostfixBits:I

    iget v8, p0, Lorg/brotli/dec/State;->numDirectDistanceCodes:I

    const/16 v9, 0x18

    invoke-static {v7, v8, v9}, Lorg/brotli/dec/Decode;->calculateDistanceAlphabetSize(III)I

    move-result v7

    .line 869
    .local v7, "distanceAlphabetSizeMax":I
    move v8, v7

    .line 870
    .local v8, "distanceAlphabetSizeLimit":I
    iget v9, p0, Lorg/brotli/dec/State;->isLargeWindow:I

    if-ne v9, v1, :cond_4

    .line 871
    iget v9, p0, Lorg/brotli/dec/State;->distancePostfixBits:I

    iget v10, p0, Lorg/brotli/dec/State;->numDirectDistanceCodes:I

    const/16 v11, 0x3e

    invoke-static {v9, v10, v11}, Lorg/brotli/dec/Decode;->calculateDistanceAlphabetSize(III)I

    move-result v7

    .line 873
    iget v9, p0, Lorg/brotli/dec/State;->distancePostfixBits:I

    iget v10, p0, Lorg/brotli/dec/State;->numDirectDistanceCodes:I

    const v11, 0x7ffffffc

    invoke-static {v11, v9, v10}, Lorg/brotli/dec/Decode;->calculateDistanceAlphabetLimit(III)I

    move-result v8

    .line 876
    :cond_4
    invoke-static {v7, v8, v3, p0}, Lorg/brotli/dec/Decode;->decodeHuffmanTreeGroup(IIILorg/brotli/dec/State;)[I

    move-result-object v9

    iput-object v9, p0, Lorg/brotli/dec/State;->distanceTreeGroup:[I

    .line 878
    invoke-static {p0, v8}, Lorg/brotli/dec/Decode;->calculateDistanceLut(Lorg/brotli/dec/State;I)V

    .line 880
    iput v2, p0, Lorg/brotli/dec/State;->contextMapSlice:I

    .line 881
    iput v2, p0, Lorg/brotli/dec/State;->distContextMapSlice:I

    .line 882
    iget-object v9, p0, Lorg/brotli/dec/State;->contextModes:[B

    aget-byte v9, v9, v2

    mul-int/lit16 v9, v9, 0x200

    iput v9, p0, Lorg/brotli/dec/State;->contextLookupOffset1:I

    .line 883
    iget v9, p0, Lorg/brotli/dec/State;->contextLookupOffset1:I

    add-int/2addr v9, v6

    iput v9, p0, Lorg/brotli/dec/State;->contextLookupOffset2:I

    .line 884
    iput v2, p0, Lorg/brotli/dec/State;->literalTreeIdx:I

    .line 885
    iput v2, p0, Lorg/brotli/dec/State;->commandTreeIdx:I

    .line 887
    iget-object v6, p0, Lorg/brotli/dec/State;->rings:[I

    aput v1, v6, v0

    .line 888
    iget-object v0, p0, Lorg/brotli/dec/State;->rings:[I

    const/4 v6, 0x5

    aput v2, v0, v6

    .line 889
    iget-object v0, p0, Lorg/brotli/dec/State;->rings:[I

    aput v1, v0, v5

    .line 890
    iget-object v0, p0, Lorg/brotli/dec/State;->rings:[I

    const/4 v5, 0x7

    aput v2, v0, v5

    .line 891
    iget-object v0, p0, Lorg/brotli/dec/State;->rings:[I

    const/16 v5, 0x8

    aput v1, v0, v5

    .line 892
    iget-object v0, p0, Lorg/brotli/dec/State;->rings:[I

    const/16 v1, 0x9

    aput v2, v0, v1

    .line 893
    return-void
.end method

.method private static readMetablockPartition(Lorg/brotli/dec/State;II)I
    .locals 6
    .param p0, "s"    # Lorg/brotli/dec/State;
    .param p1, "treeType"    # I
    .param p2, "numBlockTypes"    # I

    .line 769
    iget-object v0, p0, Lorg/brotli/dec/State;->blockTrees:[I

    mul-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    .line 770
    .local v0, "offset":I
    const/4 v1, 0x1

    if-gt p2, v1, :cond_0

    .line 771
    iget-object v2, p0, Lorg/brotli/dec/State;->blockTrees:[I

    mul-int/lit8 v3, p1, 0x2

    add-int/2addr v3, v1

    aput v0, v2, v3

    .line 772
    iget-object v1, p0, Lorg/brotli/dec/State;->blockTrees:[I

    mul-int/lit8 v2, p1, 0x2

    add-int/lit8 v2, v2, 0x2

    aput v0, v1, v2

    .line 773
    const/high16 v1, 0x10000000

    return v1

    .line 776
    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 777
    .local v2, "blockTypeAlphabetSize":I
    iget-object v3, p0, Lorg/brotli/dec/State;->blockTrees:[I

    mul-int/lit8 v4, p1, 0x2

    invoke-static {v2, v2, v3, v4, p0}, Lorg/brotli/dec/Decode;->readHuffmanCode(II[IILorg/brotli/dec/State;)I

    move-result v3

    add-int/2addr v0, v3

    .line 779
    iget-object v3, p0, Lorg/brotli/dec/State;->blockTrees:[I

    mul-int/lit8 v4, p1, 0x2

    add-int/2addr v4, v1

    aput v0, v3, v4

    .line 781
    const/16 v3, 0x1a

    .line 782
    .local v3, "blockLengthAlphabetSize":I
    iget-object v4, p0, Lorg/brotli/dec/State;->blockTrees:[I

    mul-int/lit8 v5, p1, 0x2

    add-int/2addr v5, v1

    invoke-static {v3, v3, v4, v5, p0}, Lorg/brotli/dec/Decode;->readHuffmanCode(II[IILorg/brotli/dec/State;)I

    move-result v4

    add-int/2addr v0, v4

    .line 784
    iget-object v4, p0, Lorg/brotli/dec/State;->blockTrees:[I

    mul-int/lit8 v5, p1, 0x2

    add-int/lit8 v5, v5, 0x2

    aput v0, v4, v5

    .line 786
    iget-object v4, p0, Lorg/brotli/dec/State;->blockTrees:[I

    mul-int/lit8 v5, p1, 0x2

    add-int/2addr v5, v1

    invoke-static {v4, v5, p0}, Lorg/brotli/dec/Decode;->readBlockLength([IILorg/brotli/dec/State;)I

    move-result v1

    return v1
.end method

.method private static readNextMetablockHeader(Lorg/brotli/dec/State;)V
    .locals 2
    .param p0, "s"    # Lorg/brotli/dec/State;

    .line 734
    iget v0, p0, Lorg/brotli/dec/State;->inputEnd:I

    if-eqz v0, :cond_0

    .line 735
    const/16 v0, 0xa

    iput v0, p0, Lorg/brotli/dec/State;->nextRunningState:I

    .line 736
    const/16 v0, 0xc

    iput v0, p0, Lorg/brotli/dec/State;->runningState:I

    .line 737
    return-void

    .line 740
    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/brotli/dec/State;->literalTreeGroup:[I

    .line 741
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/brotli/dec/State;->commandTreeGroup:[I

    .line 742
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/brotli/dec/State;->distanceTreeGroup:[I

    .line 744
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/State;)V

    .line 745
    invoke-static {p0}, Lorg/brotli/dec/Decode;->decodeMetaBlockLength(Lorg/brotli/dec/State;)V

    .line 746
    iget v0, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    if-nez v0, :cond_1

    iget v0, p0, Lorg/brotli/dec/State;->isMetadata:I

    if-nez v0, :cond_1

    .line 747
    return-void

    .line 749
    :cond_1
    iget v0, p0, Lorg/brotli/dec/State;->isUncompressed:I

    if-nez v0, :cond_2

    iget v0, p0, Lorg/brotli/dec/State;->isMetadata:I

    if-eqz v0, :cond_3

    :cond_2
    goto :goto_0

    .line 753
    :cond_3
    const/4 v0, 0x3

    iput v0, p0, Lorg/brotli/dec/State;->runningState:I

    goto :goto_2

    .line 750
    :goto_0
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->jumpToByteBoundary(Lorg/brotli/dec/State;)V

    .line 751
    iget v0, p0, Lorg/brotli/dec/State;->isMetadata:I

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    goto :goto_1

    :cond_4
    const/4 v0, 0x6

    :goto_1
    iput v0, p0, Lorg/brotli/dec/State;->runningState:I

    .line 756
    :goto_2
    iget v0, p0, Lorg/brotli/dec/State;->isMetadata:I

    if-eqz v0, :cond_5

    .line 757
    return-void

    .line 759
    :cond_5
    iget v0, p0, Lorg/brotli/dec/State;->expectedTotalSize:I

    iget v1, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/brotli/dec/State;->expectedTotalSize:I

    .line 760
    iget v0, p0, Lorg/brotli/dec/State;->expectedTotalSize:I

    const/high16 v1, 0x40000000    # 2.0f

    if-le v0, v1, :cond_6

    .line 761
    iput v1, p0, Lorg/brotli/dec/State;->expectedTotalSize:I

    .line 763
    :cond_6
    iget v0, p0, Lorg/brotli/dec/State;->ringBufferSize:I

    iget v1, p0, Lorg/brotli/dec/State;->maxRingBufferSize:I

    if-ge v0, v1, :cond_7

    .line 764
    invoke-static {p0}, Lorg/brotli/dec/Decode;->maybeReallocateRingBuffer(Lorg/brotli/dec/State;)V

    .line 766
    :cond_7
    return-void
.end method

.method private static readSimpleHuffmanCode(II[IILorg/brotli/dec/State;)I
    .locals 9
    .param p0, "alphabetSizeMax"    # I
    .param p1, "alphabetSizeLimit"    # I
    .param p2, "tableGroup"    # [I
    .param p3, "tableIdx"    # I
    .param p4, "s"    # Lorg/brotli/dec/State;

    .line 508
    new-array v0, p1, [I

    .line 509
    .local v0, "codeLengths":[I
    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 511
    .local v2, "symbols":[I
    add-int/lit8 v3, p0, -0x1

    invoke-static {v3}, Lorg/brotli/dec/Decode;->log2floor(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 513
    .local v3, "maxBits":I
    const/4 v5, 0x2

    invoke-static {p4, v5}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v6

    add-int/2addr v6, v4

    .line 514
    .local v6, "numSymbols":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_1

    .line 515
    invoke-static {p4}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 516
    invoke-static {p4, v3}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v8

    .line 517
    .local v8, "symbol":I
    if-ge v8, p1, :cond_0

    .line 520
    aput v8, v2, v7

    .line 514
    .end local v8    # "symbol":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 518
    .restart local v8    # "symbol":I
    :cond_0
    new-instance v1, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v4, "Can\'t readHuffmanCode"

    invoke-direct {v1, v4}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 514
    .end local v8    # "symbol":I
    :cond_1
    nop

    .line 522
    .end local v7    # "i":I
    invoke-static {v2, v6}, Lorg/brotli/dec/Decode;->checkDupes([II)V

    .line 524
    move v7, v6

    .line 525
    .local v7, "histogramId":I
    if-ne v6, v1, :cond_2

    .line 526
    invoke-static {p4, v4}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v1

    add-int/2addr v7, v1

    .line 529
    :cond_2
    const/4 v1, 0x3

    const/4 v8, 0x0

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 553
    :pswitch_0
    aget v8, v2, v8

    aput v4, v0, v8

    .line 554
    aget v4, v2, v4

    aput v5, v0, v4

    .line 555
    aget v4, v2, v5

    aput v1, v0, v4

    .line 556
    aget v4, v2, v1

    aput v1, v0, v4

    .line 557
    goto :goto_1

    .line 546
    :pswitch_1
    aget v8, v2, v8

    aput v5, v0, v8

    .line 547
    aget v4, v2, v4

    aput v5, v0, v4

    .line 548
    aget v4, v2, v5

    aput v5, v0, v4

    .line 549
    aget v1, v2, v1

    aput v5, v0, v1

    .line 550
    goto :goto_1

    .line 540
    :pswitch_2
    aget v1, v2, v8

    aput v4, v0, v1

    .line 541
    aget v1, v2, v4

    aput v5, v0, v1

    .line 542
    aget v1, v2, v5

    aput v5, v0, v1

    .line 543
    goto :goto_1

    .line 535
    :pswitch_3
    aget v1, v2, v8

    aput v4, v0, v1

    .line 536
    aget v1, v2, v4

    aput v4, v0, v1

    .line 537
    goto :goto_1

    .line 531
    :pswitch_4
    aget v1, v2, v8

    aput v4, v0, v1

    .line 532
    nop

    .line 564
    :goto_1
    const/16 v1, 0x8

    invoke-static {p2, p3, v1, v0, p1}, Lorg/brotli/dec/Huffman;->buildHuffmanTable([III[II)I

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static readSymbol([IILorg/brotli/dec/State;)I
    .locals 9
    .param p0, "tableGroup"    # [I
    .param p1, "tableIdx"    # I
    .param p2, "s"    # Lorg/brotli/dec/State;

    .line 386
    aget v0, p0, p1

    .line 387
    .local v0, "offset":I
    invoke-static {p2}, Lorg/brotli/dec/BitReader;->peekBits(Lorg/brotli/dec/State;)I

    move-result v1

    .line 388
    .local v1, "val":I
    and-int/lit16 v2, v1, 0xff

    add-int/2addr v0, v2

    .line 389
    aget v2, p0, v0

    shr-int/lit8 v2, v2, 0x10

    .line 390
    .local v2, "bits":I
    aget v3, p0, v0

    const v4, 0xffff

    and-int/2addr v3, v4

    .line 391
    .local v3, "sym":I
    const/16 v5, 0x8

    if-gt v2, v5, :cond_0

    .line 392
    iget v4, p2, Lorg/brotli/dec/State;->bitOffset:I

    add-int/2addr v4, v2

    iput v4, p2, Lorg/brotli/dec/State;->bitOffset:I

    .line 393
    return v3

    .line 395
    :cond_0
    add-int/2addr v0, v3

    .line 396
    const/4 v6, 0x1

    shl-int v7, v6, v2

    sub-int/2addr v7, v6

    .line 397
    .local v7, "mask":I
    and-int v6, v1, v7

    ushr-int/2addr v6, v5

    add-int/2addr v0, v6

    .line 398
    iget v6, p2, Lorg/brotli/dec/State;->bitOffset:I

    aget v8, p0, v0

    shr-int/lit8 v8, v8, 0x10

    add-int/2addr v8, v5

    add-int/2addr v6, v8

    iput v6, p2, Lorg/brotli/dec/State;->bitOffset:I

    .line 399
    aget v5, p0, v0

    and-int/2addr v4, v5

    return v4
.end method

.method private static unpackCommandLookupTable([S)V
    .locals 14
    .param p0, "cmdLookup"    # [S

    .line 168
    const/16 v0, 0x18

    new-array v1, v0, [S

    .line 169
    .local v1, "insertLengthOffsets":[S
    new-array v0, v0, [S

    .line 170
    .local v0, "copyLengthOffsets":[S
    const/4 v2, 0x0

    const/4 v3, 0x2

    aput-short v3, v0, v2

    .line 171
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v4, 0x17

    if-ge v2, v4, :cond_0

    .line 172
    add-int/lit8 v4, v2, 0x1

    aget-short v5, v1, v2

    sget-object v6, Lorg/brotli/dec/Decode;->INSERT_LENGTH_N_BITS:[S

    aget-short v6, v6, v2

    const/4 v7, 0x1

    shl-int v6, v7, v6

    add-int/2addr v5, v6

    int-to-short v5, v5

    aput-short v5, v1, v4

    .line 174
    add-int/lit8 v4, v2, 0x1

    aget-short v5, v0, v2

    sget-object v6, Lorg/brotli/dec/Decode;->COPY_LENGTH_N_BITS:[S

    aget-short v6, v6, v2

    shl-int v6, v7, v6

    add-int/2addr v5, v6

    int-to-short v5, v5

    aput-short v5, v0, v4

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 178
    .end local v2    # "i":I
    const/4 v2, 0x0

    .local v2, "cmdCode":I
    :goto_1
    const/16 v4, 0x2c0

    if-ge v2, v4, :cond_3

    .line 179
    ushr-int/lit8 v4, v2, 0x6

    .line 181
    .local v4, "rangeIdx":I
    const/4 v5, -0x4

    .line 182
    .local v5, "distanceContextOffset":I
    if-lt v4, v3, :cond_1

    .line 183
    add-int/lit8 v4, v4, -0x2

    .line 184
    const/4 v5, 0x0

    .line 186
    :cond_1
    mul-int/lit8 v6, v4, 0x2

    const v7, 0x29850

    ushr-int v6, v7, v6

    const/4 v7, 0x3

    and-int/2addr v6, v7

    shl-int/2addr v6, v7

    ushr-int/lit8 v8, v2, 0x3

    and-int/lit8 v8, v8, 0x7

    or-int/2addr v6, v8

    .line 187
    .local v6, "insertCode":I
    mul-int/lit8 v8, v4, 0x2

    const v9, 0x26244

    ushr-int v8, v9, v8

    and-int/2addr v8, v7

    shl-int/2addr v8, v7

    and-int/lit8 v9, v2, 0x7

    or-int/2addr v8, v9

    .line 188
    .local v8, "copyCode":I
    aget-short v9, v0, v8

    .line 189
    .local v9, "copyLengthOffset":S
    nop

    .line 190
    const/4 v10, 0x4

    if-le v9, v10, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v9, -0x2

    :goto_2
    add-int/2addr v7, v5

    .line 191
    .local v7, "distanceContext":I
    mul-int/lit8 v10, v2, 0x4

    .line 192
    .local v10, "index":I
    add-int/lit8 v11, v10, 0x0

    sget-object v12, Lorg/brotli/dec/Decode;->INSERT_LENGTH_N_BITS:[S

    aget-short v12, v12, v6

    sget-object v13, Lorg/brotli/dec/Decode;->COPY_LENGTH_N_BITS:[S

    aget-short v13, v13, v8

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    int-to-short v12, v12

    aput-short v12, p0, v11

    .line 194
    add-int/lit8 v11, v10, 0x1

    aget-short v12, v1, v6

    aput-short v12, p0, v11

    .line 195
    add-int/lit8 v11, v10, 0x2

    aget-short v12, v0, v8

    aput-short v12, p0, v11

    .line 196
    add-int/lit8 v11, v10, 0x3

    int-to-short v12, v7

    aput-short v12, p0, v11

    .line 178
    .end local v4    # "rangeIdx":I
    .end local v5    # "distanceContextOffset":I
    .end local v6    # "insertCode":I
    .end local v7    # "distanceContext":I
    .end local v8    # "copyCode":I
    .end local v9    # "copyLengthOffset":S
    .end local v10    # "index":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    nop

    .line 198
    .end local v2    # "cmdCode":I
    return-void
.end method

.method private static writeRingBuffer(Lorg/brotli/dec/State;)I
    .locals 6
    .param p0, "s"    # Lorg/brotli/dec/State;

    .line 920
    iget v0, p0, Lorg/brotli/dec/State;->outputLength:I

    iget v1, p0, Lorg/brotli/dec/State;->outputUsed:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/brotli/dec/State;->ringBufferBytesReady:I

    iget v2, p0, Lorg/brotli/dec/State;->ringBufferBytesWritten:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 922
    .local v0, "toWrite":I
    if-eqz v0, :cond_0

    .line 923
    iget-object v1, p0, Lorg/brotli/dec/State;->ringBuffer:[B

    iget v2, p0, Lorg/brotli/dec/State;->ringBufferBytesWritten:I

    iget-object v3, p0, Lorg/brotli/dec/State;->output:[B

    iget v4, p0, Lorg/brotli/dec/State;->outputOffset:I

    iget v5, p0, Lorg/brotli/dec/State;->outputUsed:I

    add-int/2addr v4, v5

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 925
    iget v1, p0, Lorg/brotli/dec/State;->outputUsed:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/brotli/dec/State;->outputUsed:I

    .line 926
    iget v1, p0, Lorg/brotli/dec/State;->ringBufferBytesWritten:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/brotli/dec/State;->ringBufferBytesWritten:I

    .line 929
    :cond_0
    iget v1, p0, Lorg/brotli/dec/State;->outputUsed:I

    iget v2, p0, Lorg/brotli/dec/State;->outputLength:I

    if-ge v1, v2, :cond_1

    .line 930
    const/4 v1, 0x1

    return v1

    .line 932
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
