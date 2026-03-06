.class public Lorg/brotli/wrapper/common/BrotliCommon;
.super Ljava/lang/Object;
.source "BrotliCommon.java"


# static fields
.field private static final RFC_DICTIONARY_MD5:[B

.field private static final RFC_DICTIONARY_SHA_1:[B

.field private static final RFC_DICTIONARY_SHA_256:[B

.field public static final RFC_DICTIONARY_SIZE:I = 0x1dfa0

.field private static isDictionaryDataSet:Z

.field private static final mutex:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/brotli/wrapper/common/BrotliCommon;->RFC_DICTIONARY_MD5:[B

    .line 26
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/brotli/wrapper/common/BrotliCommon;->RFC_DICTIONARY_SHA_1:[B

    .line 31
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/brotli/wrapper/common/BrotliCommon;->RFC_DICTIONARY_SHA_256:[B

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/brotli/wrapper/common/BrotliCommon;->mutex:Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 1
        -0x6at
        -0x32t
        -0x33t
        0x2et
        -0x19t
        -0x5at
        0x66t
        -0x2bt
        -0x56t
        0x36t
        0x27t
        -0x29t
        0x47t
        0x35t
        -0x4dt
        0x2at
    .end array-data

    :array_1
    .array-data 1
        0x72t
        -0x4ct
        0x10t
        0x51t
        -0x35t
        0x61t
        -0x57t
        0x28t
        0x1bt
        -0x5dt
        -0x3ct
        0x41t
        0x4ct
        0x28t
        -0x63t
        -0x5bt
        0xdt
        -0x66t
        0x76t
        0x40t
    .end array-data

    :array_2
    .array-data 1
        0x20t
        -0x1ct
        0x2et
        -0x4ft
        -0x4bt
        0x11t
        -0x3et
        0x18t
        0x6t
        -0x2ct
        -0x2et
        0x27t
        -0x30t
        0x7et
        0x5dt
        -0x30t
        0x68t
        0x77t
        -0x28t
        -0x32t
        0x7bt
        0x3at
        -0x7ft
        0x7ft
        0x37t
        -0x71t
        0x31t
        0x36t
        0x53t
        -0xdt
        0x5ct
        0x70t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDictionaryDataMd5([B)Z
    .locals 1
    .param p0, "digest"    # [B

    .line 43
    sget-object v0, Lorg/brotli/wrapper/common/BrotliCommon;->RFC_DICTIONARY_MD5:[B

    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public static checkDictionaryDataSha1([B)Z
    .locals 1
    .param p0, "digest"    # [B

    .line 50
    sget-object v0, Lorg/brotli/wrapper/common/BrotliCommon;->RFC_DICTIONARY_SHA_1:[B

    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public static checkDictionaryDataSha256([B)Z
    .locals 1
    .param p0, "digest"    # [B

    .line 57
    sget-object v0, Lorg/brotli/wrapper/common/BrotliCommon;->RFC_DICTIONARY_SHA_256:[B

    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public static makeNative([B)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "data"    # [B

    .line 66
    array-length v0, p0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 67
    .local v0, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 68
    return-object v0
.end method

.method public static setDictionaryData(Ljava/io/InputStream;)V
    .locals 7
    .param p0, "src"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    sget-object v0, Lorg/brotli/wrapper/common/BrotliCommon;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_0
    sget-boolean v1, Lorg/brotli/wrapper/common/BrotliCommon;->isDictionaryDataSet:Z

    if-eqz v1, :cond_0

    .line 92
    monitor-exit v0

    return-void

    .line 107
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 94
    :cond_0
    const v1, 0x1dfa0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 95
    .local v1, "copy":Ljava/nio/ByteBuffer;
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 97
    .local v2, "buffer":[B
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "readBytes":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 98
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lt v3, v4, :cond_1

    .line 101
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 99
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "invalid dictionary size"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "src":Ljava/io/InputStream;
    throw v3

    .line 103
    .restart local p0    # "src":Ljava/io/InputStream;
    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-nez v3, :cond_3

    .line 106
    invoke-static {v1}, Lorg/brotli/wrapper/common/BrotliCommon;->setDictionaryData(Ljava/nio/ByteBuffer;)V

    .line 107
    .end local v1    # "copy":Ljava/nio/ByteBuffer;
    .end local v2    # "buffer":[B
    .end local v4    # "readBytes":I
    monitor-exit v0

    .line 108
    return-void

    .line 104
    .restart local v1    # "copy":Ljava/nio/ByteBuffer;
    .restart local v2    # "buffer":[B
    .restart local v4    # "readBytes":I
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid dictionary size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "src":Ljava/io/InputStream;
    throw v3

    .line 107
    .end local v1    # "copy":Ljava/nio/ByteBuffer;
    .end local v2    # "buffer":[B
    .end local v4    # "readBytes":I
    .restart local p0    # "src":Ljava/io/InputStream;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setDictionaryData(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p0, "data"    # Ljava/nio/ByteBuffer;

    .line 114
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const v1, 0x1dfa0

    if-ne v0, v1, :cond_2

    .line 120
    sget-object v0, Lorg/brotli/wrapper/common/BrotliCommon;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    sget-boolean v1, Lorg/brotli/wrapper/common/BrotliCommon;->isDictionaryDataSet:Z

    if-eqz v1, :cond_0

    .line 122
    monitor-exit v0

    return-void

    .line 128
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 124
    :cond_0
    invoke-static {p0}, Lorg/brotli/wrapper/common/CommonJNI;->nativeSetDictionaryData(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    const/4 v1, 0x1

    sput-boolean v1, Lorg/brotli/wrapper/common/BrotliCommon;->isDictionaryDataSet:Z

    .line 128
    monitor-exit v0

    .line 129
    return-void

    .line 125
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setting dictionary failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "data":Ljava/nio/ByteBuffer;
    throw v1

    .line 128
    .restart local p0    # "data":Ljava/nio/ByteBuffer;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 118
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid dictionary size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direct byte buffer is expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDictionaryData([B)V
    .locals 2
    .param p0, "data"    # [B

    .line 75
    array-length v0, p0

    const v1, 0x1dfa0

    if-ne v0, v1, :cond_1

    .line 78
    sget-object v0, Lorg/brotli/wrapper/common/BrotliCommon;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_0
    sget-boolean v1, Lorg/brotli/wrapper/common/BrotliCommon;->isDictionaryDataSet:Z

    if-eqz v1, :cond_0

    .line 80
    monitor-exit v0

    return-void

    .line 83
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 82
    :cond_0
    invoke-static {p0}, Lorg/brotli/wrapper/common/BrotliCommon;->makeNative([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lorg/brotli/wrapper/common/BrotliCommon;->setDictionaryData(Ljava/nio/ByteBuffer;)V

    .line 83
    monitor-exit v0

    .line 84
    return-void

    .line 83
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 76
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid dictionary size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
