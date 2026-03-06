.class Lorg/tukaani/xz/SimpleInputStream;
.super Ljava/io/InputStream;
.source "SimpleInputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final FILTER_BUF_SIZE:I = 0x1000


# instance fields
.field private endReached:Z

.field private exception:Ljava/io/IOException;

.field private final filterBuf:[B

.field private filtered:I

.field private in:Ljava/io/InputStream;

.field private pos:I

.field private final simpleFilter:Lorg/tukaani/xz/simple/SimpleFilter;

.field private final tempBuf:[B

.field private unfiltered:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lorg/tukaani/xz/SimpleInputStream;

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Lorg/tukaani/xz/simple/SimpleFilter;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "simpleFilter"    # Lorg/tukaani/xz/simple/SimpleFilter;

    .line 36
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 22
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->filterBuf:[B

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    .line 24
    iput v0, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    .line 25
    iput v0, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    .line 27
    iput-boolean v0, p0, Lorg/tukaani/xz/SimpleInputStream;->endReached:Z

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->exception:Ljava/io/IOException;

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->tempBuf:[B

    .line 39
    if-eqz p1, :cond_0

    .line 44
    nop

    .line 46
    iput-object p1, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    .line 47
    iput-object p2, p0, Lorg/tukaani/xz/SimpleInputStream;->simpleFilter:Lorg/tukaani/xz/simple/SimpleFilter;

    .line 48
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static getMemoryUsage()I
    .locals 1

    .line 33
    const/4 v0, 0x5

    return v0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_0

    .line 126
    iget v0, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    return v0

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->exception:Ljava/io/IOException;

    throw v0

    .line 121
    :cond_1
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 132
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    iput-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    .line 135
    goto :goto_0

    .line 134
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    .line 135
    throw v1

    .line 137
    :cond_0
    :goto_0
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->tempBuf:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/tukaani/xz/SimpleInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->tempBuf:[B

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    :goto_0
    return v1
.end method

.method public read([BII)I
    .locals 9
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    if-ltz p2, :cond_8

    if-ltz p3, :cond_8

    add-int v0, p2, p3

    if-ltz v0, :cond_8

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_8

    .line 58
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 59
    return v0

    .line 61
    :cond_0
    iget-object v1, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_7

    .line 64
    iget-object v1, p0, Lorg/tukaani/xz/SimpleInputStream;->exception:Ljava/io/IOException;

    if-nez v1, :cond_6

    .line 68
    const/4 v1, 0x0

    .line 72
    .local v1, "size":I
    :goto_0
    :try_start_0
    iget v2, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 73
    .local v2, "copySize":I
    iget-object v3, p0, Lorg/tukaani/xz/SimpleInputStream;->filterBuf:[B

    iget v4, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    invoke-static {v3, v4, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget v3, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    .line 75
    iget v3, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    sub-int/2addr v3, v2

    iput v3, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    .line 76
    add-int/2addr p2, v2

    .line 77
    sub-int/2addr p3, v2

    .line 78
    add-int/2addr v1, v2

    .line 83
    iget v3, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    iget v4, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    add-int/2addr v3, v4

    iget v4, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    add-int/2addr v3, v4

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_1

    .line 84
    iget-object v3, p0, Lorg/tukaani/xz/SimpleInputStream;->filterBuf:[B

    iget v5, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    iget-object v6, p0, Lorg/tukaani/xz/SimpleInputStream;->filterBuf:[B

    iget v7, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    iget v8, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    add-int/2addr v7, v8

    invoke-static {v3, v5, v6, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    iput v0, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    goto :goto_1

    .line 113
    .end local v1    # "size":I
    .end local v2    # "copySize":I
    :catch_0
    move-exception v0

    goto :goto_4

    .line 89
    .restart local v1    # "size":I
    .restart local v2    # "copySize":I
    :cond_1
    :goto_1
    const/4 v3, -0x1

    if-eqz p3, :cond_2

    iget-boolean v5, p0, Lorg/tukaani/xz/SimpleInputStream;->endReached:Z

    if-eqz v5, :cond_3

    :cond_2
    goto :goto_3

    .line 92
    :cond_3
    nop

    .line 95
    iget v5, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    iget v6, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    add-int/2addr v5, v6

    iget v6, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    .line 96
    .local v4, "inSize":I
    iget-object v5, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    iget-object v6, p0, Lorg/tukaani/xz/SimpleInputStream;->filterBuf:[B

    iget v7, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    iget v8, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    add-int/2addr v7, v8

    iget v8, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    add-int/2addr v7, v8

    invoke-virtual {v5, v6, v7, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 99
    .end local v4    # "inSize":I
    .local v5, "inSize":I
    if-ne v5, v3, :cond_4

    .line 102
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/tukaani/xz/SimpleInputStream;->endReached:Z

    .line 103
    iget v3, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    iput v3, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    .line 104
    iput v0, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    goto :goto_2

    .line 107
    :cond_4
    iget v3, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    add-int/2addr v3, v5

    iput v3, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    .line 108
    iget-object v3, p0, Lorg/tukaani/xz/SimpleInputStream;->simpleFilter:Lorg/tukaani/xz/simple/SimpleFilter;

    iget-object v4, p0, Lorg/tukaani/xz/SimpleInputStream;->filterBuf:[B

    iget v6, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    iget v7, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    invoke-interface {v3, v4, v6, v7}, Lorg/tukaani/xz/simple/SimpleFilter;->code([BII)I

    move-result v3

    iput v3, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    .line 109
    nop

    .line 110
    iget v3, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    iget v4, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v2    # "copySize":I
    .end local v5    # "inSize":I
    :goto_2
    goto/16 :goto_0

    .line 90
    .restart local v2    # "copySize":I
    :goto_3
    if-lez v1, :cond_5

    move v3, v1

    :cond_5
    return v3

    .line 113
    .end local v1    # "size":I
    .end local v2    # "copySize":I
    :goto_4
    nop

    .line 114
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->exception:Ljava/io/IOException;

    .line 115
    throw v0

    .line 65
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6
    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->exception:Ljava/io/IOException;

    throw v0

    .line 62
    :cond_7
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
