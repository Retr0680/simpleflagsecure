.class public final Lorg/tukaani/xz/simple/PowerPC;
.super Ljava/lang/Object;
.source "PowerPC.java"

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
    iput-boolean p1, p0, Lorg/tukaani/xz/simple/PowerPC;->isEncoder:Z

    .line 19
    iput p2, p0, Lorg/tukaani/xz/simple/PowerPC;->pos:I

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
    if-gt v1, v0, :cond_2

    .line 27
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xfc

    const/16 v3, 0x48

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v1, 0x3

    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 28
    aget-byte v2, p1, v1

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    add-int/lit8 v4, v1, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    add-int/lit8 v4, v1, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xfc

    or-int/2addr v2, v4

    .line 34
    .local v2, "src":I
    iget-boolean v4, p0, Lorg/tukaani/xz/simple/PowerPC;->isEncoder:Z

    if-eqz v4, :cond_0

    .line 35
    iget v4, p0, Lorg/tukaani/xz/simple/PowerPC;->pos:I

    add-int/2addr v4, v1

    sub-int/2addr v4, p2

    add-int/2addr v4, v2

    .local v4, "dest":I
    goto :goto_1

    .line 37
    .end local v4    # "dest":I
    :cond_0
    iget v4, p0, Lorg/tukaani/xz/simple/PowerPC;->pos:I

    add-int/2addr v4, v1

    sub-int/2addr v4, p2

    sub-int v4, v2, v4

    .line 39
    .restart local v4    # "dest":I
    :goto_1
    ushr-int/lit8 v5, v4, 0x18

    and-int/lit8 v5, v5, 0x3

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    .line 40
    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v5, v4, 0x10

    int-to-byte v5, v5

    aput-byte v5, p1, v3

    .line 41
    add-int/lit8 v3, v1, 0x2

    ushr-int/lit8 v5, v4, 0x8

    int-to-byte v5, v5

    aput-byte v5, p1, v3

    .line 42
    add-int/lit8 v3, v1, 0x3

    add-int/lit8 v5, v1, 0x3

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x3

    or-int/2addr v5, v4

    int-to-byte v5, v5

    aput-byte v5, p1, v3

    .line 26
    .end local v2    # "src":I
    .end local v4    # "dest":I
    :cond_1
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 46
    :cond_2
    sub-int/2addr v1, p2

    .line 47
    iget v2, p0, Lorg/tukaani/xz/simple/PowerPC;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/tukaani/xz/simple/PowerPC;->pos:I

    .line 48
    return v1
.end method
