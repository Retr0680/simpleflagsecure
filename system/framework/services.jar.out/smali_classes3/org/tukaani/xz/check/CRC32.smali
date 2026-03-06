.class public Lorg/tukaani/xz/check/CRC32;
.super Lorg/tukaani/xz/check/Check;
.source "CRC32.java"


# instance fields
.field private final state:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lorg/tukaani/xz/check/Check;-><init>()V

    .line 13
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/tukaani/xz/check/CRC32;->state:Ljava/util/zip/CRC32;

    .line 16
    const/4 v0, 0x4

    iput v0, p0, Lorg/tukaani/xz/check/Check;->size:I

    .line 17
    const-string v0, "CRC32"

    iput-object v0, p0, Lorg/tukaani/xz/check/Check;->name:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public finish()[B
    .locals 8

    .line 25
    iget-object v0, p0, Lorg/tukaani/xz/check/CRC32;->state:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    .line 26
    .local v0, "value":J
    long-to-int v2, v0

    int-to-byte v2, v2

    const/16 v3, 0x8

    ushr-long v3, v0, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    const/16 v4, 0x10

    ushr-long v4, v0, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    const/16 v5, 0x18

    ushr-long v5, v0, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    const/4 v6, 0x4

    new-array v6, v6, [B

    const/4 v7, 0x0

    aput-byte v2, v6, v7

    const/4 v2, 0x1

    aput-byte v3, v6, v2

    const/4 v2, 0x2

    aput-byte v4, v6, v2

    const/4 v2, 0x3

    aput-byte v5, v6, v2

    .line 30
    .local v6, "buf":[B
    iget-object v2, p0, Lorg/tukaani/xz/check/CRC32;->state:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->reset()V

    .line 31
    return-object v6
.end method

.method public update([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 21
    iget-object v0, p0, Lorg/tukaani/xz/check/CRC32;->state:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 22
    return-void
.end method
