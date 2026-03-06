.class Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;
.super Lorg/apache/commons/compress/archivers/sevenz/CoderBase;
.source "AES256SHA256Decoder.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;-><init>([Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method decode(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;
    .locals 6
    .param p1, "archiveName"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "uncompressedLength"    # J
    .param p5, "coder"    # Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .param p6, "passwordBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v2, p5

    move-object v4, p6

    .end local p1    # "archiveName":Ljava/lang/String;
    .end local p2    # "in":Ljava/io/InputStream;
    .end local p5    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .end local p6    # "passwordBytes":[B
    .local v2, "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .local v3, "archiveName":Ljava/lang/String;
    .local v4, "passwordBytes":[B
    .local v5, "in":Ljava/io/InputStream;
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;-><init>(Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;Lorg/apache/commons/compress/archivers/sevenz/Coder;Ljava/lang/String;[BLjava/io/InputStream;)V

    return-object v0
.end method
