.class public Lorg/apache/commons/math/optimization/fitting/ParametricGaussianFunction;
.super Ljava/lang/Object;
.source "ParametricGaussianFunction.java"

# interfaces
.implements Lorg/apache/commons/math/optimization/fitting/ParametricRealFunction;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x35c8d2348d599801L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method private validateParameters([D)V
    .locals 4
    .param p1, "parameters"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/exception/ZeroException;
        }
    .end annotation

    .line 154
    if-eqz p1, :cond_2

    .line 157
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 160
    const/4 v0, 0x3

    aget-wide v0, p1, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 163
    return-void

    .line 161
    :cond_0
    new-instance v0, Lorg/apache/commons/math/exception/ZeroException;

    invoke-direct {v0}, Lorg/apache/commons/math/exception/ZeroException;-><init>()V

    throw v0

    .line 158
    :cond_1
    new-instance v0, Lorg/apache/commons/math/exception/DimensionMismatchException;

    array-length v2, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 155
    :cond_2
    new-instance v0, Lorg/apache/commons/math/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    invoke-direct {v0, v1}, Lorg/apache/commons/math/exception/NullArgumentException;-><init>(Lorg/apache/commons/math/exception/util/Localizable;)V

    throw v0
.end method


# virtual methods
.method public gradient(D[D)[D
    .locals 25
    .param p1, "x"    # D
    .param p3, "parameters"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/exception/ZeroException;
        }
    .end annotation

    .line 126
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lorg/apache/commons/math/optimization/fitting/ParametricGaussianFunction;->validateParameters([D)V

    .line 127
    const/4 v2, 0x1

    aget-wide v3, v0, v2

    .line 128
    .local v3, "b":D
    const/4 v5, 0x2

    aget-wide v6, v0, v5

    .line 129
    .local v6, "c":D
    const/4 v8, 0x3

    aget-wide v9, v0, v8

    .line 131
    .local v9, "d":D
    sub-double v11, p1, v6

    .line 132
    .local v11, "xMc":D
    mul-double v13, v9, v9

    .line 133
    .local v13, "d2":D
    move v15, v2

    move-wide/from16 v16, v3

    .end local v3    # "b":D
    .local v16, "b":D
    neg-double v2, v11

    mul-double/2addr v2, v11

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v13

    div-double v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    .line 134
    .local v2, "exp":D
    mul-double v18, v16, v2

    mul-double v18, v18, v11

    div-double v18, v18, v13

    .line 136
    .local v18, "f":D
    mul-double v20, v18, v11

    div-double v20, v20, v9

    const/4 v4, 0x4

    new-array v4, v4, [D

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    const/16 v24, 0x0

    aput-wide v22, v4, v24

    aput-wide v2, v4, v15

    aput-wide v18, v4, v5

    aput-wide v20, v4, v8

    return-object v4
.end method

.method public value(D[D)D
    .locals 18
    .param p1, "x"    # D
    .param p3, "parameters"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/exception/ZeroException;
        }
    .end annotation

    .line 84
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lorg/apache/commons/math/optimization/fitting/ParametricGaussianFunction;->validateParameters([D)V

    .line 85
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    .line 86
    .local v2, "a":D
    const/4 v4, 0x1

    aget-wide v4, v0, v4

    .line 87
    .local v4, "b":D
    const/4 v6, 0x2

    aget-wide v6, v0, v6

    .line 88
    .local v6, "c":D
    const/4 v8, 0x3

    aget-wide v8, v0, v8

    .line 89
    .local v8, "d":D
    sub-double v10, p1, v6

    .line 90
    .local v10, "xMc":D
    neg-double v12, v10

    mul-double/2addr v12, v10

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double v16, v8, v8

    mul-double v16, v16, v14

    div-double v12, v12, v16

    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    mul-double/2addr v12, v4

    add-double/2addr v12, v2

    return-wide v12
.end method
