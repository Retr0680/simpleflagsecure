.class public Lorg/tukaani/xz/check/None;
.super Lorg/tukaani/xz/check/Check;
.source "None.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lorg/tukaani/xz/check/Check;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/check/Check;->size:I

    .line 15
    const-string v0, "None"

    iput-object v0, p0, Lorg/tukaani/xz/check/Check;->name:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public finish()[B
    .locals 1

    .line 21
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 22
    .local v0, "empty":[B
    return-object v0
.end method

.method public update([BII)V
    .locals 0
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 18
    return-void
.end method
