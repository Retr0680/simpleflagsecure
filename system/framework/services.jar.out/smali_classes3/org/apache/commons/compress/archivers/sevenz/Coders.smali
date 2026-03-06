.class Lorg/apache/commons/compress/archivers/sevenz/Coders;
.super Ljava/lang/Object;
.source "Coders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/sevenz/Coders$BZIP2Decoder;,
        Lorg/apache/commons/compress/archivers/sevenz/Coders$Deflate64Decoder;,
        Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder;,
        Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;,
        Lorg/apache/commons/compress/archivers/sevenz/Coders$CopyDecoder;
    }
.end annotation


# static fields
.field private static final CODER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;",
            "Lorg/apache/commons/compress/archivers/sevenz/CoderBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/Coders$1;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/sevenz/Coders$1;-><init>()V

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/Coders;->CODER_MAP:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addDecoder(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;
    .locals 8
    .param p0, "archiveName"    # Ljava/lang/String;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "uncompressedLength"    # J
    .param p4, "coder"    # Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .param p5, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p4, Lorg/apache/commons/compress/archivers/sevenz/Coder;->decompressionMethodId:[B

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->byId([B)Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->findByMethod(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;)Lorg/apache/commons/compress/archivers/sevenz/CoderBase;

    move-result-object v1

    .line 74
    .local v1, "cb":Lorg/apache/commons/compress/archivers/sevenz/CoderBase;
    if-eqz v1, :cond_0

    .line 79
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    .end local p0    # "archiveName":Ljava/lang/String;
    .end local p1    # "is":Ljava/io/InputStream;
    .end local p2    # "uncompressedLength":J
    .end local p4    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .end local p5    # "password":[B
    .local v2, "archiveName":Ljava/lang/String;
    .local v3, "is":Ljava/io/InputStream;
    .local v4, "uncompressedLength":J
    .local v6, "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .local v7, "password":[B
    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;->decode(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 75
    .end local v2    # "archiveName":Ljava/lang/String;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "uncompressedLength":J
    .end local v6    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .end local v7    # "password":[B
    .restart local p0    # "archiveName":Ljava/lang/String;
    .restart local p1    # "is":Ljava/io/InputStream;
    .restart local p2    # "uncompressedLength":J
    .restart local p4    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .restart local p5    # "password":[B
    :cond_0
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    .end local p0    # "archiveName":Ljava/lang/String;
    .end local p1    # "is":Ljava/io/InputStream;
    .end local p2    # "uncompressedLength":J
    .end local p4    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .restart local v2    # "archiveName":Ljava/lang/String;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "uncompressedLength":J
    .restart local v6    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported compression method "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v6, Lorg/apache/commons/compress/archivers/sevenz/Coder;->decompressionMethodId:[B

    .line 76
    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " used in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static addEncoder(Ljava/io/OutputStream;Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;Ljava/lang/Object;)Ljava/io/OutputStream;
    .locals 4
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "method"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;
    .param p2, "options"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->findByMethod(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;)Lorg/apache/commons/compress/archivers/sevenz/CoderBase;

    move-result-object v0

    .line 85
    .local v0, "cb":Lorg/apache/commons/compress/archivers/sevenz/CoderBase;
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0, p0, p2}, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;->encode(Ljava/io/OutputStream;Ljava/lang/Object;)Ljava/io/OutputStream;

    move-result-object v1

    return-object v1

    .line 86
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported compression method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static findByMethod(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;)Lorg/apache/commons/compress/archivers/sevenz/CoderBase;
    .locals 1
    .param p0, "method"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 68
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/Coders;->CODER_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;

    return-object v0
.end method
