.class public Lorg/apache/commons/math/optimization/general/NonLinearConjugateGradientOptimizer;
.super Lorg/apache/commons/math/optimization/general/AbstractScalarDifferentiableOptimizer;
.source "NonLinearConjugateGradientOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;,
        Lorg/apache/commons/math/optimization/general/NonLinearConjugateGradientOptimizer$LineSearchFunction;
    }
.end annotation


# instance fields
.field private initialStep:D

.field private preconditioner:Lorg/apache/commons/math/optimization/general/Preconditioner;

.field private solver:Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolver;

.field private final updateFormula:Lorg/apache/commons/math/optimization/general/ConjugateGradientFormula;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math/optimization/general/ConjugateGradientFormula;)V
    .locals 2
    .param p1, "updateFormula"    # Lorg/apache/commons/math/optimization/general/ConjugateGradientFormula;

    .line 68
    invoke-direct {p0}, Lorg/apache/commons/math/optimization/general/AbstractScalarDifferentiableOptimizer;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/apache/commons/math/optimization/general/NonLinearConjugateGradientOptimizer;->updateFormula:Lorg/apache/commons/math/optimization/general/ConjugateGradientFormula;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math/optimization/general/NonLinearConjugateGradientOptimizer;->preconditioner:Lorg/apache/commons/math/optimization/general/Preconditioner;

    .line 71
    iput-object v0, p0, Lorg/apache/commons/math/optimization/general/NonLinearConjugateGradientOptimizer;->solver:Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolver;

    .line 72
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/apache/commons/math/optimization/general/NonLinearConjugateGradientOptimizer;->initialStep:D

    .line 73
    return-void
.end method

