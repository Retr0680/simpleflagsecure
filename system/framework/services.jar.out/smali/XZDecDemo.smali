.class LXZDecDemo;
.super Ljava/lang/Object;
.source "XZDecDemo.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .param p0, "args"    # [Ljava/lang/String;

    .line 19
    const-string v0, ": "

    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 20
    .local v1, "buf":[B
    const/4 v2, 0x0

    .line 23
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_0
    array-length v4, p0

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-nez v4, :cond_1

    .line 24
    const-string/jumbo v4, "standard input"

    move-object v2, v4

    .line 25
    new-instance v4, Lorg/tukaani/xz/XZInputStream;

    sget-object v7, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v4, v7}, Lorg/tukaani/xz/XZInputStream;-><init>(Ljava/io/InputStream;)V

    .line 28
    .local v4, "in":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "size":I
    if-eq v7, v6, :cond_0

    .line 29
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v1, v5, v8}, Ljava/io/PrintStream;->write([BII)V

    goto :goto_0

    .line 65
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v8    # "size":I
    :catch_0
    move-exception v4

    goto :goto_5

    .line 60
    :catch_1
    move-exception v0

    goto :goto_6

    .line 55
    :catch_2
    move-exception v4

    goto/16 :goto_7

    .line 28
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v8    # "size":I
    :cond_0
    nop

    .line 31
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v8    # "size":I
    goto :goto_4

    .line 33
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v7, p0

    if-ge v4, v7, :cond_3

    .line 34
    aget-object v7, p0, v4

    move-object v2, v7

    .line 35
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .local v7, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v8, Lorg/tukaani/xz/XZInputStream;

    invoke-direct {v8, v7}, Lorg/tukaani/xz/XZInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v7, v8

    .line 45
    :goto_2
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    move v9, v8

    .local v9, "size":I
    if-eq v8, v6, :cond_2

    .line 46
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v1, v5, v9}, Ljava/io/PrintStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 51
    .end local v9    # "size":I
    :catchall_0
    move-exception v5

    goto :goto_3

    .line 45
    .restart local v9    # "size":I
    :cond_2
    nop

    .line 51
    .end local v9    # "size":I
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 52
    nop

    .line 33
    .end local v7    # "in":Ljava/io/InputStream;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 51
    .restart local v7    # "in":Ljava/io/InputStream;
    :goto_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 52
    nop

    .end local v1    # "buf":[B
    .end local v2    # "name":Ljava/lang/String;
    .end local p0    # "args":[Ljava/lang/String;
    throw v5
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 69
    .end local v4    # "i":I
    .end local v7    # "in":Ljava/io/InputStream;
    .restart local v1    # "buf":[B
    .restart local v2    # "name":Ljava/lang/String;
    .restart local p0    # "args":[Ljava/lang/String;
    :cond_3
    :goto_4
    goto :goto_8

    .line 65
    :goto_5
    nop

    .line 66
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XZDecDemo: Error decompressing from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_8

    .line 60
    .end local v4    # "e":Ljava/io/IOException;
    :goto_6
    nop

    .line 61
    .local v0, "e":Ljava/io/EOFException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "XZDecDemo: Unexpected end of input on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .end local v0    # "e":Ljava/io/EOFException;
    goto :goto_4

    .line 55
    :goto_7
    nop

    .line 56
    .local v4, "e":Ljava/io/FileNotFoundException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XZDecDemo: Cannot open "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .end local v4    # "e":Ljava/io/FileNotFoundException;
    goto :goto_4

    .line 70
    :goto_8
    return-void
.end method
