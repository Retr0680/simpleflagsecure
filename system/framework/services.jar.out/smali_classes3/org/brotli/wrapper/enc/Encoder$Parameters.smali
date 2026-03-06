.class public final Lorg/brotli/wrapper/enc/Encoder$Parameters;
.super Ljava/lang/Object;
.source "Encoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/brotli/wrapper/enc/Encoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Parameters"
.end annotation


# instance fields
.field private lgwin:I

.field private quality:I


# direct methods
.method static bridge synthetic -$$Nest$fgetlgwin(Lorg/brotli/wrapper/enc/Encoder$Parameters;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/brotli/wrapper/enc/Encoder$Parameters;->lgwin:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetquality(Lorg/brotli/wrapper/enc/Encoder$Parameters;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/brotli/wrapper/enc/Encoder$Parameters;->quality:I

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lorg/brotli/wrapper/enc/Encoder$Parameters;->quality:I

    .line 30
    iput v0, p0, Lorg/brotli/wrapper/enc/Encoder$Parameters;->lgwin:I

    .line 32
    return-void
.end method

.method private constructor <init>(Lorg/brotli/wrapper/enc/Encoder$Parameters;)V
    .locals 1
    .param p1, "other"    # Lorg/brotli/wrapper/enc/Encoder$Parameters;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lorg/brotli/wrapper/enc/Encoder$Parameters;->quality:I

    .line 30
    iput v0, p0, Lorg/brotli/wrapper/enc/Encoder$Parameters;->lgwin:I

    .line 35
    iget v0, p1, Lorg/brotli/wrapper/enc/Encoder$Parameters;->quality:I

    iput v0, p0, Lorg/brotli/wrapper/enc/Encoder$Parameters;->quality:I

    .line 36
    iget v0, p1, Lorg/brotli/wrapper/enc/Encoder$Parameters;->lgwin:I

    iput v0, p0, Lorg/brotli/wrapper/enc/Encoder$Parameters;->lgwin:I

    .line 37
    return-void
.end method


# virtual methods
.method public setQuality(I)Lorg/brotli/wrapper/enc/Encoder$Parameters;
    .locals 2
    .param p1, "quality"    # I

    .line 43
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0xb

    if-gt p1, v0, :cond_0

    .line 46
    iput p1, p0, Lorg/brotli/wrapper/enc/Encoder$Parameters;->quality:I

    .line 47
    return-object p0

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "quality should be in range [0, 11], or -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWindow(I)Lorg/brotli/wrapper/enc/Encoder$Parameters;
    .locals 2
    .param p1, "lgwin"    # I

    .line 54
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_1

    const/16 v0, 0x18

    if-gt p1, v0, :cond_1

    :cond_0
    goto :goto_0

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lgwin should be in range [10, 24], or -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :goto_0
    iput p1, p0, Lorg/brotli/wrapper/enc/Encoder$Parameters;->lgwin:I

    .line 58
    return-object p0
.end method
