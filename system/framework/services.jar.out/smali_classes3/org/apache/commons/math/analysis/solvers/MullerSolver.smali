.class public Lorg/apache/commons/math/analysis/solvers/MullerSolver;
.super Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;
.source "MullerSolver.java"


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    const/16 v0, 0x64

    const-wide v1, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;-><init>(ID)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math/analysis/UnivariateRealFunction;)V
    .locals 3
    .param p1, "f"    # Lorg/apache/commons/math/analysis/UnivariateRealFunction;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    const/16 v0, 0x64

    const-wide v1, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;-><init>(Lorg/apache/commons/math/analysis/UnivariateRealFunction;ID)V

    .line 53
    return-void
.end method


# virtual methods
.method public solve(DD)D
    .locals 6
    .param p1, "min"    # D
    .param p3, "max"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/ConvergenceException;,
            Lorg/apache/commons/math/FunctionEvaluationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    iget-object v1, p0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->f:Lorg/apache/commons/math/analysis/UnivariateRealFunction;

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "min":D
    .end local p3    # "max":D
    .local v2, "min":D
    .local v4, "max":D
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math/analysis/solvers/MullerSolver;->solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public solve(DDD)D
    .locals 8
    .param p1, "min"    # D
    .param p3, "max"    # D
    .param p5, "initial"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/ConvergenceException;,
            Lorg/apache/commons/math/FunctionEvaluationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    iget-object v1, p0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->f:Lorg/apache/commons/math/analysis/UnivariateRealFunction;

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    .end local p1    # "min":D
    .end local p3    # "max":D
    .end local p5    # "initial":D
    .local v2, "min":D
    .local v4, "max":D
    .local v6, "initial":D
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math/analysis/solvers/MullerSolver;->solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public solve(ILorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D
    .locals 6
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math/analysis/UnivariateRealFunction;
    .param p3, "min"    # D
    .param p5, "max"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/MaxIterationsExceededException;,
            Lorg/apache/commons/math/FunctionEvaluationException;
        }
    .end annotation

    .line 166
    invoke-virtual {p0, p1}, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->setMaximalIterationCount(I)V

    .line 167
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    .end local p2    # "f":Lorg/apache/commons/math/analysis/UnivariateRealFunction;
    .end local p3    # "min":D
    .end local p5    # "max":D
    .local v1, "f":Lorg/apache/commons/math/analysis/UnivariateRealFunction;
    .local v2, "min":D
    .local v4, "max":D
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math/analysis/solvers/MullerSolver;->solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D

    move-result-wide p2

    return-wide p2
.end method

.method public solve(ILorg/apache/commons/math/analysis/UnivariateRealFunction;DDD)D
    .locals 10
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math/analysis/UnivariateRealFunction;
    .param p3, "min"    # D
    .param p5, "max"    # D
    .param p7, "initial"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/MaxIterationsExceededException;,
            Lorg/apache/commons/math/FunctionEvaluationException;
        }
    .end annotation

    .line 98
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->setMaximalIterationCount(I)V

    .line 99
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    move-wide/from16 v6, p7

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math/analysis/solvers/MullerSolver;->solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDD)D

    move-result-wide v8

    return-wide v8
.end method

