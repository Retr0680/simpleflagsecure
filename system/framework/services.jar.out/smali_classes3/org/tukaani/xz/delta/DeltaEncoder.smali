.class public Lorg/tukaani/xz/delta/DeltaEncoder;
.super Lorg/tukaani/xz/delta/DeltaCoder;
.source "DeltaEncoder.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "distance"    # I

    .line 14
    invoke-direct {p0, p1}, Lorg/tukaani/xz/delta/DeltaCoder;-><init>(I)V

    .line 15
    return-void
.end method


# virtual methods
.method public encode([BII[B)V
    .locals 5
    .param p1, "in"    # [B
    .param p2, "in_off"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B

    .line 18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 19
    iget-object v1, p0, Lorg/tukaani/xz/delta/DeltaCoder;->history:[B

    iget v2, p0, Lorg/tukaani/xz/delta/DeltaCoder;->distance:I

    iget v3, p0, Lorg/tukaani/xz/delta/DeltaCoder;->pos:I

    add-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    .line 20
    .local v1, "tmp":B
    iget-object v2, p0, Lorg/tukaani/xz/delta/DeltaCoder;->history:[B

    iget v3, p0, Lorg/tukaani/xz/delta/DeltaCoder;->pos:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/tukaani/xz/delta/DeltaCoder;->pos:I

    and-int/lit16 v3, v3, 0xff

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    aput-byte v4, v2, v3

    .line 21
    add-int v2, p2, v0

    aget-byte v2, p1, v2

    sub-int/2addr v2, v1

    int-to-byte v2, v2

    aput-byte v2, p4, v0

    .line 18
    .end local v1    # "tmp":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 23
    .end local v0    # "i":I
    return-void
.end method
