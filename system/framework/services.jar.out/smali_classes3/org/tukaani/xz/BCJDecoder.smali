.class Lorg/tukaani/xz/BCJDecoder;
.super Lorg/tukaani/xz/BCJCoder;
.source "BCJDecoder.java"

# interfaces
.implements Lorg/tukaani/xz/FilterDecoder;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final filterID:J

.field private final startOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 15
    return-void
.end method

.method constructor <init>(J[B)V
    .locals 5
    .param p1, "filterID"    # J
    .param p3, "props"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lorg/tukaani/xz/BCJCoder;-><init>()V

    .line 21
    nop

    .line 22
    iput-wide p1, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    .line 24
    array-length v0, p3

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    goto :goto_1

    .line 26
    :cond_0
    array-length v0, p3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 29
    aget-byte v3, p3, v2

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v2, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v0, v3

    .line 28
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 31
    .end local v2    # "i":I
    iput v0, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    .line 32
    .end local v0    # "n":I
    nop

    .line 36
    :goto_1
    return-void

    .line 33
    :cond_2
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v1, "Unsupported BCJ filter properties"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getInputStream(Ljava/io/InputStream;Lorg/tukaani/xz/ArrayCache;)Ljava/io/InputStream;
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 43
    const/4 v0, 0x0

    .line 45
    .local v0, "simpleFilter":Lorg/tukaani/xz/simple/SimpleFilter;
    iget-wide v1, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lorg/tukaani/xz/simple/X86;

    iget v3, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {v1, v2, v3}, Lorg/tukaani/xz/simple/X86;-><init>(ZI)V

    move-object v0, v1

    goto :goto_0

    .line 47
    :cond_0
    iget-wide v3, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    const-wide/16 v5, 0x5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    .line 48
    new-instance v1, Lorg/tukaani/xz/simple/PowerPC;

    iget v3, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {v1, v2, v3}, Lorg/tukaani/xz/simple/PowerPC;-><init>(ZI)V

    move-object v0, v1

    goto :goto_0

    .line 49
    :cond_1
    iget-wide v3, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    const-wide/16 v5, 0x6

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    .line 50
    new-instance v1, Lorg/tukaani/xz/simple/IA64;

    iget v3, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {v1, v2, v3}, Lorg/tukaani/xz/simple/IA64;-><init>(ZI)V

    move-object v0, v1

    goto :goto_0

    .line 51
    :cond_2
    iget-wide v3, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    const-wide/16 v5, 0x7

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    .line 52
    new-instance v1, Lorg/tukaani/xz/simple/ARM;

    iget v3, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {v1, v2, v3}, Lorg/tukaani/xz/simple/ARM;-><init>(ZI)V

    move-object v0, v1

    goto :goto_0

    .line 53
    :cond_3
    iget-wide v3, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    const-wide/16 v5, 0x8

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    .line 54
    new-instance v1, Lorg/tukaani/xz/simple/ARMThumb;

    iget v3, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {v1, v2, v3}, Lorg/tukaani/xz/simple/ARMThumb;-><init>(ZI)V

    move-object v0, v1

    goto :goto_0

    .line 55
    :cond_4
    iget-wide v3, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    const-wide/16 v5, 0x9

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    .line 56
    new-instance v1, Lorg/tukaani/xz/simple/SPARC;

    iget v3, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {v1, v2, v3}, Lorg/tukaani/xz/simple/SPARC;-><init>(ZI)V

    move-object v0, v1

    goto :goto_0

    .line 58
    :cond_5
    nop

    .line 60
    :goto_0
    new-instance v1, Lorg/tukaani/xz/SimpleInputStream;

    invoke-direct {v1, p1, v0}, Lorg/tukaani/xz/SimpleInputStream;-><init>(Ljava/io/InputStream;Lorg/tukaani/xz/simple/SimpleFilter;)V

    return-object v1
.end method

.method public getMemoryUsage()I
    .locals 1

    .line 39
    invoke-static {}, Lorg/tukaani/xz/SimpleInputStream;->getMemoryUsage()I

    move-result v0

    return v0
.end method
