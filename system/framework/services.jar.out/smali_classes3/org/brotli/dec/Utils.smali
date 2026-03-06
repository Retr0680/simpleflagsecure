.class final Lorg/brotli/dec/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final BYTE_ZEROES:[B

.field private static final INT_ZEROES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    const/16 v0, 0x400

    new-array v1, v0, [B

    sput-object v1, Lorg/brotli/dec/Utils;->BYTE_ZEROES:[B

    .line 21
    new-array v0, v0, [I

    sput-object v0, Lorg/brotli/dec/Utils;->INT_ZEROES:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static closeInput(Ljava/io/InputStream;)V
    .locals 0
    .param p0, "src"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 79
    return-void
.end method

.method static copyBytes([BI[BII)V
    .locals 1
    .param p0, "dst"    # [B
    .param p1, "target"    # I
    .param p2, "src"    # [B
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 62
    sub-int v0, p4, p3

    invoke-static {p2, p3, p0, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    return-void
.end method

.method static copyBytesWithin([BIII)V
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "target"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 66
    sub-int v0, p3, p2

    invoke-static {p0, p2, p0, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    return-void
.end method

.method static fillBytesWithZeroes([BII)V
    .locals 4
    .param p0, "dest"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 34
    move v0, p1

    .line 35
    .local v0, "cursor":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 36
    add-int/lit16 v1, v0, 0x400

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr v1, v0

    .line 37
    .local v1, "step":I
    sget-object v2, Lorg/brotli/dec/Utils;->BYTE_ZEROES:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    add-int/2addr v0, v1

    .line 39
    .end local v1    # "step":I
    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method static fillIntsWithZeroes([III)V
    .locals 4
    .param p0, "dest"    # [I
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 53
    move v0, p1

    .line 54
    .local v0, "cursor":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 55
    add-int/lit16 v1, v0, 0x400

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr v1, v0

    .line 56
    .local v1, "step":I
    sget-object v2, Lorg/brotli/dec/Utils;->INT_ZEROES:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    add-int/2addr v0, v1

    .line 58
    .end local v1    # "step":I
    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method static flipBuffer(Ljava/nio/Buffer;)V
    .locals 0
    .param p0, "buffer"    # Ljava/nio/Buffer;

    .line 93
    invoke-virtual {p0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 94
    return-void
.end method

.method static getLogBintness()I
    .locals 2

    .line 103
    const-string v0, "BROTLI_32_BIT_CPU"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 104
    .local v0, "isLongExpensive":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    :goto_0
    return v1
.end method

.method static isDebugMode()I
    .locals 1

    .line 97
    const-string v0, "BROTLI_ENABLE_ASSERTS"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 98
    .local v0, "assertsEnabled":Z
    return v0
.end method

.method static readInput(Ljava/io/InputStream;[BII)I
    .locals 3
    .param p0, "src"    # Ljava/io/InputStream;
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 71
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v2, "Failed to read input"

    invoke-direct {v1, v2, v0}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static toUsAsciiBytes(Ljava/lang/String;)[B
    .locals 2
    .param p0, "src"    # Ljava/lang/String;

    .line 85
    :try_start_0
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
