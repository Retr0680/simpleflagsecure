.class public Lorg/apache/commons/math/optimization/univariate/BrentOptimizer;
.super Lorg/apache/commons/math/optimization/univariate/AbstractUnivariateRealOptimizer;
.source "BrentOptimizer.java"


# static fields
.field private static final GOLDEN_SECTION:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 38
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    invoke-static {v0, v1}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v0

    sput-wide v2, Lorg/apache/commons/math/optimization/univariate/BrentOptimizer;->GOLDEN_SECTION:D

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lorg/apache/commons/math/optimization/univariate/AbstractUnivariateRealOptimizer;-><init>()V

    .line 44
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lorg/apache/commons/math/optimization/univariate/AbstractUnivariateRealOptimizer;->setMaxEvaluations(I)V

    .line 45
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->setMaximalIterationCount(I)V

    .line 46
    const-wide v0, 0x3da5fd7fe1796495L    # 1.0E-11

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->setAbsoluteAccuracy(D)V

    .line 47
    const-wide v0, 0x3e112e0be826d695L    # 1.0E-9

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->setRelativeAccuracy(D)V

    .line 48
    return-void
.end method

.method private localMin(ZDDDDD)D
    .locals 47
    .param p1, "isMinim"    # Z
    .param p2, "lo"    # D
    .param p4, "mid"    # D
    .param p6, "hi"    # D
    .param p8, "eps"    # D
    .param p10, "t"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/MaxIterationsExceededException;,
            Lorg/apache/commons/math/FunctionEvaluationException;
        }
    .end annotation

    .line 86
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    cmpg-double v3, p8, v1

    if-lez v3, :cond_17

    .line 89
    cmpg-double v3, p10, v1

    if-lez v3, :cond_16

    .line 94
    cmpg-double v3, p2, p6

    if-gez v3, :cond_0

    .line 95
    move-wide/from16 v3, p2

    .line 96
    .local v3, "a":D
    move-wide/from16 v5, p6

    .local v5, "b":D
    goto :goto_0

    .line 98
    .end local v3    # "a":D
    .end local v5    # "b":D
    :cond_0
    move-wide/from16 v3, p6

    .line 99
    .restart local v3    # "a":D
    move-wide/from16 v5, p2

    .line 102
    .restart local v5    # "b":D
    :goto_0
    move-wide/from16 v7, p4

    .line 103
    .local v7, "x":D
    move-wide v9, v7

    .line 104
    .local v9, "v":D
    move-wide v11, v7

    .line 105
    .local v11, "w":D
    const-wide/16 v13, 0x0

    .line 106
    .local v13, "d":D
    const-wide/16 v15, 0x0

    .line 107
    .local v15, "e":D
    move-wide/from16 v17, v1

    invoke-virtual {v0, v7, v8}, Lorg/apache/commons/math/optimization/univariate/AbstractUnivariateRealOptimizer;->computeObjectiveValue(D)D

    move-result-wide v1

    .line 108
    .local v1, "fx":D
    if-nez p1, :cond_1

    .line 109
    neg-double v1, v1

    .line 111
    :cond_1
    move-wide/from16 v19, v1

    .line 112
    .local v19, "fv":D
    move-wide/from16 v21, v1

    .line 115
    .local v21, "fw":D
    :goto_1
    add-double v23, v3, v5

    const-wide/high16 v25, 0x3fe0000000000000L    # 0.5

    mul-double v23, v23, v25

    .line 116
    .local v23, "m":D
    invoke-static {v7, v8}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v27

    mul-double v27, v27, p8

    move-wide/from16 v29, v3

    .end local v3    # "a":D
    .local v29, "a":D
    add-double v3, v27, p10

    .line 117
    .local v3, "tol1":D
    const-wide/high16 v27, 0x4000000000000000L    # 2.0

    mul-double v31, v3, v27

    .line 120
    .local v31, "tol2":D
    sub-double v33, v7, v23

    invoke-static/range {v33 .. v34}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v33

    sub-double v35, v5, v29

    mul-double v35, v35, v25

    sub-double v35, v31, v35

    cmpl-double v33, v33, v35

    if-lez v33, :cond_14

    .line 121
    const-wide/16 v33, 0x0

    .line 122
    .local v33, "p":D
    const-wide/16 v35, 0x0

    .line 123
    .local v35, "q":D
    const-wide/16 v37, 0x0

    .line 124
    .local v37, "r":D
    const-wide/16 v39, 0x0

    .line 126
    .local v39, "u":D
    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v41

    cmpl-double v41, v41, v3

    if-lez v41, :cond_8

    .line 127
    sub-double v41, v7, v11

    sub-double v43, v1, v19

    mul-double v41, v41, v43

    .line 128
    .end local v37    # "r":D
    .local v41, "r":D
    sub-double v37, v7, v9

    sub-double v43, v1, v21

    mul-double v37, v37, v43

    .line 129
    .end local v35    # "q":D
    .local v37, "q":D
    sub-double v35, v7, v9

    mul-double v35, v35, v37

    sub-double v43, v7, v11

    mul-double v43, v43, v41

    move-wide/from16 v45, v5

    .end local v5    # "b":D
    .local v45, "b":D
    sub-double v5, v35, v43

    .line 130
    .end local v33    # "p":D
    .local v5, "p":D
    sub-double v33, v37, v41

    move-wide/from16 v43, v7

    .end local v7    # "x":D
    .local v43, "x":D
    mul-double v7, v33, v27

    .line 132
    .end local v37    # "q":D
    .local v7, "q":D
    cmpl-double v27, v7, v17

    if-lez v27, :cond_2

    .line 133
    neg-double v5, v5

    move-wide/from16 v33, v5

    move-wide/from16 v35, v7

    goto :goto_2

    .line 135
    :cond_2
    neg-double v7, v7

    move-wide/from16 v33, v5

    move-wide/from16 v35, v7

    .line 138
    .end local v5    # "p":D
    .end local v7    # "q":D
    .restart local v33    # "p":D
    .restart local v35    # "q":D
    :goto_2
    move-wide/from16 v37, v15

    .line 139
    .end local v41    # "r":D
    .local v37, "r":D
    move-wide v5, v13

    .line 141
    .end local v15    # "e":D
    .local v5, "e":D
    sub-double v7, v29, v43

    mul-double v7, v7, v35

    cmpl-double v7, v33, v7

    if-lez v7, :cond_6

    sub-double v7, v45, v43

    mul-double v7, v7, v35

    cmpg-double v7, v33, v7

    if-gez v7, :cond_6

    .line 143
    invoke-static/range {v33 .. v34}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v7

    mul-double v25, v25, v35

    mul-double v25, v25, v37

    invoke-static/range {v25 .. v26}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v15

    cmpg-double v7, v7, v15

    if-gez v7, :cond_6

    .line 145
    div-double v7, v33, v35

    .line 146
    .end local v13    # "d":D
    .local v7, "d":D
    add-double v39, v43, v7

    .line 149
    sub-double v13, v39, v29

    cmpg-double v13, v13, v31

    if-ltz v13, :cond_3

    sub-double v13, v45, v39

    cmpg-double v13, v13, v31

    if-gez v13, :cond_4

    :cond_3
    goto :goto_3

    :cond_4
    move-wide v15, v5

    move-wide v13, v7

    goto :goto_6

    .line 150
    :goto_3
    cmpg-double v13, v43, v23

    if-gtz v13, :cond_5

    .line 151
    move-wide v7, v3

    move-wide v15, v5

    move-wide v13, v7

    goto :goto_6

    .line 153
    :cond_5
    neg-double v7, v3

    move-wide v15, v5

    move-wide v13, v7

    goto :goto_6

    .line 158
    .end local v7    # "d":D
    .restart local v13    # "d":D
    :cond_6
    cmpg-double v7, v43, v23

    if-gez v7, :cond_7

    .line 159
    sub-double v5, v45, v43

    goto :goto_4

    .line 161
    :cond_7
    sub-double v5, v29, v43

    .line 163
    :goto_4
    sget-wide v7, Lorg/apache/commons/math/optimization/univariate/BrentOptimizer;->GOLDEN_SECTION:D

    mul-double/2addr v7, v5

    move-wide v15, v5

    move-wide v13, v7

    .end local v13    # "d":D
    .restart local v7    # "d":D
    goto :goto_6

    .line 167
    .end local v43    # "x":D
    .end local v45    # "b":D
    .local v5, "b":D
    .local v7, "x":D
    .restart local v13    # "d":D
    .restart local v15    # "e":D
    :cond_8
    move-wide/from16 v45, v5

    move-wide/from16 v43, v7

    .end local v5    # "b":D
    .end local v7    # "x":D
    .restart local v43    # "x":D
    .restart local v45    # "b":D
    cmpg-double v5, v43, v23

    if-gez v5, :cond_9

    .line 168
    sub-double v5, v45, v43

    .end local v15    # "e":D
    .local v5, "e":D
    goto :goto_5

    .line 170
    .end local v5    # "e":D
    .restart local v15    # "e":D
    :cond_9
    sub-double v5, v29, v43

    .line 172
    .end local v15    # "e":D
    .restart local v5    # "e":D
    :goto_5
    sget-wide v7, Lorg/apache/commons/math/optimization/univariate/BrentOptimizer;->GOLDEN_SECTION:D

    mul-double/2addr v7, v5

    move-wide v15, v5

    move-wide v13, v7

    .line 176
    .end local v5    # "e":D
    .restart local v15    # "e":D
    :goto_6
    invoke-static {v13, v14}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v5

    cmpg-double v5, v5, v3

    if-gez v5, :cond_b

    .line 177
    cmpl-double v5, v13, v17

    if-ltz v5, :cond_a

    .line 178
    add-double v7, v43, v3

    .end local v39    # "u":D
    .local v7, "u":D
    goto :goto_7

    .line 180
    .end local v7    # "u":D
    .restart local v39    # "u":D
    :cond_a
    sub-double v7, v43, v3

    .end local v39    # "u":D
    .restart local v7    # "u":D
    goto :goto_7

    .line 183
    .end local v7    # "u":D
    .restart local v39    # "u":D
    :cond_b
    add-double v7, v43, v13

    .line 186
    .end local v39    # "u":D
    .restart local v7    # "u":D
    :goto_7
    invoke-virtual {v0, v7, v8}, Lorg/apache/commons/math/optimization/univariate/AbstractUnivariateRealOptimizer;->computeObjectiveValue(D)D

    move-result-wide v5

    .line 187
    .local v5, "fu":D
    if-nez p1, :cond_c

    .line 188
    neg-double v5, v5

    .line 192
    :cond_c
    cmpg-double v25, v5, v1

    if-gtz v25, :cond_e

    .line 193
    cmpg-double v25, v7, v43

    if-gez v25, :cond_d

    .line 194
    move-wide/from16 v25, v43

    move-wide/from16 v45, v25

    move-wide/from16 v25, v29

    .end local v45    # "b":D
    .local v25, "b":D
    goto :goto_8

    .line 196
    .end local v25    # "b":D
    .restart local v45    # "b":D
    :cond_d
    move-wide/from16 v25, v43

    .line 198
    .end local v29    # "a":D
    .local v25, "a":D
    :goto_8
    move-wide v9, v11

    .line 199
    move-wide/from16 v19, v21

    .line 200
    move-wide/from16 v11, v43

    .line 201
    move-wide/from16 v21, v1

    .line 202
    move-wide/from16 v27, v7

    .line 203
    .end local v43    # "x":D
    .local v27, "x":D
    move-wide v1, v5

    move-wide/from16 v5, v45

    goto :goto_c

    .line 205
    .end local v25    # "a":D
    .end local v27    # "x":D
    .restart local v29    # "a":D
    .restart local v43    # "x":D
    :cond_e
    cmpg-double v25, v7, v43

    if-gez v25, :cond_f

    .line 206
    move-wide/from16 v25, v7

    .end local v29    # "a":D
    .restart local v25    # "a":D
    goto :goto_9

    .line 208
    .end local v25    # "a":D
    .restart local v29    # "a":D
    :cond_f
    move-wide/from16 v25, v7

    move-wide/from16 v45, v25

    move-wide/from16 v25, v29

    .line 210
    .end local v29    # "a":D
    .restart local v25    # "a":D
    :goto_9
    cmpg-double v27, v5, v21

    if-lez v27, :cond_10

    cmpl-double v27, v11, v43

    if-nez v27, :cond_11

    :cond_10
    goto :goto_b

    .line 215
    :cond_11
    cmpg-double v27, v5, v19

    if-lez v27, :cond_12

    cmpl-double v27, v9, v43

    if-eqz v27, :cond_12

    cmpl-double v27, v9, v11

    if-nez v27, :cond_13

    :cond_12
    goto :goto_a

    :cond_13
    move-wide/from16 v7, v43

    move-wide/from16 v5, v45

    goto :goto_c

    .line 216
    :goto_a
    move-wide v9, v7

    .line 217
    move-wide/from16 v19, v5

    move-wide/from16 v7, v43

    move-wide/from16 v5, v45

    goto :goto_c

    .line 211
    :goto_b
    move-wide v9, v11

    .line 212
    move-wide/from16 v19, v21

    .line 213
    move-wide v11, v7

    .line 214
    move-wide/from16 v21, v5

    move-wide/from16 v7, v43

    move-wide/from16 v5, v45

    .line 220
    .end local v33    # "p":D
    .end local v35    # "q":D
    .end local v37    # "r":D
    .end local v43    # "x":D
    .end local v45    # "b":D
    .local v5, "b":D
    .local v7, "x":D
    :goto_c
    nop

    .line 224
    invoke-virtual {v0}, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->incrementIterationsCounter()V

    .line 225
    .end local v3    # "tol1":D
    .end local v23    # "m":D
    .end local v31    # "tol2":D
    move-wide/from16 v3, v25

    goto/16 :goto_1

    .line 221
    .end local v25    # "a":D
    .restart local v3    # "tol1":D
    .restart local v23    # "m":D
    .restart local v29    # "a":D
    .restart local v31    # "tol2":D
    :cond_14
    move-wide/from16 v45, v5

    move-wide/from16 v43, v7

    .end local v5    # "b":D
    .end local v7    # "x":D
    .restart local v43    # "x":D
    .restart local v45    # "b":D
    if-eqz p1, :cond_15

    move-wide v5, v1

    goto :goto_d

    :cond_15
    neg-double v5, v1

    :goto_d
    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/math/optimization/univariate/AbstractUnivariateRealOptimizer;->setFunctionValue(D)V

    .line 222
    return-wide v43

    .line 90
    .end local v1    # "fx":D
    .end local v3    # "tol1":D
    .end local v9    # "v":D
    .end local v11    # "w":D
    .end local v13    # "d":D
    .end local v15    # "e":D
    .end local v19    # "fv":D
    .end local v21    # "fw":D
    .end local v23    # "m":D
    .end local v29    # "a":D
    .end local v31    # "tol2":D
    .end local v43    # "x":D
    .end local v45    # "b":D
    :cond_16
    new-instance v1, Lorg/apache/commons/math/exception/NotStrictlyPositiveException;

    invoke-static/range {p10 .. p11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1

    .line 87
    :cond_17
    new-instance v1, Lorg/apache/commons/math/exception/NotStrictlyPositiveException;

    invoke-static/range {p8 .. p9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1
.end method


# virtual methods
.method protected doOptimize()D
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/MaxIterationsExceededException;,
            Lorg/apache/commons/math/FunctionEvaluationException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lorg/apache/commons/math/optimization/univariate/AbstractUnivariateRealOptimizer;->getGoalType()Lorg/apache/commons/math/optimization/GoalType;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/math/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math/optimization/GoalType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 55
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/math/optimization/univariate/AbstractUnivariateRealOptimizer;->getMin()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/commons/math/optimization/univariate/AbstractUnivariateRealOptimizer;->getStartValue()D

    move-result-wide v5

    invoke-virtual {p0}, Lorg/apache/commons/math/optimization/univariate/AbstractUnivariateRealOptimizer;->getMax()D

    move-result-wide v7

    .line 56
    invoke-virtual {p0}, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->getRelativeAccuracy()D

    move-result-wide v9

    invoke-virtual {p0}, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->getAbsoluteAccuracy()D

    move-result-wide v11

    .line 54
    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lorg/apache/commons/math/optimization/univariate/BrentOptimizer;->localMin(ZDDDDD)D

    move-result-wide v2

    return-wide v2
.end method
