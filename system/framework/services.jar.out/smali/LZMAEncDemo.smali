.class LLZMAEncDemo;
.super Ljava/lang/Object;
.source "LZMAEncDemo.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    new-instance v0, Lorg/tukaani/xz/LZMA2Options;

    invoke-direct {v0}, Lorg/tukaani/xz/LZMA2Options;-><init>()V

    .line 30
    .local v0, "options":Lorg/tukaani/xz/LZMA2Options;
    const-wide/16 v1, -0x1

    .line 32
    .local v1, "inputSize":J
    array-length v3, p0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lt v3, v5, :cond_0

    .line 33
    aget-object v3, p0, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/tukaani/xz/LZMA2Options;->setPreset(I)V

    .line 35
    :cond_0
    array-length v3, p0

    const/4 v6, 0x2

    if-lt v3, v6, :cond_1

    .line 36
    aget-object v3, p0, v5

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 38
    :cond_1
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encoder memory usage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Lorg/tukaani/xz/LZMA2Options;->getEncoderMemoryUsage()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " KiB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 38
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Decoder memory usage: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Lorg/tukaani/xz/LZMA2Options;->getDecoderMemoryUsage()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 40
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    new-instance v3, Ljava/io/BufferedOutputStream;

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 46
    .local v3, "out":Ljava/io/OutputStream;
    new-instance v5, Lorg/tukaani/xz/LZMAOutputStream;

    invoke-direct {v5, v3, v0, v1, v2}, Lorg/tukaani/xz/LZMAOutputStream;-><init>(Ljava/io/OutputStream;Lorg/tukaani/xz/LZMA2Options;J)V

    .line 49
    .local v5, "encoder":Lorg/tukaani/xz/LZMAOutputStream;
    const/16 v6, 0x2000

    new-array v6, v6, [B

    .line 51
    .local v6, "buf":[B
    :goto_0
    sget-object v7, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v7, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "size":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_2

    .line 52
    invoke-virtual {v5, v6, v4, v8}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {v5}, Lorg/tukaani/xz/LZMAOutputStream;->finish()V

    .line 55
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 56
    return-void
.end method
