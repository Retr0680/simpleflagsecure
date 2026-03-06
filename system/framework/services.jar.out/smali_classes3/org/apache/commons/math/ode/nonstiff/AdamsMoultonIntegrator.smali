.class public Lorg/apache/commons/math/ode/nonstiff/AdamsMoultonIntegrator;
.super Lorg/apache/commons/math/ode/nonstiff/AdamsIntegrator;
.source "AdamsMoultonIntegrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math/ode/nonstiff/AdamsMoultonIntegrator$Corrector;
    }
.end annotation


# static fields
.field private static final METHOD_NAME:Ljava/lang/String; = "Adams-Moulton"


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

    .line 178
    add-int/lit8 v3, p1, 0x1

    const-string v1, "Adams-Moulton"

    move-object v0, p0

    move v2, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math/ode/nonstiff/AdamsIntegrator;-><init>(Ljava/lang/String;IIDDDD)V

    .line 180
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

    .line 198
    add-int/lit8 v3, p1, 0x1

    const-string v1, "Adams-Moulton"

    move-object v0, p0

    move v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math/ode/nonstiff/AdamsIntegrator;-><init>(Ljava/lang/String;IIDD[D[D)V

    .line 200
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

    .line 210
    move-object/from16 v0, p0

    move-object/from16 v6, p4

    move-object/from16 v3, p7

    array-length v7, v6

    .line 211
    .local v7, "n":I
    invoke-virtual/range {p0 .. p7}, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->sanityChecks(Lorg/apache/commons/math/ode/FirstOrderDifferentialEquations;D[DD[D)V

    .line 212
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math/ode/AbstractIntegrator;->setEquations(Lorg/apache/commons/math/ode/FirstOrderDifferentialEquations;)V

    .line 213
    invoke-virtual {v0}, Lorg/apache/commons/math/ode/AbstractIntegrator;->resetEvaluations()V

    .line 214
    cmpl-double v1, p5, p2

    const/4 v9, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v9

    :goto_0
    move v10, v1

    .line 217
    .local v10, "forward":Z
    if-eq v3, v6, :cond_1

    .line 218
    invoke-static {v6, v9, v3, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    :cond_1
    array-length v1, v6

    new-array v11, v1, [D

    .line 221
    .local v11, "yDot":[D
    array-length v1, v6

    new-array v12, v1, [D

    .line 222
    .local v12, "yTmp":[D
    array-length v1, v6

    new-array v13, v1, [D

    .line 223
    .local v13, "predictedScaled":[D
    const/4 v14, 0x0

    .line 226
    .local v14, "nordsieckTmp":Lorg/apache/commons/math/linear/Array2DRowRealMatrix;
    new-instance v1, Lorg/apache/commons/math/ode/sampling/NordsieckStepInterpolator;

    invoke-direct {v1}, Lorg/apache/commons/math/ode/sampling/NordsieckStepInterpolator;-><init>()V

    move-object v15, v1

    .line 227
    .local v15, "interpolator":Lorg/apache/commons/math/ode/sampling/NordsieckStepInterpolator;
    invoke-virtual {v15, v3, v10}, Lorg/apache/commons/math/ode/sampling/NordsieckStepInterpolator;->reinitialize([DZ)V

    .line 230
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

    .line 231
    .local v2, "handler":Lorg/apache/commons/math/ode/sampling/StepHandler;
    invoke-interface {v2}, Lorg/apache/commons/math/ode/sampling/StepHandler;->reset()V

    .line 232
    .end local v2    # "handler":Lorg/apache/commons/math/ode/sampling/StepHandler;
    goto :goto_1

    .line 233
    :cond_2
    invoke-virtual {v0, v9}, Lorg/apache/commons/math/ode/AbstractIntegrator;->setStateInitialized(Z)V

    .line 236
    move-wide/from16 v1, p2

    move-wide/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math/ode/MultistepIntegrator;->start(D[DD)V

    .line 237
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    iget-wide v4, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    iget-object v8, v0, Lorg/apache/commons/math/ode/MultistepIntegrator;->scaled:[D

    iget-object v9, v0, Lorg/apache/commons/math/ode/MultistepIntegrator;->nordsieck:Lorg/apache/commons/math/linear/Array2DRowRealMatrix;

    move-wide/from16 v16, v1

    move-wide/from16 v18, v4

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    invoke-virtual/range {v15 .. v21}, Lorg/apache/commons/math/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math/linear/Array2DRowRealMatrix;)V

    .line 238
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    invoke-virtual {v15, v1, v2}, Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 240
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    .line 241
    .local v1, "hNew":D
    invoke-virtual {v15, v1, v2}, Lorg/apache/commons/math/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    .line 243
    const/4 v4, 0x0

    iput-boolean v4, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->isLastStep:Z

    .line 246
    :goto_2
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    move-wide v8, v1

    .line 247
    .end local v1    # "hNew":D
    .local v4, "error":D
    .local v8, "hNew":D
    :goto_3
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpl-double v16, v4, v1

    if-ltz v16, :cond_5

    .line 249
    iput-wide v8, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    .line 252
    move-wide/from16 v16, v1

    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    add-double v1, v18, v1

    .line 253
    .local v1, "stepEnd":D
    invoke-virtual {v15, v1, v2}, Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;->setInterpolatedTime(D)V

    .line 254
    move-wide/from16 v22, v4

    .end local v4    # "error":D
    .local v22, "error":D
    invoke-virtual {v15}, Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;->getInterpolatedState()[D

    move-result-object v4

    array-length v5, v6

    move-wide/from16 v24, v8

    const/4 v8, 0x0

    .end local v8    # "hNew":D
    .local v24, "hNew":D
    invoke-static {v4, v8, v12, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    invoke-virtual {v0, v1, v2, v12, v11}, Lorg/apache/commons/math/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    .line 260
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_4
    array-length v5, v6

    if-ge v4, v5, :cond_3

    .line 261
    iget-wide v8, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    aget-wide v18, v11, v4

    mul-double v8, v8, v18

    aput-wide v8, v13, v4

    .line 260
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    nop

    .line 263
    .end local v4    # "j":I
    iget-object v4, v0, Lorg/apache/commons/math/ode/MultistepIntegrator;->nordsieck:Lorg/apache/commons/math/linear/Array2DRowRealMatrix;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math/ode/nonstiff/AdamsIntegrator;->updateHighOrderDerivativesPhase1(Lorg/apache/commons/math/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math/linear/Array2DRowRealMatrix;

    move-result-object v14

    .line 264
    iget-object v4, v0, Lorg/apache/commons/math/ode/MultistepIntegrator;->scaled:[D

    invoke-virtual {v0, v4, v13, v14}, Lorg/apache/commons/math/ode/nonstiff/AdamsIntegrator;->updateHighOrderDerivativesPhase2([D[DLorg/apache/commons/math/linear/Array2DRowRealMatrix;)V

    .line 267
    new-instance v4, Lorg/apache/commons/math/ode/nonstiff/AdamsMoultonIntegrator$Corrector;

    invoke-direct {v4, v0, v3, v13, v12}, Lorg/apache/commons/math/ode/nonstiff/AdamsMoultonIntegrator$Corrector;-><init>(Lorg/apache/commons/math/ode/nonstiff/AdamsMoultonIntegrator;[D[D[D)V

    invoke-virtual {v14, v4}, Lorg/apache/commons/math/linear/AbstractRealMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math/linear/RealMatrixPreservingVisitor;)D

    move-result-wide v4

    .line 269
    .end local v22    # "error":D
    .local v4, "error":D
    cmpl-double v8, v4, v16

    if-ltz v8, :cond_4

    .line 271
    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/math/ode/MultistepIntegrator;->computeStepGrowShrinkFactor(D)D

    move-result-wide v8

    .line 272
    .local v8, "factor":D
    move-wide/from16 v16, v1

    .end local v1    # "stepEnd":D
    .local v16, "stepEnd":D
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    mul-double/2addr v1, v8

    move-wide/from16 v18, v4

    const/4 v4, 0x0

    .end local v4    # "error":D
    .local v18, "error":D
    invoke-virtual {v0, v1, v2, v10, v4}, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->filterStep(DZZ)D

    move-result-wide v1

    .line 273
    .end local v24    # "hNew":D
    .local v1, "hNew":D
    invoke-virtual {v15, v1, v2}, Lorg/apache/commons/math/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    move-wide v8, v1

    goto :goto_5

    .line 269
    .end local v8    # "factor":D
    .end local v16    # "stepEnd":D
    .end local v18    # "error":D
    .local v1, "stepEnd":D
    .restart local v4    # "error":D
    .restart local v24    # "hNew":D
    :cond_4
    move-wide/from16 v16, v1

    move-wide/from16 v18, v4

    .end local v1    # "stepEnd":D
    .end local v4    # "error":D
    .restart local v16    # "stepEnd":D
    .restart local v18    # "error":D
    move-wide/from16 v8, v24

    .line 275
    .end local v16    # "stepEnd":D
    .end local v24    # "hNew":D
    .local v8, "hNew":D
    :goto_5
    move-wide/from16 v4, v18

    goto :goto_3

    .line 278
    .end local v18    # "error":D
    .restart local v4    # "error":D
    :cond_5
    move-wide/from16 v22, v4

    move-wide/from16 v24, v8

    .end local v4    # "error":D
    .end local v8    # "hNew":D
    .restart local v22    # "error":D
    .restart local v24    # "hNew":D
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    iget-wide v4, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    add-double/2addr v1, v4

    .line 279
    .restart local v1    # "stepEnd":D
    invoke-virtual {v0, v1, v2, v12, v11}, Lorg/apache/commons/math/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    .line 282
    array-length v4, v6

    new-array v4, v4, [D

    .line 283
    .local v4, "correctedScaled":[D
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_6
    array-length v8, v6

    if-ge v5, v8, :cond_6

    .line 284
    iget-wide v8, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    aget-wide v16, v11, v5

    mul-double v8, v8, v16

    aput-wide v8, v4, v5

    .line 283
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_6
    nop

    .line 286
    .end local v5    # "j":I
    invoke-virtual {v0, v13, v4, v14}, Lorg/apache/commons/math/ode/nonstiff/AdamsIntegrator;->updateHighOrderDerivativesPhase2([D[DLorg/apache/commons/math/linear/Array2DRowRealMatrix;)V

    .line 289
    const/4 v8, 0x0

    invoke-static {v12, v8, v3, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    iget-wide v8, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    move-wide/from16 v16, v1

    move-object/from16 v20, v4

    move-wide/from16 v18, v8

    move-object/from16 v21, v14

    .end local v1    # "stepEnd":D
    .end local v4    # "correctedScaled":[D
    .end local v14    # "nordsieckTmp":Lorg/apache/commons/math/linear/Array2DRowRealMatrix;
    .restart local v16    # "stepEnd":D
    .local v20, "correctedScaled":[D
    .local v21, "nordsieckTmp":Lorg/apache/commons/math/linear/Array2DRowRealMatrix;
    invoke-virtual/range {v15 .. v21}, Lorg/apache/commons/math/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math/linear/Array2DRowRealMatrix;)V

    .line 291
    move-wide/from16 v8, v16

    .end local v16    # "stepEnd":D
    .end local v21    # "nordsieckTmp":Lorg/apache/commons/math/linear/Array2DRowRealMatrix;
    .local v8, "stepEnd":D
    .restart local v14    # "nordsieckTmp":Lorg/apache/commons/math/linear/Array2DRowRealMatrix;
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    invoke-virtual {v15, v1, v2}, Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 292
    invoke-virtual {v15}, Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;->shift()V

    .line 293
    invoke-virtual {v15, v8, v9}, Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 294
    move-wide/from16 v4, p5

    move-object v2, v3

    move/from16 v26, v7

    move-object v3, v11

    move-object v1, v15

    move-object/from16 v11, v20

    move-wide/from16 v6, v22

    move-wide/from16 v22, v8

    .end local v7    # "n":I
    .end local v8    # "stepEnd":D
    .end local v15    # "interpolator":Lorg/apache/commons/math/ode/sampling/NordsieckStepInterpolator;
    .end local v20    # "correctedScaled":[D
    .local v1, "interpolator":Lorg/apache/commons/math/ode/sampling/NordsieckStepInterpolator;
    .local v3, "yDot":[D
    .local v6, "error":D
    .local v11, "correctedScaled":[D
    .local v22, "stepEnd":D
    .local v26, "n":I
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math/ode/AbstractIntegrator;->acceptStep(Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v8

    move-object/from16 v27, v3

    .end local v1    # "interpolator":Lorg/apache/commons/math/ode/sampling/NordsieckStepInterpolator;
    .end local v3    # "yDot":[D
    .restart local v15    # "interpolator":Lorg/apache/commons/math/ode/sampling/NordsieckStepInterpolator;
    .local v27, "yDot":[D
    iput-wide v8, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    .line 295
    iput-object v11, v0, Lorg/apache/commons/math/ode/MultistepIntegrator;->scaled:[D

    .line 296
    iput-object v14, v0, Lorg/apache/commons/math/ode/MultistepIntegrator;->nordsieck:Lorg/apache/commons/math/linear/Array2DRowRealMatrix;

    .line 298
    iget-boolean v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->isLastStep:Z

    if-nez v1, :cond_d

    .line 301
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    invoke-virtual {v15, v1, v2}, Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 303
    iget-boolean v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->resetOccurred:Z

    if-eqz v1, :cond_7

    .line 306
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    move-wide/from16 v4, p5

    move-object/from16 v3, p7

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math/ode/MultistepIntegrator;->start(D[DD)V

    .line 307
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    iget-wide v3, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    iget-object v5, v0, Lorg/apache/commons/math/ode/MultistepIntegrator;->scaled:[D

    iget-object v8, v0, Lorg/apache/commons/math/ode/MultistepIntegrator;->nordsieck:Lorg/apache/commons/math/linear/Array2DRowRealMatrix;

    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    move-object/from16 v20, v5

    move-object/from16 v21, v8

    invoke-virtual/range {v15 .. v21}, Lorg/apache/commons/math/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math/linear/Array2DRowRealMatrix;)V

    .line 312
    :cond_7
    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/math/ode/MultistepIntegrator;->computeStepGrowShrinkFactor(D)D

    move-result-wide v1

    .line 313
    .local v1, "factor":D
    iget-wide v3, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    mul-double/2addr v3, v1

    .line 314
    .local v3, "scaledH":D
    iget-wide v8, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    add-double/2addr v8, v3

    .line 315
    .local v8, "nextT":D
    if-eqz v10, :cond_9

    cmpl-double v5, v8, p5

    if-ltz v5, :cond_8

    :goto_7
    const/4 v5, 0x1

    goto :goto_8

    :cond_8
    const/4 v5, 0x0

    goto :goto_8

    :cond_9
    cmpg-double v5, v8, p5

    if-gtz v5, :cond_8

    goto :goto_7

    .line 316
    .local v5, "nextIsLast":Z
    :goto_8
    invoke-virtual {v0, v3, v4, v10, v5}, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->filterStep(DZZ)D

    move-result-wide v16

    .line 318
    .end local v24    # "hNew":D
    .local v16, "hNew":D
    move-wide/from16 v18, v1

    .end local v1    # "factor":D
    .local v18, "factor":D
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    add-double v1, v1, v16

    .line 319
    .local v1, "filteredNextT":D
    if-eqz v10, :cond_b

    cmpl-double v20, v1, p5

    if-ltz v20, :cond_a

    :goto_9
    const/16 v20, 0x1

    goto :goto_a

    :cond_a
    const/16 v20, 0x0

    goto :goto_a

    :cond_b
    cmpg-double v20, v1, p5

    if-gtz v20, :cond_a

    goto :goto_9

    .line 320
    .local v20, "filteredNextIsLast":Z
    :goto_a
    if-eqz v20, :cond_c

    .line 321
    move-wide/from16 v24, v1

    .end local v1    # "filteredNextT":D
    .local v24, "filteredNextT":D
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    sub-double v16, p5, v1

    move-wide/from16 v1, v16

    goto :goto_b

    .line 320
    .end local v24    # "filteredNextT":D
    .restart local v1    # "filteredNextT":D
    :cond_c
    move-wide/from16 v24, v1

    .end local v1    # "filteredNextT":D
    .restart local v24    # "filteredNextT":D
    move-wide/from16 v1, v16

    .line 324
    .end local v16    # "hNew":D
    .local v1, "hNew":D
    :goto_b
    invoke-virtual {v15, v1, v2}, Lorg/apache/commons/math/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    goto :goto_c

    .line 298
    .end local v1    # "hNew":D
    .end local v3    # "scaledH":D
    .end local v5    # "nextIsLast":Z
    .end local v8    # "nextT":D
    .end local v18    # "factor":D
    .end local v20    # "filteredNextIsLast":Z
    .local v24, "hNew":D
    :cond_d
    move-wide/from16 v1, v24

    .line 327
    .end local v6    # "error":D
    .end local v11    # "correctedScaled":[D
    .end local v22    # "stepEnd":D
    .end local v24    # "hNew":D
    .restart local v1    # "hNew":D
    :goto_c
    iget-boolean v3, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->isLastStep:Z

    if-eqz v3, :cond_e

    .line 329
    iget-wide v3, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    .line 330
    .local v3, "stopTime":D
    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    iput-wide v5, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    .line 331
    iput-wide v5, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    .line 332
    return-wide v3

    .line 327
    .end local v3    # "stopTime":D
    :cond_e
    move-object/from16 v6, p4

    move-object/from16 v3, p7

    move/from16 v7, v26

    move-object/from16 v11, v27

    goto/16 :goto_2
.end method
