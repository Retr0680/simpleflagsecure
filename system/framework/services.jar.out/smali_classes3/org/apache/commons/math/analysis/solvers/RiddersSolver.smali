.class public Lorg/apache/commons/math/analysis/solvers/RiddersSolver;
.super Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;
.source "RiddersSolver.java"


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    const/16 v0, 0x64

    const-wide v1, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;-><init>(ID)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math/analysis/UnivariateRealFunction;)V
    .locals 3
    .param p1, "f"    # Lorg/apache/commons/math/analysis/UnivariateRealFunction;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    const/16 v0, 0x64

    const-wide v1, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;-><init>(Lorg/apache/commons/math/analysis/UnivariateRealFunction;ID)V

    .line 52
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

    .line 67
    iget-object v1, p0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->f:Lorg/apache/commons/math/analysis/UnivariateRealFunction;

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "min":D
    .end local p3    # "max":D
    .local v2, "min":D
    .local v4, "max":D
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math/analysis/solvers/RiddersSolver;->solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D

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

    .line 74
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
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math/analysis/solvers/RiddersSolver;->solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDD)D

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

    .line 152
    invoke-virtual {p0, p1}, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->setMaximalIterationCount(I)V

    .line 153
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
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math/analysis/solvers/RiddersSolver;->solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D

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

    .line 96
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->setMaximalIterationCount(I)V

    .line 97
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    move-wide/from16 v6, p7

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math/analysis/solvers/RiddersSolver;->solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDD)D

    move-result-wide v8

    return-wide v8
.end method

