.class public Lorg/apache/commons/math/optimization/linear/SimplexSolver;
.super Lorg/apache/commons/math/optimization/linear/AbstractLinearOptimizer;
.source "SimplexSolver.java"


# static fields
.field private static final DEFAULT_EPSILON:D = 1.0E-6


# instance fields
.field protected final epsilon:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math/optimization/linear/SimplexSolver;-><init>(D)V

    .line 46
    return-void
.end method

.method public constructor <init>(D)V
    .locals 0
    .param p1, "epsilon"    # D

    .line 52
    invoke-direct {p0}, Lorg/apache/commons/math/optimization/linear/AbstractLinearOptimizer;-><init>()V

    .line 53
    iput-wide p1, p0, Lorg/apache/commons/math/optimization/linear/SimplexSolver;->epsilon:D

    .line 54
    return-void
.end method

.method private getPivotColumn(Lorg/apache/commons/math/optimization/linear/SimplexTableau;)Ljava/lang/Integer;
    .locals 10
    .param p1, "tableau"    # Lorg/apache/commons/math/optimization/linear/SimplexTableau;

    .line 62
    const-wide/16 v0, 0x0

    .line 63
    .local v0, "minValue":D
    const/4 v2, 0x0

    .line 64
    .local v2, "minPos":Ljava/lang/Integer;
    invoke-virtual {p1}, Lorg/apache/commons/math/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v3

    move-wide v6, v0

    .end local v0    # "minValue":D
    .local v3, "i":I
    .local v6, "minValue":D
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math/optimization/linear/SimplexTableau;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v3, v0, :cond_1

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v3}, Lorg/apache/commons/math/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v4

    iget-wide v8, p0, Lorg/apache/commons/math/optimization/linear/SimplexSolver;->epsilon:D

    invoke-static/range {v4 .. v9}, Lorg/apache/commons/math/util/MathUtils;->compareTo(DDD)I

    move-result v1

    if-gez v1, :cond_0

    .line 66
    invoke-virtual {p1, v0, v3}, Lorg/apache/commons/math/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v0

    .line 67
    .end local v6    # "minValue":D
    .restart local v0    # "minValue":D
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-wide v6, v0

    .line 64
    .end local v0    # "minValue":D
    .restart local v6    # "minValue":D
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 70
    .end local v3    # "i":I
    return-object v2
.end method

.method private getPivotRow(Lorg/apache/commons/math/optimization/linear/SimplexTableau;I)Ljava/lang/Integer;
    .locals 19
    .param p1, "tableau"    # Lorg/apache/commons/math/optimization/linear/SimplexTableau;
    .param p2, "col"    # I

    .line 81
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v2, "minRatioPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 83
    .local v3, "minRatio":D
    invoke-virtual {v1}, Lorg/apache/commons/math/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v5

    move v9, v5

    move-wide v5, v3

    .end local v3    # "minRatio":D
    .local v5, "minRatio":D
    .local v9, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/apache/commons/math/optimization/linear/SimplexTableau;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    if-ge v9, v3, :cond_2

    .line 84
    invoke-virtual {v1}, Lorg/apache/commons/math/optimization/linear/SimplexTableau;->getWidth()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v1, v9, v3}, Lorg/apache/commons/math/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v10

    .line 85
    .local v10, "rhs":D
    move/from16 v12, p2

    invoke-virtual {v1, v9, v12}, Lorg/apache/commons/math/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v13

    .line 86
    .local v13, "entry":D
    const-wide/16 v15, 0x0

    iget-wide v3, v0, Lorg/apache/commons/math/optimization/linear/SimplexSolver;->epsilon:D

    move-wide/from16 v17, v3

    invoke-static/range {v13 .. v18}, Lorg/apache/commons/math/util/MathUtils;->compareTo(DDD)I

    move-result v3

    if-lez v3, :cond_1

    .line 87
    div-double v3, v10, v13

    .line 88
    .local v3, "ratio":D
    iget-wide v7, v0, Lorg/apache/commons/math/optimization/linear/SimplexSolver;->epsilon:D

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/math/util/MathUtils;->equals(DDD)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 89
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 90
    :cond_0
    cmpg-double v7, v3, v5

    if-gez v7, :cond_1

    .line 91
    move-wide v5, v3

    .line 92
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .end local v2    # "minRatioPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v7, "minRatioPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v7

    .line 83
    .end local v3    # "ratio":D
    .end local v7    # "minRatioPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "rhs":D
    .end local v13    # "entry":D
    .restart local v2    # "minRatioPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    move/from16 v12, p2

    .line 98
    .end local v9    # "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 99
    const/4 v3, 0x0

    return-object v3

    .line 100
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v4, :cond_6

    .line 103
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 104
    .local v4, "row":Ljava/lang/Integer;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    invoke-virtual {v1}, Lorg/apache/commons/math/optimization/linear/SimplexTableau;->getNumArtificialVariables()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 105
    invoke-virtual {v1}, Lorg/apache/commons/math/optimization/linear/SimplexTableau;->getArtificialVariableOffset()I

    move-result v8

    add-int/2addr v8, v7

    .line 106
    .local v8, "column":I
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1, v9, v8}, Lorg/apache/commons/math/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v13

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    iget-wide v9, v0, Lorg/apache/commons/math/optimization/linear/SimplexSolver;->epsilon:D

    move-wide/from16 v17, v9

    invoke-static/range {v13 .. v18}, Lorg/apache/commons/math/util/MathUtils;->equals(DDD)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 107
    invoke-virtual {v1, v8}, Lorg/apache/commons/math/optimization/linear/SimplexTableau;->getBasicRow(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 108
    return-object v4

    .line 104
    .end local v8    # "column":I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    nop

    .line 111
    .end local v4    # "row":Ljava/lang/Integer;
    .end local v7    # "i":I
    goto :goto_2

    .line 113
    :cond_6
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    return-object v3
.end method


# virtual methods
.method protected doIteration(Lorg/apache/commons/math/optimization/linear/SimplexTableau;)V
    .locals 8
    .param p1, "tableau"    # Lorg/apache/commons/math/optimization/linear/SimplexTableau;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/optimization/OptimizationException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lorg/apache/commons/math/optimization/linear/AbstractLinearOptimizer;->incrementIterationsCounter()V

    .line 127
    invoke-direct {p0, p1}, Lorg/apache/commons/math/optimization/linear/SimplexSolver;->getPivotColumn(Lorg/apache/commons/math/optimization/linear/SimplexTableau;)Ljava/lang/Integer;

    move-result-object v0

    .line 128
    .local v0, "pivotCol":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math/optimization/linear/SimplexSolver;->getPivotRow(Lorg/apache/commons/math/optimization/linear/SimplexTableau;I)Ljava/lang/Integer;

    move-result-object v1

    .line 129
    .local v1, "pivotRow":Ljava/lang/Integer;
    if-eqz v1, :cond_2

    .line 134
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/apache/commons/math/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v2

    .line 135
    .local v2, "pivotVal":D
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4, v2, v3}, Lorg/apache/commons/math/optimization/linear/SimplexTableau;->divideRow(ID)V

    .line 138
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math/optimization/linear/SimplexTableau;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 139
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/math/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v5

    .line 141
    .local v5, "multiplier":D
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p1, v4, v7, v5, v6}, Lorg/apache/commons/math/optimization/linear/SimplexTableau;->subtractRow(IID)V

    .line 138
    .end local v5    # "multiplier":D
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 144
    .end local v4    # "i":I
    return-void

    .line 130
    .end local v2    # "pivotVal":D
    :cond_2
    new-instance v2, Lorg/apache/commons/math/optimization/linear/UnboundedSolutionException;

    invoke-direct {v2}, Lorg/apache/commons/math/optimization/linear/UnboundedSolutionException;-><init>()V

    throw v2
