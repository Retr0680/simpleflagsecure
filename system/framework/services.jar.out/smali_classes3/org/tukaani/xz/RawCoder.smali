.class Lorg/tukaani/xz/RawCoder;
.super Ljava/lang/Object;
.source "RawCoder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static validate([Lorg/tukaani/xz/FilterCoder;)V
    .locals 4
    .param p0, "filters"    # [Lorg/tukaani/xz/FilterCoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    .line 15
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    const-string v2, "Unsupported XZ filter chain"

    if-ge v0, v1, :cond_1

    .line 16
    aget-object v1, p0, v0

    invoke-interface {v1}, Lorg/tukaani/xz/FilterCoder;->nonLastOK()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_0
    new-instance v1, Lorg/tukaani/xz/UnsupportedOptionsException;

    invoke-direct {v1, v2}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_1
    nop

    .line 20
    .end local v0    # "i":I
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    invoke-interface {v0}, Lorg/tukaani/xz/FilterCoder;->lastOK()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "changesSizeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_3

    .line 26
    aget-object v3, p0, v1

    invoke-interface {v3}, Lorg/tukaani/xz/FilterCoder;->changesSize()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 25
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    nop

    .line 29
    .end local v1    # "i":I
    const/4 v1, 0x3

    if-gt v0, v1, :cond_4

    .line 32
    return-void

    .line 30
    :cond_4
    new-instance v1, Lorg/tukaani/xz/UnsupportedOptionsException;

    invoke-direct {v1, v2}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 21
    .end local v0    # "changesSizeCount":I
    :cond_5
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    invoke-direct {v0, v2}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
