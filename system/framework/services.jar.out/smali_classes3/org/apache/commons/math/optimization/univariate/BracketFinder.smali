.class public Lorg/apache/commons/math/optimization/univariate/BracketFinder;
.super Ljava/lang/Object;
.source "BracketFinder.java"


# static fields
.field private static final EPS_MIN:D = 1.0E-21

.field private static final GOLD:D = 1.618034


# instance fields
.field private evaluations:I

.field private fHi:D

.field private fLo:D

.field private fMid:D

.field private final growLimit:D

.field private hi:D

.field private iterations:I

.field private lo:D

.field private final maxIterations:I

.field private mid:D


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 85
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    const/16 v2, 0x32

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math/optimization/univariate/BracketFinder;-><init>(DI)V

    .line 86
    return-void
.end method

.method public constructor <init>(DI)V
    .locals 2
    .param p1, "growLimit"    # D
    .param p3, "maxIterations"    # I

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-lez v0, :cond_1

    .line 100
    if-lez p3, :cond_0

    .line 104
    iput-wide p1, p0, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->growLimit:D

    .line 105
    iput p3, p0, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->maxIterations:I

    .line 106
    return-void

    .line 101
    :cond_0
    new-instance v0, Lorg/apache/commons/math/exception/NotStrictlyPositiveException;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 98
    :cond_1
    new-instance v0, Lorg/apache/commons/math/exception/NotStrictlyPositiveException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method

.method private eval(Lorg/apache/commons/math/analysis/UnivariateRealFunction;D)D
    .locals 2
    .param p1, "f"    # Lorg/apache/commons/math/analysis/UnivariateRealFunction;
    .param p2, "x"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/FunctionEvaluationException;
        }
    .end annotation

    .line 284
    iget v0, p0, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->evaluations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->evaluations:I

    .line 285
    invoke-interface {p1, p2, p3}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private reset()V
    .locals 1

    .line 292
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->iterations:I

    .line 293
    iput v0, p0, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->evaluations:I

    .line 294
    return-void
.end method


# virtual methods
.method public getEvaluations()I
    .locals 1

    .line 224
    iget v0, p0, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->evaluations:I

    return v0
.end method

.method public getFHi()D
    .locals 2

    .line 256
    iget-wide v0, p0, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->fHi:D

    return-wide v0
.end method

.method public getFLow()D
    .locals 2

    .line 240
    iget-wide v0, p0, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->fLo:D

    return-wide v0
.end method

.method public getFMid()D
    .locals 2

    .line 272
    iget-wide v0, p0, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->fMid:D

    return-wide v0
.end method

.method public getHi()D
    .locals 2

    .line 248
    iget-wide v0, p0, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->hi:D

    return-wide v0
.end method

.method public getIterations()I
    .locals 1

    .line 218
    iget v0, p0, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->iterations:I

    return v0
.end method

.method public getLo()D
    .locals 2

    .line 232
    iget-wide v0, p0, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->lo:D

    return-wide v0
.end method

.method public getMid()D
    .locals 2

    .line 264
    iget-wide v0, p0, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->mid:D

    return-wide v0
.end method

