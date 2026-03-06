.class LXZSeekDecDemo;
.super Ljava/lang/Object;
.source "XZSeekDecDemo.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 13
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    new-instance v0, Lorg/tukaani/xz/SeekableFileInputStream;

    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-direct {v0, v2}, Lorg/tukaani/xz/SeekableFileInputStream;-><init>(Ljava/lang/String;)V

    .line 28
    .local v0, "file":Lorg/tukaani/xz/SeekableFileInputStream;
    new-instance v2, Lorg/tukaani/xz/SeekableXZInputStream;

    invoke-direct {v2, v0}, Lorg/tukaani/xz/SeekableXZInputStream;-><init>(Lorg/tukaani/xz/SeekableInputStream;)V

    .line 30
    .local v2, "in":Lorg/tukaani/xz/SeekableXZInputStream;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number of XZ Streams: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/tukaani/xz/SeekableXZInputStream;->getStreamCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number of XZ Blocks: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/tukaani/xz/SeekableXZInputStream;->getBlockCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 33
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uncompressed size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/tukaani/xz/SeekableXZInputStream;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " B"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 35
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Largest XZ Block size: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2}, Lorg/tukaani/xz/SeekableXZInputStream;->getLargestBlockSize()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 35
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 38
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "List of Check IDs:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v2}, Lorg/tukaani/xz/SeekableXZInputStream;->getCheckTypes()I

    move-result v3

    .line 40
    .local v3, "checkTypes":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x10

    const/4 v6, 0x1

    if-ge v4, v5, :cond_1

    .line 41
    shl-int v5, v6, v4

    and-int/2addr v5, v3

    if-eqz v5, :cond_0

    .line 42
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 40
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 43
    .end local v4    # "i":I
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/io/PrintStream;->println()V

    .line 45
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Index memory usage: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v2}, Lorg/tukaani/xz/SeekableXZInputStream;->getIndexMemoryUsage()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " KiB"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 45
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    const/16 v4, 0x2000

    new-array v4, v4, [B

    .line 49
    .local v4, "buf":[B
    array-length v5, p0

    const/4 v7, -0x1

    if-ne v5, v6, :cond_3

    .line 51
    :goto_1
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "size":I
    if-eq v5, v7, :cond_2

    .line 52
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v4, v1, v6}, Ljava/io/PrintStream;->write([BII)V

    goto :goto_1

    .line 51
    :cond_2
    nop

    .line 53
    .end local v6    # "size":I
    goto :goto_4

    .line 54
    :cond_3
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_2
    array-length v8, p0

    if-ge v5, v8, :cond_6

    .line 55
    aget-object v8, p0, v5

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 56
    .local v8, "pos":I
    add-int/lit8 v9, v5, 0x1

    aget-object v9, p0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 58
    .local v9, "len":I
    int-to-long v10, v8

    invoke-virtual {v2, v10, v11}, Lorg/tukaani/xz/SeekableXZInputStream;->seek(J)V

    .line 60
    :goto_3
    if-lez v9, :cond_5

    .line 61
    array-length v10, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 62
    .local v10, "size":I
    invoke-virtual {v2, v4, v1, v10}, Lorg/tukaani/xz/SeekableXZInputStream;->read([BII)I

    move-result v10

    .line 64
    if-ne v10, v7, :cond_4

    .line 65
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v12, "Error: End of file reached"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    .line 69
    :cond_4
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11, v4, v1, v10}, Ljava/io/PrintStream;->write([BII)V

    .line 70
    sub-int/2addr v9, v10

    .line 71
    .end local v10    # "size":I
    goto :goto_3

    .line 60
    :cond_5
    nop

    .line 54
    .end local v8    # "pos":I
    .end local v9    # "len":I
    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    .line 74
    .end local v5    # "i":I
    :cond_6
    :goto_4
    return-void
.end method
