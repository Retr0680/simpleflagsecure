.class public Lorg/tukaani/xz/CloseIgnoringInputStream;
.super Ljava/io/FilterInputStream;
.source "CloseIgnoringInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .line 41
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 42
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 47
    return-void
.end method
