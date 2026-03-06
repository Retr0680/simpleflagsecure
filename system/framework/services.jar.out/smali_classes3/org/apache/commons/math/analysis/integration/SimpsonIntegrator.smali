.class public Lorg/apache/commons/math/analysis/integration/SimpsonIntegrator;
.super Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;
.source "SimpsonIntegrator.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;-><init>(I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math/analysis/UnivariateRealFunction;)V
    .locals 1
    .param p1, "f"    # Lorg/apache/commons/math/analysis/UnivariateRealFunction;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    const/16 v0, 0x40

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;-><init>(Lorg/apache/commons/math/analysis/UnivariateRealFunction;I)V

    .line 50
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

    .line 63
    iget-object v1, p0, Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;->f:Lorg/apache/commons/math/analysis/UnivariateRealFunction;

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "min":D
    .end local p3    # "max":D
    .local v2, "min":D
    .local v4, "max":D
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math/analysis/integration/SimpsonIntegrator;->integrate(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public integrate(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D
    .locals 22
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

    .line 70
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;->clearResult()V

    .line 71
    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;->verifyInterval(DD)V

    .line 72
    invoke-virtual {v0}, Lorg/apache/commons/math/analysis/integration/SimpsonIntegrator;->verifyIterationCount()V

    .line 74
    new-instance v1, Lorg/apache/commons/math/analysis/integration/TrapezoidIntegrator;

    invoke-direct {v1}, Lorg/apache/commons/math/analysis/integration/TrapezoidIntegrator;-><init>()V

    .line 75
    .local v1, "qtrap":Lorg/apache/commons/math/analysis/integration/TrapezoidIntegrator;
    iget v2, v0, Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;->minimalIterationCount:I

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    const/4 v12, 0x1

    if-ne v2, v12, :cond_0

    .line 76
    const/4 v7, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDI)D

    move-result-wide v13

    mul-double/2addr v13, v10

    const/4 v7, 0x0

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDI)D

    move-result-wide v10

    sub-double/2addr v13, v10

    div-double/2addr v13, v8

    .line 77
    .local v13, "s":D
    invoke-virtual {v0, v13, v14, v12}, Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;->setResult(DI)V

    .line 78
    iget-wide v2, v0, Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;->result:D

    return-wide v2

    .line 81
    .end local v13    # "s":D
    :cond_0
    const-wide/16 v12, 0x0

    .line 82
    .local v12, "olds":D
    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDI)D

    move-result-wide v14

    .line 83
    .local v14, "oldt":D
    const/4 v2, 0x1

    move v7, v2

    .local v7, "i":I
    :goto_0
    iget v2, v0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->maximalIterationCount:I

    if-gt v7, v2, :cond_3

    .line 84
    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDI)D

    move-result-wide v16

    .line 85
    .local v16, "t":D
    mul-double v2, v16, v10

    sub-double/2addr v2, v14

    div-double/2addr v2, v8

    .line 86
    .local v2, "s":D
    iget v4, v0, Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;->minimalIterationCount:I

    if-lt v7, v4, :cond_2

    .line 87
    sub-double v4, v2, v12

    invoke-static {v4, v5}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v4

    .line 88
    .local v4, "delta":D
    iget-wide v8, v0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->relativeAccuracy:D

    .line 89
    invoke-static {v12, v13}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v18

    invoke-static {v2, v3}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v20

    add-double v18, v18, v20

    mul-double v8, v8, v18

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    mul-double v8, v8, v18

    .line 90
    .local v8, "rLimit":D
    cmpg-double v6, v4, v8

    if-lez v6, :cond_1

    iget-wide v10, v0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->absoluteAccuracy:D

    cmpg-double v6, v4, v10

    if-gtz v6, :cond_2

    .line 91
    :cond_1
    invoke-virtual {v0, v2, v3, v7}, Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;->setResult(DI)V

    .line 92
    iget-wide v10, v0, Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;->result:D

    return-wide v10

    .line 95
    .end local v4    # "delta":D
    .end local v8    # "rLimit":D
    :cond_2
    move-wide v12, v2

    .line 96
    move-wide/from16 v14, v16

    .line 83
    .end local v2    # "s":D
    .end local v16    # "t":D
    add-int/lit8 v7, v7, 0x1

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    goto :goto_0

    :cond_3
    nop

    .line 98
    .end local v7    # "i":I
    new-instance v2, Lorg/apache/commons/math/MaxIterationsExceededException;

    iget v3, v0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->maximalIterationCount:I

    invoke-direct {v2, v3}, Lorg/apache/commons/math/MaxIterationsExceededException;-><init>(I)V

    throw v2
.end method

.method protected verifyIterationCount()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 104
    invoke-super {p0}, Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;->verifyIterationCount()V

    .line 106
    iget v0, p0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->maximalIterationCount:I

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    .line 111
    return-void

    .line 107
    :cond_0
    sget-object v0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->INVALID_ITERATIONS_LIMITS:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 109
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 107
    invoke-static {v0, v1}, Lorg/apache/commons/math/MathRuntimeException;->createIllegalArgumentException(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method
