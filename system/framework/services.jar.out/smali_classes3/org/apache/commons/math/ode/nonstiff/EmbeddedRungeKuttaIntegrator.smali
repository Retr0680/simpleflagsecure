.class public abstract Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;
.super Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;
.source "EmbeddedRungeKuttaIntegrator.java"


# instance fields
.field private final a:[[D

.field private final b:[D

.field private final c:[D

.field private final exp:D

.field private final fsal:Z

.field private maxGrowth:D

.field private minReduction:D

.field private final prototype:Lorg/apache/commons/math/ode/nonstiff/RungeKuttaStepInterpolator;

.field private safety:D


# direct methods
.method protected constructor <init>(Ljava/lang/String;Z[D[[D[DLorg/apache/commons/math/ode/nonstiff/RungeKuttaStepInterpolator;DDDD)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fsal"    # Z
    .param p3, "c"    # [D
    .param p4, "a"    # [[D
    .param p5, "b"    # [D
    .param p6, "prototype"    # Lorg/apache/commons/math/ode/nonstiff/RungeKuttaStepInterpolator;
    .param p7, "minStep"    # D
    .param p9, "maxStep"    # D
    .param p11, "scalAbsoluteTolerance"    # D
    .param p13, "scalRelativeTolerance"    # D

    .line 116
    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p7

    move-wide/from16 v4, p9

    move-wide/from16 v6, p11

    move-wide/from16 v8, p13

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DDDD)V

    .line 118
    iput-boolean p2, p0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->fsal:Z

    .line 119
    iput-object p3, p0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->c:[D

    .line 120
    iput-object p4, p0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->a:[[D

    .line 121
    iput-object p5, p0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->b:[D

    .line 122
    move-object/from16 v1, p6

    iput-object v1, p0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->prototype:Lorg/apache/commons/math/ode/nonstiff/RungeKuttaStepInterpolator;

    .line 124
    invoke-virtual {p0}, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->getOrder()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    div-double/2addr v4, v2

    iput-wide v4, p0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->exp:D

    .line 127
    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setSafety(D)V

    .line 128
    const-wide v2, 0x3fc999999999999aL    # 0.2

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setMinReduction(D)V

    .line 129
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setMaxGrowth(D)V

    .line 131
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z[D[[D[DLorg/apache/commons/math/ode/nonstiff/RungeKuttaStepInterpolator;DD[D[D)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fsal"    # Z
    .param p3, "c"    # [D
    .param p4, "a"    # [[D
    .param p5, "b"    # [D
    .param p6, "prototype"    # Lorg/apache/commons/math/ode/nonstiff/RungeKuttaStepInterpolator;
    .param p7, "minStep"    # D
    .param p9, "maxStep"    # D
    .param p11, "vecAbsoluteTolerance"    # [D
    .param p12, "vecRelativeTolerance"    # [D

    .line 154
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p7

    move-wide/from16 v4, p9

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DD[D[D)V

    .line 156
    iput-boolean p2, p0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->fsal:Z

    .line 157
    iput-object p3, p0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->c:[D

    .line 158
    iput-object p4, p0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->a:[[D

    .line 159
    iput-object p5, p0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->b:[D

    .line 160
    iput-object p6, p0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->prototype:Lorg/apache/commons/math/ode/nonstiff/RungeKuttaStepInterpolator;

    .line 162
    invoke-virtual {p0}, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->getOrder()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    div-double/2addr v4, v2

    iput-wide v4, p0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->exp:D

    .line 165
    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setSafety(D)V

    .line 166
    const-wide v2, 0x3fc999999999999aL    # 0.2

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setMinReduction(D)V

    .line 167
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setMaxGrowth(D)V

    .line 169
    return-void
.end method


# virtual methods
.method protected abstract estimateError([[D[D[DD)D
.end method

.method public getMaxGrowth()D
    .locals 2

    .line 358
    iget-wide v0, p0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->maxGrowth:D

    return-wide v0
.end method

.method public getMinReduction()D
    .locals 2

    .line 344
    iget-wide v0, p0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->minReduction:D

    return-wide v0
.end method

.method public abstract getOrder()I
.end method

.method public getSafety()D
    .locals 2

    .line 180
    iget-wide v0, p0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->safety:D

    return-wide v0
.end method

.method public integrate(Lorg/apache/commons/math/ode/FirstOrderDifferentialEquations;D[DD[D)D
    .locals 32
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

    .line 197
    move-object/from16 v0, p0

    move-wide/from16 v11, p2

    move-object/from16 v13, p4

    move-object/from16 v2, p7

    invoke-virtual/range {p0 .. p7}, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->sanityChecks(Lorg/apache/commons/math/ode/FirstOrderDifferentialEquations;D[DD[D)V

    .line 198
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math/ode/AbstractIntegrator;->setEquations(Lorg/apache/commons/math/ode/FirstOrderDifferentialEquations;)V

    .line 199
    invoke-virtual {v0}, Lorg/apache/commons/math/ode/AbstractIntegrator;->resetEvaluations()V

    .line 200
    cmpl-double v1, p5, v11

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-lez v1, :cond_0

    move v1, v14

    goto :goto_0

    :cond_0
    move v1, v15

    .line 203
    .local v1, "forward":Z
    :goto_0
    iget-object v3, v0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->c:[D

    array-length v3, v3

    add-int/2addr v3, v14

    .line 204
    .local v3, "stages":I
    if-eq v2, v13, :cond_1

    .line 205
    array-length v4, v13

    invoke-static {v13, v15, v2, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    :cond_1
    array-length v4, v13

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v4, v5, v14

    aput v3, v5, v15

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    .line 208
    .local v4, "yDotK":[[D
    array-length v5, v13

    new-array v9, v5, [D

    .line 209
    .local v9, "yTmp":[D
    array-length v5, v13

    new-array v5, v5, [D

    .line 213
    .local v5, "yDotTmp":[D
    invoke-virtual {v0}, Lorg/apache/commons/math/ode/AbstractIntegrator;->requiresDenseOutput()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 214
    iget-object v6, v0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->prototype:Lorg/apache/commons/math/ode/nonstiff/RungeKuttaStepInterpolator;

    invoke-virtual {v6}, Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;->copy()Lorg/apache/commons/math/ode/sampling/StepInterpolator;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math/ode/nonstiff/RungeKuttaStepInterpolator;

    .line 215
    .local v6, "rki":Lorg/apache/commons/math/ode/nonstiff/RungeKuttaStepInterpolator;
    invoke-virtual {v6, v0, v9, v4, v1}, Lorg/apache/commons/math/ode/nonstiff/RungeKuttaStepInterpolator;->reinitialize(Lorg/apache/commons/math/ode/AbstractIntegrator;[D[[DZ)V

    .line 216
    nop

    .line 217
    .local v6, "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    goto :goto_1

    .line 218
    .end local v6    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    :cond_2
    new-instance v6, Lorg/apache/commons/math/ode/sampling/DummyStepInterpolator;

    add-int/lit8 v7, v3, -0x1

    aget-object v7, v4, v7

    invoke-direct {v6, v9, v7, v1}, Lorg/apache/commons/math/ode/sampling/DummyStepInterpolator;-><init>([D[DZ)V

    .line 220
    .restart local v6    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    :goto_1
    invoke-virtual {v6, v11, v12}, Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 223
    iput-wide v11, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    .line 224
    const-wide/16 v7, 0x0

    .line 225
    .local v7, "hNew":D
    const/4 v10, 0x1

    .line 226
    .local v10, "firstTime":Z
    move/from16 v16, v14

    iget-object v14, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math/ode/sampling/StepHandler;

    .line 227
    .local v17, "handler":Lorg/apache/commons/math/ode/sampling/StepHandler;
    invoke-interface/range {v17 .. v17}, Lorg/apache/commons/math/ode/sampling/StepHandler;->reset()V

    .line 228
    .end local v17    # "handler":Lorg/apache/commons/math/ode/sampling/StepHandler;
    goto :goto_2

    .line 229
    :cond_3
    invoke-virtual {v0, v15}, Lorg/apache/commons/math/ode/AbstractIntegrator;->setStateInitialized(Z)V

    .line 232
    iput-boolean v15, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->isLastStep:Z

    .line 235
    :goto_3
    invoke-virtual {v6}, Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;->shift()V

    .line 238
    const-wide/high16 v17, 0x4024000000000000L    # 10.0

    move-wide/from16 v30, v17

    move-wide/from16 v17, v7

    move-wide/from16 v7, v30

    move v14, v10

    .line 239
    .end local v10    # "firstTime":Z
    .local v7, "error":D
    .local v14, "firstTime":Z
    .local v17, "hNew":D
    :goto_4
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v7, v19

    if-ltz v10, :cond_10

    .line 241
    if-nez v14, :cond_4

    iget-boolean v10, v0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->fsal:Z

    if-nez v10, :cond_5

    :cond_4
    goto :goto_5

    :cond_5
    move v10, v3

    move-object/from16 v21, v4

    move/from16 v22, v15

    goto :goto_6

    .line 243
    :goto_5
    move v10, v3

    move-object/from16 v21, v4

    .end local v3    # "stages":I
    .end local v4    # "yDotK":[[D
    .local v10, "stages":I
    .local v21, "yDotK":[[D
    iget-wide v3, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    move/from16 v22, v15

    aget-object v15, v21, v22

    invoke-virtual {v0, v3, v4, v2, v15}, Lorg/apache/commons/math/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    .line 246
    :goto_6
    if-eqz v14, :cond_9

    .line 247
    iget v3, v0, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    new-array v4, v3, [D

    .line 248
    .local v4, "scale":[D
    iget-object v3, v0, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    if-nez v3, :cond_7

    .line 249
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    array-length v15, v4

    if-ge v3, v15, :cond_6

    .line 250
    move v15, v1

    .end local v1    # "forward":Z
    .local v15, "forward":Z
    iget-wide v1, v0, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalAbsoluteTolerance:D

    move-wide/from16 v23, v1

    iget-wide v1, v0, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalRelativeTolerance:D

    aget-wide v25, p7, v3

    invoke-static/range {v25 .. v26}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v25

    mul-double v1, v1, v25

    add-double v1, v23, v1

    aput-wide v1, v4, v3

    .line 249
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, p7

    move v1, v15

    goto :goto_7

    .end local v15    # "forward":Z
    .restart local v1    # "forward":Z
    :cond_6
    move v15, v1

    .end local v1    # "forward":Z
    .end local v3    # "i":I
    .restart local v15    # "forward":Z
    goto :goto_9

    .line 253
    .end local v15    # "forward":Z
    .restart local v1    # "forward":Z
    :cond_7
    move v15, v1

    .end local v1    # "forward":Z
    .restart local v15    # "forward":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, v4

    if-ge v1, v2, :cond_8

    .line 254
    iget-object v2, v0, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v2, v2, v1

    move/from16 v23, v1

    .end local v1    # "i":I
    .local v23, "i":I
    iget-object v1, v0, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    aget-wide v24, v1, v23

    aget-wide v26, p7, v23

    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    add-double v2, v2, v24

    aput-wide v2, v4, v23

    .line 253
    add-int/lit8 v1, v23, 0x1

    .end local v23    # "i":I
    .restart local v1    # "i":I
    goto :goto_8

    :cond_8
    move/from16 v23, v1

    .line 257
    .end local v1    # "i":I
    :goto_9
    invoke-virtual {v0}, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->getOrder()I

    move-result v3

    move-object v1, v5

    move-object v2, v6

    .end local v5    # "yDotTmp":[D
    .end local v6    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    .local v1, "yDotTmp":[D
    .local v2, "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    iget-wide v5, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    move-wide/from16 v23, v7

    .end local v7    # "error":D
    .local v23, "error":D
    aget-object v8, v21, v22

    move v7, v10

    .end local v10    # "stages":I
    .local v7, "stages":I
    aget-object v10, v21, v16

    move-object v11, v1

    move-object v12, v2

    move v2, v15

    move-wide/from16 v28, v23

    move-object/from16 v1, p1

    move v15, v7

    move-object/from16 v7, p7

    .end local v1    # "yDotTmp":[D
    .end local v7    # "stages":I
    .end local v23    # "error":D
    .local v2, "forward":Z
    .local v11, "yDotTmp":[D
    .local v12, "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    .local v15, "stages":I
    .local v28, "error":D
    invoke-virtual/range {v0 .. v10}, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->initializeStep(Lorg/apache/commons/math/ode/FirstOrderDifferentialEquations;ZI[DD[D[D[D[D)D

    move-result-wide v5

    .line 259
    move v7, v2

    .end local v2    # "forward":Z
    .end local v17    # "hNew":D
    .local v5, "hNew":D
    .local v7, "forward":Z
    const/4 v14, 0x0

    move-wide v1, v5

    goto :goto_a

    .line 246
    .end local v4    # "scale":[D
    .end local v11    # "yDotTmp":[D
    .end local v12    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    .end local v15    # "stages":I
    .end local v28    # "error":D
    .local v1, "forward":Z
    .local v5, "yDotTmp":[D
    .restart local v6    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    .local v7, "error":D
    .restart local v10    # "stages":I
    .restart local v17    # "hNew":D
    :cond_9
    move-object v11, v5

    move-object v12, v6

    move-wide/from16 v28, v7

    move v15, v10

    move v7, v1

    .end local v1    # "forward":Z
    .end local v5    # "yDotTmp":[D
    .end local v6    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    .end local v10    # "stages":I
    .local v7, "forward":Z
    .restart local v11    # "yDotTmp":[D
    .restart local v12    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    .restart local v15    # "stages":I
    .restart local v28    # "error":D
    move-wide/from16 v1, v17

    .line 262
    .end local v17    # "hNew":D
    .local v1, "hNew":D
    :goto_a
    iput-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    .line 265
    const/4 v3, 0x1

    .local v3, "k":I
    :goto_b
    if-ge v3, v15, :cond_c

    .line 267
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_c
    array-length v5, v13

    if-ge v4, v5, :cond_b

    .line 268
    iget-object v5, v0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->a:[[D

    add-int/lit8 v6, v3, -0x1

    aget-object v5, v5, v6

    aget-wide v5, v5, v22

    aget-object v8, v21, v22

    aget-wide v17, v8, v4

    mul-double v5, v5, v17

    .line 269
    .local v5, "sum":D
    const/4 v8, 0x1

    .local v8, "l":I
    :goto_d
    if-ge v8, v3, :cond_a

    .line 270
    iget-object v10, v0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->a:[[D

    add-int/lit8 v17, v3, -0x1

    aget-object v10, v10, v17

    aget-wide v17, v10, v8

    aget-object v10, v21, v8

    aget-wide v23, v10, v4

    mul-double v17, v17, v23

    add-double v5, v5, v17

    .line 269
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_a
    nop

    .line 272
    .end local v8    # "l":I
    aget-wide v17, p7, v4

    move-wide/from16 v23, v1

    .end local v1    # "hNew":D
    .local v23, "hNew":D
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    mul-double/2addr v1, v5

    add-double v17, v17, v1

    aput-wide v17, v9, v4

    .line 267
    .end local v5    # "sum":D
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v1, v23

    goto :goto_c

    .end local v23    # "hNew":D
    .restart local v1    # "hNew":D
    :cond_b
    move-wide/from16 v23, v1

    .line 275
    .end local v1    # "hNew":D
    .end local v4    # "j":I
    .restart local v23    # "hNew":D
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    iget-object v4, v0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->c:[D

    add-int/lit8 v5, v3, -0x1

    aget-wide v4, v4, v5

    move-wide/from16 v17, v1

    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    mul-double/2addr v4, v1

    add-double v1, v17, v4

    aget-object v4, v21, v3

    invoke-virtual {v0, v1, v2, v9, v4}, Lorg/apache/commons/math/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    .line 265
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v1, v23

    goto :goto_b

    .end local v23    # "hNew":D
    .restart local v1    # "hNew":D
    :cond_c
    move-wide/from16 v23, v1

    .line 280
    .end local v1    # "hNew":D
    .end local v3    # "k":I
    .restart local v23    # "hNew":D
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_e
    array-length v2, v13

    if-ge v1, v2, :cond_e

    .line 281
    iget-object v2, v0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->b:[D

    aget-wide v2, v2, v22

    aget-object v4, v21, v22

    aget-wide v4, v4, v1

    mul-double/2addr v2, v4

    .line 282
    .local v2, "sum":D
    const/4 v4, 0x1

    .local v4, "l":I
    :goto_f
    if-ge v4, v15, :cond_d

    .line 283
    iget-object v5, v0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->b:[D

    aget-wide v5, v5, v4

    aget-object v8, v21, v4

    aget-wide v17, v8, v1

    mul-double v5, v5, v17

    add-double/2addr v2, v5

    .line 282
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_d
    nop

    .line 285
    .end local v4    # "l":I
    aget-wide v4, p7, v1

    move v6, v1

    move-wide/from16 v17, v2

    .end local v1    # "j":I
    .end local v2    # "sum":D
    .local v6, "j":I
    .local v17, "sum":D
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    mul-double v1, v1, v17

    add-double/2addr v4, v1

    aput-wide v4, v9, v6

    .line 280
    .end local v17    # "sum":D
    add-int/lit8 v1, v6, 0x1

    .end local v6    # "j":I
    .restart local v1    # "j":I
    goto :goto_e

    :cond_e
    move v6, v1

    .line 289
    .end local v1    # "j":I
    iget-wide v4, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    move-object/from16 v2, p7

    move-object v3, v9

    move-object/from16 v1, v21

    .end local v9    # "yTmp":[D
    .end local v21    # "yDotK":[[D
    .local v1, "yDotK":[[D
    .local v3, "yTmp":[D
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->estimateError([[D[D[DD)D

    move-result-wide v4

    .line 290
    .end local v1    # "yDotK":[[D
    .end local v3    # "yTmp":[D
    .end local v28    # "error":D
    .local v4, "error":D
    .restart local v9    # "yTmp":[D
    .restart local v21    # "yDotK":[[D
    cmpl-double v1, v4, v19

    if-ltz v1, :cond_f

    .line 292
    move v1, v14

    move v10, v15

    .end local v14    # "firstTime":Z
    .end local v15    # "stages":I
    .local v1, "firstTime":Z
    .restart local v10    # "stages":I
    iget-wide v14, v0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->maxGrowth:D

    move v6, v10

    move-object v3, v11

    .end local v10    # "stages":I
    .end local v11    # "yDotTmp":[D
    .local v3, "yDotTmp":[D
    .local v6, "stages":I
    iget-wide v10, v0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->minReduction:D

    move v8, v1

    .end local v1    # "firstTime":Z
    .local v8, "firstTime":Z
    iget-wide v1, v0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->safety:D

    move-wide/from16 v17, v1

    iget-wide v1, v0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->exp:D

    .line 294
    invoke-static {v4, v5, v1, v2}, Lorg/apache/commons/math/util/FastMath;->pow(DD)D

    move-result-wide v1

    mul-double v1, v1, v17

    invoke-static {v10, v11, v1, v2}, Lorg/apache/commons/math/util/FastMath;->max(DD)D

    move-result-wide v1

    .line 293
    invoke-static {v14, v15, v1, v2}, Lorg/apache/commons/math/util/FastMath;->min(DD)D

    move-result-wide v1

    .line 295
    .local v1, "factor":D
    iget-wide v10, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    mul-double/2addr v10, v1

    move/from16 v14, v22

    invoke-virtual {v0, v10, v11, v7, v14}, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->filterStep(DZZ)D

    move-result-wide v17

    .line 296
    .end local v1    # "factor":D
    .end local v23    # "hNew":D
    .local v17, "hNew":D
    move-object/from16 v2, p7

    move v1, v7

    move v14, v8

    const/4 v15, 0x0

    move-wide v7, v4

    move-object/from16 v4, v21

    move-object v5, v3

    move v3, v6

    move-object v6, v12

    move-wide/from16 v11, p2

    goto/16 :goto_4

    .line 290
    .end local v3    # "yDotTmp":[D
    .end local v6    # "stages":I
    .end local v8    # "firstTime":Z
    .end local v17    # "hNew":D
    .restart local v11    # "yDotTmp":[D
    .restart local v14    # "firstTime":Z
    .restart local v15    # "stages":I
    .restart local v23    # "hNew":D
    :cond_f
    move-object v3, v11

    move v8, v14

    move v6, v15

    .end local v11    # "yDotTmp":[D
    .end local v14    # "firstTime":Z
    .end local v15    # "stages":I
    .restart local v3    # "yDotTmp":[D
    .restart local v6    # "stages":I
    .restart local v8    # "firstTime":Z
    move-object/from16 v2, p7

    move v1, v7

    move-wide/from16 v17, v23

    const/4 v15, 0x0

    move-wide v7, v4

    move-object/from16 v4, v21

    move-object v5, v3

    move v3, v6

    move-object v6, v12

    move-wide/from16 v11, p2

    goto/16 :goto_4

    .line 301
    .end local v8    # "firstTime":Z
    .end local v12    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    .end local v21    # "yDotK":[[D
    .end local v23    # "hNew":D
    .local v1, "forward":Z
    .local v3, "stages":I
    .local v4, "yDotK":[[D
    .local v5, "yDotTmp":[D
    .local v6, "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    .local v7, "error":D
    .restart local v14    # "firstTime":Z
    .restart local v17    # "hNew":D
    :cond_10
    move-object/from16 v21, v4

    move-object v12, v6

    move-wide/from16 v28, v7

    move v7, v1

    move v6, v3

    move-object v3, v5

    .end local v1    # "forward":Z
    .end local v4    # "yDotK":[[D
    .end local v5    # "yDotTmp":[D
    .local v3, "yDotTmp":[D
    .local v6, "stages":I
    .local v7, "forward":Z
    .restart local v12    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    .restart local v21    # "yDotK":[[D
    .restart local v28    # "error":D
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    iget-wide v4, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    add-double/2addr v1, v4

    invoke-virtual {v12, v1, v2}, Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 302
    array-length v1, v13

    move-object/from16 v2, p7

    const/4 v4, 0x0

    invoke-static {v9, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    add-int/lit8 v1, v6, -0x1

    aget-object v1, v21, v1

    array-length v5, v13

    invoke-static {v1, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    move-wide/from16 v4, p5

    move-object v1, v12

    .end local v12    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    .local v1, "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math/ode/AbstractIntegrator;->acceptStep(Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v10

    .end local v1    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    .restart local v12    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    iput-wide v10, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    .line 306
    iget-boolean v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->isLastStep:Z

    if-nez v1, :cond_17

    .line 309
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    invoke-virtual {v12, v1, v2}, Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 311
    iget-boolean v1, v0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->fsal:Z

    if-eqz v1, :cond_11

    .line 313
    const/4 v4, 0x0

    aget-object v1, v21, v4

    array-length v2, v13

    invoke-static {v3, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_10

    .line 311
    :cond_11
    const/4 v4, 0x0

    .line 317
    :goto_10
    iget-wide v1, v0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->maxGrowth:D

    iget-wide v10, v0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->minReduction:D

    iget-wide v4, v0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->safety:D

    move-object v8, v3

    move-wide/from16 v19, v4

    .end local v3    # "yDotTmp":[D
    .local v8, "yDotTmp":[D
    iget-wide v3, v0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->exp:D

    .line 318
    move v15, v6

    move-wide/from16 v5, v28

    .end local v6    # "stages":I
    .end local v28    # "error":D
    .local v5, "error":D
    .restart local v15    # "stages":I
    invoke-static {v5, v6, v3, v4}, Lorg/apache/commons/math/util/FastMath;->pow(DD)D

    move-result-wide v3

    mul-double v3, v3, v19

    invoke-static {v10, v11, v3, v4}, Lorg/apache/commons/math/util/FastMath;->max(DD)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math/util/FastMath;->min(DD)D

    move-result-wide v1

    .line 319
    .local v1, "factor":D
    iget-wide v3, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    mul-double/2addr v3, v1

    .line 320
    .local v3, "scaledH":D
    iget-wide v10, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    add-double/2addr v10, v3

    .line 321
    .local v10, "nextT":D
    if-eqz v7, :cond_13

    cmpl-double v19, v10, p5

    if-ltz v19, :cond_12

    :goto_11
    move/from16 v19, v16

    goto :goto_12

    :cond_12
    const/16 v19, 0x0

    goto :goto_12

    :cond_13
    cmpg-double v19, v10, p5

    if-gtz v19, :cond_12

    goto :goto_11

    :goto_12
    move/from16 v20, v19

    .line 322
    .local v20, "nextIsLast":Z
    move-wide/from16 v23, v1

    move/from16 v1, v20

    .end local v20    # "nextIsLast":Z
    .local v1, "nextIsLast":Z
    .local v23, "factor":D
    invoke-virtual {v0, v3, v4, v7, v1}, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->filterStep(DZZ)D

    move-result-wide v17

    .line 324
    move/from16 v19, v1

    .end local v1    # "nextIsLast":Z
    .local v19, "nextIsLast":Z
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    add-double v1, v1, v17

    .line 325
    .local v1, "filteredNextT":D
    if-eqz v7, :cond_15

    cmpl-double v20, v1, p5

    if-ltz v20, :cond_14

    :goto_13
    move/from16 v20, v16

    goto :goto_14

    :cond_14
    const/16 v20, 0x0

    goto :goto_14

    :cond_15
    cmpg-double v20, v1, p5

    if-gtz v20, :cond_14

    goto :goto_13

    .line 326
    .local v20, "filteredNextIsLast":Z
    :goto_14
    if-eqz v20, :cond_16

    .line 327
    move-wide/from16 v25, v1

    .end local v1    # "filteredNextT":D
    .local v25, "filteredNextT":D
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    sub-double v1, p5, v1

    move-wide/from16 v17, v1

    .end local v17    # "hNew":D
    .local v1, "hNew":D
    goto :goto_15

    .line 326
    .end local v25    # "filteredNextT":D
    .local v1, "filteredNextT":D
    .restart local v17    # "hNew":D
    :cond_16
    move-wide/from16 v25, v1

    .end local v1    # "filteredNextT":D
    .restart local v25    # "filteredNextT":D
    goto :goto_15

    .line 306
    .end local v5    # "error":D
    .end local v8    # "yDotTmp":[D
    .end local v10    # "nextT":D
    .end local v15    # "stages":I
    .end local v19    # "nextIsLast":Z
    .end local v20    # "filteredNextIsLast":Z
    .end local v23    # "factor":D
    .end local v25    # "filteredNextT":D
    .local v3, "yDotTmp":[D
    .restart local v6    # "stages":I
    .restart local v28    # "error":D
    :cond_17
    move-object v8, v3

    move v15, v6

    move-wide/from16 v5, v28

    .line 332
    .end local v3    # "yDotTmp":[D
    .end local v6    # "stages":I
    .end local v28    # "error":D
    .restart local v8    # "yDotTmp":[D
    .restart local v15    # "stages":I
    :goto_15
    iget-boolean v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->isLastStep:Z

    if-eqz v1, :cond_18

    .line 334
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    .line 335
    .local v1, "stopTime":D
    invoke-virtual {v0}, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->resetInternalState()V

    .line 336
    return-wide v1

    .line 332
    .end local v1    # "stopTime":D
    :cond_18
    move-object/from16 v2, p7

    move v1, v7

    move-object v5, v8

    move-object v6, v12

    move v10, v14

    move v3, v15

    move-wide/from16 v7, v17

    move-object/from16 v4, v21

    const/4 v15, 0x0

    move-wide/from16 v11, p2

    goto/16 :goto_3
.end method

.method public setMaxGrowth(D)V
    .locals 0
    .param p1, "maxGrowth"    # D

    .line 365
    iput-wide p1, p0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->maxGrowth:D

    .line 366
    return-void
.end method

.method public setMinReduction(D)V
    .locals 0
    .param p1, "minReduction"    # D

    .line 351
    iput-wide p1, p0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->minReduction:D

    .line 352
    return-void
.end method

.method public setSafety(D)V
    .locals 0
    .param p1, "safety"    # D

    .line 187
    iput-wide p1, p0, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->safety:D

    .line 188
    return-void
.end method