.method public search(Lorg/apache/commons/math/analysis/UnivariateRealFunction;Lorg/apache/commons/math/optimization/GoalType;DD)V
    .locals 33
    .param p1, "func"    # Lorg/apache/commons/math/analysis/UnivariateRealFunction;
    .param p2, "goal"    # Lorg/apache/commons/math/optimization/GoalType;
    .param p3, "xA"    # D
    .param p5, "xB"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/MaxIterationsExceededException;,
            Lorg/apache/commons/math/FunctionEvaluationException;
        }
    .end annotation

    .line 124
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->reset()V

    .line 125
    sget-object v2, Lorg/apache/commons/math/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math/optimization/GoalType;

    move-object/from16 v4, p2

    if-ne v4, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 127
    .local v2, "isMinim":Z
    :goto_0
    move-wide/from16 v5, p3

    invoke-direct {v0, v1, v5, v6}, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->eval(Lorg/apache/commons/math/analysis/UnivariateRealFunction;D)D

    move-result-wide v7

    .line 128
    .local v7, "fA":D
    move-wide/from16 v9, p5

    invoke-direct {v0, v1, v9, v10}, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->eval(Lorg/apache/commons/math/analysis/UnivariateRealFunction;D)D

    move-result-wide v11

    .line 129
    .local v11, "fB":D
    if-eqz v2, :cond_1

    cmpg-double v13, v7, v11

    if-gez v13, :cond_2

    :goto_1
    goto :goto_2

    :cond_1
    cmpl-double v13, v7, v11

    if-lez v13, :cond_2

    goto :goto_1

    .line 132
    :goto_2
    move-wide/from16 v13, p3

    .line 133
    .local v13, "tmp":D
    move-wide/from16 v5, p5

    .line 134
    .end local p3    # "xA":D
    .local v5, "xA":D
    move-wide v9, v13

    .line 136
    .end local p5    # "xB":D
    .local v9, "xB":D
    move-wide v13, v7

    .line 137
    move-wide v7, v11

    .line 138
    move-wide v11, v13

    .line 141
    .end local v13    # "tmp":D
    :cond_2
    sub-double v13, v9, v5

    const-wide v15, 0x3ff9e3779e9d0e99L    # 1.618034

    mul-double/2addr v13, v15

    add-double/2addr v13, v9

    .line 142
    .local v13, "xC":D
    invoke-direct {v0, v1, v13, v14}, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->eval(Lorg/apache/commons/math/analysis/UnivariateRealFunction;D)D

    move-result-wide v17

    .line 144
    .local v17, "fC":D
    :goto_3
    if-eqz v2, :cond_4

    cmpg-double v19, v17, v11

    if-gez v19, :cond_3

    :goto_4
    goto :goto_5

    :cond_3
    move/from16 v28, v2

    move-wide/from16 p5, v5

    goto/16 :goto_e

    :cond_4
    cmpl-double v19, v17, v11

    if-lez v19, :cond_10

    goto :goto_4

    .line 145
    :goto_5
    const/16 v19, 0x1

    iget v3, v0, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->iterations:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->iterations:I

    move-wide/from16 p3, v15

    iget v15, v0, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->maxIterations:I

    if-gt v3, v15, :cond_f

    .line 149
    sub-double v15, v9, v5

    sub-double v20, v11, v17

    mul-double v15, v15, v20

    .line 150
    .local v15, "tmp1":D
    sub-double v20, v9, v13

    sub-double v22, v11, v7

    mul-double v20, v20, v22

    .line 152
    .local v20, "tmp2":D
    sub-double v22, v20, v15

    .line 153
    .local v22, "val":D
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    const-wide v26, 0x3b92e3b40a0e9b4fL    # 1.0E-21

    cmpg-double v3, v24, v26

    if-gez v3, :cond_5

    const-wide v24, 0x3ba2e3b40a0e9b4fL    # 2.0E-21

    goto :goto_6

    :cond_5
    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    mul-double v24, v24, v22

    .line 155
    .local v24, "denom":D
    :goto_6
    sub-double v26, v9, v13

    mul-double v26, v26, v20

    sub-double v28, v9, v5

    mul-double v28, v28, v15

    sub-double v26, v26, v28

    div-double v26, v26, v24

    move/from16 v28, v2

    .end local v2    # "isMinim":Z
    .local v28, "isMinim":Z
    sub-double v2, v9, v26

    .line 156
    .local v2, "w":D
    move-wide/from16 p5, v5

    .end local v5    # "xA":D
    .local p5, "xA":D
    iget-wide v4, v0, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->growLimit:D

    sub-double v26, v13, v9

    mul-double v4, v4, v26

    add-double/2addr v4, v9

    .line 159
    .local v4, "wLim":D
    sub-double v26, v2, v13

    sub-double v29, v9, v2

    mul-double v26, v26, v29

    const-wide/16 v29, 0x0

    cmpl-double v6, v26, v29

    if-lez v6, :cond_a

    .line 160
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->eval(Lorg/apache/commons/math/analysis/UnivariateRealFunction;D)D

    move-result-wide v26

    .line 161
    .local v26, "fW":D
    if-eqz v28, :cond_6

    cmpg-double v6, v26, v17

    if-gez v6, :cond_7

    :goto_7
    goto :goto_8

    :cond_6
    cmpl-double v6, v26, v17

    if-lez v6, :cond_7

    goto :goto_7

    .line 164
    :goto_8
    move-wide/from16 v29, v9

    .line 165
    .end local p5    # "xA":D
    .local v29, "xA":D
    move-wide v9, v2

    .line 166
    move-wide v7, v11

    .line 167
    move-wide/from16 v11, v26

    .line 168
    move-wide/from16 v2, v17

    move-wide/from16 v5, v29

    goto/16 :goto_f

    .line 169
    .end local v29    # "xA":D
    .restart local p5    # "xA":D
    :cond_7
    if-eqz v28, :cond_8

    cmpl-double v6, v26, v11

    if-lez v6, :cond_9

    :goto_9
    goto :goto_a

    :cond_8
    cmpg-double v6, v26, v11

    if-gez v6, :cond_9

    goto :goto_9

    .line 172
    :goto_a
    move-wide v13, v2

    .line 173
    move-wide/from16 v17, v26

    .line 174
    move-wide/from16 v5, p5

    move-wide/from16 v2, v17

    goto/16 :goto_f

    .line 176
    :cond_9
    sub-double v29, v13, v9

    mul-double v29, v29, p3

    add-double v2, v13, v29

    .line 177
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->eval(Lorg/apache/commons/math/analysis/UnivariateRealFunction;D)D

    move-result-wide v26

    goto :goto_d

    .line 178
    .end local v26    # "fW":D
    :cond_a
    sub-double v26, v2, v4

    sub-double v31, v4, v13

    mul-double v26, v26, v31

    cmpl-double v6, v26, v29

    if-ltz v6, :cond_b

    .line 179
    move-wide v2, v4

    .line 180
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->eval(Lorg/apache/commons/math/analysis/UnivariateRealFunction;D)D

    move-result-wide v26

    .restart local v26    # "fW":D
    goto :goto_d

    .line 181
    .end local v26    # "fW":D
    :cond_b
    sub-double v26, v2, v4

    sub-double v31, v13, v2

    mul-double v26, v26, v31

    cmpl-double v6, v26, v29

    if-lez v6, :cond_d

    .line 182
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->eval(Lorg/apache/commons/math/analysis/UnivariateRealFunction;D)D

    move-result-wide v26

    .line 183
    .restart local v26    # "fW":D
    if-eqz v28, :cond_c

    cmpg-double v6, v26, v17

    if-gez v6, :cond_e

    :goto_b
    goto :goto_c

    :cond_c
    cmpl-double v6, v26, v17

    if-lez v6, :cond_e

    goto :goto_b

    .line 186
    :goto_c
    move-wide v9, v13

    .line 187
    move-wide v13, v2

    .line 188
    sub-double v29, v13, v9

    mul-double v29, v29, p3

    add-double v2, v13, v29

    .line 189
    move-wide/from16 v11, v17

    .line 190
    move-wide/from16 v17, v26

    .line 191
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->eval(Lorg/apache/commons/math/analysis/UnivariateRealFunction;D)D

    move-result-wide v26

    goto :goto_d

    .line 194
    .end local v26    # "fW":D
    :cond_d
    sub-double v26, v13, v9

    mul-double v26, v26, p3

    add-double v2, v13, v26

    .line 195
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->eval(Lorg/apache/commons/math/analysis/UnivariateRealFunction;D)D

    move-result-wide v26

    .line 198
    .restart local v26    # "fW":D
    :cond_e
    :goto_d
    move-wide/from16 v29, v9

    .line 199
    .end local p5    # "xA":D
    .restart local v29    # "xA":D
    move-wide v9, v13

    .line 200
    move-wide v13, v2

    .line 201
    move-wide v7, v11

    .line 202
    move-wide/from16 v11, v17

    .line 203
    move-wide/from16 v17, v26

    .line 204
    .end local v2    # "w":D
    .end local v4    # "wLim":D
    .end local v15    # "tmp1":D
    .end local v20    # "tmp2":D
    .end local v22    # "val":D
    .end local v24    # "denom":D
    .end local v26    # "fW":D
    move-object/from16 v4, p2

    move-wide/from16 v15, p3

    move/from16 v2, v28

    move-wide/from16 v5, v29

    goto/16 :goto_3

    .line 146
    .end local v28    # "isMinim":Z
    .end local v29    # "xA":D
    .local v2, "isMinim":Z
    .restart local v5    # "xA":D
    :cond_f
    move/from16 v28, v2

    .end local v2    # "isMinim":Z
    .restart local v28    # "isMinim":Z
    new-instance v2, Lorg/apache/commons/math/MaxIterationsExceededException;

    iget v3, v0, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->maxIterations:I

    invoke-direct {v2, v3}, Lorg/apache/commons/math/MaxIterationsExceededException;-><init>(I)V

    throw v2

    .line 144
    .end local v28    # "isMinim":Z
    .restart local v2    # "isMinim":Z
    :cond_10
    move/from16 v28, v2

    move-wide/from16 p5, v5

    .line 206
    :goto_e
    move-wide/from16 v5, p5

    move-wide/from16 v2, v17

    .end local v17    # "fC":D
    .local v2, "fC":D
    .restart local v28    # "isMinim":Z
    :goto_f
    iput-wide v5, v0, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->lo:D

    .line 207
    iput-wide v9, v0, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->mid:D

    .line 208
    iput-wide v13, v0, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->hi:D

    .line 209
    iput-wide v7, v0, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->fLo:D

    .line 210
    iput-wide v11, v0, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->fMid:D

    .line 211
    iput-wide v2, v0, Lorg/apache/commons/math/optimization/univariate/BracketFinder;->fHi:D

    .line 212
    return-void
.end method
