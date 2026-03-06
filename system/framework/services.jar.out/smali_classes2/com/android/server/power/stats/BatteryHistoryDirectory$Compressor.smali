.class interface abstract Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;
.super Ljava/lang/Object;
.source "BatteryHistoryDirectory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/stats/BatteryHistoryDirectory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Compressor"
.end annotation


# virtual methods
.method public abstract compress(Ljava/io/OutputStream;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public readFully([BLjava/io/InputStream;)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "pos":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 83
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p2, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 84
    .local v1, "count":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 87
    add-int/2addr v0, v1

    .line 88
    .end local v1    # "count":I
    goto :goto_0

    .line 85
    .restart local v1    # "count":I
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid battery history file format"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    .end local v1    # "count":I
    :cond_1
    return-void
.end method

.method public abstract uncompress([BLjava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