.method public solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D
    .locals 56
    .param p1, "f"    # Lorg/apache/commons/math/analysis/UnivariateRealFunction;
    .param p2, "min"    # D
    .param p4, "max"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/MaxIterationsExceededException;,
            Lorg/apache/commons/math/FunctionEvaluationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 205
    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    .line 206
    .local v6, "x0":D
    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v8

    .line 207
    .local v8, "y0":D
    move-wide/from16 v10, p4

    .line 208
    .local v10, "x2":D
    invoke-interface {v5, v10, v11}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v12

    .line 209
    .local v12, "y2":D
    add-double v0, v6, v10

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v14

    .line 210
    .local v0, "x1":D
    invoke-interface {v5, v0, v1}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v16

    .line 213
    .local v16, "y1":D
    const-wide/16 v18, 0x0

    cmpl-double v2, v8, v18

    if-nez v2, :cond_0

    .line 214
    return-wide p2

    .line 216
    :cond_0
    cmpl-double v2, v12, v18

    if-nez v2, :cond_1

    .line 217
    return-wide p4

    .line 219
    :cond_1
    move-wide/from16 v3, p4

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    .end local v0    # "x1":D
    .local v20, "x1":D
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->verifyBracketing(DDLorg/apache/commons/math/analysis/UnivariateRealFunction;)V

    .line 221
    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 222
    .local v1, "oldx":D
    const/4 v3, 0x1

    move-wide/from16 v52, v8

    move v9, v3

    move-wide/from16 v54, v6

    move-wide v7, v1

    move-wide/from16 v1, v54

    move-wide v5, v10

    move-wide/from16 v10, v52

    .end local v6    # "x0":D
    .end local v8    # "y0":D
    .local v1, "x0":D
    .local v5, "x2":D
    .local v7, "oldx":D
    .local v9, "i":I
    .local v10, "y0":D
    :goto_0
    iget v3, v0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->maximalIterationCount:I

    if-gt v9, v3, :cond_f

    .line 227
    sub-double v3, v16, v10

    sub-double v22, v20, v1

    div-double v22, v3, v22

    .line 228
    .local v22, "d01":D
    sub-double v3, v12, v16

    sub-double v24, v5, v20

    div-double v24, v3, v24

    .line 229
    .local v24, "d12":D
    sub-double v3, v24, v22

    sub-double v26, v5, v1

    div-double v26, v3, v26

    .line 230
    .local v26, "d012":D
    sub-double v3, v20, v1

    mul-double v3, v3, v26

    add-double v28, v22, v3

    .line 231
    .local v28, "c1":D
    mul-double v3, v28, v28

    const-wide/high16 v30, 0x4010000000000000L    # 4.0

    mul-double v30, v30, v16

    mul-double v30, v30, v26

    sub-double v30, v3, v30

    .line 232
    .local v30, "delta":D
    const-wide/high16 v3, -0x4000000000000000L    # -2.0

    mul-double v32, v16, v3

    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v34

    add-double v34, v28, v34

    div-double v32, v32, v34

    add-double v32, v20, v32

    .line 233
    .local v32, "xplus":D
    mul-double v3, v3, v16

    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v34

    sub-double v34, v28, v34

    div-double v3, v3, v34

    add-double v34, v20, v3

    .line 236
    .local v34, "xminus":D
    move-wide/from16 v36, v14

    move-wide/from16 v3, v32

    move-object/from16 v14, p1

    .end local v32    # "xplus":D
    .local v3, "xplus":D
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->isSequence(DDD)Z

    move-result v15

    if-eqz v15, :cond_2

    move-wide/from16 v32, v3

    goto :goto_1

    :cond_2
    move-wide/from16 v32, v34

    :goto_1
    move-wide/from16 v38, v32

    .line 237
    .local v38, "x":D
    move-wide/from16 v32, v1

    move-wide/from16 v1, v38

    .end local v38    # "x":D
    .local v1, "x":D
    .local v32, "x0":D
    invoke-interface {v14, v1, v2}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v38

    .line 240
    .local v38, "y":D
    move-wide/from16 v40, v3

    .end local v3    # "xplus":D
    .local v40, "xplus":D
    iget-wide v3, v0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->relativeAccuracy:D

    invoke-static {v1, v2}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v42

    mul-double v3, v3, v42

    move-wide/from16 v42, v5

    .end local v5    # "x2":D
    .local v42, "x2":D
    iget-wide v5, v0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->absoluteAccuracy:D

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math/util/FastMath;->max(DD)D

    move-result-wide v3

    .line 241
    .local v3, "tolerance":D
    sub-double v5, v1, v7

    invoke-static {v5, v6}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v5

    cmpg-double v5, v5, v3

    if-gtz v5, :cond_3

    .line 242
    invoke-virtual {v0, v1, v2, v9}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->setResult(DI)V

    .line 243
    iget-wide v5, v0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->result:D

    return-wide v5

    .line 245
    :cond_3
    invoke-static/range {v38 .. v39}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v5

    move-wide/from16 v44, v3

    .end local v3    # "tolerance":D
    .local v44, "tolerance":D
    iget-wide v3, v0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->functionValueAccuracy:D

    cmpg-double v3, v5, v3

    if-gtz v3, :cond_4

    .line 246
    invoke-virtual {v0, v1, v2, v9}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->setResult(DI)V

    .line 247
    iget-wide v3, v0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->result:D

    return-wide v3

    .line 254
    :cond_4
    cmpg-double v3, v1, v20

    const-wide v4, 0x3fee666666666666L    # 0.95

    if-gez v3, :cond_5

    sub-double v46, v20, v32

    sub-double v48, v42, v32

    mul-double v48, v48, v4

    cmpl-double v3, v46, v48

    if-gtz v3, :cond_7

    :cond_5
    cmpl-double v3, v1, v20

    if-lez v3, :cond_6

    sub-double v46, v42, v20

    sub-double v48, v42, v32

    mul-double v48, v48, v4

    cmpl-double v3, v46, v48

    if-gtz v3, :cond_7

    :cond_6
    cmpl-double v3, v1, v20

    if-nez v3, :cond_8

    :cond_7
    const/4 v3, 0x1

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    .line 258
    .local v3, "bisect":Z
    :goto_2
    if-nez v3, :cond_d

    .line 259
    cmpg-double v4, v1, v20

    if-gez v4, :cond_9

    move-wide/from16 v4, v32

    goto :goto_3

    :cond_9
    move-wide/from16 v4, v20

    .line 260
    .end local v32    # "x0":D
    .local v4, "x0":D
    :goto_3
    cmpg-double v6, v1, v20

    if-gez v6, :cond_a

    move-wide/from16 v32, v10

    goto :goto_4

    :cond_a
    move-wide/from16 v32, v16

    .line 261
    .end local v10    # "y0":D
    .local v32, "y0":D
    :goto_4
    cmpl-double v6, v1, v20

    if-lez v6, :cond_b

    move-wide/from16 v10, v42

    goto :goto_5

    :cond_b
    move-wide/from16 v10, v20

    .line 262
    .end local v42    # "x2":D
    .local v10, "x2":D
    :goto_5
    cmpl-double v6, v1, v20

    if-lez v6, :cond_c

    move-wide/from16 v42, v12

    goto :goto_6

    :cond_c
    move-wide/from16 v42, v16

    .line 263
    .end local v12    # "y2":D
    .local v42, "y2":D
    :goto_6
    move-wide v12, v1

    .end local v20    # "x1":D
    .local v12, "x1":D
    move-wide/from16 v15, v38

    .line 264
    .end local v16    # "y1":D
    .local v15, "y1":D
    move-wide v6, v1

    move-wide v1, v4

    move-wide v7, v6

    move-wide v5, v10

    move-wide/from16 v20, v12

    move-wide/from16 v10, v32

    move-wide/from16 v12, v42

    move-wide/from16 v16, v15

    .end local v7    # "oldx":D
    .local v6, "oldx":D
    goto :goto_8

    .line 266
    .end local v4    # "x0":D
    .end local v6    # "oldx":D
    .end local v15    # "y1":D
    .restart local v7    # "oldx":D
    .local v10, "y0":D
    .local v12, "y2":D
    .restart local v16    # "y1":D
    .restart local v20    # "x1":D
    .local v32, "x0":D
    .local v42, "x2":D
    :cond_d
    add-double v4, v32, v42

    mul-double v4, v4, v36

    .line 267
    .local v4, "xm":D
    invoke-interface {v14, v4, v5}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v46

    .line 268
    .local v46, "ym":D
    invoke-static {v10, v11}, Lorg/apache/commons/math/util/MathUtils;->sign(D)D

    move-result-wide v48

    invoke-static/range {v46 .. v47}, Lorg/apache/commons/math/util/MathUtils;->sign(D)D

    move-result-wide v50

    add-double v48, v48, v50

    cmpl-double v6, v48, v18

    if-nez v6, :cond_e

    .line 269
    move-wide/from16 v42, v4

    move-wide/from16 v12, v46

    goto :goto_7

    .line 271
    :cond_e
    move-wide/from16 v32, v4

    move-wide/from16 v10, v46

    .line 273
    :goto_7
    add-double v48, v32, v42

    move-wide/from16 v50, v1

    .end local v1    # "x":D
    .local v50, "x":D
    mul-double v1, v48, v36

    .line 274
    .end local v20    # "x1":D
    .local v1, "x1":D
    invoke-interface {v14, v1, v2}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v15

    .line 275
    .end local v16    # "y1":D
    .restart local v15    # "y1":D
    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-wide/from16 v20, v1

    move-wide v7, v6

    move-wide/from16 v1, v32

    move-wide/from16 v5, v42

    move-wide/from16 v16, v15

    .line 222
    .end local v3    # "bisect":Z
    .end local v4    # "xm":D
    .end local v15    # "y1":D
    .end local v22    # "d01":D
    .end local v24    # "d12":D
    .end local v26    # "d012":D
    .end local v28    # "c1":D
    .end local v30    # "delta":D
    .end local v32    # "x0":D
    .end local v34    # "xminus":D
    .end local v38    # "y":D
    .end local v40    # "xplus":D
    .end local v42    # "x2":D
    .end local v44    # "tolerance":D
    .end local v46    # "ym":D
    .end local v50    # "x":D
    .local v1, "x0":D
    .restart local v5    # "x2":D
    .restart local v16    # "y1":D
    .restart local v20    # "x1":D
    :goto_8
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v14, v36

    goto/16 :goto_0

    :cond_f
    move-wide/from16 v32, v1

    .line 278
    .end local v1    # "x0":D
    .end local v9    # "i":I
    .restart local v32    # "x0":D
    new-instance v1, Lorg/apache/commons/math/MaxIterationsExceededException;

    iget v2, v0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->maximalIterationCount:I

    invoke-direct {v1, v2}, Lorg/apache/commons/math/MaxIterationsExceededException;-><init>(I)V

    throw v1
