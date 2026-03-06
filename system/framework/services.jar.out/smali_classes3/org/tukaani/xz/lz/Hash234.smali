.class final Lorg/tukaani/xz/lz/Hash234;
.super Lorg/tukaani/xz/lz/CRC32Hash;
.source "Hash234.java"


# static fields
.field private static final HASH_2_MASK:I = 0x3ff

.field private static final HASH_2_SIZE:I = 0x400

.field private static final HASH_3_MASK:I = 0xffff

.field private static final HASH_3_SIZE:I = 0x10000


# instance fields
.field private final hash2Table:[I

.field private hash2Value:I

.field private final hash3Table:[I

.field private hash3Value:I

.field private final hash4Mask:I

.field private final hash4Size:I

.field private final hash4Table:[I

.field private hash4Value:I


# direct methods
.method constructor <init>(ILorg/tukaani/xz/ArrayCache;)V
    .locals 2
    .param p1, "dictSize"    # I
    .param p2, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 53
    invoke-direct {p0}, Lorg/tukaani/xz/lz/CRC32Hash;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash2Value:I

    .line 30
    iput v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash3Value:I

    .line 31
    iput v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash4Value:I

    .line 54
    const/16 v0, 0x400

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lorg/tukaani/xz/ArrayCache;->getIntArray(IZ)[I

    move-result-object v0

    iput-object v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash2Table:[I

    .line 55
    const/high16 v0, 0x10000

    invoke-virtual {p2, v0, v1}, Lorg/tukaani/xz/ArrayCache;->getIntArray(IZ)[I

    move-result-object v0

    iput-object v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash3Table:[I

    .line 57
    invoke-static {p1}, Lorg/tukaani/xz/lz/Hash234;->getHash4Size(I)I

    move-result v0

    iput v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash4Size:I

    .line 58
    iget v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash4Size:I

    invoke-virtual {p2, v0, v1}, Lorg/tukaani/xz/ArrayCache;->getIntArray(IZ)[I

    move-result-object v0

    iput-object v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash4Table:[I

    .line 59
    iget v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash4Size:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash4Mask:I

    .line 60
    return-void
.end method

.method static getHash4Size(I)I
    .locals 2
    .param p0, "dictSize"    # I

    .line 34
    add-int/lit8 v0, p0, -0x1

    .line 35
    .local v0, "h":I
    ushr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    .line 36
    ushr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 37
    ushr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 38
    ushr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 39
    ushr-int/lit8 v0, v0, 0x1

    .line 40
    const v1, 0xffff

    or-int/2addr v0, v1

    .line 41
    const/high16 v1, 0x1000000

    if-le v0, v1, :cond_0

    .line 42
    ushr-int/lit8 v0, v0, 0x1

    .line 44
    :cond_0
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method static getMemoryUsage(I)I
    .locals 2
    .param p0, "dictSize"    # I

    .line 49
    const v0, 0x10400

    invoke-static {p0}, Lorg/tukaani/xz/lz/Hash234;->getHash4Size(I)I

    move-result v1

    add-int/2addr v1, v0

    div-int/lit16 v1, v1, 0x100

    add-int/lit8 v1, v1, 0x4

    return v1
.end method


# virtual methods
.method calcHashes([BI)V
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "off"    # I

    .line 69
    sget-object v0, Lorg/tukaani/xz/lz/CRC32Hash;->crcTable:[I

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    xor-int/2addr v0, v1

    .line 70
    .local v0, "temp":I
    and-int/lit16 v1, v0, 0x3ff

    iput v1, p0, Lorg/tukaani/xz/lz/Hash234;->hash2Value:I

    .line 72
    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    xor-int/2addr v0, v1

    .line 73
    const v1, 0xffff

    and-int/2addr v1, v0

    iput v1, p0, Lorg/tukaani/xz/lz/Hash234;->hash3Value:I

    .line 75
    sget-object v1, Lorg/tukaani/xz/lz/CRC32Hash;->crcTable:[I

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x5

    xor-int/2addr v0, v1

    .line 76
    iget v1, p0, Lorg/tukaani/xz/lz/Hash234;->hash4Mask:I

    and-int/2addr v1, v0

    iput v1, p0, Lorg/tukaani/xz/lz/Hash234;->hash4Value:I

    .line 77
    return-void
.end method

.method getHash2Pos()I
    .locals 2

    .line 80
    iget-object v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash2Table:[I

    iget v1, p0, Lorg/tukaani/xz/lz/Hash234;->hash2Value:I

    aget v0, v0, v1

    return v0
.end method

.method getHash3Pos()I
    .locals 2

    .line 84
    iget-object v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash3Table:[I

    iget v1, p0, Lorg/tukaani/xz/lz/Hash234;->hash3Value:I

    aget v0, v0, v1

    return v0
.end method

.method getHash4Pos()I
    .locals 2

    .line 88
    iget-object v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash4Table:[I

    iget v1, p0, Lorg/tukaani/xz/lz/Hash234;->hash4Value:I

    aget v0, v0, v1

    return v0
.end method

.method normalize(I)V
    .locals 2
    .param p1, "normalizationOffset"    # I

    .line 98
    iget-object v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash2Table:[I

    const/16 v1, 0x400

    invoke-static {v0, v1, p1}, Lorg/tukaani/xz/lz/LZEncoder;->normalize([III)V

    .line 99
    iget-object v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash3Table:[I

    const/high16 v1, 0x10000

    invoke-static {v0, v1, p1}, Lorg/tukaani/xz/lz/LZEncoder;->normalize([III)V

    .line 100
    iget-object v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash4Table:[I

    iget v1, p0, Lorg/tukaani/xz/lz/Hash234;->hash4Size:I

    invoke-static {v0, v1, p1}, Lorg/tukaani/xz/lz/LZEncoder;->normalize([III)V

    .line 101
    return-void
.end method

.method putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V
    .locals 1
    .param p1, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 63
    iget-object v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash4Table:[I

    invoke-virtual {p1, v0}, Lorg/tukaani/xz/ArrayCache;->putArray([I)V

    .line 64
    iget-object v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash3Table:[I

    invoke-virtual {p1, v0}, Lorg/tukaani/xz/ArrayCache;->putArray([I)V

    .line 65
    iget-object v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash2Table:[I

    invoke-virtual {p1, v0}, Lorg/tukaani/xz/ArrayCache;->putArray([I)V

    .line 66
    return-void
.end method

.method updateTables(I)V
    .locals 2
    .param p1, "pos"    # I

    .line 92
    iget-object v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash2Table:[I

    iget v1, p0, Lorg/tukaani/xz/lz/Hash234;->hash2Value:I

    aput p1, v0, v1

    .line 93
    iget-object v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash3Table:[I

    iget v1, p0, Lorg/tukaani/xz/lz/Hash234;->hash3Value:I

    aput p1, v0, v1

    .line 94
    iget-object v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash4Table:[I

    iget v1, p0, Lorg/tukaani/xz/lz/Hash234;->hash4Value:I

    aput p1, v0, v1

    .line 95
    return-void
.end method
