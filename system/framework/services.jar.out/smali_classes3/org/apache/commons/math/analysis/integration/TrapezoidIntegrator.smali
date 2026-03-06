.class public Lorg/apache/commons/math/analysis/integration/TrapezoidIntegrator;
.super Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;
.source "TrapezoidIntegrator.java"


# instance fields
.field private s:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;-><init>(I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math/analysis/UnivariateRealFunction;)V
    .locals 1
    .param p1, "f"    # Lorg/apache/commons/math/analysis/UnivariateRealFunction;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    const/16 v0, 0x40

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;-><init>(Lorg/apache/commons/math/analysis/UnivariateRealFunction;I)V

    .line 52
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

    .line 103
    iget-object v1, p0, Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;->f:Lorg/apache/commons/math/analysis/UnivariateRealFunction;

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "min":D
    .end local p3    # "max":D
    .local v2, "min":D
    .local v4, "max":D
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math/analysis/integration/TrapezoidIntegrator;->integrate(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public integrate(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D
    .locals 15
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

    .line 110
    invoke-virtual {p0}, Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;->clearResult()V

    .line 111
    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;->verifyInterval(DD)V

    .line 112
    invoke-virtual {p0}, Lorg/apache/commons/math/analysis/integration/TrapezoidIntegrator;->verifyIterationCount()V

    .line 114
    const/4 v6, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDI)D

    move-result-wide v6

    .line 115
    .local v6, "oldt":D
    const/4 v1, 0x1

    move-wide v7, v6

    move v6, v1

    .local v6, "i":I
    .local v7, "oldt":D
    :goto_0
    iget v1, p0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->maximalIterationCount:I

    if-gt v6, v1, :cond_2

    .line 116
    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDI)D

    move-result-wide v9

    .line 117
    .local v9, "t":D
    iget v1, p0, Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;->minimalIterationCount:I

    if-lt v6, v1, :cond_1

    .line 118
    sub-double v1, v9, v7

    invoke-static {v1, v2}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v1

    .line 119
    .local v1, "delta":D
    iget-wide v3, p0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->relativeAccuracy:D

    .line 120
    invoke-static {v7, v8}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v11

    invoke-static {v9, v10}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v13

    add-double/2addr v11, v13

    mul-double/2addr v3, v11

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v3, v11

    .line 121
    .local v3, "rLimit":D
    cmpg-double v5, v1, v3

    if-lez v5, :cond_0

    iget-wide v11, p0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->absoluteAccuracy:D

    cmpg-double v5, v1, v11

    if-gtz v5, :cond_1

    .line 122
    :cond_0
    invoke-virtual {p0, v9, v10, v6}, Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;->setResult(DI)V

    .line 123
    iget-wide v11, p0, Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;->result:D

    return-wide v11

    .line 126
    .end local v1    # "delta":D
    .end local v3    # "rLimit":D
    :cond_1
    move-wide v7, v9

    .line 115
    .end local v9    # "t":D
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 128
    .end local v6    # "i":I
    new-instance v1, Lorg/apache/commons/math/MaxIterationsExceededException;

    iget v2, p0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->maximalIterationCount:I

    invoke-direct {v1, v2}, Lorg/apache/commons/math/MaxIterationsExceededException;-><init>(I)V

    throw v1
.end method

.method stage(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDI)D
    .locals 21
    .param p1, "f"    # Lorg/apache/commons/math/analysis/UnivariateRealFunction;
    .param p2, "min"    # D
    .param p4, "max"    # D
    .param p6, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/FunctionEvaluationException;
        }
    .end annotation

    .line 81
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    if-nez p6, :cond_0

    .line 82
    sub-double v6, v2, p2

    mul-double/2addr v6, v4

    invoke-interface/range {p1 .. p3}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v4

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v8

    add-double/2addr v4, v8

    mul-double/2addr v6, v4

    iput-wide v6, v0, Lorg/apache/commons/math/analysis/integration/TrapezoidIntegrator;->s:D

    .line 83
    iget-wide v4, v0, Lorg/apache/commons/math/analysis/integration/TrapezoidIntegrator;->s:D

    return-wide v4

    .line 85
    :cond_0
    add-int/lit8 v6, p6, -0x1

    const-wide/16 v7, 0x1

    shl-long v9, v7, v6

    .line 86
    .local v9, "np":J
    const-wide/16 v11, 0x0

    .line 87
    .local v11, "sum":D
    sub-double v13, v2, p2

    move-wide v15, v4

    long-to-double v4, v9

    div-double/2addr v13, v4

    .line 88
    .local v13, "spacing":D
    mul-double v4, v13, v15

    add-double v4, p2, v4

    .line 89
    .local v4, "x":D
    const-wide/16 v17, 0x0

    .local v17, "i":J
    :goto_0
    cmp-long v6, v17, v9

    if-gez v6, :cond_1

    .line 90
    invoke-interface {v1, v4, v5}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v19

    add-double v11, v11, v19

    .line 91
    add-double/2addr v4, v13

    .line 89
    add-long v17, v17, v7

    goto :goto_0

    :cond_1
    nop

    .line 94
    .end local v17    # "i":J
    iget-wide v6, v0, Lorg/apache/commons/math/analysis/integration/TrapezoidIntegrator;->s:D

    mul-double v17, v11, v13

    add-double v6, v6, v17

    mul-double/2addr v6, v15

    iput-wide v6, v0, Lorg/apache/commons/math/analysis/integration/TrapezoidIntegrator;->s:D

    .line 95
    iget-wide v6, v0, Lorg/apache/commons/math/analysis/integration/TrapezoidIntegrator;->s:D

    return-wide v6
.end method

.method protected verifyIterationCount()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 134
    invoke-super {p0}, Lorg/apache/commons/math/analysis/integration/UnivariateRealIntegratorImpl;->verifyIterationCount()V

    .line 136
    iget v0, p0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->maximalIterationCount:I

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    .line 141
    return-void

    .line 137
    :cond_0
    sget-object v0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->INVALID_ITERATIONS_LIMITS:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 139
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 137
    invoke-static {v0, v1}, Lorg/apache/commons/math/MathRuntimeException;->createIllegalArgumentException(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method