.method private findUpperBound(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D
    .locals 12
    .param p1, "f"    # Lorg/apache/commons/math/analysis/UnivariateRealFunction;
    .param p2, "a"    # D
    .param p4, "h"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/FunctionEvaluationException;,
            Lorg/apache/commons/math/optimization/OptimizationException;
        }
    .end annotation

    .line 227
    invoke-interface/range {p1 .. p3}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v0

    .line 228
    .local v0, "yA":D
    move-wide v2, v0

    .line 229
    .local v2, "yB":D
    move-wide/from16 v4, p4

    .local v4, "step":D
    :goto_0
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v6, v4, v6

    if-gez v6, :cond_1

    .line 230
    add-double v6, p2, v4

    .line 231
    .local v6, "b":D
    invoke-interface {p1, v6, v7}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v2

    .line 232
    mul-double v8, v0, v2

    const-wide/16 v10, 0x0

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_0

    .line 233
    return-wide v6

    .line 232
    :cond_0
    nop

    .line 229
    .end local v6    # "b":D
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v8, v0, v2

    invoke-static {v6, v7, v8, v9}, Lorg/apache/commons/math/util/FastMath;->max(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    goto :goto_0

    :cond_1
    nop

    .line 236
    .end local v4    # "step":D
    new-instance v4, Lorg/apache/commons/math/optimization/OptimizationException;

    sget-object v5, Lorg/apache/commons/math/exception/util/LocalizedFormats;->UNABLE_TO_BRACKET_OPTIMUM_IN_LINE_SEARCH:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math/optimization/OptimizationException;-><init>(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4
.end method


# virtual methods
.method protected doOptimize()Lorg/apache/commons/math/optimization/RealPointValuePair;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/FunctionEvaluationException;,
            Lorg/apache/commons/math/optimization/OptimizationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 119
    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Lorg/apache/commons/math/optimization/general/NonLinearConjugateGradientOptimizer;->preconditioner:Lorg/apache/commons/math/optimization/general/Preconditioner;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lorg/apache/commons/math/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/apache/commons/math/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;-><init>(Lorg/apache/commons/math/optimization/general/NonLinearConjugateGradientOptimizer$1;)V

    iput-object v0, v1, Lorg/apache/commons/math/optimization/general/NonLinearConjugateGradientOptimizer;->preconditioner:Lorg/apache/commons/math/optimization/general/Preconditioner;

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    goto/16 :goto_c

    .line 122
    :cond_0
    :goto_0
    iget-object v0, v1, Lorg/apache/commons/math/optimization/general/NonLinearConjugateGradientOptimizer;->solver:Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolver;

    if-nez v0, :cond_1

    .line 123
    new-instance v0, Lorg/apache/commons/math/analysis/solvers/BrentSolver;

    invoke-direct {v0}, Lorg/apache/commons/math/analysis/solvers/BrentSolver;-><init>()V

    iput-object v0, v1, Lorg/apache/commons/math/optimization/general/NonLinearConjugateGradientOptimizer;->solver:Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolver;

    .line 125
    :cond_1
    iget-object v0, v1, Lorg/apache/commons/math/optimization/general/AbstractScalarDifferentiableOptimizer;->point:[D

    array-length v0, v0

    .line 126
    .local v0, "n":I
    iget-object v2, v1, Lorg/apache/commons/math/optimization/general/AbstractScalarDifferentiableOptimizer;->point:[D

    invoke-virtual {v1, v2}, Lorg/apache/commons/math/optimization/general/AbstractScalarDifferentiableOptimizer;->computeObjectiveGradient([D)[D

    move-result-object v2

    .line 127
    .local v2, "r":[D
    iget-object v3, v1, Lorg/apache/commons/math/optimization/general/AbstractScalarDifferentiableOptimizer;->goal:Lorg/apache/commons/math/optimization/GoalType;

    sget-object v4, Lorg/apache/commons/math/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math/optimization/GoalType;

    if-ne v3, v4, :cond_2

    .line 128
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 129
    aget-wide v4, v2, v3

    neg-double v4, v4

    aput-wide v4, v2, v3

    .line 128
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 134
    .end local v3    # "i":I
    :cond_2
    iget-object v3, v1, Lorg/apache/commons/math/optimization/general/NonLinearConjugateGradientOptimizer;->preconditioner:Lorg/apache/commons/math/optimization/general/Preconditioner;

    iget-object v4, v1, Lorg/apache/commons/math/optimization/general/AbstractScalarDifferentiableOptimizer;->point:[D

    invoke-interface {v3, v4, v2}, Lorg/apache/commons/math/optimization/general/Preconditioner;->precondition([D[D)[D

    move-result-object v3

    .line 135
    .local v3, "steepestDescent":[D
    invoke-virtual {v3}, [D->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    .line 137
    .local v4, "searchDirection":[D
    const-wide/16 v5, 0x0

    .line 138
    .local v5, "delta":D
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v0, :cond_3

    .line 139
    aget-wide v8, v2, v7

    aget-wide v10, v4, v7

    mul-double/2addr v8, v10

    add-double/2addr v5, v8

    .line 138
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    nop

    .line 142
    .end local v7    # "i":I
    const/4 v7, 0x0

    move-object v8, v7

    move-object v7, v2

    move-object v2, v8

    move-object v8, v3

    move-object v9, v4

    move-wide v10, v5

    .line 145
    .end local v3    # "steepestDescent":[D
    .end local v4    # "searchDirection":[D
    .end local v5    # "delta":D
    .local v2, "current":Lorg/apache/commons/math/optimization/RealPointValuePair;
    .local v7, "r":[D
    .local v8, "steepestDescent":[D
    .local v9, "searchDirection":[D
    .local v10, "delta":D
    :goto_3
    iget-object v3, v1, Lorg/apache/commons/math/optimization/general/AbstractScalarDifferentiableOptimizer;->point:[D

    invoke-virtual {v1, v3}, Lorg/apache/commons/math/optimization/general/AbstractScalarDifferentiableOptimizer;->computeObjectiveValue([D)D

    move-result-wide v3

    move-wide v12, v3

    .line 146
    .local v12, "objective":D
    move-object v14, v2

    .line 147
    .local v14, "previous":Lorg/apache/commons/math/optimization/RealPointValuePair;
    new-instance v3, Lorg/apache/commons/math/optimization/RealPointValuePair;

    iget-object v4, v1, Lorg/apache/commons/math/optimization/general/AbstractScalarDifferentiableOptimizer;->point:[D

    invoke-direct {v3, v4, v12, v13}, Lorg/apache/commons/math/optimization/RealPointValuePair;-><init>([DD)V

    move-object v15, v3

    .line 148
    .end local v2    # "current":Lorg/apache/commons/math/optimization/RealPointValuePair;
    .local v15, "current":Lorg/apache/commons/math/optimization/RealPointValuePair;
    if-eqz v14, :cond_4

    .line 149
    iget-object v2, v1, Lorg/apache/commons/math/optimization/general/AbstractScalarDifferentiableOptimizer;->checker:Lorg/apache/commons/math/optimization/RealConvergenceChecker;

    invoke-virtual {v1}, Lorg/apache/commons/math/optimization/general/AbstractScalarDifferentiableOptimizer;->getIterations()I

    move-result v3

    invoke-interface {v2, v3, v14, v15}, Lorg/apache/commons/math/optimization/RealConvergenceChecker;->converged(ILorg/apache/commons/math/optimization/RealPointValuePair;Lorg/apache/commons/math/optimization/RealPointValuePair;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 151
    return-object v15

    .line 155
    :cond_4
    invoke-virtual {v1}, Lorg/apache/commons/math/optimization/general/AbstractScalarDifferentiableOptimizer;->incrementIterationsCounter()V

    .line 157
    const-wide/16 v2, 0x0

    .line 158
    .local v2, "dTd":D
    array-length v4, v9

    const/4 v5, 0x0

    move-wide/from16 v16, v2

    .end local v2    # "dTd":D
    .local v16, "dTd":D
    :goto_4
    if-ge v5, v4, :cond_5

    aget-wide v2, v9, v5

    .line 159
    .local v2, "di":D
    mul-double v18, v2, v2

    add-double v16, v16, v18

    .line 158
    .end local v2    # "di":D
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 163
    :cond_5
    new-instance v2, Lorg/apache/commons/math/optimization/general/NonLinearConjugateGradientOptimizer$LineSearchFunction;

    invoke-direct {v2, v1, v9}, Lorg/apache/commons/math/optimization/general/NonLinearConjugateGradientOptimizer$LineSearchFunction;-><init>(Lorg/apache/commons/math/optimization/general/NonLinearConjugateGradientOptimizer;[D)V

    .line 164
    .local v2, "lsf":Lorg/apache/commons/math/analysis/UnivariateRealFunction;
    iget-object v3, v1, Lorg/apache/commons/math/optimization/general/NonLinearConjugateGradientOptimizer;->solver:Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolver;

    iget-wide v5, v1, Lorg/apache/commons/math/optimization/general/NonLinearConjugateGradientOptimizer;->initialStep:D

    move-object/from16 v18, v3

    const-wide/16 v3, 0x0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math/optimization/general/NonLinearConjugateGradientOptimizer;->findUpperBound(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D

    move-result-wide v22

    const-wide/16 v20, 0x0

    move-object/from16 v19, v2

    .end local v2    # "lsf":Lorg/apache/commons/math/analysis/UnivariateRealFunction;
    .local v19, "lsf":Lorg/apache/commons/math/analysis/UnivariateRealFunction;
    invoke-interface/range {v18 .. v23}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolver;->solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D

    move-result-wide v2

    .line 167
    .local v2, "step":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    iget-object v5, v1, Lorg/apache/commons/math/optimization/general/AbstractScalarDifferentiableOptimizer;->point:[D

    array-length v5, v5

    if-ge v4, v5, :cond_6

    .line 168
    iget-object v5, v1, Lorg/apache/commons/math/optimization/general/AbstractScalarDifferentiableOptimizer;->point:[D

    aget-wide v20, v5, v4

    aget-wide v22, v9, v4

    mul-double v22, v22, v2

    add-double v20, v20, v22

    aput-wide v20, v5, v4

    .line 167
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    nop

    .line 170
    .end local v4    # "i":I
    iget-object v4, v1, Lorg/apache/commons/math/optimization/general/AbstractScalarDifferentiableOptimizer;->point:[D

    invoke-virtual {v1, v4}, Lorg/apache/commons/math/optimization/general/AbstractScalarDifferentiableOptimizer;->computeObjectiveGradient([D)[D

    move-result-object v4

    move-object v7, v4

    .line 171
    iget-object v4, v1, Lorg/apache/commons/math/optimization/general/AbstractScalarDifferentiableOptimizer;->goal:Lorg/apache/commons/math/optimization/GoalType;

    sget-object v5, Lorg/apache/commons/math/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math/optimization/GoalType;

    if-ne v4, v5, :cond_7

    .line 172
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_6
    if-ge v4, v0, :cond_7

    .line 173
    aget-wide v5, v7, v4

    neg-double v5, v5

    aput-wide v5, v7, v4

    .line 172
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 178
    .end local v4    # "i":I
    :cond_7
    move-wide v4, v10

    .line 179
    .local v4, "deltaOld":D
    iget-object v6, v1, Lorg/apache/commons/math/optimization/general/NonLinearConjugateGradientOptimizer;->preconditioner:Lorg/apache/commons/math/optimization/general/Preconditioner;

    move-wide/from16 v20, v2

    .end local v2    # "step":D
    .local v20, "step":D
    iget-object v2, v1, Lorg/apache/commons/math/optimization/general/AbstractScalarDifferentiableOptimizer;->point:[D

    invoke-interface {v6, v2, v7}, Lorg/apache/commons/math/optimization/general/Preconditioner;->precondition([D[D)[D

    move-result-object v2

    .line 180
    .local v2, "newSteepestDescent":[D
    const-wide/16 v10, 0x0

    .line 181
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v0, :cond_8

    .line 182
    aget-wide v22, v7, v3

    aget-wide v24, v2, v3

    mul-double v22, v22, v24

    add-double v10, v10, v22

    .line 181
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_8
    nop

    .line 186
    .end local v3    # "i":I
    iget-object v3, v1, Lorg/apache/commons/math/optimization/general/NonLinearConjugateGradientOptimizer;->updateFormula:Lorg/apache/commons/math/optimization/general/ConjugateGradientFormula;

    sget-object v6, Lorg/apache/commons/math/optimization/general/ConjugateGradientFormula;->FLETCHER_REEVES:Lorg/apache/commons/math/optimization/general/ConjugateGradientFormula;

    if-ne v3, v6, :cond_9

    .line 187
    div-double v22, v10, v4

    .local v22, "beta":D
    goto :goto_9

    .line 189
    .end local v22    # "beta":D
    :cond_9
    const-wide/16 v22, 0x0

    .line 190
    .local v22, "deltaMid":D
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_8
    array-length v6, v7

    if-ge v3, v6, :cond_a

    .line 191
    aget-wide v24, v7, v3

    aget-wide v26, v8, v3

    mul-double v24, v24, v26

    add-double v22, v22, v24

    .line 190
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_a
    nop

    .line 193
    .end local v3    # "i":I
    sub-double v24, v10, v22

    div-double v24, v24, v4

    move-wide/from16 v22, v24

    .line 195
    .local v22, "beta":D
    :goto_9
    move-object v8, v2

    .line 198
    invoke-virtual {v1}, Lorg/apache/commons/math/optimization/general/AbstractScalarDifferentiableOptimizer;->getIterations()I

    move-result v3

    rem-int/2addr v3, v0

    if-eqz v3, :cond_b

    const-wide/16 v24, 0x0

    cmpg-double v3, v22, v24

    if-gez v3, :cond_c

    :cond_b
    goto :goto_b

    .line 203
    :cond_c
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_a
    if-ge v3, v0, :cond_d

    .line 204
    aget-wide v24, v8, v3

    aget-wide v26, v9, v3

    mul-double v26, v26, v22

    add-double v24, v24, v26

    aput-wide v24, v9, v3

    .line 203
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 200
    .end local v3    # "i":I
    :goto_b
    invoke-virtual {v8}, [D->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D
    :try_end_0
    .catch Lorg/apache/commons/math/ConvergenceException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v3

    .line 208
    .end local v2    # "newSteepestDescent":[D
    .end local v4    # "deltaOld":D
    .end local v12    # "objective":D
    .end local v14    # "previous":Lorg/apache/commons/math/optimization/RealPointValuePair;
    .end local v16    # "dTd":D
    .end local v19    # "lsf":Lorg/apache/commons/math/analysis/UnivariateRealFunction;
    .end local v20    # "step":D
    .end local v22    # "beta":D
    :cond_d
    move-object v2, v15

    goto/16 :goto_3

    .line 210
    .end local v0    # "n":I
    .end local v7    # "r":[D
    .end local v8    # "steepestDescent":[D
    .end local v9    # "searchDirection":[D
    .end local v10    # "delta":D
    .end local v15    # "current":Lorg/apache/commons/math/optimization/RealPointValuePair;
    :goto_c
    nop

    .line 211
    .local v0, "ce":Lorg/apache/commons/math/ConvergenceException;
    new-instance v2, Lorg/apache/commons/math/optimization/OptimizationException;

    invoke-direct {v2, v0}, Lorg/apache/commons/math/optimization/OptimizationException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setInitialStep(D)V
    .locals 2
    .param p1, "initialStep"    # D

    .line 105
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 106
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/apache/commons/math/optimization/general/NonLinearConjugateGradientOptimizer;->initialStep:D

    goto :goto_0

    .line 108
    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/math/optimization/general/NonLinearConjugateGradientOptimizer;->initialStep:D

    .line 110
    :goto_0
    return-void
.end method

.method public setLineSearchSolver(Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolver;)V
    .locals 0
    .param p1, "lineSearchSolver"    # Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolver;

    .line 91
    iput-object p1, p0, Lorg/apache/commons/math/optimization/general/NonLinearConjugateGradientOptimizer;->solver:Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolver;

    .line 92
    return-void
.end method

.method public setPreconditioner(Lorg/apache/commons/math/optimization/general/Preconditioner;)V
    .locals 0
    .param p1, "preconditioner"    # Lorg/apache/commons/math/optimization/general/Preconditioner;

    .line 81
    iput-object p1, p0, Lorg/apache/commons/math/optimization/general/NonLinearConjugateGradientOptimizer;->preconditioner:Lorg/apache/commons/math/optimization/general/Preconditioner;

    .line 82
    return-void
.end method
