.class public Lorg/apache/commons/math/analysis/solvers/BrentSolver;
.super Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;
.source "BrentSolver.java"


# static fields
.field public static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6

.field public static final DEFAULT_MAXIMUM_ITERATIONS:I = 0x64

.field private static final serialVersionUID:J = 0x6ac8a1c1b953da2bL


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    const/16 v0, 0x64

    const-wide v1, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;-><init>(ID)V

    .line 72
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "absoluteAccuracy"    # D

    .line 81
    const/16 v0, 0x64

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;-><init>(ID)V

    .line 82
    return-void
.end method

.method public constructor <init>(ID)V
    .locals 0
    .param p1, "maximumIterations"    # I
    .param p2, "absoluteAccuracy"    # D

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;-><init>(ID)V

    .line 93
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math/analysis/UnivariateRealFunction;)V
    .locals 3
    .param p1, "f"    # Lorg/apache/commons/math/analysis/UnivariateRealFunction;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    const/16 v0, 0x64

    const-wide v1, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;-><init>(Lorg/apache/commons/math/analysis/UnivariateRealFunction;ID)V

    .line 63
    return-void
.end method

.method private solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDDDDD)D
    .locals 37
    .param p1, "f"    # Lorg/apache/commons/math/analysis/UnivariateRealFunction;
    .param p2, "x0"    # D
    .param p4, "y0"    # D
    .param p6, "x1"    # D
    .param p8, "y1"    # D
    .param p10, "x2"    # D
    .param p12, "y2"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/MaxIterationsExceededException;,
            Lorg/apache/commons/math/FunctionEvaluationException;
        }
    .end annotation

    .line 309
    move-object/from16 v0, p0

    sub-double v1, p6, p2

    .line 310
    .local v1, "delta":D
    move-wide v3, v1

    .line 312
    .local v3, "oldDelta":D
    const/4 v5, 0x0

    move-wide/from16 v7, p8

    move-wide/from16 v9, p10

    move-wide/from16 v11, p12

    move-wide v13, v1

    move-wide v15, v3

    move v1, v5

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    .line 313
    .end local p4    # "y0":D
    .end local p6    # "x1":D
    .end local p8    # "y1":D
    .end local p10    # "x2":D
    .end local p12    # "y2":D
    .local v1, "i":I
    .local v3, "y0":D
    .local v5, "x1":D
    .local v7, "y1":D
    .local v9, "x2":D
    .local v11, "y2":D
    .local v13, "delta":D
    .local v15, "oldDelta":D
    :goto_0
    iget v2, v0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->maximalIterationCount:I

    if-ge v1, v2, :cond_f

    .line 314
    invoke-static {v11, v12}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v17

    invoke-static {v7, v8}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v19

    cmpg-double v2, v17, v19

    if-gez v2, :cond_0

    .line 316
    move-wide/from16 v17, v5

    .line 317
    .end local p2    # "x0":D
    .local v17, "x0":D
    move-wide v5, v9

    .line 318
    move-wide/from16 v9, v17

    .line 319
    move-wide v3, v7

    .line 320
    move-wide v7, v11

    .line 321
    move-wide v11, v3

    goto :goto_1

    .line 314
    .end local v17    # "x0":D
    .restart local p2    # "x0":D
    :cond_0
    move-wide/from16 v17, p2

    .line 323
    .end local p2    # "x0":D
    .restart local v17    # "x0":D
    :goto_1
    invoke-static {v7, v8}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v19

    move-wide/from16 p2, v3

    .end local v3    # "y0":D
    .local p2, "y0":D
    iget-wide v2, v0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->functionValueAccuracy:D

    cmpg-double v2, v19, v2

    if-gtz v2, :cond_1

    .line 327
    invoke-virtual {v0, v5, v6, v1}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->setResult(DI)V

    .line 328
    iget-wide v2, v0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->result:D

    return-wide v2

    .line 330
    :cond_1
    sub-double v2, v9, v5

    .line 331
    .local v2, "dx":D
    move-wide/from16 p4, v2

    .end local v2    # "dx":D
    .local p4, "dx":D
    iget-wide v2, v0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->relativeAccuracy:D

    .line 332
    invoke-static {v5, v6}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v19

    mul-double v2, v2, v19

    move-wide/from16 p6, v7

    .end local v7    # "y1":D
    .local p6, "y1":D
    iget-wide v7, v0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->absoluteAccuracy:D

    invoke-static {v2, v3, v7, v8}, Lorg/apache/commons/math/util/FastMath;->max(DD)D

    move-result-wide v2

    .line 333
    .local v2, "tolerance":D
    invoke-static/range {p4 .. p5}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v7

    cmpg-double v4, v7, v2

    if-gtz v4, :cond_2

    .line 334
    invoke-virtual {v0, v5, v6, v1}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->setResult(DI)V

    .line 335
    iget-wide v7, v0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->result:D

    return-wide v7

    .line 337
    :cond_2
    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v7

    cmpg-double v4, v7, v2

    const-wide/16 v19, 0x0

    if-ltz v4, :cond_8

    .line 338
    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v21

    invoke-static/range {p6 .. p7}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v23

    cmpg-double v4, v21, v23

    if-gtz v4, :cond_3

    move/from16 v23, v1

    move-wide/from16 p10, v2

    const-wide/high16 p8, 0x3fe0000000000000L    # 0.5

    goto/16 :goto_5

    .line 343
    :cond_3
    div-double v21, p6, p2

    .line 349
    .local v21, "r3":D
    cmpl-double v4, v17, v9

    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    if-nez v4, :cond_4

    .line 351
    mul-double v25, p4, v21

    .line 352
    .local v25, "p":D
    sub-double v23, v23, v21

    move-wide/from16 p10, v2

    move-wide/from16 v7, v23

    move/from16 v23, v1

    move-wide/from16 v1, v25

    const-wide/high16 p8, 0x3fe0000000000000L    # 0.5

    .local v23, "p1":D
    goto :goto_2

    .line 355
    .end local v23    # "p1":D
    .end local v25    # "p":D
    :cond_4
    div-double v25, p2, v11

    .line 356
    .local v25, "r1":D
    div-double v27, p6, v11

    .line 357
    .local v27, "r2":D
    mul-double v29, p4, v25

    sub-double v31, v25, v27

    mul-double v29, v29, v31

    sub-double v31, v5, v17

    sub-double v33, v27, v23

    mul-double v31, v31, v33

    sub-double v29, v29, v31

    mul-double v29, v29, v21

    .line 358
    .local v29, "p":D
    sub-double v31, v25, v23

    sub-double v33, v27, v23

    mul-double v31, v31, v33

    sub-double v23, v21, v23

    mul-double v23, v23, v31

    move-wide/from16 p10, v2

    move-wide/from16 v7, v23

    move/from16 v23, v1

    move-wide/from16 v1, v29

    const-wide/high16 p8, 0x3fe0000000000000L    # 0.5

    .line 360
    .end local v2    # "tolerance":D
    .end local v25    # "r1":D
    .end local v27    # "r2":D
    .end local v29    # "p":D
    .local v1, "p":D
    .local v7, "p1":D
    .local v23, "i":I
    .local p10, "tolerance":D
    :goto_2
    cmpl-double v3, v1, v19

    if-lez v3, :cond_5

    .line 361
    neg-double v7, v7

    goto :goto_3

    .line 363
    :cond_5
    neg-double v1, v1

    .line 365
    :goto_3
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v1

    const-wide/high16 v24, 0x3ff8000000000000L    # 1.5

    mul-double v24, v24, p4

    mul-double v24, v24, v7

    mul-double v26, p10, v7

    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v26

    sub-double v24, v24, v26

    cmpl-double v3, v3, v24

    nop

    if-gez v3, :cond_7

    mul-double v3, v15, p8

    mul-double/2addr v3, v7

    .line 366
    invoke-static {v3, v4}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v3

    cmpl-double v3, v1, v3

    if-ltz v3, :cond_6

    goto :goto_4

    .line 373
    :cond_6
    move-wide v3, v13

    .line 374
    .end local v15    # "oldDelta":D
    .local v3, "oldDelta":D
    div-double v13, v1, v7

    goto :goto_6

    .line 370
    .end local v3    # "oldDelta":D
    .restart local v15    # "oldDelta":D
    :cond_7
    :goto_4
    mul-double v13, p4, p8

    .line 371
    move-wide v3, v13

    .end local v15    # "oldDelta":D
    .restart local v3    # "oldDelta":D
    goto :goto_6

    .line 337
    .end local v3    # "oldDelta":D
    .end local v7    # "p1":D
    .end local v21    # "r3":D
    .end local v23    # "i":I
    .end local p10    # "tolerance":D
    .local v1, "i":I
    .restart local v2    # "tolerance":D
    .restart local v15    # "oldDelta":D
    :cond_8
    move/from16 v23, v1

    move-wide/from16 p10, v2

    const-wide/high16 p8, 0x3fe0000000000000L    # 0.5

    .line 340
    .end local v1    # "i":I
    .end local v2    # "tolerance":D
    .restart local v23    # "i":I
    .restart local p10    # "tolerance":D
    :goto_5
    mul-double v13, p4, p8

    .line 341
    move-wide v3, v13

    .line 378
    .end local v15    # "oldDelta":D
    .restart local v3    # "oldDelta":D
    :goto_6
    move-wide v1, v5

    .line 379
    .end local v17    # "x0":D
    .local v1, "x0":D
    move-wide/from16 v7, p6

    .line 381
    .end local p2    # "y0":D
    .local v7, "y0":D
    invoke-static {v13, v14}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v15

    cmpl-double v15, v15, p10

    if-lez v15, :cond_9

    .line 382
    add-double/2addr v5, v13

    goto :goto_7

    .line 383
    :cond_9
    cmpl-double v15, p4, v19

    if-lez v15, :cond_a

    .line 384
    mul-double v15, p10, p8

    add-double/2addr v5, v15

    goto :goto_7

    .line 385
    :cond_a
    cmpg-double v15, p4, v19

    if-gtz v15, :cond_b

    .line 386
    mul-double v15, p10, p8

    sub-double/2addr v5, v15

    .line 388
    :cond_b
    :goto_7
    move-object/from16 v15, p1

    invoke-interface {v15, v5, v6}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v16

    .line 389
    .end local p6    # "y1":D
    .local v16, "y1":D
    cmpl-double v18, v16, v19

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-wide/from16 p2, v1

    if-lez v18, :cond_c

    move/from16 v1, v22

    goto :goto_8

    :cond_c
    move/from16 v1, v21

    .end local v1    # "x0":D
    .local p2, "x0":D
    :goto_8
    cmpl-double v2, v11, v19

    if-lez v2, :cond_d

    move/from16 v2, v22

    goto :goto_9

    :cond_d
    move/from16 v2, v21

    :goto_9
    if-ne v1, v2, :cond_e

    .line 390
    move-wide/from16 v1, p2

    .line 391
    .end local v9    # "x2":D
    .local v1, "x2":D
    move-wide v9, v7

    .line 392
    .end local v11    # "y2":D
    .local v9, "y2":D
    sub-double v11, v5, p2

    .line 393
    .end local v13    # "delta":D
    .local v11, "delta":D
    move-wide v3, v11

    move-wide v13, v11

    move-wide v11, v9

    move-wide v9, v1

    .line 395
    .end local v1    # "x2":D
    .local v9, "x2":D
    .local v11, "y2":D
    .restart local v13    # "delta":D
    :cond_e
    nop

    .end local p4    # "dx":D
    .end local p10    # "tolerance":D
    add-int/lit8 v1, v23, 0x1

    .line 396
    .end local v23    # "i":I
    .local v1, "i":I
    move-wide/from16 v35, v16

    move-wide v15, v3

    move-wide v3, v7

    move-wide/from16 v7, v35

    goto/16 :goto_0

    .line 397
    .end local v16    # "y1":D
    .local v3, "y0":D
    .local v7, "y1":D
    .restart local v15    # "oldDelta":D
    :cond_f
    move/from16 v23, v1

    .end local v1    # "i":I
    .restart local v23    # "i":I
    new-instance v1, Lorg/apache/commons/math/MaxIterationsExceededException;

    iget v2, v0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->maximalIterationCount:I

    invoke-direct {v1, v2}, Lorg/apache/commons/math/MaxIterationsExceededException;-><init>(I)V

    throw v1
