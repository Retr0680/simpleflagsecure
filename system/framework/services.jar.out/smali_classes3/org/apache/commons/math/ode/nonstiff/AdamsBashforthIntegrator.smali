.class public Lorg/apache/commons/math/ode/nonstiff/AdamsBashforthIntegrator;
.super Lorg/apache/commons/math/ode/nonstiff/AdamsIntegrator;
.source "AdamsBashforthIntegrator.java"


# static fields
.field private static final METHOD_NAME:Ljava/lang/String; = "Adams-Bashforth"


# direct methods
.method public constructor <init>(IDDDD)V
    .locals 12
    .param p1, "nSteps"    # I
    .param p2, "minStep"    # D
    .param p4, "maxStep"    # D
    .param p6, "scalAbsoluteTolerance"    # D
    .param p8, "scalRelativeTolerance"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 162
    const-string v1, "Adams-Bashforth"

    move v3, p1

    move-object v0, p0

    move v2, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math/ode/nonstiff/AdamsIntegrator;-><init>(Ljava/lang/String;IIDDDD)V

    .line 164
    return-void
.end method

.method public constructor <init>(IDD[D[D)V
    .locals 10
    .param p1, "nSteps"    # I
    .param p2, "minStep"    # D
    .param p4, "maxStep"    # D
    .param p6, "vecAbsoluteTolerance"    # [D
    .param p7, "vecRelativeTolerance"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 182
    const-string v1, "Adams-Bashforth"

    move v3, p1

    move-object v0, p0

    move v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math/ode/nonstiff/AdamsIntegrator;-><init>(Ljava/lang/String;IIDD[D[D)V

    .line 184
    return-void
.end method


# virtual methods
.method public integrate(Lorg/apache/commons/math/ode/FirstOrderDifferentialEquations;D[DD[D)D
    .locals 28
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

    .line 193
    move-object/from16 v0, p0

    move-object/from16 v6, p4

    move-object/from16 v3, p7

    array-length v7, v6

    .line 194
    .local v7, "n":I
    invoke-virtual/range {p0 .. p7}, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->sanityChecks(Lorg/apache/commons/math/ode/FirstOrderDifferentialEquations;D[DD[D)V

    .line 195
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math/ode/AbstractIntegrator;->setEquations(Lorg/apache/commons/math/ode/FirstOrderDifferentialEquations;)V

    .line 196
    invoke-virtual {v0}, Lorg/apache/commons/math/ode/AbstractIntegrator;->resetEvaluations()V

    .line 197
    cmpl-double v1, p5, p2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-lez v1, :cond_0

    move v1, v8

    goto :goto_0

    :cond_0
    move v1, v9

    :goto_0
    move v10, v1

    .line 200
    .local v10, "forward":Z
    if-eq v3, v6, :cond_1

    .line 201
    invoke-static {v6, v9, v3, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    :cond_1
    new-array v11, v7, [D

    .line 206
    .local v11, "yDot":[D
    new-instance v1, Lorg/apache/commons/math/ode/sampling/NordsieckStepInterpolator;

    invoke-direct {v1}, Lorg/apache/commons/math/ode/sampling/NordsieckStepInterpolator;-><init>()V

    move-object v12, v1

    .line 207
    .local v12, "interpolator":Lorg/apache/commons/math/ode/sampling/NordsieckStepInterpolator;
    invoke-virtual {v12, v3, v10}, Lorg/apache/commons/math/ode/sampling/NordsieckStepInterpolator;->reinitialize([DZ)V

    .line 210
    iget-object v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math/ode/sampling/StepHandler;

    .line 211
    .local v2, "handler":Lorg/apache/commons/math/ode/sampling/StepHandler;
    invoke-interface {v2}, Lorg/apache/commons/math/ode/sampling/StepHandler;->reset()V

    .line 212
    .end local v2    # "handler":Lorg/apache/commons/math/ode/sampling/StepHandler;
    goto :goto_1

    .line 213
    :cond_2
    invoke-virtual {v0, v9}, Lorg/apache/commons/math/ode/AbstractIntegrator;->setStateInitialized(Z)V

    .line 216
    move-wide/from16 v1, p2

    move-wide/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math/ode/MultistepIntegrator;->start(D[DD)V

    .line 217
    iget-wide v13, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    iget-object v4, v0, Lorg/apache/commons/math/ode/MultistepIntegrator;->scaled:[D

    iget-object v5, v0, Lorg/apache/commons/math/ode/MultistepIntegrator;->nordsieck:Lorg/apache/commons/math/linear/Array2DRowRealMatrix;

    move-wide v15, v1

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    invoke-virtual/range {v12 .. v18}, Lorg/apache/commons/math/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math/linear/Array2DRowRealMatrix;)V

    .line 218
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    invoke-virtual {v12, v1, v2}, Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 219
    iget-object v1, v0, Lorg/apache/commons/math/ode/MultistepIntegrator;->nordsieck:Lorg/apache/commons/math/linear/Array2DRowRealMatrix;

    invoke-virtual {v1}, Lorg/apache/commons/math/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v1

    sub-int/2addr v1, v8

    .line 222
    .local v1, "lastRow":I
    iget-wide v4, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    .line 223
    .local v4, "hNew":D
    invoke-virtual {v12, v4, v5}, Lorg/apache/commons/math/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    .line 226
    iput-boolean v9, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->isLastStep:Z

    .line 229
    :goto_2
    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    .line 230
    .local v13, "error":D
    :goto_3
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v13, v15

    if-ltz v2, :cond_6

    .line 232
    iput-wide v4, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    .line 235
    const-wide/16 v13, 0x0

    .line 236
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    iget v8, v0, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    if-ge v2, v8, :cond_4

    .line 237
    aget-wide v17, v3, v2

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v17

    .line 238
    .local v17, "yScale":D
    iget-object v8, v0, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    if-nez v8, :cond_3

    .line 239
    move/from16 v19, v10

    .end local v10    # "forward":Z
    .local v19, "forward":Z
    iget-wide v9, v0, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalAbsoluteTolerance:D

    move-wide/from16 v20, v9

    iget-wide v8, v0, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalRelativeTolerance:D

    mul-double v8, v8, v17

    add-double v9, v20, v8

    goto :goto_5

    .line 240
    .end local v19    # "forward":Z
    .restart local v10    # "forward":Z
    :cond_3
    move/from16 v19, v10

    .end local v10    # "forward":Z
    .restart local v19    # "forward":Z
    iget-object v8, v0, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v8, v8, v2

    iget-object v10, v0, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    aget-wide v20, v10, v2

    mul-double v20, v20, v17

    add-double v9, v8, v20

    :goto_5
    nop

    .line 241
    .local v9, "tol":D
    iget-object v8, v0, Lorg/apache/commons/math/ode/MultistepIntegrator;->nordsieck:Lorg/apache/commons/math/linear/Array2DRowRealMatrix;

    invoke-virtual {v8, v1, v2}, Lorg/apache/commons/math/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v20

    div-double v20, v20, v9

    .line 242
    .local v20, "ratio":D
    mul-double v22, v20, v20

    add-double v13, v13, v22

    .line 236
    .end local v9    # "tol":D
    .end local v17    # "yScale":D
    .end local v20    # "ratio":D
    add-int/lit8 v2, v2, 0x1

    move/from16 v10, v19

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_4

    .end local v19    # "forward":Z
    .restart local v10    # "forward":Z
    :cond_4
    move/from16 v19, v10

    .line 244
    .end local v2    # "i":I
    .end local v10    # "forward":Z
    .restart local v19    # "forward":Z
    iget v2, v0, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    int-to-double v8, v2

    div-double v8, v13, v8

    invoke-static {v8, v9}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v13

    .line 246
    cmpl-double v2, v13, v15

    if-ltz v2, :cond_5

    .line 248
    invoke-virtual {v0, v13, v14}, Lorg/apache/commons/math/ode/MultistepIntegrator;->computeStepGrowShrinkFactor(D)D

    move-result-wide v9

    .line 249
    .local v9, "factor":D
    move/from16 v20, v1

    .end local v1    # "lastRow":I
    .local v20, "lastRow":I
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    mul-double/2addr v1, v9

    move/from16 v15, v19

    const/4 v8, 0x0

    .end local v19    # "forward":Z
    .local v15, "forward":Z
    invoke-virtual {v0, v1, v2, v15, v8}, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->filterStep(DZZ)D

    move-result-wide v4

    .line 250
    invoke-virtual {v12, v4, v5}, Lorg/apache/commons/math/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    .line 252
    .end local v9    # "factor":D
    move v10, v15

    move/from16 v1, v20

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_3

    .line 246
    .end local v15    # "forward":Z
    .end local v20    # "lastRow":I
    .restart local v1    # "lastRow":I
    .restart local v19    # "forward":Z
    :cond_5
    move/from16 v20, v1

    move/from16 v15, v19

    .end local v1    # "lastRow":I
    .end local v19    # "forward":Z
    .restart local v15    # "forward":Z
    .restart local v20    # "lastRow":I
    move v10, v15

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_3

    .line 256
    .end local v15    # "forward":Z
    .end local v20    # "lastRow":I
    .restart local v1    # "lastRow":I
    .restart local v10    # "forward":Z
    :cond_6
    move/from16 v20, v1

    move v15, v10

    .end local v1    # "lastRow":I
    .end local v10    # "forward":Z
    .restart local v15    # "forward":Z
    .restart local v20    # "lastRow":I
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    iget-wide v9, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    add-double/2addr v1, v9

    .line 257
    .local v1, "stepEnd":D
    invoke-virtual {v12}, Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;->shift()V

    .line 258
    invoke-virtual {v12, v1, v2}, Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;->setInterpolatedTime(D)V

    .line 259
    invoke-virtual {v12}, Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;->getInterpolatedState()[D

    move-result-object v9

    array-length v10, v6

    const/4 v8, 0x0

    invoke-static {v9, v8, v3, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    invoke-virtual {v0, v1, v2, v3, v11}, Lorg/apache/commons/math/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    .line 265
    array-length v9, v6

    new-array v9, v9, [D

    .line 266
    .local v9, "predictedScaled":[D
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_6
    array-length v8, v6

    if-ge v10, v8, :cond_7

    .line 267
    move-wide/from16 v16, v1

    .end local v1    # "stepEnd":D
    .local v16, "stepEnd":D
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    aget-wide v21, v11, v10

    mul-double v1, v1, v21

    aput-wide v1, v9, v10

    .line 266
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v1, v16

    const/4 v8, 0x0

    goto :goto_6

    .end local v16    # "stepEnd":D
    .restart local v1    # "stepEnd":D
    :cond_7
    move-wide/from16 v16, v1

    .line 269
    .end local v1    # "stepEnd":D
    .end local v10    # "j":I
    .restart local v16    # "stepEnd":D
    iget-object v1, v0, Lorg/apache/commons/math/ode/MultistepIntegrator;->nordsieck:Lorg/apache/commons/math/linear/Array2DRowRealMatrix;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math/ode/nonstiff/AdamsIntegrator;->updateHighOrderDerivativesPhase1(Lorg/apache/commons/math/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math/linear/Array2DRowRealMatrix;

    move-result-object v1

    .line 270
    .local v1, "nordsieckTmp":Lorg/apache/commons/math/linear/Array2DRowRealMatrix;
    iget-object v2, v0, Lorg/apache/commons/math/ode/MultistepIntegrator;->scaled:[D

    invoke-virtual {v0, v2, v9, v1}, Lorg/apache/commons/math/ode/nonstiff/AdamsIntegrator;->updateHighOrderDerivativesPhase2([D[DLorg/apache/commons/math/linear/Array2DRowRealMatrix;)V

    .line 271
    move-object/from16 v18, v1

    .end local v1    # "nordsieckTmp":Lorg/apache/commons/math/linear/Array2DRowRealMatrix;
    .local v18, "nordsieckTmp":Lorg/apache/commons/math/linear/Array2DRowRealMatrix;
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    move-wide/from16 v26, v16

    move-object/from16 v17, v9

    move-wide v9, v13

    move-wide/from16 v13, v26

    move v8, v15

    move-wide v15, v1

    .end local v15    # "forward":Z
    .end local v16    # "stepEnd":D
    .local v8, "forward":Z
    .local v9, "error":D
    .local v13, "stepEnd":D
    .local v17, "predictedScaled":[D
    invoke-virtual/range {v12 .. v18}, Lorg/apache/commons/math/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math/linear/Array2DRowRealMatrix;)V

    .line 274
    move-object/from16 v15, v17

    .end local v17    # "predictedScaled":[D
    .local v15, "predictedScaled":[D
    invoke-virtual {v12, v13, v14}, Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 275
    move-object v2, v3

    move-wide/from16 v21, v4

    move/from16 v19, v7

    move-object v3, v11

    move-object v1, v12

    move-object/from16 v11, v18

    move-wide/from16 v4, p5

    .end local v4    # "hNew":D
    .end local v7    # "n":I
    .end local v12    # "interpolator":Lorg/apache/commons/math/ode/sampling/NordsieckStepInterpolator;
    .end local v18    # "nordsieckTmp":Lorg/apache/commons/math/linear/Array2DRowRealMatrix;
    .local v1, "interpolator":Lorg/apache/commons/math/ode/sampling/NordsieckStepInterpolator;
    .local v3, "yDot":[D
    .local v11, "nordsieckTmp":Lorg/apache/commons/math/linear/Array2DRowRealMatrix;
    .local v19, "n":I
    .local v21, "hNew":D
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math/ode/AbstractIntegrator;->acceptStep(Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v6

    move-object/from16 v23, v3

    .end local v1    # "interpolator":Lorg/apache/commons/math/ode/sampling/NordsieckStepInterpolator;
    .end local v3    # "yDot":[D
    .restart local v12    # "interpolator":Lorg/apache/commons/math/ode/sampling/NordsieckStepInterpolator;
    .local v23, "yDot":[D
    iput-wide v6, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    .line 276
    iput-object v15, v0, Lorg/apache/commons/math/ode/MultistepIntegrator;->scaled:[D

    .line 277
    iput-object v11, v0, Lorg/apache/commons/math/ode/MultistepIntegrator;->nordsieck:Lorg/apache/commons/math/linear/Array2DRowRealMatrix;

    .line 278
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    iget-object v3, v0, Lorg/apache/commons/math/ode/MultistepIntegrator;->scaled:[D

    iget-object v4, v0, Lorg/apache/commons/math/ode/MultistepIntegrator;->nordsieck:Lorg/apache/commons/math/linear/Array2DRowRealMatrix;

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object v6, v15

    move-wide v15, v1

    .end local v15    # "predictedScaled":[D
    .local v6, "predictedScaled":[D
    invoke-virtual/range {v12 .. v18}, Lorg/apache/commons/math/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math/linear/Array2DRowRealMatrix;)V

    .line 280
    move-wide/from16 v24, v13

    .end local v13    # "stepEnd":D
    .local v24, "stepEnd":D
    iget-boolean v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->isLastStep:Z

    if-nez v1, :cond_e

    .line 283
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    invoke-virtual {v12, v1, v2}, Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 285
    iget-boolean v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->resetOccurred:Z

    if-eqz v1, :cond_8

    .line 288
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    move-wide/from16 v4, p5

    move-object/from16 v3, p7

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math/ode/MultistepIntegrator;->start(D[DD)V

    .line 289
    iget-wide v13, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    iget-object v3, v0, Lorg/apache/commons/math/ode/MultistepIntegrator;->scaled:[D

    iget-object v4, v0, Lorg/apache/commons/math/ode/MultistepIntegrator;->nordsieck:Lorg/apache/commons/math/linear/Array2DRowRealMatrix;

    move-wide v15, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-virtual/range {v12 .. v18}, Lorg/apache/commons/math/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math/linear/Array2DRowRealMatrix;)V

    .line 293
    :cond_8
    invoke-virtual {v0, v9, v10}, Lorg/apache/commons/math/ode/MultistepIntegrator;->computeStepGrowShrinkFactor(D)D

    move-result-wide v1

    .line 294
    .local v1, "factor":D
    iget-wide v3, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    mul-double/2addr v3, v1

    .line 295
    .local v3, "scaledH":D
    iget-wide v13, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    add-double/2addr v13, v3

    .line 296
    .local v13, "nextT":D
    if-eqz v8, :cond_a

    cmpl-double v5, v13, p5

    if-ltz v5, :cond_9

    :goto_7
    const/4 v5, 0x1

    goto :goto_8

    :cond_9
    const/4 v5, 0x0

    goto :goto_8

    :cond_a
    cmpg-double v5, v13, p5

    if-gtz v5, :cond_9

    goto :goto_7

    .line 297
    .local v5, "nextIsLast":Z
    :goto_8
    invoke-virtual {v0, v3, v4, v8, v5}, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->filterStep(DZZ)D

    move-result-wide v15

    .line 299
    .end local v21    # "hNew":D
    .local v15, "hNew":D
    move-wide/from16 v17, v1

    .end local v1    # "factor":D
    .local v17, "factor":D
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    add-double/2addr v1, v15

    .line 300
    .local v1, "filteredNextT":D
    if-eqz v8, :cond_c

    cmpl-double v7, v1, p5

    if-ltz v7, :cond_b

    :goto_9
    const/4 v7, 0x1

    goto :goto_a

    :cond_b
    const/4 v7, 0x0

    goto :goto_a

    :cond_c
    cmpg-double v7, v1, p5

    if-gtz v7, :cond_b

    goto :goto_9

    .line 301
    .local v7, "filteredNextIsLast":Z
    :goto_a
    if-eqz v7, :cond_d

    .line 302
    move-wide/from16 v21, v1

    .end local v1    # "filteredNextT":D
    .local v21, "filteredNextT":D
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    sub-double v15, p5, v1

    move-wide v1, v15

    goto :goto_b

    .line 301
    .end local v21    # "filteredNextT":D
    .restart local v1    # "filteredNextT":D
    :cond_d
    move-wide/from16 v21, v1

    .end local v1    # "filteredNextT":D
    .restart local v21    # "filteredNextT":D
    move-wide v1, v15

    .line 305
    .end local v15    # "hNew":D
    .local v1, "hNew":D
    :goto_b
    invoke-virtual {v12, v1, v2}, Lorg/apache/commons/math/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    move-wide v4, v1

    goto :goto_c

    .line 280
    .end local v1    # "hNew":D
    .end local v3    # "scaledH":D
    .end local v5    # "nextIsLast":Z
    .end local v7    # "filteredNextIsLast":Z
    .end local v13    # "nextT":D
    .end local v17    # "factor":D
    .local v21, "hNew":D
    :cond_e
    move-wide/from16 v4, v21

    .line 309
    .end local v6    # "predictedScaled":[D
    .end local v9    # "error":D
    .end local v11    # "nordsieckTmp":Lorg/apache/commons/math/linear/Array2DRowRealMatrix;
    .end local v21    # "hNew":D
    .end local v24    # "stepEnd":D
    .restart local v4    # "hNew":D
    :goto_c
    iget-boolean v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->isLastStep:Z

    if-eqz v1, :cond_f

    .line 311
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    .line 312
    .local v1, "stopTime":D
    invoke-virtual {v0}, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->resetInternalState()V

    .line 313
    return-wide v1

    .line 309
    .end local v1    # "stopTime":D
    :cond_f
    move-object/from16 v6, p4

    move-object/from16 v3, p7

    move v10, v8

    move/from16 v7, v19

    move/from16 v1, v20

    move-object/from16 v11, v23

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto/16 :goto_2
.end method
