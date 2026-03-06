.class public Lorg/apache/commons/math/analysis/integration/RombergIntegrator;
.super Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;
.source "RombergIntegrator.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;-><init>(I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math/analysis/UnivariateRealFunction;)V
    .locals 1
    .param p1, "f"    # Lorg/apache/commons/math/analysis/UnivariateRealFunction;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;-><init>(Lorg/apache/commons/math/analysis/UnivariateRealFunction;I)V

    .line 51
    return-void
.end method


# virtual methods
.method public integrate(DD)D
    .locals 6
    .param p1, "min"    # D
    .param p3, "max"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/MaxIterationsExceededException;,
            Lorg/apache/commons/math/FunctionEvaluationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    iget-object v1, p0, Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;->f:Lorg/apache/commons/math/analysis/UnivariateRealFunction;

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "min":D
    .end local p3    # "max":D
    .local v2, "min":D
    .local v4, "max":D
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math/analysis/integration/RombergIntegrator;->integrate(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public integrate(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D
    .locals 21
    .param p1, "f"    # Lorg/apache/commons/math/analysis/UnivariateRealFunction;
    .param p2, "min"    # D
    .param p4, "max"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/MaxIterationsExceededException;,
            Lorg/apache/commons/math/FunctionEvaluationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 71
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->maximalIterationCount:I

    add-int/lit8 v1, v1, 0x1

    .line 72
    .local v1, "m":I
    new-array v2, v1, [D

    .line 73
    .local v2, "previousRow":[D
    new-array v3, v1, [D

    .line 75
    .local v3, "currentRow":[D
    invoke-virtual {v0}, Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;->clearResult()V

    .line 76
    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    invoke-virtual {v0, v6, v7, v8, v9}, Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;->verifyInterval(DD)V

    .line 77
    invoke-virtual {v0}, Lorg/apache/commons/math/analysis/integration/RombergIntegrator;->verifyIterationCount()V

    .line 79
    new-instance v4, Lorg/apache/commons/math/analysis/integration/TrapezoidIntegrator;

    invoke-direct {v4}, Lorg/apache/commons/math/analysis/integration/TrapezoidIntegrator;-><init>()V

    .line 80
    .local v4, "qtrap":Lorg/apache/commons/math/analysis/integration/TrapezoidIntegrator;
    const/4 v10, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v10}, Lorg/apache/commons/math/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDI)D

    move-result-wide v10

    const/4 v12, 0x0

    aput-wide v10, v3, v12

    .line 81
    aget-wide v5, v3, v12

    .line 82
    .local v5, "olds":D
    const/4 v7, 0x1

    move v10, v7

    move-wide v13, v5

    .end local v5    # "olds":D
    .local v10, "i":I
    .local v13, "olds":D
    :goto_0
    iget v5, v0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->maximalIterationCount:I

    if-gt v10, v5, :cond_4

    .line 85
    move-object v11, v2

    .line 86
    .local v11, "tmpRow":[D
    move-object v2, v3

    .line 87
    move-object v3, v11

    .line 89
    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    invoke-virtual/range {v4 .. v10}, Lorg/apache/commons/math/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDI)D

    move-result-wide v15

    aput-wide v15, v3, v12

    .line 90
    const/4 v5, 0x1

    .local v5, "j":I
    :goto_1
    if-gt v5, v10, :cond_0

    .line 92
    mul-int/lit8 v6, v5, 0x2

    const-wide/16 v7, 0x1

    shl-long v15, v7, v6

    sub-long v6, v15, v7

    long-to-double v6, v6

    .line 93
    .local v6, "r":D
    add-int/lit8 v8, v5, -0x1

    aget-wide v8, v3, v8

    .line 94
    .local v8, "tIJm1":D
    add-int/lit8 v15, v5, -0x1

    aget-wide v15, v2, v15

    sub-double v15, v8, v15

    div-double/2addr v15, v6

    add-double/2addr v15, v8

    aput-wide v15, v3, v5

    .line 90
    .end local v6    # "r":D
    .end local v8    # "tIJm1":D
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    nop

    .line 96
    .end local v5    # "j":I
    aget-wide v5, v3, v10

    .line 97
    .local v5, "s":D
    iget v7, v0, Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;->minimalIterationCount:I

    if-lt v10, v7, :cond_3

    .line 98
    sub-double v7, v5, v13

    invoke-static {v7, v8}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v7

    .line 99
    .local v7, "delta":D
    move-wide v15, v13

    .end local v13    # "olds":D
    .local v15, "olds":D
    iget-wide v12, v0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->relativeAccuracy:D

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v17

    invoke-static {v5, v6}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v19

    add-double v17, v17, v19

    mul-double v12, v12, v17

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    mul-double v12, v12, v17

    .line 100
    .local v12, "rLimit":D
    cmpg-double v14, v7, v12

    if-lez v14, :cond_2

    move v14, v10

    .end local v10    # "i":I
    .local v14, "i":I
    iget-wide v9, v0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->absoluteAccuracy:D

    cmpg-double v9, v7, v9

    if-gtz v9, :cond_1

    goto :goto_2

    :cond_1
    move v9, v1

    move v10, v14

    move-object v14, v2

    goto :goto_3

    .end local v14    # "i":I
    .restart local v10    # "i":I
    :cond_2
    move v14, v10

    .line 101
    .end local v10    # "i":I
    .restart local v14    # "i":I
    :goto_2
    move v10, v14

    .end local v14    # "i":I
    .restart local v10    # "i":I
    invoke-virtual {v0, v5, v6, v10}, Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;->setResult(DI)V

    .line 102
    move v9, v1

    move-object v14, v2

    .end local v1    # "m":I
    .end local v2    # "previousRow":[D
    .local v9, "m":I
    .local v14, "previousRow":[D
    iget-wide v1, v0, Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;->result:D

    return-wide v1

    .line 97
    .end local v7    # "delta":D
    .end local v9    # "m":I
    .end local v12    # "rLimit":D
    .end local v14    # "previousRow":[D
    .end local v15    # "olds":D
    .restart local v1    # "m":I
    .restart local v2    # "previousRow":[D
    .restart local v13    # "olds":D
    :cond_3
    move v9, v1

    move-wide v15, v13

    move-object v14, v2

    .line 105
    .end local v1    # "m":I
    .end local v2    # "previousRow":[D
    .end local v13    # "olds":D
    .restart local v9    # "m":I
    .restart local v14    # "previousRow":[D
    .restart local v15    # "olds":D
    :goto_3
    nop

    .line 82
    .end local v11    # "tmpRow":[D
    .end local v15    # "olds":D
    .local v5, "olds":D
    add-int/lit8 v10, v10, 0x1

    move v1, v9

    move-object v2, v14

    const/4 v12, 0x0

    move-wide v13, v5

    goto :goto_0

    .end local v5    # "olds":D
    .end local v9    # "m":I
    .end local v14    # "previousRow":[D
    .restart local v1    # "m":I
    .restart local v2    # "previousRow":[D
    .restart local v13    # "olds":D
    :cond_4
    move v9, v1

    .line 107
    .end local v1    # "m":I
    .end local v10    # "i":I
    .restart local v9    # "m":I
    new-instance v1, Lorg/apache/commons/math/MaxIterationsExceededException;

    iget v5, v0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->maximalIterationCount:I

    invoke-direct {v1, v5}, Lorg/apache/commons/math/MaxIterationsExceededException;-><init>(I)V

    throw v1
.end method

.method protected verifyIterationCount()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 113
    invoke-super {p0}, Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;->verifyIterationCount()V

    .line 115
    iget v0, p0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->maximalIterationCount:I

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    .line 120
    return-void

    .line 116
    :cond_0
    sget-object v0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->INVALID_ITERATIONS_LIMITS:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 118
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 116
    invoke-static {v0, v1}, Lorg/apache/commons/math/MathRuntimeException;->createIllegalArgumentException(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method