.end method


# virtual methods
.method public solve(DD)D
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

    .line 99
    iget-object v1, p0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->f:Lorg/apache/commons/math/analysis/UnivariateRealFunction;

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "min":D
    .end local p3    # "max":D
    .local v2, "min":D
    .local v4, "max":D
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math/analysis/solvers/BrentSolver;->solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D

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
            Lorg/apache/commons/math/MaxIterationsExceededException;,
            Lorg/apache/commons/math/FunctionEvaluationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
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
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math/analysis/solvers/BrentSolver;->solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDD)D

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

    .line 284
    invoke-virtual {p0, p1}, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->setMaximalIterationCount(I)V

    .line 285
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
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math/analysis/solvers/BrentSolver;->solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D

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

    .line 199
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->setMaximalIterationCount(I)V

    .line 200
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    move-wide/from16 v6, p7

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math/analysis/solvers/BrentSolver;->solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDD)D

    move-result-wide v8

    return-wide v8
.end method

.method public solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D
    .locals 20
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

    .line 225
    move-object/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v6, p4

    invoke-virtual {v0}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->clearResult()V

    .line 226
    invoke-virtual {v0, v2, v3, v6, v7}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->verifyInterval(DD)V

    .line 228
    const-wide/high16 v14, 0x7ff8000000000000L    # Double.NaN

    .line 230
    .local v14, "ret":D
    invoke-interface/range {p1 .. p3}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v4

    .line 231
    .local v4, "yMin":D
    move-object/from16 v1, p1

    invoke-interface {v1, v6, v7}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v8

    .line 234
    .local v8, "yMax":D
    mul-double v16, v4, v8

    .line 235
    .local v16, "sign":D
    const-wide/16 v10, 0x0

    cmpl-double v12, v16, v10

    if-lez v12, :cond_2

    .line 237
    invoke-static {v4, v5}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v10

    iget-wide v12, v0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->functionValueAccuracy:D

    cmpg-double v10, v10, v12

    const/4 v11, 0x0

    if-gtz v10, :cond_0

    .line 238
    invoke-virtual {v0, v2, v3, v11}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->setResult(DI)V

    .line 239
    move-wide/from16 v10, p2

    .end local v14    # "ret":D
    .local v10, "ret":D
    goto :goto_0

    .line 240
    .end local v10    # "ret":D
    .restart local v14    # "ret":D
    :cond_0
    invoke-static {v8, v9}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v12

    move-wide/from16 v18, v12

    iget-wide v11, v0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->functionValueAccuracy:D

    cmpg-double v11, v18, v11

    if-gtz v11, :cond_1

    .line 241
    const/4 v10, 0x0

    invoke-virtual {v0, v6, v7, v10}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->setResult(DI)V

    .line 242
    move-wide/from16 v10, p4

    .end local v14    # "ret":D
    .restart local v10    # "ret":D
    goto :goto_0

    .line 245
    .end local v10    # "ret":D
    .restart local v14    # "ret":D
    :cond_1
    sget-object v10, Lorg/apache/commons/math/exception/util/LocalizedFormats;->SAME_SIGN_AT_ENDPOINTS:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 246
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v11, v12, v13, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 245
    invoke-static {v10, v0}, Lorg/apache/commons/math/MathRuntimeException;->createIllegalArgumentException(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 248
    :cond_2
    cmpg-double v0, v16, v10

    if-gez v0, :cond_3

    .line 250
    move-wide/from16 v10, p2

    move-wide v12, v4

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v13}, Lorg/apache/commons/math/analysis/solvers/BrentSolver;->solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDDDDD)D

    move-result-wide v10

    .end local v14    # "ret":D
    .restart local v10    # "ret":D
    goto :goto_0

    .line 253
    .end local v10    # "ret":D
    .restart local v14    # "ret":D
    :cond_3
    cmpl-double v0, v4, v10

    if-nez v0, :cond_4

    .line 254
    move-wide/from16 v10, p2

    .end local v14    # "ret":D
    .restart local v10    # "ret":D
    goto :goto_0

    .line 256
    .end local v10    # "ret":D
    .restart local v14    # "ret":D
    :cond_4
    move-wide/from16 v10, p4

    .line 260
    .end local v14    # "ret":D
    .restart local v10    # "ret":D
    :goto_0
    return-wide v10
