.class LXZSeekEncDemo;
.super Ljava/lang/Object;
.source "XZSeekEncDemo.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    new-instance v0, Lorg/tukaani/xz/LZMA2Options;

    invoke-direct {v0}, Lorg/tukaani/xz/LZMA2Options;-><init>()V

    .line 30
    .local v0, "options":Lorg/tukaani/xz/LZMA2Options;
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    .line 31
    aget-object v1, p0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/tukaani/xz/LZMA2Options;->setPreset(I)V

    .line 33
    :cond_0
    const/high16 v1, 0x100000

    .line 34
    .local v1, "blockSize":I
    array-length v4, p0

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    .line 35
    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 37
    :cond_1
    invoke-virtual {v0}, Lorg/tukaani/xz/LZMA2Options;->getDictSize()I

    move-result v3

    .line 38
    const/16 v4, 0x1000

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 37
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/tukaani/xz/LZMA2Options;->setDictSize(I)V

    .line 41
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encoder memory usage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Lorg/tukaani/xz/LZMA2Options;->getEncoderMemoryUsage()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " KiB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 41
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Decoder memory usage: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Lorg/tukaani/xz/LZMA2Options;->getDecoderMemoryUsage()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Block size:           "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " B"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 47
    new-instance v3, Lorg/tukaani/xz/XZOutputStream;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v3, v4, v0}, Lorg/tukaani/xz/XZOutputStream;-><init>(Ljava/io/OutputStream;Lorg/tukaani/xz/FilterOptions;)V

    .line 49
    .local v3, "out":Lorg/tukaani/xz/XZOutputStream;
    const/16 v4, 0x2000

    new-array v4, v4, [B

    .line 50
    .local v4, "buf":[B
    move v5, v1

    .line 53
    .local v5, "left":I
    :goto_0
    sget-object v6, Ljava/lang/System;->in:Ljava/io/InputStream;

    array-length v7, v4

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v6, v4, v2, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 54
    .local v6, "size":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 55
    nop

    .line 66
    .end local v6    # "size":I
    invoke-virtual {v3}, Lorg/tukaani/xz/XZOutputStream;->finish()V

    .line 67
    return-void

    .line 57
    .restart local v6    # "size":I
    :cond_2
    invoke-virtual {v3, v4, v2, v6}, Lorg/tukaani/xz/XZOutputStream;->write([BII)V

    .line 58
    sub-int/2addr v5, v6

    .line 60
    if-nez v5, :cond_3

    .line 61
    invoke-virtual {v3}, Lorg/tukaani/xz/XZOutputStream;->endBlock()V

    .line 62
    move v5, v1

    .line 64
    .end local v6    # "size":I
    :cond_3
    goto :goto_0
.end method