.end method

.method public doOptimize()Lorg/apache/commons/math/optimization/RealPointValuePair;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/optimization/OptimizationException;
        }
    .end annotation

    .line 173
    new-instance v0, Lorg/apache/commons/math/optimization/linear/SimplexTableau;

    iget-object v1, p0, Lorg/apache/commons/math/optimization/linear/AbstractLinearOptimizer;->function:Lorg/apache/commons/math/optimization/linear/LinearObjectiveFunction;

    iget-object v2, p0, Lorg/apache/commons/math/optimization/linear/AbstractLinearOptimizer;->linearConstraints:Ljava/util/Collection;

    iget-object v3, p0, Lorg/apache/commons/math/optimization/linear/AbstractLinearOptimizer;->goal:Lorg/apache/commons/math/optimization/GoalType;

    iget-boolean v4, p0, Lorg/apache/commons/math/optimization/linear/AbstractLinearOptimizer;->nonNegative:Z

    iget-wide v5, p0, Lorg/apache/commons/math/optimization/linear/SimplexSolver;->epsilon:D

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math/optimization/linear/SimplexTableau;-><init>(Lorg/apache/commons/math/optimization/linear/LinearObjectiveFunction;Ljava/util/Collection;Lorg/apache/commons/math/optimization/GoalType;ZD)V

    .line 176
    .local v0, "tableau":Lorg/apache/commons/math/optimization/linear/SimplexTableau;
    invoke-virtual {p0, v0}, Lorg/apache/commons/math/optimization/linear/SimplexSolver;->solvePhase1(Lorg/apache/commons/math/optimization/linear/SimplexTableau;)V

    .line 177
    invoke-virtual {v0}, Lorg/apache/commons/math/optimization/linear/SimplexTableau;->dropPhase1Objective()V

    .line 179
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math/optimization/linear/SimplexTableau;->isOptimal()Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    invoke-virtual {p0, v0}, Lorg/apache/commons/math/optimization/linear/SimplexSolver;->doIteration(Lorg/apache/commons/math/optimization/linear/SimplexTableau;)V

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math/optimization/linear/SimplexTableau;->getSolution()Lorg/apache/commons/math/optimization/RealPointValuePair;

    move-result-object v1

    return-object v1
.end method

.method protected solvePhase1(Lorg/apache/commons/math/optimization/linear/SimplexTableau;)V
    .locals 8
    .param p1, "tableau"    # Lorg/apache/commons/math/optimization/linear/SimplexTableau;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/optimization/OptimizationException;
        }
    .end annotation

    .line 156
    invoke-virtual {p1}, Lorg/apache/commons/math/optimization/linear/SimplexTableau;->getNumArtificialVariables()I

    move-result v0

    if-nez v0, :cond_0

    .line 157
    return-void

    .line 160
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math/optimization/linear/SimplexTableau;->isOptimal()Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    invoke-virtual {p0, p1}, Lorg/apache/commons/math/optimization/linear/SimplexSolver;->doIteration(Lorg/apache/commons/math/optimization/linear/SimplexTableau;)V

    goto :goto_0

    .line 165
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/apache/commons/math/optimization/linear/SimplexTableau;->getRhsOffset()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lorg/apache/commons/math/optimization/linear/SimplexSolver;->epsilon:D

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math/util/MathUtils;->equals(DDD)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    return-void

    .line 166
    :cond_2
    new-instance v0, Lorg/apache/commons/math/optimization/linear/NoFeasibleSolutionException;

    invoke-direct {v0}, Lorg/apache/commons/math/optimization/linear/NoFeasibleSolutionException;-><init>()V

    throw v0
.end method
