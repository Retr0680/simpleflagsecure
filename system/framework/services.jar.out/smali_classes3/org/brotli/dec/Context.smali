.class final Lorg/brotli/dec/Context;
.super Ljava/lang/Object;
.source "Context.java"


# static fields
.field static final LOOKUP:[I

.field private static final UTF_MAP:Ljava/lang/String; = "         !!  !                  \"#$##%#$&\'##(#)#++++++++++((&*\'##,---,---,-----,-----,-----&#\'###.///.///./////./////./////&#\'# "

.field private static final UTF_RLE:Ljava/lang/String; = "A/*  \':  & : $  \u0081 @"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    const/16 v0, 0x800

    new-array v0, v0, [I

    sput-object v0, Lorg/brotli/dec/Context;->LOOKUP:[I

    .line 56
    sget-object v0, Lorg/brotli/dec/Context;->LOOKUP:[I

    const-string v1, "         !!  !                  \"#$##%#$&\'##(#)#++++++++++((&*\'##,---,---,-----,-----,-----&#\'###.///.///./////./////./////&#\'# "

    const-string v2, "A/*  \':  & : $  \u0081 @"

    invoke-static {v0, v1, v2}, Lorg/brotli/dec/Context;->unpackLookupTable([ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static unpackLookupTable([ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "lookup"    # [I
    .param p1, "map"    # Ljava/lang/String;
    .param p2, "rle"    # Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    .line 23
    and-int/lit8 v1, v0, 0x3f

    aput v1, p0, v0

    .line 24
    add-int/lit16 v1, v0, 0x200

    shr-int/lit8 v2, v0, 0x2

    aput v2, p0, v1

    .line 25
    add-int/lit16 v1, v0, 0x700

    shr-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, 0x2

    aput v2, p0, v1

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 28
    .end local v0    # "i":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    const/16 v2, 0x80

    if-ge v0, v2, :cond_1

    .line 29
    add-int/lit16 v2, v0, 0x400

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x20

    mul-int/lit8 v3, v3, 0x4

    aput v3, p0, v2

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 31
    .end local v0    # "i":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    const/16 v2, 0x40

    if-ge v0, v2, :cond_2

    .line 32
    add-int/lit16 v2, v0, 0x480

    and-int/lit8 v3, v0, 0x1

    aput v3, p0, v2

    .line 33
    add-int/lit16 v2, v0, 0x4c0

    and-int/lit8 v3, v0, 0x1

    add-int/lit8 v3, v3, 0x2

    aput v3, p0, v2

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    nop

    .line 35
    .end local v0    # "i":I
    const/16 v0, 0x500

    .line 36
    .local v0, "offset":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_3
    const/16 v3, 0x13

    if-ge v2, v3, :cond_4

    .line 37
    and-int/lit8 v3, v2, 0x3

    .line 38
    .local v3, "value":I
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x20

    .line 39
    .local v4, "rep":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    if-ge v5, v4, :cond_3

    .line 40
    add-int/lit8 v6, v0, 0x1

    .end local v0    # "offset":I
    .local v6, "offset":I
    aput v3, p0, v0

    .line 39
    add-int/lit8 v5, v5, 0x1

    move v0, v6

    goto :goto_4

    .end local v6    # "offset":I
    .restart local v0    # "offset":I
    :cond_3
    nop

    .line 36
    .end local v3    # "value":I
    .end local v4    # "rep":I
    .end local v5    # "i":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    nop

    .line 44
    .end local v2    # "k":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    const/16 v3, 0x10

    if-ge v2, v3, :cond_5

    .line 45
    add-int/lit16 v3, v2, 0x700

    const/4 v4, 0x1

    aput v4, p0, v3

    .line 46
    add-int/lit16 v3, v2, 0x7f0

    const/4 v4, 0x6

    aput v4, p0, v3

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    nop

    .line 48
    .end local v2    # "i":I
    const/4 v2, 0x0

    const/16 v3, 0x700

    aput v2, p0, v3

    .line 49
    const/16 v2, 0x7ff

    const/4 v3, 0x7

    aput v3, p0, v2

    .line 50
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6
    if-ge v2, v1, :cond_6

    .line 51
    add-int/lit16 v3, v2, 0x600

    add-int/lit16 v4, v2, 0x700

    aget v4, p0, v4

    shl-int/lit8 v4, v4, 0x3

    aput v4, p0, v3

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6
    nop

    .line 53
    .end local v2    # "i":I
    return-void
.end method
