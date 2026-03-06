.class public final Lorg/brotli/dec/Dictionary;
.super Ljava/lang/Object;
.source "Dictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/brotli/dec/Dictionary$DataLoader;
    }
.end annotation


# static fields
.field static final MAX_DICTIONARY_WORD_LENGTH:I = 0x1f

.field static final MIN_DICTIONARY_WORD_LENGTH:I = 0x4

.field private static data:Ljava/nio/ByteBuffer;

.field static final offsets:[I

.field static final sizeBits:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    const/16 v0, 0x20

    new-array v1, v0, [I

    sput-object v1, Lorg/brotli/dec/Dictionary;->offsets:[I

    .line 26
    new-array v0, v0, [I

    sput-object v0, Lorg/brotli/dec/Dictionary;->sizeBits:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getData()Ljava/nio/ByteBuffer;
    .locals 2

    .line 84
    sget-object v0, Lorg/brotli/dec/Dictionary;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lorg/brotli/dec/Dictionary;->data:Ljava/nio/ByteBuffer;

    return-object v0

    .line 87
    :cond_0
    sget-boolean v0, Lorg/brotli/dec/Dictionary$DataLoader;->OK:Z

    if-eqz v0, :cond_1

    .line 91
    sget-object v0, Lorg/brotli/dec/Dictionary;->data:Ljava/nio/ByteBuffer;

    return-object v0

    .line 88
    :cond_1
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v1, "brotli dictionary is not set"

    invoke-direct {v0, v1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setData(Ljava/nio/ByteBuffer;[I)V
    .locals 8
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "sizeBits"    # [I

    .line 43
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 47
    array-length v0, p1

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_8

    .line 51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 52
    aget v2, p1, v0

    if-nez v2, :cond_0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    new-instance v1, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v2, "first 4 must be 0"

    invoke-direct {v1, v2}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_1
    nop

    .line 56
    .end local v0    # "i":I
    sget-object v0, Lorg/brotli/dec/Dictionary;->offsets:[I

    .line 57
    .local v0, "dictionaryOffsets":[I
    sget-object v2, Lorg/brotli/dec/Dictionary;->sizeBits:[I

    .line 58
    .local v2, "dictionarySizeBits":[I
    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    const/4 v3, 0x0

    .line 60
    .local v3, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    .line 61
    .local v4, "limit":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, p1

    if-ge v5, v6, :cond_5

    .line 62
    aput v3, v0, v5

    .line 63
    aget v6, v2, v5

    .line 64
    .local v6, "bits":I
    if-eqz v6, :cond_4

    .line 65
    if-ge v6, v1, :cond_3

    .line 68
    shl-int v7, v5, v6

    add-int/2addr v3, v7

    .line 69
    if-lez v3, :cond_2

    if-gt v3, v4, :cond_2

    goto :goto_2

    .line 70
    :cond_2
    new-instance v1, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v7, "sizeBits is inconsistent: overflow"

    invoke-direct {v1, v7}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_3
    new-instance v1, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v7, "sizeBits values must be less than 31"

    invoke-direct {v1, v7}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    .end local v6    # "bits":I
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    nop

    .line 74
    .end local v5    # "i":I
    array-length v1, p1

    .local v1, "i":I
    :goto_3
    const/16 v5, 0x20

    if-ge v1, v5, :cond_6

    .line 75
    aput v3, v0, v1

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    nop

    .line 77
    .end local v1    # "i":I
    if-ne v3, v4, :cond_7

    .line 80
    sput-object p0, Lorg/brotli/dec/Dictionary;->data:Ljava/nio/ByteBuffer;

    .line 81
    return-void

    .line 78
    :cond_7
    new-instance v1, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v5, "sizeBits is inconsistent: underflow"

    invoke-direct {v1, v5}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    .end local v0    # "dictionaryOffsets":[I
    .end local v2    # "dictionarySizeBits":[I
    .end local v3    # "pos":I
    .end local v4    # "limit":I
    :cond_8
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v1, "sizeBits length must be at most 31"

    invoke-direct {v0, v1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_9
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v1, "data must be a direct read-only byte buffer"

    invoke-direct {v0, v1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
