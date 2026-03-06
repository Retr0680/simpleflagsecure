.class public Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolator;
.super Ljava/lang/Object;
.source "TricubicSplineInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math/analysis/interpolation/TrivariateRealGridInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private nextIndex(II)I
    .locals 2
    .param p1, "i"    # I
    .param p2, "max"    # I

    .line 184
    add-int/lit8 v0, p1, 0x1

    .line 185
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

    .line 195
    add-int/lit8 v0, p1, -0x1

    .line 196
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
.method public bridge synthetic interpolate([D[D[D[[[D)Lorg/apache/commons/math/analysis/TrivariateRealFunction;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 30
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolator;->interpolate([D[D[D[[[D)Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;

    move-result-object p1

    return-object p1
.end method

.method public interpolate([D[D[D[[[D)Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;
    .locals 35
    .param p1, "xval"    # [D
    .param p2, "yval"    # [D
    .param p3, "zval"    # [D
    .param p4, "fval"    # [[[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/MathException;
        }
    .end annotation

    .line 40
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    array-length v1, v2

    if-eqz v1, :cond_15

    array-length v1, v3

    if-eqz v1, :cond_15

    array-length v1, v4

    if-eqz v1, :cond_15

    array-length v1, v5

    if-eqz v1, :cond_15

    .line 43
    array-length v1, v2

    array-length v6, v5

    if-ne v1, v6, :cond_14

    .line 47
    invoke-static {v2}, Lorg/apache/commons/math/util/MathUtils;->checkOrder([D)V

    .line 48
    invoke-static {v3}, Lorg/apache/commons/math/util/MathUtils;->checkOrder([D)V

    .line 49
    invoke-static {v4}, Lorg/apache/commons/math/util/MathUtils;->checkOrder([D)V

    .line 51
    array-length v13, v2

    .line 52
    .local v13, "xLen":I
    array-length v14, v3

    .line 53
    .local v14, "yLen":I
    array-length v15, v4

    .line 58
    .local v15, "zLen":I
    const/4 v1, 0x3

    new-array v6, v1, [I

    const/4 v7, 0x2

    aput v14, v6, v7

    const/4 v8, 0x1

    aput v13, v6, v8

    const/4 v9, 0x0

    aput v15, v6, v9

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v16, v6

    check-cast v16, [[[D

    .line 59
    .local v16, "fvalXY":[[[D
    new-array v6, v1, [I

    aput v13, v6, v7

    aput v15, v6, v8

    aput v14, v6, v9

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v17, v6

    check-cast v17, [[[D

    .line 60
    .local v17, "fvalZX":[[[D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v13, :cond_4

    .line 61
    aget-object v10, v5, v6

    array-length v10, v10

    if-ne v10, v14, :cond_3

    .line 65
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    if-ge v10, v14, :cond_2

    .line 66
    aget-object v11, v5, v6

    aget-object v11, v11, v10

    array-length v11, v11

    if-ne v11, v15, :cond_1

    .line 70
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_2
    if-ge v11, v15, :cond_0

    .line 71
    aget-object v12, v5, v6

    aget-object v12, v12, v10

    aget-wide v18, v12, v11

    .line 72
    .local v18, "v":D
    aget-object v12, v16, v11

    aget-object v12, v12, v6

    aput-wide v18, v12, v10

    .line 73
    aget-object v12, v17, v10

    aget-object v12, v12, v11

    aput-wide v18, v12, v6

    .line 70
    .end local v18    # "v":D
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_0
    nop

    .line 65
    .end local v11    # "k":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 67
    :cond_1
    new-instance v1, Lorg/apache/commons/math/exception/DimensionMismatchException;

    aget-object v7, v5, v6

    aget-object v7, v7, v10

    array-length v7, v7

    invoke-direct {v1, v7, v15}, Lorg/apache/commons/math/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 65
    :cond_2
    nop

    .line 60
    .end local v10    # "j":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 62
    :cond_3
    new-instance v1, Lorg/apache/commons/math/exception/DimensionMismatchException;

    aget-object v7, v5, v6

    array-length v7, v7

    invoke-direct {v1, v7, v14}, Lorg/apache/commons/math/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 60
    :cond_4
    nop

    .line 78
    .end local v6    # "i":I
    new-instance v6, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolator;

    invoke-direct {v6}, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolator;-><init>()V

    .line 81
    .local v6, "bsi":Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolator;
    new-array v10, v13, [Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;

    .line 83
    .local v10, "xSplineYZ":[Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    if-ge v11, v13, :cond_5

    .line 84
    aget-object v12, v5, v11

    invoke-virtual {v6, v3, v4, v12}, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-result-object v12

    aput-object v12, v10, v11

    .line 83
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_5
    nop

    .line 88
    .end local v11    # "i":I
    new-array v11, v14, [Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;

    .line 90
    .local v11, "ySplineZX":[Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_4
    if-ge v12, v14, :cond_6

    .line 91
    move/from16 v18, v7

    aget-object v7, v17, v12

    invoke-virtual {v6, v4, v2, v7}, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-result-object v7

    aput-object v7, v11, v12

    .line 90
    add-int/lit8 v12, v12, 0x1

    move/from16 v7, v18

    goto :goto_4

    :cond_6
    move/from16 v18, v7

    .line 95
    .end local v12    # "j":I
    new-array v7, v15, [Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;

    .line 97
    .local v7, "zSplineXY":[Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_5
    if-ge v12, v15, :cond_7

    .line 98
    move/from16 v19, v8

    aget-object v8, v16, v12

    invoke-virtual {v6, v2, v3, v8}, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-result-object v8

    aput-object v8, v7, v12

    .line 97
    add-int/lit8 v12, v12, 0x1

    move/from16 v8, v19

    goto :goto_5

    :cond_7
    move/from16 v19, v8

    .line 102
    .end local v12    # "k":I
    new-array v8, v1, [I

    aput v15, v8, v18

    aput v14, v8, v19

    aput v13, v8, v9

    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[[D

    .line 103
    .local v8, "dFdX":[[[D
    new-array v12, v1, [I

    aput v15, v12, v18

    aput v14, v12, v19

    aput v13, v12, v9

    move/from16 v20, v9

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[[D

    .line 104
    .local v9, "dFdY":[[[D
    new-array v12, v1, [I

    aput v15, v12, v18

    aput v14, v12, v19

    aput v13, v12, v20

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[D

    .line 105
    .local v1, "d2FdXdY":[[[D
    const/4 v12, 0x0

    .restart local v12    # "k":I
    :goto_6
    if-ge v12, v15, :cond_a

    .line 106
    move-object/from16 v22, v1

    .end local v1    # "d2FdXdY":[[[D
    .local v22, "d2FdXdY":[[[D
    aget-object v1, v7, v12

    .line 107
    .local v1, "f":Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;
    const/16 v23, 0x0

    move/from16 v2, v23

    .local v2, "i":I
    :goto_7
    if-ge v2, v13, :cond_9

    .line 108
    move/from16 v23, v2

    .end local v2    # "i":I
    .local v23, "i":I
    aget-wide v2, p1, v23

    .line 109
    .local v2, "x":D
    const/16 v24, 0x0

    move/from16 v4, v24

    .local v4, "j":I
    :goto_8
    if-ge v4, v14, :cond_8

    .line 110
    move/from16 v24, v4

    .end local v4    # "j":I
    .local v24, "j":I
    aget-wide v4, p2, v24

    .line 111
    .local v4, "y":D
    aget-object v25, v8, v23

    aget-object v25, v25, v24

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeX(DD)D

    move-result-wide v26

    aput-wide v26, v25, v12

    .line 112
    aget-object v25, v9, v23

    aget-object v25, v25, v24

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeY(DD)D

    move-result-wide v26

    aput-wide v26, v25, v12

    .line 113
    aget-object v25, v22, v23

    aget-object v25, v25, v24

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeXY(DD)D

    move-result-wide v26

    aput-wide v26, v25, v12

    .line 109
    .end local v4    # "y":D
    add-int/lit8 v4, v24, 0x1

    move-object/from16 v5, p4

    .end local v24    # "j":I
    .local v4, "j":I
    goto :goto_8

    :cond_8
    move/from16 v24, v4

    .line 107
    .end local v2    # "x":D
    .end local v4    # "j":I
    add-int/lit8 v2, v23, 0x1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .end local v23    # "i":I
    .local v2, "i":I
    goto :goto_7

    :cond_9
    move/from16 v23, v2

    .line 105
    .end local v1    # "f":Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;
    .end local v2    # "i":I
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v1, v22

    goto :goto_6

    .end local v22    # "d2FdXdY":[[[D
    .local v1, "d2FdXdY":[[[D
    :cond_a
    move-object/from16 v22, v1

    .line 119
    .end local v1    # "d2FdXdY":[[[D
    .end local v12    # "k":I
    .restart local v22    # "d2FdXdY":[[[D
    const/4 v1, 0x3

    new-array v2, v1, [I

    aput v15, v2, v18

    aput v14, v2, v19

    aput v13, v2, v20

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[[D

    .line 120
    .local v2, "dFdZ":[[[D
    new-array v3, v1, [I

    aput v15, v3, v18

    aput v14, v3, v19

    aput v13, v3, v20

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[D

    .line 121
    .local v1, "d2FdYdZ":[[[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v13, :cond_d

    .line 122
    aget-object v4, v10, v3

    .line 123
    .local v4, "f":Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_a
    if-ge v5, v14, :cond_c

    .line 124
    move-object/from16 v23, v1

    move-object v12, v2

    .end local v1    # "d2FdYdZ":[[[D
    .end local v2    # "dFdZ":[[[D
    .local v12, "dFdZ":[[[D
    .local v23, "d2FdYdZ":[[[D
    aget-wide v1, p2, v5

    .line 125
    .local v1, "y":D
    const/16 v24, 0x0

    move/from16 v25, v3

    move/from16 v3, v24

    .local v3, "k":I
    .local v25, "i":I
    :goto_b
    if-ge v3, v15, :cond_b

    .line 126
    move/from16 v26, v5

    move-object/from16 v24, v6

    .end local v5    # "j":I
    .end local v6    # "bsi":Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolator;
    .local v24, "bsi":Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolator;
    .local v26, "j":I
    aget-wide v5, p3, v3

    .line 127
    .local v5, "z":D
    aget-object v27, v12, v25

    aget-object v27, v27, v26

    invoke-virtual {v4, v1, v2, v5, v6}, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeY(DD)D

    move-result-wide v28

    aput-wide v28, v27, v3

    .line 128
    aget-object v27, v23, v25

    aget-object v27, v27, v26

    invoke-virtual {v4, v1, v2, v5, v6}, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeXY(DD)D

    move-result-wide v28

    aput-wide v28, v27, v3

    .line 125
    .end local v5    # "z":D
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v6, v24

    move/from16 v5, v26

    goto :goto_b

    .end local v24    # "bsi":Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolator;
    .end local v26    # "j":I
    .local v5, "j":I
    .restart local v6    # "bsi":Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolator;
    :cond_b
    move/from16 v26, v5

    move-object/from16 v24, v6

    .line 123
    .end local v1    # "y":D
    .end local v3    # "k":I
    .end local v5    # "j":I
    .end local v6    # "bsi":Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolator;
    .restart local v24    # "bsi":Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolator;
    .restart local v26    # "j":I
    add-int/lit8 v5, v26, 0x1

    move-object v2, v12

    move-object/from16 v1, v23

    move/from16 v3, v25

    .end local v26    # "j":I
    .restart local v5    # "j":I
    goto :goto_a

    .end local v12    # "dFdZ":[[[D
    .end local v23    # "d2FdYdZ":[[[D
    .end local v24    # "bsi":Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolator;
    .end local v25    # "i":I
    .local v1, "d2FdYdZ":[[[D
    .restart local v2    # "dFdZ":[[[D
    .local v3, "i":I
    .restart local v6    # "bsi":Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolator;
    :cond_c
    move-object/from16 v23, v1

    move-object v12, v2

    move/from16 v25, v3

    move/from16 v26, v5

    move-object/from16 v24, v6

    .line 121
    .end local v1    # "d2FdYdZ":[[[D
    .end local v2    # "dFdZ":[[[D
    .end local v3    # "i":I
    .end local v4    # "f":Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;
    .end local v5    # "j":I
    .end local v6    # "bsi":Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolator;
    .restart local v12    # "dFdZ":[[[D
    .restart local v23    # "d2FdYdZ":[[[D
    .restart local v24    # "bsi":Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolator;
    .restart local v25    # "i":I
    add-int/lit8 v3, v25, 0x1

    .end local v25    # "i":I
    .restart local v3    # "i":I
    goto :goto_9

    .end local v12    # "dFdZ":[[[D
    .end local v23    # "d2FdYdZ":[[[D
    .end local v24    # "bsi":Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolator;
    .restart local v1    # "d2FdYdZ":[[[D
    .restart local v2    # "dFdZ":[[[D
    .restart local v6    # "bsi":Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolator;
    :cond_d
    move-object/from16 v23, v1

    move-object v12, v2

    move/from16 v25, v3

    move-object/from16 v24, v6

    .line 134
    .end local v1    # "d2FdYdZ":[[[D
    .end local v2    # "dFdZ":[[[D
    .end local v3    # "i":I
    .end local v6    # "bsi":Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolator;
    .restart local v12    # "dFdZ":[[[D
    .restart local v23    # "d2FdYdZ":[[[D
    .restart local v24    # "bsi":Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolator;
    const/4 v1, 0x3

    new-array v2, v1, [I

    aput v15, v2, v18

    aput v14, v2, v19

    aput v13, v2, v20

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[D

    .line 135
    .local v1, "d2FdZdX":[[[D
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_c
    if-ge v2, v14, :cond_10

    .line 136
    aget-object v3, v11, v2

    .line 137
    .local v3, "f":Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_d
    if-ge v4, v15, :cond_f

    .line 138
    aget-wide v5, p3, v4

    .line 139
    .local v5, "z":D
    const/16 v25, 0x0

    move-object/from16 v26, v1

    move/from16 v1, v25

    .local v1, "i":I
    .local v26, "d2FdZdX":[[[D
    :goto_e
    if-ge v1, v13, :cond_e

    .line 140
    move/from16 v27, v1

    move/from16 v25, v2

    .end local v1    # "i":I
    .end local v2    # "j":I
    .local v25, "j":I
    .local v27, "i":I
    aget-wide v1, p1, v27

    .line 141
    .local v1, "x":D
    aget-object v28, v26, v27

    aget-object v28, v28, v25

    invoke-virtual {v3, v5, v6, v1, v2}, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeXY(DD)D

    move-result-wide v29

    aput-wide v29, v28, v4

    .line 139
    .end local v1    # "x":D
    add-int/lit8 v1, v27, 0x1

    move/from16 v2, v25

    .end local v27    # "i":I
    .local v1, "i":I
    goto :goto_e

    .end local v25    # "j":I
    .restart local v2    # "j":I
    :cond_e
    move/from16 v27, v1

    move/from16 v25, v2

    .line 137
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v5    # "z":D
    .restart local v25    # "j":I
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v26

    goto :goto_d

    .end local v25    # "j":I
    .end local v26    # "d2FdZdX":[[[D
    .local v1, "d2FdZdX":[[[D
    .restart local v2    # "j":I
    :cond_f
    move-object/from16 v26, v1

    move/from16 v25, v2

    .line 135
    .end local v1    # "d2FdZdX":[[[D
    .end local v2    # "j":I
    .end local v3    # "f":Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;
    .end local v4    # "k":I
    .restart local v25    # "j":I
    .restart local v26    # "d2FdZdX":[[[D
    add-int/lit8 v2, v25, 0x1

    .end local v25    # "j":I
    .restart local v2    # "j":I
    goto :goto_c

    .end local v26    # "d2FdZdX":[[[D
    .restart local v1    # "d2FdZdX":[[[D
    :cond_10
    move-object/from16 v26, v1

    move/from16 v25, v2

    .line 147
    .end local v1    # "d2FdZdX":[[[D
    .end local v2    # "j":I
    .restart local v26    # "d2FdZdX":[[[D
    const/4 v1, 0x3

    new-array v1, v1, [I

    aput v15, v1, v18

    aput v14, v1, v19

    aput v13, v1, v20

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[D

    .line 148
    .local v1, "d3FdXdYdZ":[[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v13, :cond_13

    .line 149
    invoke-direct {v0, v2, v13}, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolator;->nextIndex(II)I

    move-result v3

    .line 150
    .local v3, "nI":I
    invoke-direct {v0, v2}, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolator;->previousIndex(I)I

    move-result v4

    .line 151
    .local v4, "pI":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_10
    if-ge v5, v14, :cond_12

    .line 152
    invoke-direct {v0, v5, v14}, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolator;->nextIndex(II)I

    move-result v6

    .line 153
    .local v6, "nJ":I
    invoke-direct {v0, v5}, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolator;->previousIndex(I)I

    move-result v18

    .line 154
    .local v18, "pJ":I
    const/16 v19, 0x0

    move-object/from16 v20, v1

    move/from16 v1, v19

    .local v1, "k":I
    .local v20, "d3FdXdYdZ":[[[D
    :goto_11
    if-ge v1, v15, :cond_11

    .line 155
    invoke-direct {v0, v1, v15}, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolator;->nextIndex(II)I

    move-result v19

    .line 156
    .local v19, "nK":I
    invoke-direct {v0, v1}, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolator;->previousIndex(I)I

    move-result v21

    .line 159
    .local v21, "pK":I
    aget-object v25, v20, v2

    aget-object v25, v25, v5

    aget-object v27, p4, v3

    aget-object v27, v27, v6

    aget-wide v27, v27, v19

    aget-object v29, p4, v3

    aget-object v29, v29, v18

    aget-wide v29, v29, v19

    sub-double v27, v27, v29

    aget-object v29, p4, v4

    aget-object v29, v29, v6

    aget-wide v29, v29, v19

    sub-double v27, v27, v29

    aget-object v29, p4, v4

    aget-object v29, v29, v18

    aget-wide v29, v29, v19

    add-double v27, v27, v29

    aget-object v29, p4, v3

    aget-object v29, v29, v6

    aget-wide v29, v29, v21

    sub-double v27, v27, v29

    aget-object v29, p4, v3

    aget-object v29, v29, v18

    aget-wide v29, v29, v21

    add-double v27, v27, v29

    aget-object v29, p4, v4

    aget-object v29, v29, v6

    aget-wide v29, v29, v21

    add-double v27, v27, v29

    aget-object v29, p4, v4

    aget-object v29, v29, v18

    aget-wide v29, v29, v21

    sub-double v27, v27, v29

    aget-wide v29, p1, v3

    aget-wide v31, p1, v4

    sub-double v29, v29, v31

    aget-wide v31, p2, v6

    aget-wide v33, p2, v18

    sub-double v31, v31, v33

    mul-double v29, v29, v31

    aget-wide v31, p3, v19

    aget-wide v33, p3, v21

    sub-double v31, v31, v33

    mul-double v29, v29, v31

    div-double v27, v27, v29

    aput-wide v27, v25, v1

    .line 154
    .end local v19    # "nK":I
    .end local v21    # "pK":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_11
    nop

    .line 151
    .end local v1    # "k":I
    .end local v6    # "nJ":I
    .end local v18    # "pJ":I
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v20

    goto :goto_10

    .end local v20    # "d3FdXdYdZ":[[[D
    .local v1, "d3FdXdYdZ":[[[D
    :cond_12
    move-object/from16 v20, v1

    .line 148
    .end local v1    # "d3FdXdYdZ":[[[D
    .end local v3    # "nI":I
    .end local v4    # "pI":I
    .end local v5    # "j":I
    .restart local v20    # "d3FdXdYdZ":[[[D
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    .end local v20    # "d3FdXdYdZ":[[[D
    .restart local v1    # "d3FdXdYdZ":[[[D
    :cond_13
    move-object/from16 v20, v1

    .line 169
    .end local v1    # "d3FdXdYdZ":[[[D
    .end local v2    # "i":I
    .restart local v20    # "d3FdXdYdZ":[[[D
    new-instance v1, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v8

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object v8, v12

    move-object/from16 v12, v20

    move-object/from16 v11, v23

    move-object/from16 v10, v26

    move-object/from16 v20, v7

    move-object v7, v9

    move-object/from16 v9, v22

    .end local v22    # "d2FdXdY":[[[D
    .end local v23    # "d2FdYdZ":[[[D
    .end local v26    # "d2FdZdX":[[[D
    .local v6, "dFdX":[[[D
    .local v7, "dFdY":[[[D
    .local v8, "dFdZ":[[[D
    .local v9, "d2FdXdY":[[[D
    .local v10, "d2FdZdX":[[[D
    .local v11, "d2FdYdZ":[[[D
    .local v12, "d3FdXdYdZ":[[[D
    .local v18, "xSplineYZ":[Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;
    .local v19, "ySplineZX":[Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;
    .local v20, "zSplineXY":[Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;
    invoke-direct/range {v1 .. v12}, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;-><init>([D[D[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D)V

    move-object v3, v1

    move-object v1, v12

    move-object v12, v8

    .end local v8    # "dFdZ":[[[D
    .end local v9    # "d2FdXdY":[[[D
    .restart local v1    # "d3FdXdYdZ":[[[D
    .local v12, "dFdZ":[[[D
    .restart local v22    # "d2FdXdY":[[[D
    return-object v3

    .line 44
    .end local v1    # "d3FdXdYdZ":[[[D
    .end local v6    # "dFdX":[[[D
    .end local v7    # "dFdY":[[[D
    .end local v10    # "d2FdZdX":[[[D
    .end local v11    # "d2FdYdZ":[[[D
    .end local v12    # "dFdZ":[[[D
    .end local v13    # "xLen":I
    .end local v14    # "yLen":I
    .end local v15    # "zLen":I
    .end local v16    # "fvalXY":[[[D
    .end local v17    # "fvalZX":[[[D
    .end local v18    # "xSplineYZ":[Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;
    .end local v19    # "ySplineZX":[Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;
    .end local v20    # "zSplineXY":[Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolatingFunction;
    .end local v22    # "d2FdXdY":[[[D
    .end local v24    # "bsi":Lorg/apache/commons/math/analysis/interpolation/BicubicSplineInterpolator;
    :cond_14
    new-instance v1, Lorg/apache/commons/math/exception/DimensionMismatchException;

    array-length v3, v2

    array-length v4, v5

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/math/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 41
    :cond_15
    new-instance v1, Lorg/apache/commons/math/exception/NoDataException;

    invoke-direct {v1}, Lorg/apache/commons/math/exception/NoDataException;-><init>()V

    throw v1
.end method
