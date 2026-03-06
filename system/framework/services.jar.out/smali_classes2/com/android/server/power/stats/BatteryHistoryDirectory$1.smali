.class Lcom/android/server/power/stats/BatteryHistoryDirectory$1;
.super Ljava/lang/Object;
.source "BatteryHistoryDirectory.java"

# interfaces
.implements Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/stats/BatteryHistoryDirectory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compress(Ljava/io/OutputStream;[B)V
    .locals 2
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    new-instance v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;-><init>()V

    .line 98
    .local v0, "parameters":Lorg/apache/commons/compress/compressors/gzip/GzipParameters;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setCompressionLevel(I)V

    .line 99
    new-instance v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;

    invoke-direct {v1, p1, v0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/compressors/gzip/GzipParameters;)V

    .line 100
    .local v1, "os":Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;
    invoke-virtual {v1, p2}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->write([B)V

    .line 101
    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->finish()V

    .line 102
    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->flush()V

    .line 103
    return-void
.end method

.method public uncompress([BLjava/io/InputStream;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {p0, p1, v0}, Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;->readFully([BLjava/io/InputStream;)V

    .line 108
    return-void
.end method
