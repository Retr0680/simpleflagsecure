.class public Lorg/apache/commons/math/analysis/interpolation/SmoothingBicubicSplineInterpolator;
.super Ljava/lang/Object;
.source "SmoothingBicubicSplineInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math/analysis/interpolation/BivariateRealGridInterpolator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private nextIndex(II)I
    .locals 2
    .param p1, "i"    # I
    .param p2, "max"    # I

    .line 164
    add-int/lit8 v0, p1, 0x1

    .line 165
    .local v0, "index":I
    if-ge v0, p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    :goto_0
    return v1
.end method

.method private previousIndex(I)I
    .locals 2
    .param p1, "i"    # I

    .line 175
    add-int/lit8 v0, p1, -0x1

    .line 176
    .local v0, "index":I
    if-ltz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public interpolate([D[D[[D)Lorg/apache/commons/math/analysis/BivariateRealFunction;
    .locals 28
    .param p1, "xval"    # [D
    .param p2, "yval"    # [D
    .param p3, "zval"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/MathException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 54
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v8, p3

    array-length v1, v2

    const/4 v4, 0x0

    if-eqz v1, :cond_10

    array-length v1, v3

    if-eqz v1, :cond_10

    array-length v1, v8

    if-eqz v1, :cond_10

    .line 57
    array-length v1, v2

    array-length v5, v8

    if-ne v1, v5, :cond_f

    .line 61
    sget-object v1, Lorg/apache/commons/math/util/MathUtils$OrderDirection;->INCREASING:Lorg/apache/commons/math/util/MathUtils$OrderDirection;

    const/4 v5, 0x1

    invoke-static {v2, v1, v5}, Lorg/apache/commons/math/util/MathUtils;->checkOrder([DLorg/apache/commons/math/util/MathUtils$OrderDirection;Z)V

    .line 62
    sget-object v1, Lorg/apache/commons/math/util/MathUtils$OrderDirection;->INCREASING:Lorg/apache/commons/math/util/MathUtils$OrderDirection;

    invoke-static {v3, v1, v5}, Lorg/apache/commons/math/util/MathUtils;->checkOrder([DLorg/apache/commons/math/util/MathUtils$OrderDirection;Z)V

    .line 64
    array-length v9, v2

    .line 65
    .local v9, "xLen":I
    array-length v10, v3

    .line 71
    .local v10, "yLen":I
    const/4 v1, 0x2

    new-array v6, v1, [I

    aput v9, v6, v5

    aput v10, v6, v4

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, [[D

    .line 72
    .local v11, "zX":[[D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v9, :cond_2

    .line 73
    aget-object v7, v8, v6

    array-length v7, v7

    if-ne v7, v10, :cond_1

    .line 77
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v10, :cond_0

    .line 78
    aget-object v12, v11, v7

    aget-object v13, v8, v6

    aget-wide v13, v13, v7

    aput-wide v13, v12, v6

    .line 77
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    nop

    .line 72
    .end local v7    # "j":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 74
    :cond_1
    new-instance v1, Lorg/apache/commons/math/DimensionMismatchException;

    aget-object v4, v8, v6

    array-length v4, v4

    invoke-direct {v1, v4, v10}, Lorg/apache/commons/math/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 72
    :cond_2
    nop

    .line 82
    .end local v6    # "i":I
    new-instance v6, Lorg/apache/commons/math/analysis/interpolation/SplineInterpolator;

    invoke-direct {v6}, Lorg/apache/commons/math/analysis/interpolation/SplineInterpolator;-><init>()V

    move-object v12, v6

    .line 86
    .local v12, "spInterpolator":Lorg/apache/commons/math/analysis/interpolation/SplineInterpolator;
    new-array v13, v10, [Lorg/apache/commons/math/analysis/polynomials/PolynomialSplineFunction;

    .line 87
    .local v13, "ySplineX":[Lorg/apache/commons/math/analysis/polynomials/PolynomialSplineFunction;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v10, :cond_3

    .line 88
    aget-object v7, v11, v6

    invoke-virtual {v12, v2, v7}, Lorg/apache/commons/math/analysis/interpolation/SplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v7

    aput-object v7, v13, v6

    .line 87
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    nop

    .line 93
    .end local v6    # "j":I
    new-array v6, v1, [I

    aput v10, v6, v5

    aput v9, v6, v4

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, [[D

    .line 94
    .local v14, "zY_1":[[D
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_3
    if-ge v6, v10, :cond_5

    .line 95
    aget-object v7, v13, v6

    .line 96
    .local v7, "f":Lorg/apache/commons/math/analysis/polynomials/PolynomialSplineFunction;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_4
    if-ge v15, v9, :cond_4

    .line 97
    aget-object v16, v14, v15

    move/from16 v17, v5

    move/from16 v18, v6

    .end local v6    # "j":I
    .local v18, "j":I
    aget-wide v5, v2, v15

    invoke-virtual {v7, v5, v6}, Lorg/apache/commons/math/analysis/polynomials/PolynomialSplineFunction;->value(D)D

    move-result-wide v5

    aput-wide v5, v16, v18

    .line 96
    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v17

    move/from16 v6, v18

    goto :goto_4

    .end local v18    # "j":I
    .restart local v6    # "j":I
    :cond_4
    move/from16 v17, v5

    move/from16 v18, v6

    .line 94
    .end local v6    # "j":I
    .end local v7    # "f":Lorg/apache/commons/math/analysis/polynomials/PolynomialSplineFunction;
    .end local v15    # "i":I
    .restart local v18    # "j":I
    add-int/lit8 v6, v18, 0x1

    .end local v18    # "j":I
    .restart local v6    # "j":I
    goto :goto_3

    :cond_5
    move/from16 v17, v5

    move/from16 v18, v6

    .line 103
    .end local v6    # "j":I
    new-array v15, v9, [Lorg/apache/commons/math/analysis/polynomials/PolynomialSplineFunction;

    .line 104
    .local v15, "xSplineY":[Lorg/apache/commons/math/analysis/polynomials/PolynomialSplineFunction;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    if-ge v5, v9, :cond_6

    .line 105
    aget-object v6, v14, v5

    invoke-virtual {v12, v3, v6}, Lorg/apache/commons/math/analysis/interpolation/SplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v6

    aput-object v6, v15, v5

    .line 104
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    nop

    .line 110
    .end local v5    # "i":I
    new-array v5, v1, [I

    aput v10, v5, v17

    aput v9, v5, v4

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 111
    .local v5, "zY_2":[[D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    if-ge v6, v9, :cond_8

    .line 112
    aget-object v7, v15, v6

    .line 113
    .restart local v7    # "f":Lorg/apache/commons/math/analysis/polynomials/PolynomialSplineFunction;
    const/16 v16, 0x0

    move/from16 v18, v4

    move/from16 v4, v16

    .local v4, "j":I
    :goto_7
    if-ge v4, v10, :cond_7

    .line 114
    aget-object v16, v5, v6

    aget-wide v1, v3, v4

    invoke-virtual {v7, v1, v2}, Lorg/apache/commons/math/analysis/polynomials/PolynomialSplineFunction;->value(D)D

    move-result-wide v1

    aput-wide v1, v16, v4

    .line 113
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, p1

    const/4 v1, 0x2

    goto :goto_7

    :cond_7
    nop

    .line 111
    .end local v4    # "j":I
    .end local v7    # "f":Lorg/apache/commons/math/analysis/polynomials/PolynomialSplineFunction;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, p1

    move/from16 v4, v18

    const/4 v1, 0x2

    goto :goto_6

    :cond_8
    move/from16 v18, v4

    .line 119
    .end local v6    # "i":I
    const/4 v1, 0x2

    new-array v2, v1, [I

    aput v10, v2, v17

    aput v9, v2, v18

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 120
    .local v1, "dZdX":[[D
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_8
    if-ge v2, v10, :cond_a

    .line 121
    aget-object v4, v13, v2

    invoke-virtual {v4}, Lorg/apache/commons/math/analysis/polynomials/PolynomialSplineFunction;->derivative()Lorg/apache/commons/math/analysis/UnivariateRealFunction;

    move-result-object v4

    .line 122
    .local v4, "f":Lorg/apache/commons/math/analysis/UnivariateRealFunction;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_9
    if-ge v6, v9, :cond_9

    .line 123
    aget-object v7, v1, v6

    move-object/from16 v16, v1

    move/from16 v20, v2

    .end local v1    # "dZdX":[[D
    .end local v2    # "j":I
    .local v16, "dZdX":[[D
    .local v20, "j":I
    aget-wide v1, p1, v6

    invoke-interface {v4, v1, v2}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v1

    aput-wide v1, v7, v20

    .line 122
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v16

    move/from16 v2, v20

    goto :goto_9

    .end local v16    # "dZdX":[[D
    .end local v20    # "j":I
    .restart local v1    # "dZdX":[[D
    .restart local v2    # "j":I
    :cond_9
    move-object/from16 v16, v1

    move/from16 v20, v2

    .line 120
    .end local v1    # "dZdX":[[D
    .end local v2    # "j":I
    .end local v4    # "f":Lorg/apache/commons/math/analysis/UnivariateRealFunction;
    .end local v6    # "i":I
    .restart local v16    # "dZdX":[[D
    .restart local v20    # "j":I
    add-int/lit8 v2, v20, 0x1

    .end local v20    # "j":I
    .restart local v2    # "j":I
    goto :goto_8

    .end local v16    # "dZdX":[[D
    .restart local v1    # "dZdX":[[D
    :cond_a
    move-object/from16 v16, v1

    move/from16 v20, v2

    .line 128
    .end local v1    # "dZdX":[[D
    .end local v2    # "j":I
    .restart local v16    # "dZdX":[[D
    const/4 v1, 0x2

    new-array v2, v1, [I

    aput v10, v2, v17

    aput v9, v2, v18

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [[D

    .line 129
    .local v6, "dZdY":[[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v9, :cond_c

    .line 130
    aget-object v2, v15, v1

    invoke-virtual {v2}, Lorg/apache/commons/math/analysis/polynomials/PolynomialSplineFunction;->derivative()Lorg/apache/commons/math/analysis/UnivariateRealFunction;

    move-result-object v2

    .line 131
    .local v2, "f":Lorg/apache/commons/math/analysis/UnivariateRealFunction;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_b
    if-ge v4, v10, :cond_b

    .line 132
    aget-object v7, v6, v1

    move/from16 v20, v4

    .end local v4    # "j":I
    .restart local v20    # "j":I
    aget-wide v3, p2, v20

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v3

    aput-wide v3, v7, v20

    .line 131
    add-int/lit8 v4, v20, 0x1

    move-object/from16 v3, p2

    .end local v20    # "j":I
    .restart local v4    # "j":I
    goto :goto_b

    :cond_b
    move/from16 v20, v4

    .line 129
    .end local v2    # "f":Lorg/apache/commons/math/analysis/UnivariateRealFunction;
    .end local v4    # "j":I
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, p2

    goto :goto_a

    :cond_c
    nop

    .line 137
    .end local v1    # "i":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v10, v1, v17

    aput v9, v1, v18

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [[D

    .line 138
    .local v7, "dZdXdY":[[D
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_c
    if-ge v1, v9, :cond_e

    .line 139
    invoke-direct {v0, v1, v9}, Lorg/apache/commons/math/analysis/interpolation/SmoothingBicubicSplineInterpolator;->nextIndex(II)I

    move-result v2

    .line 140
    .local v2, "nI":I
    invoke-direct {v0, v1}, Lorg/apache/commons/math/analysis/interpolation/SmoothingBicubicSplineInterpolator;->previousIndex(I)I

    move-result v3

    .line 141
    .local v3, "pI":I
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_d
    if-ge v4, v10, :cond_d

    .line 142
    invoke-direct {v0, v4, v10}, Lorg/apache/commons/math/analysis/interpolation/SmoothingBicubicSplineInterpolator;->nextIndex(II)I

    move-result v17

    .line 143
    .local v17, "nJ":I
    invoke-direct {v0, v4}, Lorg/apache/commons/math/analysis/interpolation/SmoothingBicubicSplineInterpolator;->previousIndex(I)I

    move-result v18

    .line 144
    .local v18, "pJ":I
    aget-object v19, v7, v1

    aget-object v20, v5, v2

    aget-wide v20, v20, v17

    aget-object v22, v5, v2

    aget-wide v22, v22, v18

    sub-double v20, v20, v22

    aget-object v22, v5, v3

    aget-wide v22, v22, v17

    sub-double v20, v20, v22

    aget-object v22, v5, v3

    aget-wide v22, v22, v18

    add-double v20, v20, v22

    aget-wide v22, p1, v2

    aget-wide v24, p1, v3

    sub-double v22, v22, v24

    aget-wide v24, p2, v17

    aget-wide v26, p2, v18

    sub-double v24, v24, v26

    mul-double v22, v22, v24

    div-double v20, v20, v22

    aput-wide v20, v19, v4

    .line 141
    .end local v17    # "nJ":I
    .end local v18    # "pJ":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_d
    nop

    .line 138
    .end local v2    # "nI":I
    .end local v3    # "pI":I
    .end local v4    # "j":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_e
    nop

    .line 151
    .end local v1    # "i":I
    new-instance v1, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v5

    move-object/from16 v5, v16

    .end local v16    # "dZdX":[[D
    .local v4, "zY_2":[[D
    .local v5, "dZdX":[[D
    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;-><init>([D[D[[D[[D[[D[[D)V

    .end local v5    # "dZdX":[[D
    .restart local v16    # "dZdX":[[D
    return-object v1

    .line 58
    .end local v4    # "zY_2":[[D
    .end local v6    # "dZdY":[[D
    .end local v7    # "dZdXdY":[[D
    .end local v9    # "xLen":I
    .end local v10    # "yLen":I
    .end local v11    # "zX":[[D
    .end local v12    # "spInterpolator":Lorg/apache/commons/math/analysis/interpolation/SplineInterpolator;
    .end local v13    # "ySplineX":[Lorg/apache/commons/math/analysis/polynomials/PolynomialSplineFunction;
    .end local v14    # "zY_1":[[D
    .end local v15    # "xSplineY":[Lorg/apache/commons/math/analysis/polynomials/PolynomialSplineFunction;
    .end local v16    # "dZdX":[[D
    :cond_f
    new-instance v1, Lorg/apache/commons/math/DimensionMismatchException;

    array-length v3, v2

    array-length v4, v8

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/math/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 54
    :cond_10
    move/from16 v18, v4

    .line 55
    sget-object v1, Lorg/apache/commons/math/exception/util/LocalizedFormats;->NO_DATA:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    move/from16 v3, v18

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/apache/commons/math/MathRuntimeException;->createIllegalArgumentException(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method
