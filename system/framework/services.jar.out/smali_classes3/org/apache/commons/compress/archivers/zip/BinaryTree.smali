.class Lorg/apache/commons/compress/archivers/zip/BinaryTree;
.super Ljava/lang/Object;
.source "BinaryTree.java"


# static fields
.field private static final NODE:I = -0x2

.field private static final UNDEFINED:I = -0x1


# instance fields
.field private final tree:[I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "depth"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    .line 49
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 50
    return-void
.end method

.method static decode(Ljava/io/InputStream;I)Lorg/apache/commons/compress/archivers/zip/BinaryTree;
    .locals 19
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "totalNumberOfValues"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    move/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 113
    .local v1, "size":I
    if-eqz v1, :cond_a

    .line 117
    new-array v3, v1, [B

    .line 118
    .local v3, "encodedTree":[B
    new-instance v4, Ljava/io/DataInputStream;

    move-object/from16 v5, p0

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 121
    const/4 v4, 0x0

    .line 123
    .local v4, "maxLength":I
    new-array v6, v0, [I

    .line 124
    .local v6, "originalBitLengths":[I
    const/4 v7, 0x0

    .line 125
    .local v7, "pos":I
    array-length v8, v3

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_1

    aget-byte v11, v3, v10

    .line 127
    .local v11, "b":B
    and-int/lit16 v12, v11, 0xf0

    shr-int/lit8 v12, v12, 0x4

    add-int/2addr v12, v2

    .line 128
    .local v12, "numberOfValues":I
    and-int/lit8 v13, v11, 0xf

    add-int/2addr v13, v2

    .line 130
    .local v13, "bitLength":I
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    if-ge v14, v12, :cond_0

    .line 131
    add-int/lit8 v15, v7, 0x1

    .end local v7    # "pos":I
    .local v15, "pos":I
    aput v13, v6, v7

    .line 130
    add-int/lit8 v14, v14, 0x1

    move v7, v15

    goto :goto_1

    .end local v15    # "pos":I
    .restart local v7    # "pos":I
    :cond_0
    nop

    .line 134
    .end local v14    # "j":I
    invoke-static {v4, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 125
    .end local v11    # "b":B
    .end local v12    # "numberOfValues":I
    .end local v13    # "bitLength":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 138
    :cond_1
    array-length v8, v6

    new-array v8, v8, [I

    .line 139
    .local v8, "permutation":[I
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_2
    array-length v11, v8

    if-ge v10, v11, :cond_2

    .line 140
    aput v10, v8, v10

    .line 139
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    nop

    .line 143
    .end local v10    # "k":I
    const/4 v10, 0x0

    .line 144
    .local v10, "c":I
    array-length v11, v6

    new-array v11, v11, [I

    .line 145
    .local v11, "sortedBitLengths":[I
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_3
    array-length v13, v6

    if-ge v12, v13, :cond_5

    .line 147
    const/4 v13, 0x0

    .local v13, "l":I
    :goto_4
    array-length v14, v6

    if-ge v13, v14, :cond_4

    .line 149
    aget v14, v6, v13

    if-ne v14, v12, :cond_3

    .line 151
    aput v12, v11, v10

    .line 154
    aput v13, v8, v10

    .line 156
    add-int/lit8 v10, v10, 0x1

    .line 147
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_4
    nop

    .line 145
    .end local v13    # "l":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_5
    nop

    .line 162
    .end local v12    # "k":I
    const/4 v12, 0x0

    .line 163
    .local v12, "code":I
    const/4 v13, 0x0

    .line 164
    .local v13, "codeIncrement":I
    const/4 v14, 0x0

    .line 166
    .local v14, "lastBitLength":I
    new-array v15, v0, [I

    .line 168
    .local v15, "codes":[I
    add-int/lit8 v16, v0, -0x1

    .local v16, "i":I
    :goto_5
    if-ltz v16, :cond_7

    .line 169
    add-int/2addr v12, v13

    .line 170
    move/from16 v17, v2

    aget v2, v11, v16

    if-eq v2, v14, :cond_6

    .line 171
    aget v2, v11, v16

    .line 172
    .end local v14    # "lastBitLength":I
    .local v2, "lastBitLength":I
    rsub-int/lit8 v14, v2, 0x10

    shl-int v13, v17, v14

    move v14, v2

    .line 174
    .end local v2    # "lastBitLength":I
    .restart local v14    # "lastBitLength":I
    :cond_6
    aget v2, v8, v16

    aput v12, v15, v2

    .line 168
    add-int/lit8 v16, v16, -0x1

    move/from16 v2, v17

    goto :goto_5

    :cond_7
    nop

    .line 178
    .end local v16    # "i":I
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    invoke-direct {v2, v4}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;-><init>(I)V

    .line 180
    .local v2, "tree":Lorg/apache/commons/compress/archivers/zip/BinaryTree;
    const/16 v16, 0x0

    move/from16 v9, v16

    .local v9, "k":I
    :goto_6
    array-length v0, v15

    if-ge v9, v0, :cond_9

    .line 181
    aget v0, v6, v9

    .line 182
    .local v0, "bitLength":I
    if-lez v0, :cond_8

    .line 183
    aget v16, v15, v9

    shl-int/lit8 v16, v16, 0x10

    move/from16 v18, v1

    .end local v1    # "size":I
    .local v18, "size":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->reverse(I)I

    move-result v1

    move-object/from16 v16, v3

    const/4 v3, 0x0

    .end local v3    # "encodedTree":[B
    .local v16, "encodedTree":[B
    invoke-virtual {v2, v3, v1, v0, v9}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->addLeaf(IIII)V

    goto :goto_7

    .line 182
    .end local v16    # "encodedTree":[B
    .end local v18    # "size":I
    .restart local v1    # "size":I
    .restart local v3    # "encodedTree":[B
    :cond_8
    move/from16 v18, v1

    move-object/from16 v16, v3

    const/4 v3, 0x0

    .line 180
    .end local v0    # "bitLength":I
    .end local v1    # "size":I
    .end local v3    # "encodedTree":[B
    .restart local v16    # "encodedTree":[B
    .restart local v18    # "size":I
    :goto_7
    add-int/lit8 v9, v9, 0x1

    move/from16 v0, p1

    move-object/from16 v3, v16

    move/from16 v1, v18

    goto :goto_6

    .end local v16    # "encodedTree":[B
    .end local v18    # "size":I
    .restart local v1    # "size":I
    .restart local v3    # "encodedTree":[B
    :cond_9
    nop

    .line 187
    .end local v9    # "k":I
    return-object v2

    .line 114
    .end local v2    # "tree":Lorg/apache/commons/compress/archivers/zip/BinaryTree;
    .end local v3    # "encodedTree":[B
    .end local v4    # "maxLength":I
    .end local v6    # "originalBitLengths":[I
    .end local v7    # "pos":I
    .end local v8    # "permutation":[I
    .end local v10    # "c":I
    .end local v11    # "sortedBitLengths":[I
    .end local v12    # "code":I
    .end local v13    # "codeIncrement":I
    .end local v14    # "lastBitLength":I
    .end local v15    # "codes":[I
    :cond_a
    move/from16 v18, v1

    .end local v1    # "size":I
    .restart local v18    # "size":I
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot read the size of the encoded tree, unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addLeaf(IIII)V
    .locals 3
    .param p1, "node"    # I
    .param p2, "path"    # I
    .param p3, "depth"    # I
    .param p4, "value"    # I

    .line 61
    if-nez p3, :cond_1

    .line 63
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    aput p4, v0, p1

    goto :goto_0

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tree value at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " has already been assigned ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    const/4 v1, -0x2

    aput v1, v0, p1

    .line 73
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v1, p2, 0x1

    add-int/2addr v0, v1

    .line 74
    .local v0, "nextChild":I
    ushr-int/lit8 v1, p2, 0x1

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {p0, v0, v1, v2, p4}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->addLeaf(IIII)V

    .line 76
    .end local v0    # "nextChild":I
    :goto_0
    return-void
.end method

.method public read(Lorg/apache/commons/compress/archivers/zip/BitStream;)I
    .locals 7
    .param p1, "stream"    # Lorg/apache/commons/compress/archivers/zip/BitStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    .line 88
    .local v0, "currentIndex":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/BitStream;->nextBit()I

    move-result v1

    .line 89
    .local v1, "bit":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 90
    return v2

    .line 93
    :cond_0
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v1

    .line 94
    .local v3, "childIndex":I
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    aget v4, v4, v3

    .line 95
    .local v4, "value":I
    const/4 v5, -0x2

    if-ne v4, v5, :cond_1

    .line 97
    move v0, v3

    .line 103
    .end local v1    # "bit":I
    .end local v3    # "childIndex":I
    .end local v4    # "value":I
    goto :goto_0

    .line 98
    .restart local v1    # "bit":I
    .restart local v3    # "childIndex":I
    .restart local v4    # "value":I
    :cond_1
    if-eq v4, v2, :cond_2

    .line 99
    return v4

    .line 101
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The child "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " of node at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is not defined"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
