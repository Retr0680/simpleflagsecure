.class Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream$1;
.super Lorg/apache/commons/compress/utils/CountingInputStream;
.source "ExplodingInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream$1;->this$0:Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/utils/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 104
    return-void
.end method