.method public solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D
    .locals 32
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

    .line 178
    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    .line 179
    .local v6, "x1":D
    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v8

    .line 180
    .local v8, "y1":D
    move-wide/from16 v10, p4

    .line 181
    .local v10, "x2":D
    invoke-interface {v5, v10, v11}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v12

    .line 184
    .local v12, "y2":D
    const-wide/16 v14, 0x0

    cmpl-double v0, v8, v14

    if-nez v0, :cond_0

    .line 185
    return-wide p2

    .line 187
    :cond_0
    cmpl-double v0, v12, v14

    if-nez v0, :cond_1

    .line 188
    return-wide p4

    .line 190
    :cond_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->verifyBracketing(DDLorg/apache/commons/math/analysis/UnivariateRealFunction;)V

    .line 192
    const/4 v1, 0x1

    .line 193
    .local v1, "i":I
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 194
    .local v2, "oldx":D
    :goto_0
    iget v4, v0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->maximalIterationCount:I

    if-gt v1, v4, :cond_8

    .line 196
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v18, v6, v10

    move-wide/from16 v20, v14

    mul-double v14, v18, v16

    .line 197
    .local v14, "x3":D
    invoke-interface {v5, v14, v15}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v16

    .line 198
    .local v16, "y3":D
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v18

    move-wide/from16 v22, v2

    .end local v2    # "oldx":D
    .local v22, "oldx":D
    iget-wide v2, v0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->functionValueAccuracy:D

    cmpg-double v2, v18, v2

    if-gtz v2, :cond_2

    .line 199
    invoke-virtual {v0, v14, v15, v1}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->setResult(DI)V

    .line 200
    iget-wide v2, v0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->result:D

    return-wide v2

    .line 202
    :cond_2
    mul-double v2, v8, v12

    mul-double v18, v16, v16

    div-double v2, v2, v18

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v18, v18, v2

    .line 203
    .local v18, "delta":D
    invoke-static {v12, v13}, Lorg/apache/commons/math/util/MathUtils;->sign(D)D

    move-result-wide v2

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math/util/MathUtils;->sign(D)D

    move-result-wide v24

    mul-double v2, v2, v24

    sub-double v24, v14, v6

    mul-double v2, v2, v24

    .line 204
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v24

    div-double v2, v2, v24

    .line 205
    .local v2, "correction":D
    move-wide/from16 v24, v2

    .end local v2    # "correction":D
    .local v24, "correction":D
    sub-double v2, v14, v24

    .line 206
    .local v2, "x":D
    invoke-interface {v5, v2, v3}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v26

    .line 209
    .local v26, "y":D
    iget-wide v4, v0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->relativeAccuracy:D

    invoke-static {v2, v3}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v28

    mul-double v4, v4, v28

    move-wide/from16 v28, v6

    .end local v6    # "x1":D
    .local v28, "x1":D
    iget-wide v6, v0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->absoluteAccuracy:D

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math/util/FastMath;->max(DD)D

    move-result-wide v4

    .line 210
    .local v4, "tolerance":D
    sub-double v6, v2, v22

    invoke-static {v6, v7}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v6

    cmpg-double v6, v6, v4

    if-gtz v6, :cond_3

    .line 211
    invoke-virtual {v0, v2, v3, v1}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->setResult(DI)V

    .line 212
    iget-wide v6, v0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->result:D

    return-wide v6

    .line 214
    :cond_3
    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v6

    move-wide/from16 v30, v4

    .end local v4    # "tolerance":D
    .local v30, "tolerance":D
    iget-wide v4, v0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->functionValueAccuracy:D

    cmpg-double v4, v6, v4

    if-gtz v4, :cond_4

    .line 215
    invoke-virtual {v0, v2, v3, v1}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->setResult(DI)V

    .line 216
    iget-wide v4, v0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->result:D

    return-wide v4

    .line 221
    :cond_4
    cmpl-double v4, v24, v20

    if-lez v4, :cond_6

    .line 222
    invoke-static {v8, v9}, Lorg/apache/commons/math/util/MathUtils;->sign(D)D

    move-result-wide v4

    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math/util/MathUtils;->sign(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    cmpl-double v4, v4, v20

    if-nez v4, :cond_5

    .line 223
    move-wide v4, v2

    .line 224
    .end local v10    # "x2":D
    .local v4, "x2":D
    move-wide/from16 v6, v26

    move-wide v10, v4

    move-wide v12, v6

    move-wide/from16 v6, v28

    .end local v12    # "y2":D
    .local v6, "y2":D
    goto :goto_1

    .line 226
    .end local v4    # "x2":D
    .end local v6    # "y2":D
    .restart local v10    # "x2":D
    .restart local v12    # "y2":D
    :cond_5
    move-wide v4, v2

    .line 227
    .end local v28    # "x1":D
    .local v4, "x1":D
    move-wide v6, v14

    .line 228
    .end local v10    # "x2":D
    .local v6, "x2":D
    move-wide/from16 v8, v26

    .line 229
    move-wide/from16 v10, v16

    move-wide v12, v10

    move-wide v10, v6

    move-wide v6, v4

    .end local v12    # "y2":D
    .local v10, "y2":D
    goto :goto_1

    .line 232
    .end local v4    # "x1":D
    .end local v6    # "x2":D
    .local v10, "x2":D
    .restart local v12    # "y2":D
    .restart local v28    # "x1":D
    :cond_6
    invoke-static {v12, v13}, Lorg/apache/commons/math/util/MathUtils;->sign(D)D

    move-result-wide v4

    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math/util/MathUtils;->sign(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    cmpl-double v4, v4, v20

    if-nez v4, :cond_7

    .line 233
    move-wide v4, v2

    .line 234
    .end local v28    # "x1":D
    .restart local v4    # "x1":D
    move-wide/from16 v6, v26

    move-wide v8, v6

    move-wide v6, v4

    .end local v8    # "y1":D
    .local v6, "y1":D
    goto :goto_1

    .line 236
    .end local v4    # "x1":D
    .end local v6    # "y1":D
    .restart local v8    # "y1":D
    .restart local v28    # "x1":D
    :cond_7
    move-wide v4, v14

    .line 237
    .end local v28    # "x1":D
    .restart local v4    # "x1":D
    move-wide v6, v2

    .line 238
    .end local v10    # "x2":D
    .local v6, "x2":D
    move-wide/from16 v8, v16

    .line 239
    move-wide/from16 v10, v26

    move-wide v12, v10

    move-wide v10, v6

    move-wide v6, v4

    .line 242
    .end local v4    # "x1":D
    .local v6, "x1":D
    .restart local v10    # "x2":D
    :goto_1
    move-wide v4, v2

    .line 243
    .end local v22    # "oldx":D
    .local v4, "oldx":D
    nop

    .end local v2    # "x":D
    .end local v14    # "x3":D
    .end local v16    # "y3":D
    .end local v18    # "delta":D
    .end local v24    # "correction":D
    .end local v26    # "y":D
    .end local v30    # "tolerance":D
    add-int/lit8 v1, v1, 0x1

    .line 244
    move-wide/from16 v14, v20

    move-object/from16 v5, p1

    goto/16 :goto_0

    .line 245
    .end local v4    # "oldx":D
    .local v2, "oldx":D
    :cond_8
    move-wide/from16 v22, v2

    .end local v2    # "oldx":D
    .restart local v22    # "oldx":D
    new-instance v2, Lorg/apache/commons/math/MaxIterationsExceededException;

    iget v3, v0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->maximalIterationCount:I

    invoke-direct {v2, v3}, Lorg/apache/commons/math/MaxIterationsExceededException;-><init>(I)V

    throw v2
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

    .line 121
    move-wide/from16 v6, p6

    invoke-interface/range {p1 .. p3}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v0

    const-wide/16 v8, 0x0

    cmpl-double v0, v0, v8

    if-nez v0, :cond_0

    return-wide p2

    .line 122
    :cond_0
    invoke-interface {p1, p4, p5}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v0

    cmpl-double v0, v0, v8

    if-nez v0, :cond_1

    return-wide p4

    .line 123
    :cond_1
    invoke-interface {p1, v6, v7}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v0

    cmpl-double v0, v0, v8

    if-nez v0, :cond_2

    return-wide v6

    .line 125
    :cond_2
    move-object v0, p0

    move-object v5, p1

    move-wide v1, p2

    move-wide v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->verifyBracketing(DDLorg/apache/commons/math/analysis/UnivariateRealFunction;)V

    .line 126
    move-wide v3, v6

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->verifySequence(DDD)V

    .line 127
    move-object v5, p1

    move-wide/from16 v3, p6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->isBracketing(DDLorg/apache/commons/math/analysis/UnivariateRealFunction;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 128
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math/analysis/solvers/RiddersSolver;->solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D

    move-result-wide v6

    return-wide v6

    .line 130
    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-wide v4, p4

    move-wide/from16 v2, p6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math/analysis/solvers/RiddersSolver;->solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D

    move-result-wide v6

    return-wide v6
.end method
