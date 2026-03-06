.class public Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolator;
.super Ljava/lang/Object;
.source "BicubicSplineInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math/analysis/interpolation/BivariateRealGridInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private nextIndex(II)I
    .locals 2
    .param p1, "i"    # I
    .param p2, "max"    # I

    .line 131
    add-int/lit8 v0, p1, 0x1

    .line 132
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

    .line 142
    add-int/lit8 v0, p1, -0x1

    .line 143
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
.method public bridge synthetic interpolate([D[D[[D)Lorg/apache/commons/math/analysis/BivariateRealFunction;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/MathException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-result-object p1

    return-object p1
.end method

.method public interpolate([D[D[[D)Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;
    .locals 27
    .param p1, "xval"    # [D
    .param p2, "yval"    # [D
    .param p3, "fval"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/MathException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 41
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    array-length v1, v2

    if-eqz v1, :cond_c

    array-length v1, v3

    if-eqz v1, :cond_c

    array-length v1, v4

    if-eqz v1, :cond_c

    .line 44
    array-length v1, v2

    array-length v5, v4

    if-ne v1, v5, :cond_b

    .line 48
    invoke-static {v2}, Lorg/apache/commons/math/util/MathUtils;->checkOrder([D)V

    .line 49
    invoke-static {v3}, Lorg/apache/commons/math/util/MathUtils;->checkOrder([D)V

    .line 51
    array-length v8, v2

    .line 52
    .local v8, "xLen":I
    array-length v9, v3

    .line 58
    .local v9, "yLen":I
    const/4 v1, 0x2

    new-array v5, v1, [I

    const/4 v6, 0x1

    aput v8, v5, v6

    const/4 v7, 0x0

    aput v9, v5, v7

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, [[D

    .line 59
    .local v10, "fX":[[D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v8, :cond_2

    .line 60
    aget-object v11, v4, v5

    array-length v11, v11

    if-ne v11, v9, :cond_1

    .line 64
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    if-ge v11, v9, :cond_0

    .line 65
    aget-object v12, v10, v11

    aget-object v13, v4, v5

    aget-wide v13, v13, v11

    aput-wide v13, v12, v5

    .line 64
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    nop

    .line 59
    .end local v11    # "j":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 61
    :cond_1
    new-instance v1, Lorg/apache/commons/math/DimensionMismatchException;

    aget-object v6, v4, v5

    array-length v6, v6

    invoke-direct {v1, v6, v9}, Lorg/apache/commons/math/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 59
    :cond_2
    nop

    .line 69
    .end local v5    # "i":I
    new-instance v5, Lorg/apache/commons/math/analysis/interpolation/SplineInterpolator;

    invoke-direct {v5}, Lorg/apache/commons/math/analysis/interpolation/SplineInterpolator;-><init>()V

    move-object v11, v5

    .line 73
    .local v11, "spInterpolator":Lorg/apache/commons/math/analysis/interpolation/SplineInterpolator;
    new-array v12, v9, [Lorg/apache/commons/math/analysis/polynomials/PolynomialSplineFunction;

    .line 74
    .local v12, "ySplineX":[Lorg/apache/commons/math/analysis/polynomials/PolynomialSplineFunction;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v9, :cond_3

    .line 75
    aget-object v13, v10, v5

    invoke-virtual {v11, v2, v13}, Lorg/apache/commons/math/analysis/interpolation/SplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v13

    aput-object v13, v12, v5

    .line 74
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    nop

    .line 80
    .end local v5    # "j":I
    new-array v13, v8, [Lorg/apache/commons/math/analysis/polynomials/PolynomialSplineFunction;

    .line 81
    .local v13, "xSplineY":[Lorg/apache/commons/math/analysis/polynomials/PolynomialSplineFunction;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v8, :cond_4

    .line 82
    aget-object v14, v4, v5

    invoke-virtual {v11, v3, v14}, Lorg/apache/commons/math/analysis/interpolation/SplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v14

    aput-object v14, v13, v5

    .line 81
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    nop

    .line 86
    .end local v5    # "i":I
    new-array v5, v1, [I

    aput v9, v5, v6

    aput v8, v5, v7

    sget-object v14, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 87
    .local v5, "dFdX":[[D
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_4
    if-ge v14, v9, :cond_6

    .line 88
    aget-object v15, v12, v14

    invoke-virtual {v15}, Lorg/apache/commons/math/analysis/polynomials/PolynomialSplineFunction;->derivative()Lorg/apache/commons/math/analysis/UnivariateRealFunction;

    move-result-object v15

    .line 89
    .local v15, "f":Lorg/apache/commons/math/analysis/UnivariateRealFunction;
    const/16 v16, 0x0

    move/from16 v17, v6

    move/from16 v6, v16

    .local v6, "i":I
    :goto_5
    if-ge v6, v8, :cond_5

    .line 90
    aget-object v16, v5, v6

    move/from16 v19, v7

    move/from16 v18, v8

    .end local v8    # "xLen":I
    .local v18, "xLen":I
    aget-wide v7, v2, v6

    invoke-interface {v15, v7, v8}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v7

    aput-wide v7, v16, v14

    .line 89
    add-int/lit8 v6, v6, 0x1

    move/from16 v8, v18

    move/from16 v7, v19

    goto :goto_5

    .end local v18    # "xLen":I
    .restart local v8    # "xLen":I
    :cond_5
    move/from16 v19, v7

    move/from16 v18, v8

    .line 87
    .end local v6    # "i":I
    .end local v8    # "xLen":I
    .end local v15    # "f":Lorg/apache/commons/math/analysis/UnivariateRealFunction;
    .restart local v18    # "xLen":I
    add-int/lit8 v14, v14, 0x1

    move/from16 v6, v17

    goto :goto_4

    .end local v18    # "xLen":I
    .restart local v8    # "xLen":I
    :cond_6
    move/from16 v17, v6

    move/from16 v19, v7

    move/from16 v18, v8

    .line 95
    .end local v8    # "xLen":I
    .end local v14    # "j":I
    .restart local v18    # "xLen":I
    new-array v6, v1, [I

    aput v9, v6, v17

    aput v18, v6, v19

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    .line 96
    .local v6, "dFdY":[[D
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_6
    move/from16 v8, v18

    .end local v18    # "xLen":I
    .restart local v8    # "xLen":I
    if-ge v7, v8, :cond_8

    .line 97
    aget-object v14, v13, v7

    invoke-virtual {v14}, Lorg/apache/commons/math/analysis/polynomials/PolynomialSplineFunction;->derivative()Lorg/apache/commons/math/analysis/UnivariateRealFunction;

    move-result-object v14

    .line 98
    .local v14, "f":Lorg/apache/commons/math/analysis/UnivariateRealFunction;
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_7
    if-ge v15, v9, :cond_7

    .line 99
    aget-object v16, v6, v7

    aget-wide v1, v3, v15

    invoke-interface {v14, v1, v2}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v1

    aput-wide v1, v16, v15

    .line 98
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p1

    const/4 v1, 0x2

    goto :goto_7

    :cond_7
    nop

    .line 96
    .end local v14    # "f":Lorg/apache/commons/math/analysis/UnivariateRealFunction;
    .end local v15    # "j":I
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p1

    move/from16 v18, v8

    const/4 v1, 0x2

    goto :goto_6

    :cond_8
    nop

    .line 104
    .end local v7    # "i":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v9, v1, v17

    aput v8, v1, v19

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [[D

    .line 105
    .local v7, "d2FdXdY":[[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v8, :cond_a

    .line 106
    invoke-direct {v0, v1, v8}, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolator;->nextIndex(II)I

    move-result v2

    .line 107
    .local v2, "nI":I
    invoke-direct {v0, v1}, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolator;->previousIndex(I)I

    move-result v14

    .line 108
    .local v14, "pI":I
    const/4 v15, 0x0

    .restart local v15    # "j":I
    :goto_9
    if-ge v15, v9, :cond_9

    .line 109
    invoke-direct {v0, v15, v9}, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolator;->nextIndex(II)I

    move-result v16

    .line 110
    .local v16, "nJ":I
    invoke-direct {v0, v15}, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolator;->previousIndex(I)I

    move-result v17

    .line 111
    .local v17, "pJ":I
    aget-object v18, v7, v1

    aget-object v19, v4, v2

    aget-wide v19, v19, v16

    aget-object v21, v4, v2

    aget-wide v21, v21, v17

    sub-double v19, v19, v21

    aget-object v21, v4, v14

    aget-wide v21, v21, v16

    sub-double v19, v19, v21

    aget-object v21, v4, v14

    aget-wide v21, v21, v17

    add-double v19, v19, v21

    aget-wide v21, p1, v2

    aget-wide v23, p1, v14

    sub-double v21, v21, v23

    aget-wide v23, v3, v16

    aget-wide v25, v3, v17

    sub-double v23, v23, v25

    mul-double v21, v21, v23

    div-double v19, v19, v21

    aput-wide v19, v18, v15

    .line 108
    .end local v16    # "nJ":I
    .end local v17    # "pJ":I
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    :cond_9
    nop

    .line 105
    .end local v2    # "nI":I
    .end local v14    # "pI":I
    .end local v15    # "j":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_a
    nop

    .line 118
    .end local v1    # "i":I
    new-instance v1, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;-><init>([D[D[[D[[D[[D[[D)V

    return-object v1

    .line 45
    .end local v5    # "dFdX":[[D
    .end local v6    # "dFdY":[[D
    .end local v7    # "d2FdXdY":[[D
    .end local v8    # "xLen":I
    .end local v9    # "yLen":I
    .end local v10    # "fX":[[D
    .end local v11    # "spInterpolator":Lorg/apache/commons/math/analysis/interpolation/SplineInterpolator;
    .end local v12    # "ySplineX":[Lorg/apache/commons/math/analysis/polynomials/PolynomialSplineFunction;
    .end local v13    # "xSplineY":[Lorg/apache/commons/math/analysis/polynomials/PolynomialSplineFunction;
    :cond_b
    new-instance v1, Lorg/apache/commons/math/DimensionMismatchException;

    array-length v3, v2

    array-length v5, v4

    invoke-direct {v1, v3, v5}, Lorg/apache/commons/math/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 42
    :cond_c
    new-instance v1, Lorg/apache/commons/math/exception/NoDataException;

    invoke-direct {v1}, Lorg/apache/commons/math/exception/NoDataException;-><init>()V

    throw v1
.end method
