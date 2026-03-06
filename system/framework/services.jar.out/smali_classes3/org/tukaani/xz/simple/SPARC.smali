.class public final Lorg/tukaani/xz/simple/SPARC;
.super Ljava/lang/Object;
.source "SPARC.java"

# interfaces
.implements Lorg/tukaani/xz/simple/SimpleFilter;


# instance fields
.field private final isEncoder:Z

.field private pos:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0
    .param p1, "isEncoder"    # Z
    .param p2, "startPos"    # I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p1, p0, Lorg/tukaani/xz/simple/SPARC;->isEncoder:Z

    .line 19
    iput p2, p0, Lorg/tukaani/xz/simple/SPARC;->pos:I

    .line 20
    return-void
.end method


# virtual methods
.method public code([BII)I
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 23
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x4

    .line 26
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_4

    .line 27
    aget-byte v2, p1, v1

    const/16 v3, 0x40

    const/16 v4, 0xc0

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    :cond_0
    aget-byte v2, p1, v1

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_3

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_3

    .line 29
    :cond_1
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 33
    .local v2, "src":I
    shl-int/lit8 v2, v2, 0x2

    .line 36
    iget-boolean v3, p0, Lorg/tukaani/xz/simple/SPARC;->isEncoder:Z

    if-eqz v3, :cond_2

    .line 37
    iget v3, p0, Lorg/tukaani/xz/simple/SPARC;->pos:I

    add-int/2addr v3, v1

    sub-int/2addr v3, p2

    add-int/2addr v3, v2

    .local v3, "dest":I
    goto :goto_1

    .line 39
    .end local v3    # "dest":I
    :cond_2
    iget v3, p0, Lorg/tukaani/xz/simple/SPARC;->pos:I

    add-int/2addr v3, v1

    sub-int/2addr v3, p2

    sub-int v3, v2, v3

    .line 41
    .restart local v3    # "dest":I
    :goto_1
    ushr-int/lit8 v3, v3, 0x2

    .line 42
    ushr-int/lit8 v4, v3, 0x16

    and-int/lit8 v4, v4, 0x1

    rsub-int/lit8 v4, v4, 0x0

    shl-int/lit8 v4, v4, 0x16

    const v5, 0x3fffffff    # 1.9999999f

    and-int/2addr v4, v5

    const v5, 0x3fffff

    and-int/2addr v5, v3

    or-int/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    or-int v3, v4, v5

    .line 45
    ushr-int/lit8 v4, v3, 0x18

    int-to-byte v4, v4

    aput-byte v4, p1, v1

    .line 46
    add-int/lit8 v4, v1, 0x1

    ushr-int/lit8 v5, v3, 0x10

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 47
    add-int/lit8 v4, v1, 0x2

    ushr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 48
    add-int/lit8 v4, v1, 0x3

    int-to-byte v5, v3

    aput-byte v5, p1, v4

    .line 26
    .end local v2    # "src":I
    .end local v3    # "dest":I
    :cond_3
    add-int/lit8 v1, v1, 0x4

    goto/16 :goto_0

    .line 52
    :cond_4
    sub-int/2addr v1, p2

    .line 53
    iget v2, p0, Lorg/tukaani/xz/simple/SPARC;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/tukaani/xz/simple/SPARC;->pos:I

    .line 54
    return v1
.end method
