.class Lorg/tukaani/xz/DeltaEncoder;
.super Lorg/tukaani/xz/DeltaCoder;
.source "DeltaEncoder.java"

# interfaces
.implements Lorg/tukaani/xz/FilterEncoder;


# instance fields
.field private final options:Lorg/tukaani/xz/DeltaOptions;

.field private final props:[B


# direct methods
.method constructor <init>(Lorg/tukaani/xz/DeltaOptions;)V
    .locals 3
    .param p1, "options"    # Lorg/tukaani/xz/DeltaOptions;

    .line 16
    invoke-direct {p0}, Lorg/tukaani/xz/DeltaCoder;-><init>()V

    .line 14
    const/4 v0, 0x1

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/tukaani/xz/DeltaEncoder;->props:[B

    .line 17
    iget-object v1, p0, Lorg/tukaani/xz/DeltaEncoder;->props:[B

    invoke-virtual {p1}, Lorg/tukaani/xz/DeltaOptions;->getDistance()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-byte v0, v2

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    .line 18
    invoke-virtual {p1}, Lorg/tukaani/xz/DeltaOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/tukaani/xz/DeltaOptions;

    iput-object v0, p0, Lorg/tukaani/xz/DeltaEncoder;->options:Lorg/tukaani/xz/DeltaOptions;

    .line 19
    return-void
.end method


# virtual methods
.method public getFilterID()J
    .locals 2

    .line 22
    const-wide/16 v0, 0x3

    return-wide v0
.end method

.method public getFilterProps()[B
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/tukaani/xz/DeltaEncoder;->props:[B

    return-object v0
.end method

.method public getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/FinishableOutputStream;
    .locals 1
    .param p1, "out"    # Lorg/tukaani/xz/FinishableOutputStream;
    .param p2, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 35
    iget-object v0, p0, Lorg/tukaani/xz/DeltaEncoder;->options:Lorg/tukaani/xz/DeltaOptions;

    invoke-virtual {v0, p1, p2}, Lorg/tukaani/xz/DeltaOptions;->getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/FinishableOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public supportsFlushing()Z
    .locals 1

    .line 30
    const/4 v0, 0x1

    return v0
.end method
