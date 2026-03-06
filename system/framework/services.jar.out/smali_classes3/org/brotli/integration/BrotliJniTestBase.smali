.class public Lorg/brotli/integration/BrotliJniTestBase;
.super Ljava/lang/Object;
.source "BrotliJniTestBase.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    const-string v0, "BROTLI_JNI_LIBRARY"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    .local v0, "jniLibrary":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 10
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 12
    .end local v0    # "jniLibrary":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
