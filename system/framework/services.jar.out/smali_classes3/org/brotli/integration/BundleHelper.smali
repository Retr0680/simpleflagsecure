.class public Lorg/brotli/integration/BundleHelper;
.super Ljava/lang/Object;
.source "BundleHelper.java"


# static fields
.field private static final CRC_64_POLY:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 71
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "C96C5795D7870F42"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 72
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    sput-wide v0, Lorg/brotli/integration/BundleHelper;->CRC_64_POLY:J

    .line 71
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fingerprintStream(Ljava/io/InputStream;)J
    .locals 5
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    .line 97
    .local v0, "buffer":[B
    const-wide/16 v1, -0x1

    .line 99
    .local v1, "crc":J
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 100
    .local v3, "len":I
    if-gtz v3, :cond_0

    .line 101
    nop

    .line 105
    .end local v3    # "len":I
    not-long v3, v1

    return-wide v3

    .line 103
    .restart local v3    # "len":I
    :cond_0
    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4, v3}, Lorg/brotli/integration/BundleHelper;->updateCrc64(J[BII)J

    move-result-wide v1

    .line 104
    .end local v3    # "len":I
    goto :goto_0
.end method

.method public static getExpectedFingerprint(Ljava/lang/String;)J
    .locals 4
    .param p0, "entryName"    # Ljava/lang/String;

    .line 109
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 110
    .local v0, "dotIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "entryCrcString":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/math/BigInteger;

    const/16 v3, 0x10

    invoke-direct {v2, v1, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public static listEntries(Ljava/io/InputStream;)Ljava/util/List;
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 29
    .local v1, "zis":Ljava/util/zip/ZipInputStream;
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    move-object v3, v2

    .local v3, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_1

    .line 30
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 31
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 36
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 33
    .restart local v3    # "entry":Ljava/util/zip/ZipEntry;
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    .line 37
    nop

    .line 38
    return-object v0

    .line 36
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    :goto_2
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    .line 37
    throw v2
.end method

.method public static readEntry(Ljava/io/InputStream;Ljava/lang/String;)[B
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "entryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 55
    .local v0, "zis":Ljava/util/zip/ZipInputStream;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    move-object v2, v1

    .local v2, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_1

    .line 56
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-static {v0}, Lorg/brotli/integration/BundleHelper;->readStream(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 58
    .local v1, "result":[B
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    nop

    .line 64
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 59
    return-object v1

    .line 64
    .end local v1    # "result":[B
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 61
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 65
    nop

    .line 67
    const/4 v1, 0x0

    return-object v1

    .line 64
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    :goto_1
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 65
    throw v1
.end method

.method public static readStream(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 43
    .local v0, "result":Ljava/io/ByteArrayOutputStream;
    const/high16 v1, 0x10000

    new-array v1, v1, [B

    .line 45
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "bytesRead":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 46
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public static updateCrc64(J[BII)J
    .locals 8
    .param p0, "crc"    # J
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 82
    move v0, p3

    .local v0, "i":I
    :goto_0
    add-int v1, p3, p4

    if-ge v0, v1, :cond_2

    .line 83
    aget-byte v1, p2, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v1, v1

    xor-long/2addr v1, p0

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    .line 84
    .local v1, "c":J
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1
    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    .line 85
    const-wide/16 v4, 0x1

    and-long v6, v1, v4

    cmp-long v4, v6, v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    sget-wide v6, Lorg/brotli/integration/BundleHelper;->CRC_64_POLY:J

    ushr-long v4, v1, v5

    xor-long/2addr v4, v6

    goto :goto_2

    :cond_0
    ushr-long v4, v1, v5

    :goto_2
    move-wide v1, v4

    .line 84
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 87
    .end local v3    # "k":I
    ushr-long v3, p0, v4

    xor-long p0, v1, v3

    .line 82
    .end local v1    # "c":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 89
    .end local v0    # "i":I
    return-wide p0
.end method