.end method

.method public solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDD)D
    .locals 10
    .param p1, "f"    # Lorg/apache/commons/math/analysis/UnivariateRealFunction;
    .param p2, "min"    # D
    .param p4, "max"    # D
    .param p6, "initial"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/MaxIterationsExceededException;,
            Lorg/apache/commons/math/FunctionEvaluationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    move-wide/from16 v6, p6

    invoke-interface/range {p1 .. p3}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v0

    const-wide/16 v8, 0x0

    cmpl-double v0, v0, v8

    if-nez v0, :cond_0

    return-wide p2

    .line 125
    :cond_0
    invoke-interface {p1, p4, p5}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v0

    cmpl-double v0, v0, v8

    if-nez v0, :cond_1

    return-wide p4

    .line 126
    :cond_1
    invoke-interface {p1, v6, v7}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v0

    cmpl-double v0, v0, v8

    if-nez v0, :cond_2

    return-wide v6

    .line 128
    :cond_2
    move-object v0, p0

    move-object v5, p1

    move-wide v1, p2

    move-wide v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->verifyBracketing(DDLorg/apache/commons/math/analysis/UnivariateRealFunction;)V

    .line 129
    move-wide v3, v6

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->verifySequence(DDD)V

    .line 130
    move-object v5, p1

    move-wide/from16 v3, p6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->isBracketing(DDLorg/apache/commons/math/analysis/UnivariateRealFunction;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 131
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math/analysis/solvers/MullerSolver;->solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D

    move-result-wide v6

    return-wide v6

    .line 133
    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-wide v4, p4

    move-wide/from16 v2, p6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math/analysis/solvers/MullerSolver;->solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D

    move-result-wide v6

    return-wide v6
.end method

.method public solve2(DD)D
    .locals 6
    .param p1, "min"    # D
    .param p3, "max"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/MaxIterationsExceededException;,
            Lorg/apache/commons/math/FunctionEvaluationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 310
    iget-object v1, p0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->f:Lorg/apache/commons/math/analysis/UnivariateRealFunction;

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "min":D
    .end local p3    # "max":D
    .local v2, "min":D
    .local v4, "max":D
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math/analysis/solvers/MullerSolver;->solve2(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public solve2(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D
    .locals 42
    .param p1, "f"    # Lorg/apache/commons/math/analysis/UnivariateRealFunction;
    .param p2, "min"    # D
    .param p4, "max"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/MaxIterationsExceededException;,
            Lorg/apache/commons/math/FunctionEvaluationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 348
    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    .line 349
    .local v6, "x0":D
    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v8

    .line 350
    .local v8, "y0":D
    move-wide/from16 v10, p4

    .line 351
    .local v10, "x1":D
    invoke-interface {v5, v10, v11}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v12

    .line 352
    .local v12, "y1":D
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double v2, v6, v10

    mul-double v14, v2, v0

    .line 353
    .local v14, "x2":D
    invoke-interface {v5, v14, v15}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v16

    .line 356
    .local v16, "y2":D
    const-wide/16 v18, 0x0

    cmpl-double v0, v8, v18

    if-nez v0, :cond_0

    return-wide p2

    .line 357
    :cond_0
    cmpl-double v0, v12, v18

    if-nez v0, :cond_1

    return-wide p4

    .line 358
    :cond_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->verifyBracketing(DDLorg/apache/commons/math/analysis/UnivariateRealFunction;)V

    .line 360
    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 361
    .local v1, "oldx":D
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    iget v4, v0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->maximalIterationCount:I

    if-gt v3, v4, :cond_9

    .line 363
    sub-double v20, v14, v10

    sub-double v22, v10, v6

    div-double v20, v20, v22

    .line 364
    .local v20, "q":D
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    add-double v24, v20, v22

    mul-double v24, v24, v12

    sub-double v24, v16, v24

    mul-double v26, v20, v8

    add-double v24, v24, v26

    mul-double v24, v24, v20

    .line 365
    .local v24, "a":D
    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    mul-double v28, v20, v26

    add-double v28, v28, v22

    mul-double v28, v28, v16

    add-double v30, v20, v22

    add-double v32, v20, v22

    mul-double v30, v30, v32

    mul-double v30, v30, v12

    sub-double v28, v28, v30

    mul-double v30, v20, v20

    mul-double v30, v30, v8

    add-double v28, v28, v30

    .line 366
    .local v28, "b":D
    add-double v22, v20, v22

    mul-double v22, v22, v16

    .line 367
    .local v22, "c":D
    mul-double v30, v28, v28

    const-wide/high16 v32, 0x4010000000000000L    # 4.0

    mul-double v32, v32, v24

    mul-double v32, v32, v22

    sub-double v30, v30, v32

    .line 370
    .local v30, "delta":D
    cmpl-double v4, v30, v18

    if-ltz v4, :cond_3

    .line 372
    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v32

    add-double v32, v28, v32

    .line 373
    .local v32, "dplus":D
    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v34

    sub-double v34, v28, v34

    .line 374
    .local v34, "dminus":D
    invoke-static/range {v32 .. v33}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v36

    invoke-static/range {v34 .. v35}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v38

    cmpl-double v4, v36, v38

    if-lez v4, :cond_2

    move-wide/from16 v36, v32

    goto :goto_1

    :cond_2
    move-wide/from16 v36, v34

    .line 375
    .end local v32    # "dplus":D
    .end local v34    # "dminus":D
    .local v36, "denominator":D
    :goto_1
    goto :goto_2

    .line 377
    .end local v36    # "denominator":D
    :cond_3
    mul-double v32, v28, v28

    sub-double v32, v32, v30

    invoke-static/range {v32 .. v33}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v36

    .line 379
    .restart local v36    # "denominator":D
    :goto_2
    cmpl-double v4, v36, v18

    if-eqz v4, :cond_6

    .line 380
    mul-double v26, v26, v22

    sub-double v32, v14, v10

    mul-double v26, v26, v32

    div-double v26, v26, v36

    sub-double v26, v14, v26

    .line 383
    .local v26, "x":D
    :goto_3
    cmpl-double v4, v26, v10

    if-eqz v4, :cond_4

    cmpl-double v4, v26, v14

    if-nez v4, :cond_5

    :cond_4
    goto :goto_4

    :cond_5
    move-wide/from16 v40, v26

    move-wide/from16 v26, v1

    move-wide/from16 v1, v40

    goto :goto_5

    .line 384
    :goto_4
    move-wide/from16 v32, v1

    .end local v1    # "oldx":D
    .local v32, "oldx":D
    iget-wide v1, v0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->absoluteAccuracy:D

    add-double v26, v26, v1

    move-wide/from16 v1, v32

    goto :goto_3

    .line 388
    .end local v26    # "x":D
    .end local v32    # "oldx":D
    .restart local v1    # "oldx":D
    :cond_6
    move-wide/from16 v32, v1

    .end local v1    # "oldx":D
    .restart local v32    # "oldx":D
    invoke-static {}, Lorg/apache/commons/math/util/FastMath;->random()D

    move-result-wide v1

    sub-double v26, p4, p2

    mul-double v1, v1, v26

    add-double v26, p2, v1

    .line 389
    .restart local v26    # "x":D
    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-wide/from16 v40, v26

    move-wide/from16 v26, v1

    move-wide/from16 v1, v40

    .line 391
    .end local v32    # "oldx":D
    .local v1, "x":D
    .local v26, "oldx":D
    :goto_5
    invoke-interface {v5, v1, v2}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v32

    .line 394
    .local v32, "y":D
    iget-wide v4, v0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->relativeAccuracy:D

    invoke-static {v1, v2}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v34

    mul-double v4, v4, v34

    move-wide/from16 v34, v6

    .end local v6    # "x0":D
    .local v34, "x0":D
    iget-wide v6, v0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->absoluteAccuracy:D

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math/util/FastMath;->max(DD)D

    move-result-wide v4

    .line 395
    .local v4, "tolerance":D
    sub-double v6, v1, v26

    invoke-static {v6, v7}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v6

    cmpg-double v6, v6, v4

    if-gtz v6, :cond_7

    .line 396
    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->setResult(DI)V

    .line 397
    iget-wide v6, v0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->result:D

    return-wide v6

    .line 399
    :cond_7
    invoke-static/range {v32 .. v33}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v6

    move-wide/from16 v38, v4

    .end local v4    # "tolerance":D
    .local v38, "tolerance":D
    iget-wide v4, v0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->functionValueAccuracy:D

    cmpg-double v4, v6, v4

    if-gtz v4, :cond_8

    .line 400
    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->setResult(DI)V

    .line 401
    iget-wide v4, v0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->result:D

    return-wide v4

    .line 405
    :cond_8
    move-wide v6, v10

    .line 406
    .end local v34    # "x0":D
    .restart local v6    # "x0":D
    move-wide v8, v12

    .line 407
    move-wide v10, v14

    .line 408
    move-wide/from16 v12, v16

    .line 409
    move-wide v14, v1

    .line 410
    move-wide/from16 v16, v32

    .line 411
    nop

    .line 361
    .end local v20    # "q":D
    .end local v22    # "c":D
    .end local v24    # "a":D
    .end local v26    # "oldx":D
    .end local v28    # "b":D
    .end local v30    # "delta":D
    .end local v32    # "y":D
    .end local v36    # "denominator":D
    .end local v38    # "tolerance":D
    .local v1, "oldx":D
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v5, p1

    goto/16 :goto_0

    :cond_9
    move-wide/from16 v32, v1

    .line 413
    .end local v1    # "oldx":D
    .end local v3    # "i":I
    .local v32, "oldx":D
    new-instance v1, Lorg/apache/commons/math/MaxIterationsExceededException;

    iget v2, v0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->maximalIterationCount:I

    invoke-direct {v1, v2}, Lorg/apache/commons/math/MaxIterationsExceededException;-><init>(I)V

    throw v1
.end method
