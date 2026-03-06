.class Lorg/tukaani/xz/index/IndexRecord;
.super Ljava/lang/Object;
.source "IndexRecord.java"


# instance fields
.field final uncompressed:J

.field final unpadded:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0
    .param p1, "unpadded"    # J
    .param p3, "uncompressed"    # J

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lorg/tukaani/xz/index/IndexRecord;->unpadded:J

    .line 18
    iput-wide p3, p0, Lorg/tukaani/xz/index/IndexRecord;->uncompressed:J

    .line 19
    return-void
.end method
