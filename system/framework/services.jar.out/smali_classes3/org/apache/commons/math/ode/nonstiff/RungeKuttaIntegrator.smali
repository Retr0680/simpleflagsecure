.class public abstract Lorg/apache/commons/math/ode/nonstiff/RungeKuttaIntegrator;
.super Lorg/apache/commons/math/ode/AbstractIntegrator;
.source "RungeKuttaIntegrator.java"


# instance fields
.field private final a:[[D

.field private final b:[D

.field private final c:[D

.field private final prototype:Lorg/apache/commons/math/ode/nonstiff/RungeKuttaStepInterpolator;

.field private final step:D


# direct methods
.method protected constructor <init>(Ljava/lang/String;[D[[D[DLorg/apache/commons/math/ode/nonstiff/RungeKuttaStepInterpolator;D)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "c"    # [D
    .param p3, "a"    # [[D
    .param p4, "b"    # [D
    .param p5, "prototype"    # Lorg/apache/commons/math/ode/nonstiff/RungeKuttaStepInterpolator;
    .param p6, "step"    # D

    .line 86
    invoke-direct {p0, p1}, Lorg/apache/commons/math/ode/AbstractIntegrator;-><init>(Ljava/lang/String;)V

    .line 87
    iput-object p2, p0, Lorg/apache/commons/math/ode/nonstiff/RungeKuttaIntegrator;->c:[D

    .line 88
    iput-object p3, p0, Lorg/apache/commons/math/ode/nonstiff/RungeKuttaIntegrator;->a:[[D

    .line 89
    iput-object p4, p0, Lorg/apache/commons/math/ode/nonstiff/RungeKuttaIntegrator;->b:[D

    .line 90
    iput-object p5, p0, Lorg/apache/commons/math/ode/nonstiff/RungeKuttaIntegrator;->prototype:Lorg/apache/commons/math/ode/nonstiff/RungeKuttaStepInterpolator;

    .line 91
    invoke-static {p6, p7}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math/ode/nonstiff/RungeKuttaIntegrator;->step:D

    .line 92
    return-void
.end method


# virtual methods
.method public integrate(Lorg/apache/commons/math/ode/FirstOrderDifferentialEquations;D[DD[D)D
    .locals 23
    .param p1, "equations"    # Lorg/apache/commons/math/ode/FirstOrderDifferentialEquations;
    .param p2, "t0"    # D
    .param p4, "y0"    # [D
    .param p5, "t"    # D
    .param p7, "y"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/ode/DerivativeException;,
            Lorg/apache/commons/math/ode/IntegratorException;
        }
    .end annotation

    .line 100
    move-object/from16 v0, p0

    move-wide/from16 v6, p2

    move-object/from16 v8, p4

    move-object/from16 v2, p7

    invoke-virtual/range {p0 .. p7}, Lorg/apache/commons/math/ode/AbstractIntegrator;->sanityChecks(Lorg/apache/commons/math/ode/FirstOrderDifferentialEquations;D[DD[D)V

    .line 101
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math/ode/AbstractIntegrator;->setEquations(Lorg/apache/commons/math/ode/FirstOrderDifferentialEquations;)V

    .line 102
    invoke-virtual {v0}, Lorg/apache/commons/math/ode/AbstractIntegrator;->resetEvaluations()V

    .line 103
    cmpl-double v1, p5, v6

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-lez v1, :cond_0

    move v1, v9

    goto :goto_0

    :cond_0
    move v1, v10

    :goto_0
    move v11, v1

    .line 106
    .local v11, "forward":Z
    iget-object v1, v0, Lorg/apache/commons/math/ode/nonstiff/RungeKuttaIntegrator;->c:[D

    array-length v1, v1

    add-int/lit8 v12, v1, 0x1

    .line 107
    .local v12, "stages":I
    if-eq v2, v8, :cond_1

    .line 108
    array-length v1, v8

    invoke-static {v8, v10, v2, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    :cond_1
    new-array v13, v12, [[D

    .line 111
    .local v13, "yDotK":[[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v12, :cond_2

    .line 112
    array-length v3, v8

    new-array v3, v3, [D

    aput-object v3, v13, v1

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 114
    .end local v1    # "i":I
    array-length v1, v8

    new-array v14, v1, [D

    .line 115
    .local v14, "yTmp":[D
    array-length v1, v8

    new-array v3, v1, [D

    .line 119
    .local v3, "yDotTmp":[D
    invoke-virtual {v0}, Lorg/apache/commons/math/ode/AbstractIntegrator;->requiresDenseOutput()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    iget-object v1, v0, Lorg/apache/commons/math/ode/nonstiff/RungeKuttaIntegrator;->prototype:Lorg/apache/commons/math/ode/nonstiff/RungeKuttaStepInterpolator;

    invoke-virtual {v1}, Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;->copy()Lorg/apache/commons/math/ode/sampling/StepInterpolator;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math/ode/nonstiff/RungeKuttaStepInterpolator;

    .line 121
    .local v1, "rki":Lorg/apache/commons/math/ode/nonstiff/RungeKuttaStepInterpolator;
    invoke-virtual {v1, v0, v14, v13, v11}, Lorg/apache/commons/math/ode/nonstiff/RungeKuttaStepInterpolator;->reinitialize(Lorg/apache/commons/math/ode/AbstractIntegrator;[D[[DZ)V

    .line 122
    nop

    .line 123
    .local v1, "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    goto :goto_2

    .line 124
    .end local v1    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    :cond_3
    new-instance v1, Lorg/apache/commons/math/ode/sampling/DummyStepInterpolator;

    add-int/lit8 v4, v12, -0x1

    aget-object v4, v13, v4

    invoke-direct {v1, v14, v4, v11}, Lorg/apache/commons/math/ode/sampling/DummyStepInterpolator;-><init>([D[DZ)V

    .line 126
    .restart local v1    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    :goto_2
    invoke-virtual {v1, v6, v7}, Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 129
    iput-wide v6, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    .line 130
    iget-wide v4, v0, Lorg/apache/commons/math/ode/nonstiff/RungeKuttaIntegrator;->step:D

    if-eqz v11, :cond_4

    goto :goto_3

    :cond_4
    neg-double v4, v4

    :goto_3
    iput-wide v4, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    .line 131
    iget-object v4, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math/ode/sampling/StepHandler;

    .line 132
    .local v5, "handler":Lorg/apache/commons/math/ode/sampling/StepHandler;
    invoke-interface {v5}, Lorg/apache/commons/math/ode/sampling/StepHandler;->reset()V

    .line 133
    .end local v5    # "handler":Lorg/apache/commons/math/ode/sampling/StepHandler;
    goto :goto_4

    .line 134
    :cond_5
    invoke-virtual {v0, v10}, Lorg/apache/commons/math/ode/AbstractIntegrator;->setStateInitialized(Z)V

    .line 137
    iput-boolean v10, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->isLastStep:Z

    .line 140
    :goto_5
    invoke-virtual {v1}, Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;->shift()V

    .line 143
    iget-wide v4, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    aget-object v15, v13, v10

    invoke-virtual {v0, v4, v5, v2, v15}, Lorg/apache/commons/math/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    .line 146
    const/4 v4, 0x1

    .local v4, "k":I
    :goto_6
    if-ge v4, v12, :cond_8

    .line 148
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_7
    array-length v15, v8

    if-ge v5, v15, :cond_7

    .line 149
    iget-object v15, v0, Lorg/apache/commons/math/ode/nonstiff/RungeKuttaIntegrator;->a:[[D

    add-int/lit8 v16, v4, -0x1

    aget-object v15, v15, v16

    aget-wide v15, v15, v10

    aget-object v17, v13, v10

    aget-wide v17, v17, v5

    mul-double v15, v15, v17

    .line 150
    .local v15, "sum":D
    const/16 v17, 0x1

    move/from16 v9, v17

    .local v9, "l":I
    :goto_8
    if-ge v9, v4, :cond_6

    .line 151
    move/from16 v18, v10

    iget-object v10, v0, Lorg/apache/commons/math/ode/nonstiff/RungeKuttaIntegrator;->a:[[D

    add-int/lit8 v19, v4, -0x1

    aget-object v10, v10, v19

    aget-wide v19, v10, v9

    aget-object v10, v13, v9

    aget-wide v21, v10, v5

    mul-double v19, v19, v21

    add-double v15, v15, v19

    .line 150
    add-int/lit8 v9, v9, 0x1

    move/from16 v10, v18

    goto :goto_8

    :cond_6
    move/from16 v18, v10

    .line 153
    .end local v9    # "l":I
    aget-wide v9, v2, v5

    move/from16 v19, v4

    move/from16 v20, v5

    .end local v4    # "k":I
    .end local v5    # "j":I
    .local v19, "k":I
    .local v20, "j":I
    iget-wide v4, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    mul-double/2addr v4, v15

    add-double/2addr v9, v4

    aput-wide v9, v14, v20

    .line 148
    .end local v15    # "sum":D
    add-int/lit8 v5, v20, 0x1

    move/from16 v10, v18

    move/from16 v4, v19

    const/4 v9, 0x1

    .end local v20    # "j":I
    .restart local v5    # "j":I
    goto :goto_7

    .end local v19    # "k":I
    .restart local v4    # "k":I
    :cond_7
    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v18, v10

    .line 156
    .end local v4    # "k":I
    .end local v5    # "j":I
    .restart local v19    # "k":I
    iget-wide v4, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    iget-object v9, v0, Lorg/apache/commons/math/ode/nonstiff/RungeKuttaIntegrator;->c:[D

    add-int/lit8 v10, v19, -0x1

    aget-wide v9, v9, v10

    move-wide v15, v4

    iget-wide v4, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    mul-double/2addr v9, v4

    add-double v4, v15, v9

    aget-object v9, v13, v19

    invoke-virtual {v0, v4, v5, v14, v9}, Lorg/apache/commons/math/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    .line 146
    add-int/lit8 v4, v19, 0x1

    move/from16 v10, v18

    const/4 v9, 0x1

    .end local v19    # "k":I
    .restart local v4    # "k":I
    goto :goto_6

    :cond_8
    move/from16 v19, v4

    move/from16 v18, v10

    .line 161
    .end local v4    # "k":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_9
    array-length v5, v8

    if-ge v4, v5, :cond_a

    .line 162
    iget-object v5, v0, Lorg/apache/commons/math/ode/nonstiff/RungeKuttaIntegrator;->b:[D

    aget-wide v9, v5, v18

    aget-object v5, v13, v18

    aget-wide v15, v5, v4

    mul-double/2addr v9, v15

    .line 163
    .local v9, "sum":D
    const/4 v5, 0x1

    .local v5, "l":I
    :goto_a
    if-ge v5, v12, :cond_9

    .line 164
    iget-object v15, v0, Lorg/apache/commons/math/ode/nonstiff/RungeKuttaIntegrator;->b:[D

    aget-wide v15, v15, v5

    aget-object v19, v13, v5

    aget-wide v19, v19, v4

    mul-double v15, v15, v19

    add-double/2addr v9, v15

    .line 163
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_9
    nop

    .line 166
    .end local v5    # "l":I
    aget-wide v15, v2, v4

    move/from16 v19, v4

    .end local v4    # "j":I
    .local v19, "j":I
    iget-wide v4, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    mul-double/2addr v4, v9

    add-double/2addr v15, v4

    aput-wide v15, v14, v19

    .line 161
    .end local v9    # "sum":D
    add-int/lit8 v4, v19, 0x1

    .end local v19    # "j":I
    .restart local v4    # "j":I
    goto :goto_9

    :cond_a
    move/from16 v19, v4

    .line 170
    .end local v4    # "j":I
    iget-wide v4, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    iget-wide v9, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    add-double/2addr v4, v9

    invoke-virtual {v1, v4, v5}, Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 171
    array-length v4, v8

    move/from16 v9, v18

    invoke-static {v14, v9, v2, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    add-int/lit8 v4, v12, -0x1

    aget-object v4, v13, v4

    array-length v5, v8

    invoke-static {v4, v9, v3, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    move-wide/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math/ode/AbstractIntegrator;->acceptStep(Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v9

    iput-wide v9, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    .line 175
    iget-boolean v2, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->isLastStep:Z

    if-nez v2, :cond_d

    .line 178
    iget-wide v4, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    invoke-virtual {v1, v4, v5}, Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 181
    iget-wide v4, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    iget-wide v9, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    add-double/2addr v4, v9

    .line 182
    .local v4, "nextT":D
    if-eqz v11, :cond_c

    cmpl-double v2, v4, p5

    if-ltz v2, :cond_b

    :goto_b
    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    goto :goto_c

    :cond_c
    cmpg-double v2, v4, p5

    if-gtz v2, :cond_b

    goto :goto_b

    .line 183
    .local v2, "nextIsLast":Z
    :goto_c
    if-eqz v2, :cond_d

    .line 184
    iget-wide v9, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    sub-double v9, p5, v9

    iput-wide v9, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    .line 188
    .end local v2    # "nextIsLast":Z
    .end local v4    # "nextT":D
    :cond_d
    iget-boolean v2, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->isLastStep:Z

    if-eqz v2, :cond_e

    .line 190
    iget-wide v4, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    .line 191
    .local v4, "stopTime":D
    const-wide/high16 v9, 0x7ff8000000000000L    # Double.NaN

    iput-wide v9, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    .line 192
    iput-wide v9, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    .line 193
    return-wide v4

    .line 188
    .end local v4    # "stopTime":D
    :cond_e
    move-object/from16 v2, p7

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_5
.end method
