.class Lorg/apache/commons/math/special/Beta$1;
.super Lorg/apache/commons/math/util/ContinuedFraction;
.source "Beta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math/special/Beta;->regularizedBeta(DDDDI)D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:D

.field final synthetic val$b:D


# direct methods
.method constructor <init>(DD)V
    .locals 0

    .line 129
    iput-wide p1, p0, Lorg/apache/commons/math/special/Beta$1;->val$b:D

    iput-wide p3, p0, Lorg/apache/commons/math/special/Beta$1;->val$a:D

    invoke-direct {p0}, Lorg/apache/commons/math/util/ContinuedFraction;-><init>()V

    return-void
.end method


# virtual methods
.method protected getA(ID)D
    .locals 2
    .param p1, "n"    # I
    .param p2, "x"    # D

    .line 149
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method protected getB(ID)D
    .locals 13
    .param p1, "n"    # I
    .param p2, "x"    # D

    .line 135
    rem-int/lit8 v0, p1, 0x2

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    if-nez v0, :cond_0

    .line 136
    int-to-double v5, p1

    div-double/2addr v5, v3

    .line 137
    .local v5, "m":D
    iget-wide v7, p0, Lorg/apache/commons/math/special/Beta$1;->val$b:D

    sub-double/2addr v7, v5

    mul-double/2addr v7, v5

    mul-double/2addr v7, p2

    iget-wide v9, p0, Lorg/apache/commons/math/special/Beta$1;->val$a:D

    mul-double v11, v5, v3

    add-double/2addr v9, v11

    sub-double/2addr v9, v1

    iget-wide v0, p0, Lorg/apache/commons/math/special/Beta$1;->val$a:D

    mul-double/2addr v3, v5

    add-double/2addr v0, v3

    mul-double/2addr v9, v0

    div-double/2addr v7, v9

    .local v7, "ret":D
    goto :goto_0

    .line 140
    .end local v5    # "m":D
    .end local v7    # "ret":D
    :cond_0
    int-to-double v5, p1

    sub-double/2addr v5, v1

    div-double/2addr v5, v3

    .line 141
    .restart local v5    # "m":D
    iget-wide v7, p0, Lorg/apache/commons/math/special/Beta$1;->val$a:D

    add-double/2addr v7, v5

    iget-wide v9, p0, Lorg/apache/commons/math/special/Beta$1;->val$a:D

    iget-wide v11, p0, Lorg/apache/commons/math/special/Beta$1;->val$b:D

    add-double/2addr v9, v11

    add-double/2addr v9, v5

    mul-double/2addr v7, v9

    mul-double/2addr v7, p2

    neg-double v7, v7

    iget-wide v9, p0, Lorg/apache/commons/math/special/Beta$1;->val$a:D

    mul-double v11, v5, v3

    add-double/2addr v9, v11

    iget-wide v11, p0, Lorg/apache/commons/math/special/Beta$1;->val$a:D

    mul-double/2addr v3, v5

    add-double/2addr v11, v3

    add-double/2addr v11, v1

    mul-double/2addr v9, v11

    div-double/2addr v7, v9

    .line 144
    .restart local v7    # "ret":D
    :goto_0
    return-wide v7
.end method