.end method

.method public solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDD)D
    .locals 18
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

    .line 133
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v14, p4

    move-wide/from16 v6, p6

    invoke-virtual {v0}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->clearResult()V

    .line 134
    cmpg-double v4, v6, v2

    if-ltz v4, :cond_5

    cmpl-double v4, v6, v14

    if-gtz v4, :cond_5

    .line 141
    invoke-interface {v1, v6, v7}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v8

    .line 142
    .local v8, "yInitial":D
    invoke-static {v8, v9}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v4

    iget-wide v10, v0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->functionValueAccuracy:D

    cmpg-double v4, v4, v10

    const/4 v5, 0x0

    if-gtz v4, :cond_0

    .line 143
    invoke-virtual {v0, v6, v7, v5}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->setResult(DI)V

    .line 144
    iget-wide v4, v0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->result:D

    return-wide v4

    .line 148
    :cond_0
    invoke-interface/range {p1 .. p3}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v10

    .line 149
    .local v10, "yMin":D
    invoke-static {v10, v11}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v12

    iget-wide v5, v0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->functionValueAccuracy:D

    cmpg-double v5, v12, v5

    if-gtz v5, :cond_1

    .line 150
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->setResult(DI)V

    .line 151
    iget-wide v4, v0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->result:D

    return-wide v4

    .line 155
    :cond_1
    mul-double v5, v8, v10

    const-wide/16 v12, 0x0

    cmpg-double v5, v5, v12

    if-gez v5, :cond_2

    .line 156
    move-wide v4, v10

    .end local v10    # "yMin":D
    .local v4, "yMin":D
    move-wide/from16 v10, p2

    move-wide v12, v4

    move-wide/from16 v6, p6

    invoke-direct/range {v0 .. v13}, Lorg/apache/commons/math/analysis/solvers/BrentSolver;->solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDDDDD)D

    move-result-wide v10

    move-wide/from16 v16, v4

    .end local v4    # "yMin":D
    .local v16, "yMin":D
    return-wide v10

    .line 160
    .end local v16    # "yMin":D
    .restart local v10    # "yMin":D
    :cond_2
    move-wide/from16 v16, v10

    .end local v10    # "yMin":D
    .restart local v16    # "yMin":D
    move-wide v4, v8

    const/4 v2, 0x0

    .end local v8    # "yInitial":D
    .local v4, "yInitial":D
    invoke-interface {v1, v14, v15}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v8

    .line 161
    .local v8, "yMax":D
    invoke-static {v8, v9}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v6

    iget-wide v10, v0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->functionValueAccuracy:D

    cmpg-double v3, v6, v10

    if-gtz v3, :cond_3

    .line 162
    invoke-virtual {v0, v14, v15, v2}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->setResult(DI)V

    .line 163
    iget-wide v2, v0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->result:D

    return-wide v2

    .line 167
    :cond_3
    mul-double v2, v4, v8

    cmpg-double v2, v2, v12

    if-gez v2, :cond_4

    .line 168
    move-wide/from16 v10, p6

    move-wide v12, v4

    move-wide/from16 v2, p6

    move-wide v6, v14

    invoke-direct/range {v0 .. v13}, Lorg/apache/commons/math/analysis/solvers/BrentSolver;->solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDDDDD)D

    move-result-wide v10

    move-wide v0, v8

    move-wide v8, v4

    .end local v4    # "yInitial":D
    .local v0, "yMax":D
    .local v8, "yInitial":D
    return-wide v10

    .line 171
    .end local v0    # "yMax":D
    .restart local v4    # "yInitial":D
    .local v8, "yMax":D
    :cond_4
    move-wide v0, v8

    move-wide v8, v4

    .end local v4    # "yInitial":D
    .restart local v0    # "yMax":D
    .local v8, "yInitial":D
    sget-object v2, Lorg/apache/commons/math/exception/util/LocalizedFormats;->SAME_SIGN_AT_ENDPOINTS:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 172
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    .line 171
    invoke-static {v2, v3}, Lorg/apache/commons/math/MathRuntimeException;->createIllegalArgumentException(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 135
    .end local v0    # "yMax":D
    .end local v8    # "yInitial":D
    .end local v16    # "yMin":D
    :cond_5
    sget-object v0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->INVALID_INTERVAL_INITIAL_VALUE_PARAMETERS:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 137
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static/range {p6 .. p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 135
    invoke-static {v0, v1}, Lorg/apache/commons/math/MathRuntimeException;->createIllegalArgumentException(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method
