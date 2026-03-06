.class public Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;
.super Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;
.source "GraggBulirschStoerIntegrator.java"


# static fields
.field private static final METHOD_NAME:Ljava/lang/String; = "Gragg-Bulirsch-Stoer"


# instance fields
.field private coeff:[[D

.field private costPerStep:[I

.field private costPerTimeUnit:[D

.field private maxChecks:I

.field private maxIter:I

.field private maxOrder:I

.field private mudif:I

.field private optimalStep:[D

.field private orderControl1:D

.field private orderControl2:D

.field private performTest:Z

.field private sequence:[I

.field private stabilityReduction:D

.field private stepControl1:D

.field private stepControl2:D

.field private stepControl3:D

.field private stepControl4:D

.field private useInterpolationError:Z


# direct methods
.method public constructor <init>(DDDD)V
    .locals 11
    .param p1, "minStep"    # D
    .param p3, "maxStep"    # D
    .param p5, "scalAbsoluteTolerance"    # D
    .param p7, "scalRelativeTolerance"    # D

    .line 168
    const-string v1, "Gragg-Bulirsch-Stoer"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DDDD)V

    .line 170
    const/4 v5, -0x1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const/4 v3, 0x1

    const/4 v4, -0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->setStabilityCheck(ZIID)V

    .line 171
    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v2 .. v10}, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->setStepsizeControl(DDDD)V

    .line 172
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const/4 v3, -0x1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->setOrderControl(IDD)V

    .line 173
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->setInterpolationControl(ZI)V

    .line 174
    return-void
.end method

.method public constructor <init>(DD[D[D)V
    .locals 11
    .param p1, "minStep"    # D
    .param p3, "maxStep"    # D
    .param p5, "vecAbsoluteTolerance"    # [D
    .param p6, "vecRelativeTolerance"    # [D

    .line 190
    const-string v1, "Gragg-Bulirsch-Stoer"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DD[D[D)V

    .line 192
    const/4 v5, -0x1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const/4 v3, 0x1

    const/4 v4, -0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->setStabilityCheck(ZIID)V

    .line 193
    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v2 .. v10}, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->setStepsizeControl(DDDD)V

    .line 194
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const/4 v3, -0x1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->setOrderControl(IDD)V

    .line 195
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->setInterpolationControl(ZI)V

    .line 196
    return-void
.end method

.method private extrapolate(II[[D[D)V
    .locals 11
    .param p1, "offset"    # I
    .param p2, "k"    # I
    .param p3, "diag"    # [[D
    .param p4, "last"    # [D

    .line 533
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 534
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p4

    if-ge v1, v2, :cond_0

    .line 536
    sub-int v2, p2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, p3, v2

    sub-int v3, p2, v0

    aget-object v3, p3, v3

    aget-wide v3, v3, v1

    iget-object v5, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->coeff:[[D

    add-int v6, p2, p1

    aget-object v5, v5, v6

    add-int/lit8 v6, v0, -0x1

    aget-wide v5, v5, v6

    sub-int v7, p2, v0

    aget-object v7, p3, v7

    aget-wide v7, v7, v1

    sub-int v9, p2, v0

    add-int/lit8 v9, v9, -0x1

    aget-object v9, p3, v9

    aget-wide v9, v9, v1

    sub-double/2addr v7, v9

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    aput-wide v3, v2, v1

    .line 534
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    nop

    .line 533
    .end local v1    # "i":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 542
    .end local v0    # "j":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p4

    if-ge v0, v1, :cond_2

    .line 544
    const/4 v1, 0x0

    aget-object v2, p3, v1

    aget-wide v2, v2, v0

    iget-object v4, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->coeff:[[D

    add-int v5, p2, p1

    aget-object v4, v4, v5

    add-int/lit8 v5, p2, -0x1

    aget-wide v4, v4, v5

    aget-object v1, p3, v1

    aget-wide v6, v1, v0

    aget-wide v8, p4, v0

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aput-wide v2, p4, v0

    .line 542
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    nop

    .line 546
    .end local v0    # "i":I
    return-void
.end method

.method private initializeArrays()V
    .locals 10

    .line 359
    iget v0, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->maxOrder:I

    div-int/lit8 v0, v0, 0x2

    .line 361
    .local v0, "size":I
    iget-object v1, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v1, v1

    if-eq v1, v0, :cond_1

    .line 363
    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    .line 364
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    .line 365
    new-array v1, v0, [[D

    iput-object v1, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->coeff:[[D

    .line 366
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    .line 367
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    .line 370
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math/ode/AbstractIntegrator;->requiresDenseOutput()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 372
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 373
    iget-object v2, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x2

    aput v3, v2, v1

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    nop

    .end local v1    # "k":I
    goto :goto_2

    .line 377
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "k":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 378
    iget-object v2, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    add-int/lit8 v3, v1, 0x1

    mul-int/lit8 v3, v3, 0x2

    aput v3, v2, v1

    .line 377
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 384
    .end local v1    # "k":I
    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    iget-object v2, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v3

    .line 385
    const/4 v1, 0x1

    .restart local v1    # "k":I
    :goto_3
    if-ge v1, v0, :cond_5

    .line 386
    iget-object v2, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    iget-object v3, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    iget-object v4, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v4, v4, v1

    add-int/2addr v3, v4

    aput v3, v2, v1

    .line 385
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    nop

    .line 390
    .end local v1    # "k":I
    const/4 v1, 0x0

    .restart local v1    # "k":I
    :goto_4
    if-ge v1, v0, :cond_8

    .line 391
    iget-object v2, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->coeff:[[D

    if-lez v1, :cond_6

    new-array v3, v1, [D

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    :goto_5
    aput-object v3, v2, v1

    .line 392
    const/4 v2, 0x0

    .local v2, "l":I
    :goto_6
    if-ge v2, v1, :cond_7

    .line 393
    iget-object v3, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v3, v3, v1

    int-to-double v3, v3

    iget-object v5, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    sub-int v6, v1, v2

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    int-to-double v5, v5

    div-double/2addr v3, v5

    .line 394
    .local v3, "ratio":D
    iget-object v5, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->coeff:[[D

    aget-object v5, v5, v1

    mul-double v6, v3, v3

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    div-double/2addr v8, v6

    aput-wide v8, v5, v2

    .line 392
    .end local v3    # "ratio":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    nop

    .line 390
    .end local v2    # "l":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    nop

    .line 398
    .end local v1    # "k":I
    return-void
.end method

.method private rescale([D[D[D)V
    .locals 7
    .param p1, "y1"    # [D
    .param p2, "y2"    # [D
    .param p3, "scale"    # [D

    .line 429
    iget-object v0, p0, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    if-nez v0, :cond_1

    .line 430
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 431
    aget-wide v1, p1, v0

    invoke-static {v1, v2}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v1

    aget-wide v3, p2, v0

    invoke-static {v3, v4}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math/util/FastMath;->max(DD)D

    move-result-wide v1

    .line 432
    .local v1, "yi":D
    iget-wide v3, p0, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalAbsoluteTolerance:D

    iget-wide v5, p0, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalRelativeTolerance:D

    mul-double/2addr v5, v1

    add-double/2addr v3, v5

    aput-wide v3, p3, v0

    .line 430
    .end local v1    # "yi":D
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .end local v0    # "i":I
    goto :goto_2

    .line 435
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_2

    .line 436
    aget-wide v1, p1, v0

    invoke-static {v1, v2}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v1

    aget-wide v3, p2, v0

    invoke-static {v3, v4}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math/util/FastMath;->max(DD)D

    move-result-wide v1

    .line 437
    .restart local v1    # "yi":D
    iget-object v3, p0, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v3, v3, v0

    iget-object v5, p0, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    aget-wide v5, v5, v0

    mul-double/2addr v5, v1

    add-double/2addr v3, v5

    aput-wide v3, p3, v0

    .line 435
    .end local v1    # "yi":D
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 440
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method private tryStep(D[DDI[D[[D[D[D[D)Z
    .locals 24
    .param p1, "t0"    # D
    .param p3, "y0"    # [D
    .param p4, "step"    # D
    .param p6, "k"    # I
    .param p7, "scale"    # [D
    .param p8, "f"    # [[D
    .param p9, "yMiddle"    # [D
    .param p10, "yEnd"    # [D
    .param p11, "yTmp"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/ode/DerivativeException;
        }
    .end annotation

    .line 465
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p10

    iget-object v5, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v5, v5, v2

    .line 466
    .local v5, "n":I
    int-to-double v6, v5

    div-double v6, p4, v6

    .line 467
    .local v6, "subStep":D
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v6

    .line 470
    .local v8, "subStep2":D
    add-double v10, p1, v6

    .line 471
    .local v10, "t":D
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    array-length v13, v1

    const/4 v14, 0x0

    if-ge v12, v13, :cond_0

    .line 472
    aget-wide v15, v1, v12

    aput-wide v15, p11, v12

    .line 473
    aget-wide v15, v1, v12

    aget-object v13, p8, v14

    aget-wide v13, v13, v12

    mul-double/2addr v13, v6

    add-double/2addr v15, v13

    aput-wide v15, v4, v12

    .line 471
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 475
    .end local v12    # "i":I
    const/4 v12, 0x1

    aget-object v13, p8, v12

    invoke-virtual {v0, v10, v11, v4, v13}, Lorg/apache/commons/math/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    .line 478
    const/4 v13, 0x1

    .local v13, "j":I
    :goto_1
    if-ge v13, v5, :cond_6

    .line 480
    mul-int/lit8 v15, v13, 0x2

    if-ne v15, v5, :cond_1

    .line 482
    array-length v15, v1

    move/from16 v16, v12

    move-object/from16 v12, p9

    invoke-static {v4, v14, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 480
    :cond_1
    move/from16 v16, v12

    move-object/from16 v12, p9

    .line 485
    :goto_2
    add-double/2addr v10, v6

    .line 486
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    move/from16 v17, v14

    array-length v14, v1

    if-ge v15, v14, :cond_2

    .line 487
    aget-wide v18, v4, v15

    .line 488
    .local v18, "middle":D
    aget-wide v20, p11, v15

    aget-object v14, p8, v13

    aget-wide v22, v14, v15

    mul-double v22, v22, v8

    add-double v20, v20, v22

    aput-wide v20, v4, v15

    .line 489
    aput-wide v18, p11, v15

    .line 486
    .end local v18    # "middle":D
    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v17

    goto :goto_3

    :cond_2
    nop

    .line 492
    .end local v15    # "i":I
    add-int/lit8 v14, v13, 0x1

    aget-object v14, p8, v14

    invoke-virtual {v0, v10, v11, v4, v14}, Lorg/apache/commons/math/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    .line 495
    iget-boolean v14, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->performTest:Z

    if-eqz v14, :cond_5

    iget v14, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->maxChecks:I

    if-gt v13, v14, :cond_5

    iget v14, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->maxIter:I

    if-ge v2, v14, :cond_5

    .line 496
    const-wide/16 v14, 0x0

    .line 497
    .local v14, "initialNorm":D
    const/16 v18, 0x0

    move/from16 v0, v18

    .local v0, "l":I
    :goto_4
    array-length v2, v3

    if-ge v0, v2, :cond_3

    .line 498
    aget-object v2, p8, v17

    aget-wide v18, v2, v0

    aget-wide v20, v3, v0

    div-double v18, v18, v20

    .line 499
    .local v18, "ratio":D
    mul-double v20, v18, v18

    add-double v14, v14, v20

    .line 497
    .end local v18    # "ratio":D
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, p6

    goto :goto_4

    :cond_3
    nop

    .line 501
    .end local v0    # "l":I
    const-wide/16 v18, 0x0

    .line 502
    .local v18, "deltaNorm":D
    const/4 v0, 0x0

    .restart local v0    # "l":I
    :goto_5
    array-length v2, v3

    if-ge v0, v2, :cond_4

    .line 503
    add-int/lit8 v2, v13, 0x1

    aget-object v2, p8, v2

    aget-wide v20, v2, v0

    aget-object v2, p8, v17

    aget-wide v22, v2, v0

    sub-double v20, v20, v22

    aget-wide v22, v3, v0

    div-double v20, v20, v22

    .line 504
    .local v20, "ratio":D
    mul-double v22, v20, v20

    add-double v18, v18, v22

    .line 502
    .end local v20    # "ratio":D
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    nop

    .line 506
    .end local v0    # "l":I
    const-wide v2, 0x3cd203af9ee75616L    # 1.0E-15

    invoke-static {v2, v3, v14, v15}, Lorg/apache/commons/math/util/FastMath;->max(DD)D

    move-result-wide v2

    const-wide/high16 v20, 0x4010000000000000L    # 4.0

    mul-double v2, v2, v20

    cmpl-double v0, v18, v2

    if-lez v0, :cond_5

    .line 507
    return v17

    .line 478
    .end local v14    # "initialNorm":D
    .end local v18    # "deltaNorm":D
    :cond_5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p6

    move-object/from16 v3, p7

    move/from16 v12, v16

    move/from16 v14, v17

    goto/16 :goto_1

    :cond_6
    move/from16 v16, v12

    move-object/from16 v12, p9

    .line 514
    .end local v13    # "j":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v2, v1

    if-ge v0, v2, :cond_7

    .line 515
    aget-wide v2, p11, v0

    aget-wide v13, v4, v0

    add-double/2addr v2, v13

    aget-object v13, p8, v5

    aget-wide v13, v13, v0

    mul-double/2addr v13, v6

    add-double/2addr v2, v13

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v13

    aput-wide v2, v4, v0

    .line 514
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    nop

    .line 518
    .end local v0    # "i":I
    return v16
.end method


# virtual methods
.method public addEventHandler(Lorg/apache/commons/math/ode/events/EventHandler;DDI)V
    .locals 0
    .param p1, "function"    # Lorg/apache/commons/math/ode/events/EventHandler;
    .param p2, "maxCheckInterval"    # D
    .param p4, "convergence"    # D
    .param p6, "maxIterationCount"    # I

    .line 349
    invoke-super/range {p0 .. p6}, Lorg/apache/commons/math/ode/AbstractIntegrator;->addEventHandler(Lorg/apache/commons/math/ode/events/EventHandler;DDI)V

    .line 352
    invoke-direct {p0}, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->initializeArrays()V

    .line 354
    return-void
.end method

.method public addStepHandler(Lorg/apache/commons/math/ode/sampling/StepHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/apache/commons/math/ode/sampling/StepHandler;

    .line 336
    invoke-super {p0, p1}, Lorg/apache/commons/math/ode/AbstractIntegrator;->addStepHandler(Lorg/apache/commons/math/ode/sampling/StepHandler;)V

    .line 339
    invoke-direct {p0}, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->initializeArrays()V

    .line 341
    return-void
.end method

.method public integrate(Lorg/apache/commons/math/ode/FirstOrderDifferentialEquations;D[DD[D)D
    .locals 57
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

    .line 554
    move-object/from16 v0, p0

    move-wide/from16 v12, p2

    move-object/from16 v14, p4

    move-object/from16 v2, p7

    invoke-virtual/range {p0 .. p7}, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->sanityChecks(Lorg/apache/commons/math/ode/FirstOrderDifferentialEquations;D[DD[D)V

    .line 555
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math/ode/AbstractIntegrator;->setEquations(Lorg/apache/commons/math/ode/FirstOrderDifferentialEquations;)V

    .line 556
    invoke-virtual {v0}, Lorg/apache/commons/math/ode/AbstractIntegrator;->resetEvaluations()V

    .line 557
    cmpl-double v1, p5, v12

    const/4 v15, 0x0

    const/4 v11, 0x1

    if-lez v1, :cond_0

    move v7, v11

    goto :goto_0

    :cond_0
    move v7, v15

    .line 560
    .local v7, "forward":Z
    :goto_0
    array-length v1, v14

    new-array v8, v1, [D

    .line 561
    .local v8, "yDot0":[D
    array-length v1, v14

    new-array v4, v1, [D

    .line 562
    .local v4, "y1":[D
    array-length v1, v14

    new-array v9, v1, [D

    .line 563
    .local v9, "yTmp":[D
    array-length v1, v14

    new-array v10, v1, [D

    .line 565
    .local v10, "yTmpDot":[D
    iget-object v1, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v1, v1

    sub-int/2addr v1, v11

    new-array v1, v1, [[D

    .line 566
    .local v1, "diagonal":[[D
    iget-object v3, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v3, v3

    sub-int/2addr v3, v11

    new-array v3, v3, [[D

    .line 567
    .local v3, "y1Diag":[[D
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1
    iget-object v6, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v6, v6

    sub-int/2addr v6, v11

    if-ge v5, v6, :cond_1

    .line 568
    array-length v6, v14

    new-array v6, v6, [D

    aput-object v6, v1, v5

    .line 569
    array-length v6, v14

    new-array v6, v6, [D

    aput-object v6, v3, v5

    .line 567
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 572
    .end local v5    # "k":I
    iget-object v5, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v5, v5

    new-array v5, v5, [[[D

    .line 573
    .local v5, "fk":[[[D
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_2
    move/from16 v16, v11

    iget-object v11, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v11, v11

    if-ge v6, v11, :cond_3

    .line 575
    iget-object v11, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v11, v11, v6

    add-int/lit8 v11, v11, 0x1

    new-array v11, v11, [[D

    aput-object v11, v5, v6

    .line 578
    aget-object v11, v5, v6

    aput-object v8, v11, v15

    .line 580
    const/4 v11, 0x0

    .local v11, "l":I
    :goto_3
    iget-object v15, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v15, v15, v6

    if-ge v11, v15, :cond_2

    .line 581
    aget-object v15, v5, v6

    add-int/lit8 v18, v11, 0x1

    move-object/from16 v19, v1

    .end local v1    # "diagonal":[[D
    .local v19, "diagonal":[[D
    array-length v1, v14

    new-array v1, v1, [D

    aput-object v1, v15, v18

    .line 580
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v19

    const/4 v15, 0x0

    goto :goto_3

    .end local v19    # "diagonal":[[D
    .restart local v1    # "diagonal":[[D
    :cond_2
    move-object/from16 v19, v1

    .line 573
    .end local v1    # "diagonal":[[D
    .end local v11    # "l":I
    .restart local v19    # "diagonal":[[D
    add-int/lit8 v6, v6, 0x1

    move/from16 v11, v16

    const/4 v15, 0x0

    goto :goto_2

    .end local v19    # "diagonal":[[D
    .restart local v1    # "diagonal":[[D
    :cond_3
    move-object/from16 v19, v1

    .line 586
    .end local v1    # "diagonal":[[D
    .end local v6    # "k":I
    .restart local v19    # "diagonal":[[D
    if-eq v2, v14, :cond_4

    .line 587
    array-length v1, v14

    const/4 v6, 0x0

    invoke-static {v14, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 590
    :cond_4
    array-length v1, v14

    new-array v1, v1, [D

    .line 591
    .local v1, "yDot1":[D
    const/4 v6, 0x0

    .line 592
    .local v6, "yMidDots":[[D
    invoke-virtual {v0}, Lorg/apache/commons/math/ode/AbstractIntegrator;->requiresDenseOutput()Z

    move-result v15

    .line 593
    .local v15, "denseOutput":Z
    if-eqz v15, :cond_6

    .line 594
    const/16 v18, 0x2

    iget-object v11, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v11, v11

    mul-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, 0x1

    new-array v6, v11, [[D

    .line 595
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_4
    move-object/from16 v20, v1

    .end local v1    # "yDot1":[D
    .local v20, "yDot1":[D
    array-length v1, v6

    if-ge v11, v1, :cond_5

    .line 596
    array-length v1, v14

    new-array v1, v1, [D

    aput-object v1, v6, v11

    .line 595
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v20

    goto :goto_4

    :cond_5
    nop

    .end local v11    # "j":I
    goto :goto_5

    .line 599
    .end local v20    # "yDot1":[D
    .restart local v1    # "yDot1":[D
    :cond_6
    move-object/from16 v20, v1

    const/16 v18, 0x2

    .end local v1    # "yDot1":[D
    .restart local v20    # "yDot1":[D
    move/from16 v1, v16

    new-array v6, v1, [[D

    .line 600
    array-length v1, v14

    new-array v1, v1, [D

    const/16 v17, 0x0

    aput-object v1, v6, v17

    .line 604
    :goto_5
    iget v1, v0, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    new-array v11, v1, [D

    .line 605
    .local v11, "scale":[D
    invoke-direct {v0, v2, v2, v11}, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->rescale([D[D[D)V

    .line 609
    iget-object v1, v0, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    if-nez v1, :cond_7

    iget-wide v1, v0, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalRelativeTolerance:D

    goto :goto_6

    :cond_7
    iget-object v1, v0, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    const/16 v17, 0x0

    aget-wide v1, v1, v17

    .line 610
    .local v1, "tol":D
    :goto_6
    move-object/from16 v22, v3

    move-object/from16 v21, v4

    .end local v3    # "y1Diag":[[D
    .end local v4    # "y1":[D
    .local v21, "y1":[D
    .local v22, "y1Diag":[[D
    const-wide v3, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-static {v3, v4, v1, v2}, Lorg/apache/commons/math/util/FastMath;->max(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/commons/math/util/FastMath;->log10(D)D

    move-result-wide v23

    .line 611
    .local v23, "log10R":D
    iget-object v3, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    const-wide v25, 0x3fe3333333333333L    # 0.6

    mul-double v25, v25, v23

    const-wide/high16 v27, 0x3fe0000000000000L    # 0.5

    sub-double v25, v27, v25

    .line 613
    move-wide/from16 v29, v1

    .end local v1    # "tol":D
    .local v29, "tol":D
    invoke-static/range {v25 .. v26}, Lorg/apache/commons/math/util/FastMath;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 612
    invoke-static {v3, v1}, Lorg/apache/commons/math/util/FastMath;->min(II)I

    move-result v1

    .line 611
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lorg/apache/commons/math/util/FastMath;->max(II)I

    move-result v25

    .line 615
    .local v25, "targetIter":I
    const/16 v26, 0x0

    .line 616
    .local v26, "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    if-eqz v15, :cond_8

    .line 617
    new-instance v1, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerStepInterpolator;

    move-object/from16 v2, v20

    move-object/from16 v20, v5

    move-object v5, v2

    move-object/from16 v2, p7

    move-object v3, v8

    move-object/from16 v4, v21

    .end local v8    # "yDot0":[D
    .end local v21    # "y1":[D
    .local v3, "yDot0":[D
    .restart local v4    # "y1":[D
    .local v5, "yDot1":[D
    .local v20, "fk":[[[D
    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerStepInterpolator;-><init>([D[D[D[D[[DZ)V

    move-object/from16 v21, v6

    move-object v3, v2

    move-object v2, v4

    move-object v4, v1

    move-object v1, v5

    .end local v3    # "yDot0":[D
    .end local v5    # "yDot1":[D
    .end local v6    # "yMidDots":[[D
    .end local v26    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    .local v1, "yDot1":[D
    .local v2, "y1":[D
    .local v4, "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    .restart local v8    # "yDot0":[D
    .local v21, "yMidDots":[[D
    goto :goto_7

    .line 621
    .end local v1    # "yDot1":[D
    .end local v2    # "y1":[D
    .end local v4    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    .local v5, "fk":[[[D
    .restart local v6    # "yMidDots":[[D
    .local v20, "yDot1":[D
    .local v21, "y1":[D
    .restart local v26    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    :cond_8
    move-object/from16 v3, p7

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    .end local v5    # "fk":[[[D
    .end local v6    # "yMidDots":[[D
    .restart local v1    # "yDot1":[D
    .restart local v2    # "y1":[D
    .local v20, "fk":[[[D
    .local v21, "yMidDots":[[D
    new-instance v4, Lorg/apache/commons/math/ode/sampling/DummyStepInterpolator;

    invoke-direct {v4, v3, v1, v7}, Lorg/apache/commons/math/ode/sampling/DummyStepInterpolator;-><init>([D[DZ)V

    .line 623
    .end local v26    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    .restart local v4    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    :goto_7
    invoke-virtual {v4, v12, v13}, Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 625
    iput-wide v12, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    .line 626
    const-wide/16 v5, 0x0

    .line 627
    .local v5, "hNew":D
    const-wide v31, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 628
    .local v31, "maxError":D
    const/16 v26, 0x0

    .line 629
    .local v26, "previousRejected":Z
    const/16 v33, 0x1

    .line 630
    .local v33, "firstTime":Z
    const/16 v34, 0x1

    .line 631
    .local v34, "newStep":Z
    const/16 v35, 0x0

    .line 632
    .local v35, "firstStepAlreadyComputed":Z
    move-object/from16 v36, v1

    .end local v1    # "yDot1":[D
    .local v36, "yDot1":[D
    iget-object v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lorg/apache/commons/math/ode/sampling/StepHandler;

    .line 633
    .local v37, "handler":Lorg/apache/commons/math/ode/sampling/StepHandler;
    invoke-interface/range {v37 .. v37}, Lorg/apache/commons/math/ode/sampling/StepHandler;->reset()V

    .line 634
    .end local v37    # "handler":Lorg/apache/commons/math/ode/sampling/StepHandler;
    goto :goto_8

    .line 635
    :cond_9
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/math/ode/AbstractIntegrator;->setStateInitialized(Z)V

    .line 636
    move/from16 v17, v1

    iget-object v1, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    const-wide/16 v37, 0x0

    aput-wide v37, v1, v17

    .line 637
    move/from16 v1, v17

    iput-boolean v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->isLastStep:Z

    move/from16 v37, v34

    move/from16 v38, v35

    move/from16 v35, v33

    move-wide/from16 v33, v31

    move/from16 v31, v25

    move/from16 v32, v26

    move-wide/from16 v25, v5

    .line 641
    .end local v5    # "hNew":D
    .end local v26    # "previousRejected":Z
    .end local v34    # "newStep":Z
    .local v25, "hNew":D
    .local v31, "targetIter":I
    .local v32, "previousRejected":Z
    .local v33, "maxError":D
    .local v35, "firstTime":Z
    .local v37, "newStep":Z
    .local v38, "firstStepAlreadyComputed":Z
    :goto_9
    const/16 v39, 0x0

    .line 643
    .local v39, "reject":Z
    if-eqz v37, :cond_c

    .line 645
    invoke-virtual {v4}, Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;->shift()V

    .line 648
    if-nez v38, :cond_a

    .line 649
    iget-wide v5, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    invoke-virtual {v0, v5, v6, v3, v8}, Lorg/apache/commons/math/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    .line 652
    :cond_a
    if-eqz v35, :cond_b

    .line 653
    mul-int/lit8 v1, v31, 0x2

    const/16 v16, 0x1

    add-int/lit8 v1, v1, 0x1

    iget-wide v5, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    move-object/from16 v40, v4

    move-object v4, v11

    move-object/from16 v12, v19

    move-object/from16 v13, v22

    move-object v11, v2

    move v2, v7

    move/from16 v19, v15

    move-object/from16 v15, v36

    move-object v7, v3

    move v3, v1

    move-object/from16 v1, p1

    .end local v7    # "forward":Z
    .end local v22    # "y1Diag":[[D
    .end local v36    # "yDot1":[D
    .local v2, "forward":Z
    .local v4, "scale":[D
    .local v11, "y1":[D
    .local v12, "diagonal":[[D
    .local v13, "y1Diag":[[D
    .local v15, "yDot1":[D
    .local v19, "denseOutput":Z
    .local v40, "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    invoke-virtual/range {v0 .. v10}, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->initializeStep(Lorg/apache/commons/math/ode/FirstOrderDifferentialEquations;ZI[DD[D[D[D[D)D

    move-result-wide v25

    move v7, v2

    move-object/from16 v22, v10

    .end local v2    # "forward":Z
    .end local v10    # "yTmpDot":[D
    .restart local v7    # "forward":Z
    .local v22, "yTmpDot":[D
    goto :goto_a

    .line 652
    .end local v12    # "diagonal":[[D
    .end local v13    # "y1Diag":[[D
    .end local v40    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    .local v2, "y1":[D
    .local v4, "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    .restart local v10    # "yTmpDot":[D
    .local v11, "scale":[D
    .local v15, "denseOutput":Z
    .local v19, "diagonal":[[D
    .local v22, "y1Diag":[[D
    .restart local v36    # "yDot1":[D
    :cond_b
    move-object/from16 v40, v4

    move-object v4, v11

    move-object/from16 v12, v19

    move-object/from16 v13, v22

    const/16 v16, 0x1

    move-object v11, v2

    move-object/from16 v22, v10

    move/from16 v19, v15

    move-object/from16 v15, v36

    .line 658
    .end local v2    # "y1":[D
    .end local v10    # "yTmpDot":[D
    .end local v36    # "yDot1":[D
    .local v4, "scale":[D
    .local v11, "y1":[D
    .restart local v12    # "diagonal":[[D
    .restart local v13    # "y1Diag":[[D
    .local v15, "yDot1":[D
    .local v19, "denseOutput":Z
    .local v22, "yTmpDot":[D
    .restart local v40    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    :goto_a
    const/16 v37, 0x0

    move-wide/from16 v1, v25

    goto :goto_b

    .line 643
    .end local v12    # "diagonal":[[D
    .end local v13    # "y1Diag":[[D
    .end local v40    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    .restart local v2    # "y1":[D
    .local v4, "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    .restart local v10    # "yTmpDot":[D
    .local v11, "scale":[D
    .local v15, "denseOutput":Z
    .local v19, "diagonal":[[D
    .local v22, "y1Diag":[[D
    .restart local v36    # "yDot1":[D
    :cond_c
    move-object/from16 v40, v4

    move-object v4, v11

    move-object/from16 v12, v19

    move-object/from16 v13, v22

    const/16 v16, 0x1

    move-object v11, v2

    move-object/from16 v22, v10

    move/from16 v19, v15

    move-object/from16 v15, v36

    .end local v2    # "y1":[D
    .end local v10    # "yTmpDot":[D
    .end local v36    # "yDot1":[D
    .local v4, "scale":[D
    .local v11, "y1":[D
    .restart local v12    # "diagonal":[[D
    .restart local v13    # "y1Diag":[[D
    .local v15, "yDot1":[D
    .local v19, "denseOutput":Z
    .local v22, "yTmpDot":[D
    .restart local v40    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    move-wide/from16 v1, v25

    .line 662
    .end local v25    # "hNew":D
    .local v1, "hNew":D
    :goto_b
    iput-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    .line 665
    if-eqz v7, :cond_d

    iget-wide v5, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    move-wide/from16 v25, v1

    .end local v1    # "hNew":D
    .restart local v25    # "hNew":D
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    add-double/2addr v5, v1

    cmpl-double v1, v5, p5

    if-gtz v1, :cond_e

    :goto_c
    goto :goto_d

    .end local v25    # "hNew":D
    .restart local v1    # "hNew":D
    :cond_d
    move-wide/from16 v25, v1

    .end local v1    # "hNew":D
    .restart local v25    # "hNew":D
    goto :goto_c

    :goto_d
    if-nez v7, :cond_f

    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    iget-wide v5, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    add-double/2addr v1, v5

    cmpg-double v1, v1, p5

    if-gez v1, :cond_f

    .line 667
    :cond_e
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    sub-double v1, p5, v1

    iput-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    .line 669
    :cond_f
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    iget-wide v5, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    add-double v41, v1, v5

    .line 670
    .local v41, "nextT":D
    if-eqz v7, :cond_11

    cmpl-double v1, v41, p5

    if-ltz v1, :cond_10

    :goto_e
    move/from16 v1, v16

    goto :goto_f

    :cond_10
    const/4 v1, 0x0

    goto :goto_f

    :cond_11
    cmpg-double v1, v41, p5

    if-gtz v1, :cond_10

    goto :goto_e

    :goto_f
    iput-boolean v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->isLastStep:Z

    .line 673
    const/4 v1, -0x1

    .line 674
    .local v1, "k":I
    const/4 v2, 0x1

    move v6, v1

    move/from16 v1, v31

    move/from16 v31, v2

    .local v1, "targetIter":I
    .local v6, "k":I
    .local v31, "loop":Z
    :goto_10
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-eqz v31, :cond_24

    .line 676
    add-int/lit8 v6, v6, 0x1

    .line 679
    move-wide/from16 v43, v2

    move v3, v1

    .end local v1    # "targetIter":I
    .local v3, "targetIter":I
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    move v10, v7

    move-object v7, v4

    .end local v4    # "scale":[D
    .local v7, "scale":[D
    .local v10, "forward":Z
    iget-wide v4, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    move-object/from16 v36, v8

    .end local v8    # "yDot0":[D
    .local v36, "yDot0":[D
    aget-object v8, v20, v6

    .line 680
    if-nez v6, :cond_12

    const/16 v17, 0x0

    aget-object v45, v21, v17

    goto :goto_11

    :cond_12
    add-int/lit8 v45, v6, -0x1

    aget-object v45, v12, v45

    .line 681
    :goto_11
    if-nez v6, :cond_13

    move-object/from16 v46, v11

    goto :goto_12

    :cond_13
    add-int/lit8 v46, v6, -0x1

    aget-object v46, v13, v46

    .line 679
    :goto_12
    move v14, v3

    move-object/from16 v16, v12

    move-object/from16 v47, v36

    move-object/from16 v3, p7

    move v12, v10

    move-object/from16 v36, v15

    move-object/from16 v10, v46

    move-object v15, v11

    move-object v11, v9

    move-object/from16 v9, v45

    .end local v3    # "targetIter":I
    .end local v9    # "yTmp":[D
    .end local v10    # "forward":Z
    .local v11, "yTmp":[D
    .local v12, "forward":Z
    .local v14, "targetIter":I
    .local v15, "y1":[D
    .local v16, "diagonal":[[D
    .local v36, "yDot1":[D
    .local v47, "yDot0":[D
    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->tryStep(D[DDI[D[[D[D[D[D)Z

    move-result v1

    move-object v8, v7

    move-object v9, v11

    move-object v7, v3

    .end local v7    # "scale":[D
    .end local v11    # "yTmp":[D
    .local v8, "scale":[D
    .restart local v9    # "yTmp":[D
    if-nez v1, :cond_14

    .line 685
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    iget-wide v3, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->stabilityReduction:D

    mul-double/2addr v1, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v12, v3}, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->filterStep(DZZ)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v25

    .line 686
    const/16 v39, 0x1

    .line 687
    const/16 v31, 0x0

    move-object v4, v8

    move v7, v12

    move v1, v14

    move-object v11, v15

    move-object/from16 v12, v16

    move-object/from16 v15, v36

    move-object/from16 v8, v47

    const/16 v16, 0x1

    const/16 v18, 0x2

    move-object/from16 v14, p4

    goto :goto_10

    .line 692
    :cond_14
    const/4 v3, 0x0

    if-lez v6, :cond_23

    .line 696
    invoke-direct {v0, v3, v6, v13, v15}, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->extrapolate(II[[D[D)V

    .line 697
    invoke-direct {v0, v7, v15, v8}, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->rescale([D[D[D)V

    .line 700
    const-wide/16 v1, 0x0

    .line 701
    .local v1, "error":D
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_13
    iget v4, v0, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    if-ge v3, v4, :cond_15

    .line 702
    aget-wide v4, v15, v3

    const/16 v17, 0x0

    aget-object v10, v13, v17

    aget-wide v10, v10, v3

    sub-double/2addr v4, v10

    invoke-static {v4, v5}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v4

    aget-wide v10, v8, v3

    div-double/2addr v4, v10

    .line 703
    .local v4, "e":D
    mul-double v10, v4, v4

    add-double/2addr v1, v10

    .line 701
    .end local v4    # "e":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_15
    nop

    .line 705
    .end local v3    # "j":I
    iget v3, v0, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    int-to-double v3, v3

    div-double v3, v1, v3

    invoke-static {v3, v4}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v1

    .line 707
    const-wide v3, 0x430c6bf526340000L    # 1.0E15

    cmpl-double v3, v1, v3

    if-gtz v3, :cond_22

    const/4 v3, 0x1

    if-le v6, v3, :cond_16

    cmpl-double v3, v1, v33

    if-lez v3, :cond_16

    move-wide/from16 v45, v1

    goto/16 :goto_18

    .line 714
    :cond_16
    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    mul-double/2addr v3, v1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4, v10, v11}, Lorg/apache/commons/math/util/FastMath;->max(DD)D

    move-result-wide v33

    .line 717
    mul-int/lit8 v3, v6, 0x2

    const/16 v18, 0x1

    add-int/lit8 v3, v3, 0x1

    int-to-double v3, v3

    div-double v3, v10, v3

    .line 718
    .local v3, "exp":D
    move-wide/from16 v43, v10

    iget-wide v10, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl2:D

    move-wide/from16 v45, v1

    .end local v1    # "error":D
    .local v45, "error":D
    iget-wide v1, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl1:D

    div-double v1, v45, v1

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math/util/FastMath;->pow(DD)D

    move-result-wide v1

    div-double/2addr v10, v1

    .line 719
    .local v10, "fac":D
    iget-wide v1, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl3:D

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math/util/FastMath;->pow(DD)D

    move-result-wide v1

    .line 720
    .local v1, "pow":D
    move-wide/from16 v49, v1

    .end local v1    # "pow":D
    .local v49, "pow":D
    iget-wide v1, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl4:D

    div-double v1, v49, v1

    move-wide/from16 v51, v3

    .end local v3    # "exp":D
    .local v51, "exp":D
    div-double v3, v43, v49

    invoke-static {v3, v4, v10, v11}, Lorg/apache/commons/math/util/FastMath;->min(DD)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math/util/FastMath;->max(DD)D

    move-result-wide v1

    .line 721
    .end local v10    # "fac":D
    .local v1, "fac":D
    iget-object v3, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    iget-wide v4, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    mul-double/2addr v4, v1

    const/4 v10, 0x1

    invoke-virtual {v0, v4, v5, v12, v10}, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->filterStep(DZZ)D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v4

    aput-wide v4, v3, v6

    .line 722
    iget-object v3, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    iget-object v4, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    aget v4, v4, v6

    int-to-double v4, v4

    iget-object v10, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v10, v10, v6

    div-double/2addr v4, v10

    aput-wide v4, v3, v6

    .line 725
    sub-int v3, v6, v14

    packed-switch v3, :pswitch_data_0

    .line 795
    if-nez v35, :cond_17

    iget-boolean v3, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->isLastStep:Z

    if-eqz v3, :cond_21

    :cond_17
    cmpg-double v3, v45, v43

    if-gtz v3, :cond_21

    .line 796
    const/4 v3, 0x0

    move/from16 v31, v3

    move v1, v14

    .end local v31    # "loop":Z
    .local v3, "loop":Z
    goto/16 :goto_17

    .line 782
    .end local v3    # "loop":Z
    .restart local v31    # "loop":Z
    :pswitch_0
    cmpl-double v3, v45, v43

    if-lez v3, :cond_19

    .line 783
    const/16 v39, 0x1

    .line 784
    const/4 v10, 0x1

    if-le v14, v10, :cond_18

    iget-object v3, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    add-int/lit8 v4, v14, -0x1

    aget-wide v3, v3, v4

    iget-wide v10, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    iget-object v5, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    aget-wide v43, v5, v14

    mul-double v10, v10, v43

    cmpg-double v3, v3, v10

    if-gez v3, :cond_18

    .line 787
    add-int/lit8 v3, v14, -0x1

    move v14, v3

    .line 789
    :cond_18
    iget-object v3, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v25, v3, v14

    .line 791
    :cond_19
    const/4 v3, 0x0

    .line 792
    .end local v31    # "loop":Z
    .restart local v3    # "loop":Z
    move/from16 v31, v3

    move v1, v14

    goto/16 :goto_17

    .line 758
    .end local v3    # "loop":Z
    .restart local v31    # "loop":Z
    :pswitch_1
    cmpg-double v3, v45, v43

    if-gtz v3, :cond_1a

    .line 760
    const/4 v3, 0x0

    move/from16 v31, v3

    move v1, v14

    .end local v31    # "loop":Z
    .restart local v3    # "loop":Z
    goto/16 :goto_17

    .line 765
    .end local v3    # "loop":Z
    .restart local v31    # "loop":Z
    :cond_1a
    iget-object v3, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    add-int/lit8 v4, v6, 0x1

    aget v3, v3, v4

    int-to-double v3, v3

    iget-object v5, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    const/16 v17, 0x0

    aget v5, v5, v17

    int-to-double v10, v5

    div-double/2addr v3, v10

    .line 766
    .local v3, "ratio":D
    mul-double v10, v3, v3

    cmpl-double v5, v45, v10

    if-lez v5, :cond_1d

    .line 769
    const/16 v39, 0x1

    .line 770
    const/16 v31, 0x0

    .line 771
    const/4 v10, 0x1

    if-le v14, v10, :cond_1b

    iget-object v5, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    add-int/lit8 v10, v14, -0x1

    aget-wide v10, v5, v10

    move-wide/from16 v53, v1

    .end local v1    # "fac":D
    .local v53, "fac":D
    iget-wide v1, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    iget-object v5, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    aget-wide v43, v5, v14

    mul-double v1, v1, v43

    cmpg-double v1, v10, v1

    if-gez v1, :cond_1c

    .line 774
    add-int/lit8 v1, v14, -0x1

    .end local v14    # "targetIter":I
    .local v1, "targetIter":I
    goto :goto_14

    .line 771
    .end local v53    # "fac":D
    .local v1, "fac":D
    .restart local v14    # "targetIter":I
    :cond_1b
    move-wide/from16 v53, v1

    .line 776
    .end local v1    # "fac":D
    .restart local v53    # "fac":D
    :cond_1c
    move v1, v14

    .end local v14    # "targetIter":I
    .local v1, "targetIter":I
    :goto_14
    iget-object v2, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v25, v2, v1

    goto :goto_15

    .line 766
    .end local v53    # "fac":D
    .local v1, "fac":D
    .restart local v14    # "targetIter":I
    :cond_1d
    move-wide/from16 v53, v1

    .end local v1    # "fac":D
    .restart local v53    # "fac":D
    move v1, v14

    .line 779
    .end local v3    # "ratio":D
    .end local v14    # "targetIter":I
    .local v1, "targetIter":I
    :goto_15
    goto :goto_17

    .line 728
    .end local v53    # "fac":D
    .local v1, "fac":D
    .restart local v14    # "targetIter":I
    :pswitch_2
    move-wide/from16 v53, v1

    .end local v1    # "fac":D
    .restart local v53    # "fac":D
    const/4 v10, 0x1

    if-le v14, v10, :cond_21

    if-nez v32, :cond_21

    .line 731
    cmpg-double v1, v45, v43

    if-gtz v1, :cond_1e

    .line 733
    const/4 v1, 0x0

    move/from16 v31, v1

    move v1, v14

    .end local v31    # "loop":Z
    .local v1, "loop":Z
    goto :goto_17

    .line 738
    .end local v1    # "loop":Z
    .restart local v31    # "loop":Z
    :cond_1e
    iget-object v1, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v1, v1, v14

    int-to-double v1, v1

    iget-object v3, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    add-int/lit8 v4, v14, 0x1

    aget v3, v3, v4

    int-to-double v3, v3

    mul-double/2addr v1, v3

    iget-object v3, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    const/16 v17, 0x0

    aget v3, v3, v17

    iget-object v4, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v4, v4, v17

    mul-int/2addr v3, v4

    int-to-double v3, v3

    div-double/2addr v1, v3

    .line 740
    .local v1, "ratio":D
    mul-double v3, v1, v1

    cmpl-double v3, v45, v3

    if-lez v3, :cond_20

    .line 743
    const/16 v39, 0x1

    .line 744
    const/16 v31, 0x0

    .line 745
    move v3, v6

    .line 746
    .end local v14    # "targetIter":I
    .local v3, "targetIter":I
    const/4 v10, 0x1

    if-le v3, v10, :cond_1f

    iget-object v4, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    add-int/lit8 v5, v3, -0x1

    aget-wide v4, v4, v5

    iget-wide v10, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    iget-object v14, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    aget-wide v43, v14, v3

    mul-double v10, v10, v43

    cmpg-double v4, v4, v10

    if-gez v4, :cond_1f

    .line 749
    add-int/lit8 v3, v3, -0x1

    .line 751
    :cond_1f
    iget-object v4, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v25, v4, v3

    move v1, v3

    goto :goto_16

    .line 740
    .end local v3    # "targetIter":I
    .restart local v14    # "targetIter":I
    :cond_20
    move v1, v14

    .line 753
    .end local v14    # "targetIter":I
    .local v1, "targetIter":I
    :goto_16
    goto :goto_17

    .line 802
    .end local v1    # "targetIter":I
    .end local v49    # "pow":D
    .end local v51    # "exp":D
    .end local v53    # "fac":D
    .restart local v14    # "targetIter":I
    :cond_21
    move v1, v14

    .end local v14    # "targetIter":I
    .restart local v1    # "targetIter":I
    :goto_17
    move-object/from16 v14, p4

    move-object v4, v8

    move v7, v12

    move-object v11, v15

    move-object/from16 v12, v16

    move-object/from16 v15, v36

    move-object/from16 v8, v47

    const/16 v16, 0x1

    const/16 v18, 0x2

    goto/16 :goto_10

    .line 707
    .end local v45    # "error":D
    .local v1, "error":D
    .restart local v14    # "targetIter":I
    :cond_22
    move-wide/from16 v45, v1

    .line 709
    .end local v1    # "error":D
    .restart local v45    # "error":D
    :goto_18
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    iget-wide v3, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->stabilityReduction:D

    mul-double/2addr v1, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v12, v3}, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->filterStep(DZZ)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v25

    .line 710
    const/16 v39, 0x1

    .line 711
    const/16 v31, 0x0

    move-object v4, v8

    move v7, v12

    move v1, v14

    move-object v11, v15

    move-object/from16 v12, v16

    move-object/from16 v15, v36

    move-object/from16 v8, v47

    const/16 v16, 0x1

    const/16 v18, 0x2

    move-object/from16 v14, p4

    goto/16 :goto_10

    .line 692
    .end local v45    # "error":D
    :cond_23
    move-object v4, v8

    move v7, v12

    move v1, v14

    move-object v11, v15

    move-object/from16 v12, v16

    move-object/from16 v15, v36

    move-object/from16 v8, v47

    const/16 v16, 0x1

    const/16 v18, 0x2

    move-object/from16 v14, p4

    goto/16 :goto_10

    .line 674
    .end local v14    # "targetIter":I
    .end local v16    # "diagonal":[[D
    .end local v36    # "yDot1":[D
    .end local v47    # "yDot0":[D
    .local v1, "targetIter":I
    .local v4, "scale":[D
    .local v7, "forward":Z
    .local v8, "yDot0":[D
    .local v11, "y1":[D
    .local v12, "diagonal":[[D
    .local v15, "yDot1":[D
    :cond_24
    move v14, v1

    move-wide/from16 v43, v2

    move-object/from16 v47, v8

    move-object/from16 v16, v12

    move-object/from16 v36, v15

    move-object v8, v4

    move v12, v7

    move-object v15, v11

    move-object/from16 v7, p7

    .line 807
    .end local v1    # "targetIter":I
    .end local v4    # "scale":[D
    .end local v7    # "forward":Z
    .end local v11    # "y1":[D
    .end local v31    # "loop":Z
    .local v8, "scale":[D
    .local v12, "forward":Z
    .restart local v14    # "targetIter":I
    .local v15, "y1":[D
    .restart local v16    # "diagonal":[[D
    .restart local v36    # "yDot1":[D
    .restart local v47    # "yDot0":[D
    if-nez v39, :cond_25

    .line 809
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    iget-wide v3, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    add-double/2addr v1, v3

    move-object/from16 v3, v36

    .end local v36    # "yDot1":[D
    .local v3, "yDot1":[D
    invoke-virtual {v0, v1, v2, v15, v3}, Lorg/apache/commons/math/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    goto :goto_19

    .line 807
    .end local v3    # "yDot1":[D
    .restart local v36    # "yDot1":[D
    :cond_25
    move-object/from16 v3, v36

    .line 813
    .end local v36    # "yDot1":[D
    .restart local v3    # "yDot1":[D
    :goto_19
    invoke-virtual {v0}, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->getMaxStep()D

    move-result-wide v1

    .line 814
    .local v1, "hInt":D
    if-eqz v19, :cond_32

    if-nez v39, :cond_32

    .line 817
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_1a
    if-gt v4, v6, :cond_26

    .line 818
    const/4 v5, 0x0

    aget-object v10, v21, v5

    move-object/from16 v11, v16

    .end local v16    # "diagonal":[[D
    .local v11, "diagonal":[[D
    invoke-direct {v0, v5, v4, v11, v10}, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->extrapolate(II[[D[D)V

    .line 817
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .end local v11    # "diagonal":[[D
    .restart local v16    # "diagonal":[[D
    :cond_26
    move-object/from16 v11, v16

    .line 821
    .end local v4    # "j":I
    .end local v16    # "diagonal":[[D
    .restart local v11    # "diagonal":[[D
    mul-int/lit8 v4, v6, 0x2

    iget v5, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->mudif:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x3

    .line 823
    .local v4, "mu":I
    const/4 v5, 0x0

    .local v5, "l":I
    :goto_1b
    if-ge v5, v4, :cond_2e

    .line 826
    div-int/lit8 v10, v5, 0x2

    .line 827
    .local v10, "l2":I
    move-wide/from16 v45, v1

    .end local v1    # "hInt":D
    .local v45, "hInt":D
    iget-object v1, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v1, v1, v10

    int-to-double v1, v1

    mul-double v1, v1, v27

    move/from16 v31, v12

    move-object/from16 v16, v13

    .end local v12    # "forward":Z
    .end local v13    # "y1Diag":[[D
    .local v16, "y1Diag":[[D
    .local v31, "forward":Z
    int-to-double v12, v5

    invoke-static {v1, v2, v12, v13}, Lorg/apache/commons/math/util/FastMath;->pow(DD)D

    move-result-wide v1

    .line 828
    .local v1, "factor":D
    aget-object v12, v20, v10

    array-length v12, v12

    const/4 v13, 0x2

    div-int/2addr v12, v13

    .line 829
    .local v12, "middleIndex":I
    const/16 v36, 0x0

    move/from16 v48, v13

    move/from16 v13, v36

    .local v13, "i":I
    :goto_1c
    move-wide/from16 v49, v1

    move-object/from16 v36, v9

    move-object/from16 v9, p4

    .end local v1    # "factor":D
    .end local v9    # "yTmp":[D
    .local v36, "yTmp":[D
    .local v49, "factor":D
    array-length v1, v9

    if-ge v13, v1, :cond_27

    .line 830
    add-int/lit8 v1, v5, 0x1

    aget-object v1, v21, v1

    aget-object v2, v20, v10

    add-int v51, v12, v5

    aget-object v2, v2, v51

    aget-wide v51, v2, v13

    mul-double v51, v51, v49

    aput-wide v51, v1, v13

    .line 829
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v9, v36

    move-wide/from16 v1, v49

    goto :goto_1c

    :cond_27
    nop

    .line 832
    .end local v13    # "i":I
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_1d
    sub-int v2, v6, v10

    if-gt v1, v2, :cond_29

    .line 833
    iget-object v2, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    add-int v13, v1, v10

    aget v2, v2, v13

    move-object v13, v3

    .end local v3    # "yDot1":[D
    .local v13, "yDot1":[D
    int-to-double v2, v2

    mul-double v2, v2, v27

    move/from16 v51, v12

    move-object/from16 v52, v13

    .end local v12    # "middleIndex":I
    .end local v13    # "yDot1":[D
    .local v51, "middleIndex":I
    .local v52, "yDot1":[D
    int-to-double v12, v5

    invoke-static {v2, v3, v12, v13}, Lorg/apache/commons/math/util/FastMath;->pow(DD)D

    move-result-wide v49

    .line 834
    add-int v2, v10, v1

    aget-object v2, v20, v2

    array-length v2, v2

    div-int/lit8 v12, v2, 0x2

    .line 835
    .end local v51    # "middleIndex":I
    .restart local v12    # "middleIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    array-length v3, v9

    if-ge v2, v3, :cond_28

    .line 836
    add-int/lit8 v3, v1, -0x1

    aget-object v3, v11, v3

    add-int v13, v10, v1

    aget-object v13, v20, v13

    add-int v51, v12, v5

    aget-object v13, v13, v51

    aget-wide v53, v13, v2

    mul-double v53, v53, v49

    aput-wide v53, v3, v2

    .line 835
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_28
    nop

    .line 838
    .end local v2    # "i":I
    add-int/lit8 v2, v5, 0x1

    aget-object v2, v21, v2

    invoke-direct {v0, v10, v1, v11, v2}, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->extrapolate(II[[D[D)V

    .line 832
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, v52

    goto :goto_1d

    .end local v52    # "yDot1":[D
    .restart local v3    # "yDot1":[D
    :cond_29
    move-object/from16 v52, v3

    move/from16 v51, v12

    .line 840
    .end local v1    # "j":I
    .end local v3    # "yDot1":[D
    .end local v12    # "middleIndex":I
    .restart local v51    # "middleIndex":I
    .restart local v52    # "yDot1":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    array-length v2, v9

    if-ge v1, v2, :cond_2a

    .line 841
    add-int/lit8 v2, v5, 0x1

    aget-object v2, v21, v2

    aget-wide v12, v2, v1

    move v3, v1

    move-object/from16 v53, v2

    .end local v1    # "i":I
    .local v3, "i":I
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    mul-double/2addr v12, v1

    aput-wide v12, v53, v3

    .line 840
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "i":I
    .restart local v1    # "i":I
    goto :goto_1f

    :cond_2a
    move v3, v1

    .line 845
    .end local v1    # "i":I
    add-int/lit8 v1, v5, 0x1

    div-int/lit8 v1, v1, 0x2

    .local v1, "j":I
    :goto_20
    if-gt v1, v6, :cond_2d

    .line 846
    aget-object v2, v20, v1

    array-length v2, v2

    const/16 v18, 0x1

    add-int/lit8 v2, v2, -0x1

    .local v2, "m":I
    :goto_21
    add-int/lit8 v3, v5, 0x1

    mul-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_2c

    .line 847
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_22
    array-length v12, v9

    if-ge v3, v12, :cond_2b

    .line 848
    aget-object v12, v20, v1

    aget-object v12, v12, v2

    aget-wide v53, v12, v3

    aget-object v13, v20, v1

    add-int/lit8 v55, v2, -0x2

    aget-object v13, v13, v55

    aget-wide v55, v13, v3

    sub-double v53, v53, v55

    aput-wide v53, v12, v3

    .line 847
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_2b
    nop

    .line 846
    .end local v3    # "i":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_21

    :cond_2c
    nop

    .line 845
    .end local v2    # "m":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_2d
    nop

    .line 823
    .end local v1    # "j":I
    .end local v10    # "l2":I
    .end local v49    # "factor":D
    .end local v51    # "middleIndex":I
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v13, v16

    move/from16 v12, v31

    move-object/from16 v9, v36

    move-wide/from16 v1, v45

    move-object/from16 v3, v52

    goto/16 :goto_1b

    .end local v16    # "y1Diag":[[D
    .end local v31    # "forward":Z
    .end local v36    # "yTmp":[D
    .end local v45    # "hInt":D
    .end local v52    # "yDot1":[D
    .local v1, "hInt":D
    .local v3, "yDot1":[D
    .restart local v9    # "yTmp":[D
    .local v12, "forward":Z
    .local v13, "y1Diag":[[D
    :cond_2e
    move-wide/from16 v45, v1

    move-object/from16 v52, v3

    move-object/from16 v36, v9

    move/from16 v31, v12

    move-object/from16 v16, v13

    const/16 v48, 0x2

    move-object/from16 v9, p4

    .line 855
    .end local v1    # "hInt":D
    .end local v3    # "yDot1":[D
    .end local v5    # "l":I
    .end local v9    # "yTmp":[D
    .end local v12    # "forward":Z
    .end local v13    # "y1Diag":[[D
    .restart local v16    # "y1Diag":[[D
    .restart local v31    # "forward":Z
    .restart local v36    # "yTmp":[D
    .restart local v45    # "hInt":D
    .restart local v52    # "yDot1":[D
    if-ltz v4, :cond_31

    .line 858
    move-object/from16 v1, v40

    .end local v40    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    .local v1, "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    move-object v2, v1

    check-cast v2, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerStepInterpolator;

    .line 860
    .local v2, "gbsInterpolator":Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerStepInterpolator;
    iget-wide v12, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    invoke-virtual {v2, v4, v12, v13}, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerStepInterpolator;->computeCoefficients(ID)V

    .line 862
    iget-boolean v3, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->useInterpolationError:Z

    if-eqz v3, :cond_30

    .line 864
    invoke-virtual {v2, v8}, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerStepInterpolator;->estimateError([D)D

    move-result-wide v12

    .line 865
    .local v12, "interpError":D
    move-object v5, v2

    .end local v2    # "gbsInterpolator":Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerStepInterpolator;
    .local v5, "gbsInterpolator":Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerStepInterpolator;
    iget-wide v2, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    add-int/lit8 v10, v4, 0x4

    move-wide/from16 v49, v2

    int-to-double v2, v10

    div-double v2, v43, v2

    invoke-static {v12, v13, v2, v3}, Lorg/apache/commons/math/util/FastMath;->pow(DD)D

    move-result-wide v2

    move v10, v4

    move-object/from16 v40, v5

    .end local v4    # "mu":I
    .end local v5    # "gbsInterpolator":Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerStepInterpolator;
    .local v10, "mu":I
    .local v40, "gbsInterpolator":Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerStepInterpolator;
    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math/util/FastMath;->max(DD)D

    move-result-wide v2

    div-double v2, v49, v2

    invoke-static {v2, v3}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v2

    .line 867
    .end local v45    # "hInt":D
    .local v2, "hInt":D
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double v4, v12, v4

    if-lez v4, :cond_2f

    .line 868
    move-wide/from16 v25, v2

    .line 869
    const/16 v39, 0x1

    move-wide v12, v2

    goto :goto_24

    .line 867
    :cond_2f
    move-wide v12, v2

    goto :goto_24

    .line 862
    .end local v10    # "mu":I
    .end local v12    # "interpError":D
    .end local v40    # "gbsInterpolator":Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerStepInterpolator;
    .local v2, "gbsInterpolator":Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerStepInterpolator;
    .restart local v4    # "mu":I
    .restart local v45    # "hInt":D
    :cond_30
    move-object/from16 v40, v2

    move v10, v4

    .end local v2    # "gbsInterpolator":Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerStepInterpolator;
    .end local v4    # "mu":I
    .restart local v10    # "mu":I
    .restart local v40    # "gbsInterpolator":Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerStepInterpolator;
    goto :goto_23

    .line 855
    .end local v1    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    .end local v10    # "mu":I
    .restart local v4    # "mu":I
    .local v40, "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    :cond_31
    move v10, v4

    move-object/from16 v1, v40

    .end local v4    # "mu":I
    .end local v40    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    .restart local v1    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    .restart local v10    # "mu":I
    goto :goto_23

    .line 814
    .end local v10    # "mu":I
    .end local v11    # "diagonal":[[D
    .end local v31    # "forward":Z
    .end local v36    # "yTmp":[D
    .end local v45    # "hInt":D
    .end local v52    # "yDot1":[D
    .local v1, "hInt":D
    .restart local v3    # "yDot1":[D
    .restart local v9    # "yTmp":[D
    .local v12, "forward":Z
    .restart local v13    # "y1Diag":[[D
    .local v16, "diagonal":[[D
    .restart local v40    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    :cond_32
    move-wide/from16 v45, v1

    move-object/from16 v52, v3

    move-object/from16 v36, v9

    move/from16 v31, v12

    move-object/from16 v11, v16

    move-object/from16 v1, v40

    const/16 v48, 0x2

    move-object/from16 v9, p4

    move-object/from16 v16, v13

    .line 877
    .end local v3    # "yDot1":[D
    .end local v9    # "yTmp":[D
    .end local v12    # "forward":Z
    .end local v13    # "y1Diag":[[D
    .end local v40    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    .local v1, "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    .restart local v11    # "diagonal":[[D
    .local v16, "y1Diag":[[D
    .restart local v31    # "forward":Z
    .restart local v36    # "yTmp":[D
    .restart local v45    # "hInt":D
    .restart local v52    # "yDot1":[D
    :goto_23
    move-wide/from16 v12, v45

    .end local v45    # "hInt":D
    .local v12, "hInt":D
    :goto_24
    if-nez v39, :cond_3e

    .line 880
    iget-wide v2, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    iget-wide v4, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    add-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 881
    move-wide/from16 v4, p5

    move-object v2, v15

    move-object/from16 v3, v52

    move-object v15, v11

    .end local v11    # "diagonal":[[D
    .end local v52    # "yDot1":[D
    .local v2, "y1":[D
    .restart local v3    # "yDot1":[D
    .local v15, "diagonal":[[D
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math/ode/AbstractIntegrator;->acceptStep(Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v10

    iput-wide v10, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    .line 884
    iget-wide v4, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    invoke-virtual {v1, v4, v5}, Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 885
    array-length v4, v9

    const/4 v5, 0x0

    invoke-static {v2, v5, v7, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 886
    array-length v4, v9

    move-object/from16 v10, v47

    .end local v47    # "yDot0":[D
    .local v10, "yDot0":[D
    invoke-static {v3, v5, v10, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 887
    const/4 v4, 0x1

    .line 890
    .end local v38    # "firstStepAlreadyComputed":Z
    .local v4, "firstStepAlreadyComputed":Z
    const/4 v5, 0x1

    if-ne v6, v5, :cond_34

    .line 891
    const/4 v11, 0x2

    .line 892
    .local v11, "optimalIter":I
    if-eqz v32, :cond_33

    .line 893
    const/4 v11, 0x1

    move-object/from16 v40, v1

    move-object v5, v2

    goto/16 :goto_26

    .line 892
    :cond_33
    move-object/from16 v40, v1

    move-object v5, v2

    goto/16 :goto_26

    .line 895
    .end local v11    # "optimalIter":I
    :cond_34
    if-gt v6, v14, :cond_36

    .line 896
    move v11, v6

    .line 897
    .restart local v11    # "optimalIter":I
    iget-object v5, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    add-int/lit8 v38, v6, -0x1

    aget-wide v43, v5, v38

    move-object/from16 v40, v1

    move-object v5, v2

    .end local v1    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    .end local v2    # "y1":[D
    .local v5, "y1":[D
    .restart local v40    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    iget-wide v1, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    move-wide/from16 v45, v1

    iget-object v1, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    aget-wide v1, v1, v6

    mul-double v1, v1, v45

    cmpg-double v1, v43, v1

    if-gez v1, :cond_35

    .line 898
    add-int/lit8 v11, v6, -0x1

    goto/16 :goto_26

    .line 899
    :cond_35
    iget-object v1, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    aget-wide v1, v1, v6

    move-wide/from16 v43, v1

    iget-wide v1, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl2:D

    move-wide/from16 v45, v1

    iget-object v1, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    add-int/lit8 v2, v6, -0x1

    aget-wide v1, v1, v2

    mul-double v1, v1, v45

    cmpg-double v1, v43, v1

    if-gez v1, :cond_3a

    .line 900
    add-int/lit8 v1, v6, 0x1

    iget-object v2, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    invoke-static {v1, v2}, Lorg/apache/commons/math/util/FastMath;->min(II)I

    move-result v11

    goto :goto_26

    .line 903
    .end local v5    # "y1":[D
    .end local v11    # "optimalIter":I
    .end local v40    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    .restart local v1    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    .restart local v2    # "y1":[D
    :cond_36
    move-object/from16 v40, v1

    move-object v5, v2

    .end local v1    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    .end local v2    # "y1":[D
    .restart local v5    # "y1":[D
    .restart local v40    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    add-int/lit8 v1, v6, -0x1

    .line 904
    .local v1, "optimalIter":I
    move/from16 v2, v48

    if-le v6, v2, :cond_37

    iget-object v2, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    add-int/lit8 v11, v6, -0x2

    aget-wide v43, v2, v11

    move v11, v1

    .end local v1    # "optimalIter":I
    .restart local v11    # "optimalIter":I
    iget-wide v1, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    move-wide/from16 v45, v1

    iget-object v1, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    add-int/lit8 v2, v6, -0x1

    aget-wide v1, v1, v2

    mul-double v1, v1, v45

    cmpg-double v1, v43, v1

    if-gez v1, :cond_38

    .line 906
    add-int/lit8 v1, v6, -0x2

    move v11, v1

    .end local v11    # "optimalIter":I
    .restart local v1    # "optimalIter":I
    goto :goto_25

    .line 904
    :cond_37
    move v11, v1

    .line 908
    .end local v1    # "optimalIter":I
    .restart local v11    # "optimalIter":I
    :cond_38
    :goto_25
    iget-object v1, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    aget-wide v1, v1, v6

    move-wide/from16 v43, v1

    iget-wide v1, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl2:D

    move-wide/from16 v45, v1

    iget-object v1, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    aget-wide v1, v1, v11

    mul-double v1, v1, v45

    cmpg-double v1, v43, v1

    if-gez v1, :cond_39

    .line 909
    iget-object v1, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v1, v1

    const/16 v48, 0x2

    add-int/lit8 v1, v1, -0x2

    invoke-static {v6, v1}, Lorg/apache/commons/math/util/FastMath;->min(II)I

    move-result v11

    goto :goto_26

    .line 908
    :cond_39
    const/16 v48, 0x2

    .line 913
    :cond_3a
    :goto_26
    if-eqz v32, :cond_3b

    .line 916
    invoke-static {v11, v6}, Lorg/apache/commons/math/util/FastMath;->min(II)I

    move-result v1

    .line 917
    .end local v14    # "targetIter":I
    .local v1, "targetIter":I
    move v14, v1

    .end local v1    # "targetIter":I
    .restart local v14    # "targetIter":I
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepSize:D

    invoke-static {v1, v2}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v1

    move-object/from16 v52, v3

    .end local v3    # "yDot1":[D
    .restart local v52    # "yDot1":[D
    iget-object v3, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    move/from16 v38, v4

    .end local v4    # "firstStepAlreadyComputed":Z
    .restart local v38    # "firstStepAlreadyComputed":Z
    aget-wide v3, v3, v14

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math/util/FastMath;->min(DD)D

    move-result-wide v1

    move-wide/from16 v25, v1

    move v1, v14

    move/from16 v4, v31

    .end local v25    # "hNew":D
    .local v1, "hNew":D
    goto :goto_28

    .line 920
    .end local v1    # "hNew":D
    .end local v38    # "firstStepAlreadyComputed":Z
    .end local v52    # "yDot1":[D
    .restart local v3    # "yDot1":[D
    .restart local v4    # "firstStepAlreadyComputed":Z
    .restart local v25    # "hNew":D
    :cond_3b
    move-object/from16 v52, v3

    move/from16 v38, v4

    .end local v3    # "yDot1":[D
    .end local v4    # "firstStepAlreadyComputed":Z
    .restart local v38    # "firstStepAlreadyComputed":Z
    .restart local v52    # "yDot1":[D
    if-gt v11, v6, :cond_3c

    .line 921
    iget-object v1, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v1, v1, v11

    move/from16 v4, v31

    .end local v25    # "hNew":D
    .restart local v1    # "hNew":D
    goto :goto_27

    .line 923
    .end local v1    # "hNew":D
    .restart local v25    # "hNew":D
    :cond_3c
    if-ge v6, v14, :cond_3d

    iget-object v1, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    aget-wide v1, v1, v6

    iget-wide v3, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl2:D

    move-wide/from16 v43, v1

    iget-object v1, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    add-int/lit8 v2, v6, -0x1

    aget-wide v1, v1, v2

    mul-double/2addr v3, v1

    cmpg-double v1, v43, v3

    if-gez v1, :cond_3d

    .line 925
    iget-object v1, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v1, v1, v6

    iget-object v3, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    add-int/lit8 v4, v11, 0x1

    aget v3, v3, v4

    int-to-double v3, v3

    mul-double/2addr v1, v3

    iget-object v3, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    aget v3, v3, v6

    int-to-double v3, v3

    div-double/2addr v1, v3

    move/from16 v4, v31

    const/4 v3, 0x0

    .end local v31    # "forward":Z
    .local v4, "forward":Z
    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->filterStep(DZZ)D

    move-result-wide v1

    .end local v25    # "hNew":D
    .restart local v1    # "hNew":D
    goto :goto_27

    .line 923
    .end local v1    # "hNew":D
    .end local v4    # "forward":Z
    .restart local v25    # "hNew":D
    .restart local v31    # "forward":Z
    :cond_3d
    move/from16 v4, v31

    .line 928
    .end local v31    # "forward":Z
    .restart local v4    # "forward":Z
    iget-object v1, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v1, v1, v6

    iget-object v3, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    aget v3, v3, v11

    move-wide/from16 v43, v1

    int-to-double v1, v3

    mul-double v1, v1, v43

    iget-object v3, v0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    aget v3, v3, v6

    move-wide/from16 v43, v1

    int-to-double v1, v3

    div-double v1, v43, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->filterStep(DZZ)D

    move-result-wide v1

    .line 933
    .end local v25    # "hNew":D
    .restart local v1    # "hNew":D
    :goto_27
    move v3, v11

    move-wide/from16 v25, v1

    move v1, v3

    .line 937
    .end local v14    # "targetIter":I
    .local v1, "targetIter":I
    .restart local v25    # "hNew":D
    :goto_28
    const/4 v2, 0x1

    move/from16 v31, v1

    move/from16 v37, v2

    move-wide/from16 v1, v25

    .end local v37    # "newStep":Z
    .local v2, "newStep":Z
    goto :goto_29

    .line 877
    .end local v2    # "newStep":Z
    .end local v4    # "forward":Z
    .end local v5    # "y1":[D
    .end local v10    # "yDot0":[D
    .end local v40    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    .local v1, "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    .local v11, "diagonal":[[D
    .restart local v14    # "targetIter":I
    .local v15, "y1":[D
    .restart local v31    # "forward":Z
    .restart local v37    # "newStep":Z
    .restart local v47    # "yDot0":[D
    :cond_3e
    move-object/from16 v40, v1

    move-object v5, v15

    move/from16 v4, v31

    move-object/from16 v10, v47

    move-object v15, v11

    .end local v1    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    .end local v11    # "diagonal":[[D
    .end local v31    # "forward":Z
    .end local v47    # "yDot0":[D
    .restart local v4    # "forward":Z
    .restart local v5    # "y1":[D
    .restart local v10    # "yDot0":[D
    .local v15, "diagonal":[[D
    .restart local v40    # "interpolator":Lorg/apache/commons/math/ode/sampling/AbstractStepInterpolator;
    move/from16 v31, v14

    move-wide/from16 v1, v25

    .line 941
    .end local v14    # "targetIter":I
    .end local v25    # "hNew":D
    .local v1, "hNew":D
    .local v31, "targetIter":I
    :goto_29
    invoke-static {v1, v2, v12, v13}, Lorg/apache/commons/math/util/FastMath;->min(DD)D

    move-result-wide v1

    .line 942
    if-nez v4, :cond_3f

    .line 943
    neg-double v1, v1

    move-wide/from16 v25, v1

    goto :goto_2a

    .line 942
    :cond_3f
    move-wide/from16 v25, v1

    .line 946
    .end local v1    # "hNew":D
    .restart local v25    # "hNew":D
    :goto_2a
    const/16 v35, 0x0

    .line 948
    if-eqz v39, :cond_40

    .line 949
    const/4 v3, 0x0

    iput-boolean v3, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->isLastStep:Z

    .line 950
    const/4 v1, 0x1

    move/from16 v32, v1

    .end local v32    # "previousRejected":Z
    .local v1, "previousRejected":Z
    goto :goto_2b

    .line 952
    .end local v1    # "previousRejected":Z
    .restart local v32    # "previousRejected":Z
    :cond_40
    const/4 v3, 0x0

    const/4 v1, 0x0

    move/from16 v32, v1

    .line 955
    .end local v6    # "k":I
    .end local v12    # "hInt":D
    .end local v39    # "reject":Z
    .end local v41    # "nextT":D
    :goto_2b
    iget-boolean v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->isLastStep:Z

    if-eqz v1, :cond_41

    .line 957
    iget-wide v1, v0, Lorg/apache/commons/math/ode/AbstractIntegrator;->stepStart:D

    .line 958
    .local v1, "stopTime":D
    invoke-virtual {v0}, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->resetInternalState()V

    .line 959
    return-wide v1

    .line 955
    .end local v1    # "stopTime":D
    :cond_41
    move/from16 v2, v19

    move-object/from16 v19, v15

    move v15, v2

    move-wide/from16 v12, p2

    move-object v2, v5

    move-object v3, v7

    move-object v11, v8

    move-object v14, v9

    move-object v8, v10

    move-object/from16 v10, v22

    move-object/from16 v9, v36

    move/from16 v18, v48

    move-object/from16 v36, v52

    move v7, v4

    move-object/from16 v22, v16

    move-object/from16 v4, v40

    goto/16 :goto_9

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setInterpolationControl(ZI)V
    .locals 1
    .param p1, "useInterpolationErrorForControl"    # Z
    .param p2, "mudifControlParameter"    # I

    .line 413
    iput-boolean p1, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->useInterpolationError:Z

    .line 415
    if-lez p2, :cond_0

    const/4 v0, 0x7

    if-lt p2, v0, :cond_1

    :cond_0
    goto :goto_0

    .line 418
    :cond_1
    iput p2, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->mudif:I

    goto :goto_1

    .line 416
    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->mudif:I

    .line 421
    :goto_1
    return-void
.end method

.method public setOrderControl(IDD)V
    .locals 7
    .param p1, "maximalOrder"    # I
    .param p2, "control1"    # D
    .param p4, "control2"    # D

    .line 311
    const/4 v0, 0x6

    if-le p1, v0, :cond_0

    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 312
    :cond_0
    const/16 v0, 0x12

    iput v0, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->maxOrder:I

    .line 315
    :cond_1
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v2, p2, v0

    const-wide v3, 0x3fefff2e48e8a71eL    # 0.9999

    if-ltz v2, :cond_2

    cmpl-double v2, p2, v3

    if-lez v2, :cond_3

    :cond_2
    goto :goto_0

    .line 318
    :cond_3
    iput-wide p2, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    goto :goto_1

    .line 316
    :goto_0
    const-wide v5, 0x3fe999999999999aL    # 0.8

    iput-wide v5, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    .line 321
    :goto_1
    cmpg-double v0, p4, v0

    if-ltz v0, :cond_4

    cmpl-double v0, p4, v3

    if-lez v0, :cond_5

    :cond_4
    goto :goto_2

    .line 324
    :cond_5
    iput-wide p4, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl2:D

    goto :goto_3

    .line 322
    :goto_2
    const-wide v0, 0x3feccccccccccccdL    # 0.9

    iput-wide v0, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl2:D

    .line 328
    :goto_3
    invoke-direct {p0}, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->initializeArrays()V

    .line 330
    return-void
.end method

.method public setStabilityCheck(ZIID)V
    .locals 2
    .param p1, "performStabilityCheck"    # Z
    .param p2, "maxNumIter"    # I
    .param p3, "maxNumChecks"    # I
    .param p4, "stepsizeReductionFactor"    # D

    .line 220
    iput-boolean p1, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->performTest:Z

    .line 221
    if-gtz p2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    iput v0, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->maxIter:I

    .line 222
    if-gtz p3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    iput v0, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->maxChecks:I

    .line 224
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, p4, v0

    if-ltz v0, :cond_2

    const-wide v0, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double v0, p4, v0

    if-lez v0, :cond_3

    :cond_2
    goto :goto_2

    .line 227
    :cond_3
    iput-wide p4, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->stabilityReduction:D

    goto :goto_3

    .line 225
    :goto_2
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->stabilityReduction:D

    .line 230
    :goto_3
    return-void
.end method

.method public setStepsizeControl(DDDD)V
    .locals 7
    .param p1, "control1"    # D
    .param p3, "control2"    # D
    .param p5, "control3"    # D
    .param p7, "control4"    # D

    .line 259
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v2, p1, v0

    const-wide v3, 0x3fefff2e48e8a71eL    # 0.9999

    if-ltz v2, :cond_0

    cmpl-double v2, p1, v3

    if-lez v2, :cond_1

    :cond_0
    goto :goto_0

    .line 262
    :cond_1
    iput-wide p1, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl1:D

    goto :goto_1

    .line 260
    :goto_0
    const-wide v5, 0x3fe4cccccccccccdL    # 0.65

    iput-wide v5, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl1:D

    .line 265
    :goto_1
    cmpg-double v2, p3, v0

    if-ltz v2, :cond_2

    cmpl-double v2, p3, v3

    if-lez v2, :cond_3

    :cond_2
    goto :goto_2

    .line 268
    :cond_3
    iput-wide p3, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl2:D

    goto :goto_3

    .line 266
    :goto_2
    const-wide v5, 0x3fee147ae147ae14L    # 0.94

    iput-wide v5, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl2:D

    .line 271
    :goto_3
    cmpg-double v0, p5, v0

    if-ltz v0, :cond_4

    cmpl-double v0, p5, v3

    if-lez v0, :cond_5

    :cond_4
    goto :goto_4

    .line 274
    :cond_5
    iput-wide p5, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl3:D

    goto :goto_5

    .line 272
    :goto_4
    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    iput-wide v0, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl3:D

    .line 277
    :goto_5
    const-wide v0, 0x3ff00068db8bac71L    # 1.0001

    cmpg-double v0, p7, v0

    if-ltz v0, :cond_6

    const-wide v0, 0x408f3f3333333333L    # 999.9

    cmpl-double v0, p7, v0

    if-lez v0, :cond_7

    :cond_6
    goto :goto_6

    .line 280
    :cond_7
    iput-wide p7, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl4:D

    goto :goto_7

    .line 278
    :goto_6
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    iput-wide v0, p0, Lorg/apache/commons/math/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl4:D

    .line 283
    :goto_7
    return-void
.end method
