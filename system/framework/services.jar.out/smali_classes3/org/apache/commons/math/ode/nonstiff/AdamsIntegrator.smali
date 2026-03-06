.class public abstract Lorg/apache/commons/math/ode/nonstiff/AdamsIntegrator;
.super Lorg/apache/commons/math/ode/MultistepIntegrator;
.source "AdamsIntegrator.java"


# instance fields
.field private final transformer:Lorg/apache/commons/math/ode/nonstiff/AdamsNordsieckTransformer;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIDDDD)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nSteps"    # I
    .param p3, "order"    # I
    .param p4, "minStep"    # D
    .param p6, "maxStep"    # D
    .param p8, "scalAbsoluteTolerance"    # D
    .param p10, "scalRelativeTolerance"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 55
    invoke-direct/range {p0 .. p11}, Lorg/apache/commons/math/ode/MultistepIntegrator;-><init>(Ljava/lang/String;IIDDDD)V

    .line 57
    move-wide v0, p10

    move-wide p9, p8

    move-wide p7, p6

    move-wide p5, p4

    move p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "name":Ljava/lang/String;
    .end local p6    # "maxStep":D
    .end local p8    # "scalAbsoluteTolerance":D
    .end local p10    # "scalRelativeTolerance":D
    .local v0, "scalRelativeTolerance":D
    .local p2, "name":Ljava/lang/String;
    .local p3, "nSteps":I
    .local p4, "order":I
    .local p5, "minStep":D
    .local p7, "maxStep":D
    .local p9, "scalAbsoluteTolerance":D
    invoke-static {p3}, Lorg/apache/commons/math/ode/nonstiff/AdamsNordsieckTransformer;->getInstance(I)Lorg/apache/commons/math/ode/nonstiff/AdamsNordsieckTransformer;

    move-result-object p11

    iput-object p11, p1, Lorg/apache/commons/math/ode/nonstiff/AdamsIntegrator;->transformer:Lorg/apache/commons/math/ode/nonstiff/AdamsNordsieckTransformer;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIDD[D[D)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nSteps"    # I
    .param p3, "order"    # I
    .param p4, "minStep"    # D
    .param p6, "maxStep"    # D
    .param p8, "vecAbsoluteTolerance"    # [D
    .param p9, "vecRelativeTolerance"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 78
    invoke-direct/range {p0 .. p9}, Lorg/apache/commons/math/ode/MultistepIntegrator;-><init>(Ljava/lang/String;IIDD[D[D)V

    .line 80
    move-object v0, p9

    move-object p9, p8

    move-wide p7, p6

    move-wide p5, p4

    move p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "name":Ljava/lang/String;
    .end local p6    # "maxStep":D
    .end local p8    # "vecAbsoluteTolerance":[D
    .local v0, "vecRelativeTolerance":[D
    .local p2, "name":Ljava/lang/String;
    .local p3, "nSteps":I
    .local p4, "order":I
    .local p5, "minStep":D
    .local p7, "maxStep":D
    .local p9, "vecAbsoluteTolerance":[D
    invoke-static {p3}, Lorg/apache/commons/math/ode/nonstiff/AdamsNordsieckTransformer;->getInstance(I)Lorg/apache/commons/math/ode/nonstiff/AdamsNordsieckTransformer;

    move-result-object v1

    iput-object v1, p1, Lorg/apache/commons/math/ode/nonstiff/AdamsIntegrator;->transformer:Lorg/apache/commons/math/ode/nonstiff/AdamsNordsieckTransformer;

    .line 81
    return-void
.end method


# virtual methods
.method protected initializeHighOrderDerivatives([D[[D)Lorg/apache/commons/math/linear/Array2DRowRealMatrix;
    .locals 1
    .param p1, "first"    # [D
    .param p2, "multistep"    # [[D

    .line 94
    iget-object v0, p0, Lorg/apache/commons/math/ode/nonstiff/AdamsIntegrator;->transformer:Lorg/apache/commons/math/ode/nonstiff/AdamsNordsieckTransformer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math/ode/nonstiff/AdamsNordsieckTransformer;->initializeHighOrderDerivatives([D[[D)Lorg/apache/commons/math/linear/Array2DRowRealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public abstract integrate(Lorg/apache/commons/math/ode/FirstOrderDifferentialEquations;D[DD[D)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/ode/DerivativeException;,
            Lorg/apache/commons/math/ode/IntegratorException;
        }
    .end annotation
.end method

.method public updateHighOrderDerivativesPhase1(Lorg/apache/commons/math/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math/linear/Array2DRowRealMatrix;
    .locals 1
    .param p1, "highOrder"    # Lorg/apache/commons/math/linear/Array2DRowRealMatrix;

    .line 109
    iget-object v0, p0, Lorg/apache/commons/math/ode/nonstiff/AdamsIntegrator;->transformer:Lorg/apache/commons/math/ode/nonstiff/AdamsNordsieckTransformer;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math/ode/nonstiff/AdamsNordsieckTransformer;->updateHighOrderDerivativesPhase1(Lorg/apache/commons/math/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math/linear/Array2DRowRealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public updateHighOrderDerivativesPhase2([D[DLorg/apache/commons/math/linear/Array2DRowRealMatrix;)V
    .locals 1
    .param p1, "start"    # [D
    .param p2, "end"    # [D
    .param p3, "highOrder"    # Lorg/apache/commons/math/linear/Array2DRowRealMatrix;

    .line 128
    iget-object v0, p0, Lorg/apache/commons/math/ode/nonstiff/AdamsIntegrator;->transformer:Lorg/apache/commons/math/ode/nonstiff/AdamsNordsieckTransformer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/math/ode/nonstiff/AdamsNordsieckTransformer;->updateHighOrderDerivativesPhase2([D[DLorg/apache/commons/math/linear/Array2DRowRealMatrix;)V

    .line 129
    return-void
.end method
