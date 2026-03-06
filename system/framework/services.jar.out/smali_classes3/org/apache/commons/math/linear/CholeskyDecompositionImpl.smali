.class public Lorg/apache/commons/math/linear/CholeskyDecompositionImpl;
.super Ljava/lang/Object;
.source "CholeskyDecompositionImpl.java"

# interfaces
.implements Lorg/apache/commons/math/linear/CholeskyDecomposition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math/linear/CholeskyDecompositionImpl$Solver;
    }
.end annotation


# static fields
.field public static final DEFAULT_ABSOLUTE_POSITIVITY_THRESHOLD:D = 1.0E-10

.field public static final DEFAULT_RELATIVE_SYMMETRY_THRESHOLD:D = 1.0E-15


# instance fields
.field private cachedL:Lorg/apache/commons/math/linear/RealMatrix;

.field private cachedLT:Lorg/apache/commons/math/linear/RealMatrix;

.field private lTData:[[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math/linear/RealMatrix;)V
    .locals 6
    .param p1, "matrix"    # Lorg/apache/commons/math/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/linear/NonSquareMatrixException;,
            Lorg/apache/commons/math/linear/NotSymmetricMatrixException;,
            Lorg/apache/commons/math/linear/NotPositiveDefiniteMatrixException;
        }
    .end annotation

    .line 76
    const-wide v2, 0x3cd203af9ee75616L    # 1.0E-15

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "matrix":Lorg/apache/commons/math/linear/RealMatrix;
    .local v1, "matrix":Lorg/apache/commons/math/linear/RealMatrix;
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math/linear/CholeskyDecompositionImpl;-><init>(Lorg/apache/commons/math/linear/RealMatrix;DD)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math/linear/RealMatrix;DD)V
    .locals 14
    .param p1, "matrix"    # Lorg/apache/commons/math/linear/RealMatrix;
    .param p2, "relativeSymmetryThreshold"    # D
    .param p4, "absolutePositivityThreshold"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math/linear/NonSquareMatrixException;,
            Lorg/apache/commons/math/linear/NotSymmetricMatrixException;,
            Lorg/apache/commons/math/linear/NotPositiveDefiniteMatrixException;
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-interface {p1}, Lorg/apache/commons/math/linear/AnyMatrix;->isSquare()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 106
    invoke-interface {p1}, Lorg/apache/commons/math/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    .line 107
    .local v0, "order":I
    invoke-interface {p1}, Lorg/apache/commons/math/linear/RealMatrix;->getData()[[D

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math/linear/CholeskyDecompositionImpl;->lTData:[[D

    .line 108
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/math/linear/CholeskyDecompositionImpl;->cachedL:Lorg/apache/commons/math/linear/RealMatrix;

    .line 109
    iput-object v1, p0, Lorg/apache/commons/math/linear/CholeskyDecompositionImpl;->cachedLT:Lorg/apache/commons/math/linear/RealMatrix;

    .line 112
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 114
    iget-object v2, p0, Lorg/apache/commons/math/linear/CholeskyDecompositionImpl;->lTData:[[D

    aget-object v2, v2, v1

    .line 117
    .local v2, "lI":[D
    add-int/lit8 v3, v1, 0x1

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 118
    iget-object v4, p0, Lorg/apache/commons/math/linear/CholeskyDecompositionImpl;->lTData:[[D

    aget-object v4, v4, v3

    .line 119
    .local v4, "lJ":[D
    aget-wide v5, v2, v3

    .line 120
    .local v5, "lIJ":D
    aget-wide v7, v4, v1

    .line 121
    .local v7, "lJI":D
    nop

    .line 122
    invoke-static {v5, v6}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v9

    invoke-static {v7, v8}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Lorg/apache/commons/math/util/FastMath;->max(DD)D

    move-result-wide v9

    mul-double v9, v9, p2

    .line 123
    .local v9, "maxDelta":D
    sub-double v11, v5, v7

    invoke-static {v11, v12}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v11

    cmpl-double v11, v11, v9

    if-gtz v11, :cond_0

    .line 126
    const-wide/16 v11, 0x0

    aput-wide v11, v4, v1

    .line 117
    .end local v4    # "lJ":[D
    .end local v5    # "lIJ":D
    .end local v7    # "lJI":D
    .end local v9    # "maxDelta":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 124
    .restart local v4    # "lJ":[D
    .restart local v5    # "lIJ":D
    .restart local v7    # "lJI":D
    .restart local v9    # "maxDelta":D
    :cond_0
    new-instance v11, Lorg/apache/commons/math/linear/NotSymmetricMatrixException;

    invoke-direct {v11}, Lorg/apache/commons/math/linear/NotSymmetricMatrixException;-><init>()V

    throw v11

    .line 117
    .end local v4    # "lJ":[D
    .end local v5    # "lIJ":D
    .end local v7    # "lJI":D
    .end local v9    # "maxDelta":D
    :cond_1
    nop

    .line 112
    .end local v2    # "lI":[D
    .end local v3    # "j":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 131
    .end local v1    # "i":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v0, :cond_6

    .line 133
    iget-object v2, p0, Lorg/apache/commons/math/linear/CholeskyDecompositionImpl;->lTData:[[D

    aget-object v2, v2, v1

    .line 136
    .local v2, "ltI":[D
    aget-wide v3, v2, v1

    cmpg-double v3, v3, p4

    if-ltz v3, :cond_5

    .line 140
    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 141
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    aget-wide v5, v2, v1

    div-double/2addr v3, v5

    .line 143
    .local v3, "inverse":D
    add-int/lit8 v5, v0, -0x1

    .local v5, "q":I
    :goto_3
    if-le v5, v1, :cond_4

    .line 144
    aget-wide v6, v2, v5

    mul-double/2addr v6, v3

    aput-wide v6, v2, v5

    .line 145
    iget-object v6, p0, Lorg/apache/commons/math/linear/CholeskyDecompositionImpl;->lTData:[[D

    aget-object v6, v6, v5

    .line 146
    .local v6, "ltQ":[D
    move v7, v5

    .local v7, "p":I
    :goto_4
    if-ge v7, v0, :cond_3

    .line 147
    aget-wide v8, v6, v7

    aget-wide v10, v2, v5

    aget-wide v12, v2, v7

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, v6, v7

    .line 146
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_3
    nop

    .line 143
    .end local v6    # "ltQ":[D
    .end local v7    # "p":I
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_4
    nop

    .line 131
    .end local v2    # "ltI":[D
    .end local v3    # "inverse":D
    .end local v5    # "q":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 137
    .restart local v2    # "ltI":[D
    :cond_5
    new-instance v3, Lorg/apache/commons/math/linear/NotPositiveDefiniteMatrixException;

    invoke-direct {v3}, Lorg/apache/commons/math/linear/NotPositiveDefiniteMatrixException;-><init>()V

    throw v3

    .line 131
    .end local v2    # "ltI":[D
    :cond_6
    nop

    .line 153
    .end local v1    # "i":I
    return-void

    .line 102
    .end local v0    # "order":I
    :cond_7
    new-instance v0, Lorg/apache/commons/math/linear/NonSquareMatrixException;

    invoke-interface {p1}, Lorg/apache/commons/math/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    .line 103
    invoke-interface {p1}, Lorg/apache/commons/math/linear/AnyMatrix;->getColumnDimension()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math/linear/NonSquareMatrixException;-><init>(II)V

    throw v0
.end method


# virtual methods
.method public getDeterminant()D
    .locals 7

    .line 177
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 178
    .local v0, "determinant":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math/linear/CholeskyDecompositionImpl;->lTData:[[D

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 179
    iget-object v3, p0, Lorg/apache/commons/math/linear/CholeskyDecompositionImpl;->lTData:[[D

    aget-object v3, v3, v2

    aget-wide v3, v3, v2

    .line 180
    .local v3, "lTii":D
    mul-double v5, v3, v3

    mul-double/2addr v0, v5

    .line 178
    .end local v3    # "lTii":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 182
    .end local v2    # "i":I
    return-wide v0
.end method

.method public getL()Lorg/apache/commons/math/linear/RealMatrix;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/apache/commons/math/linear/CholeskyDecompositionImpl;->cachedL:Lorg/apache/commons/math/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lorg/apache/commons/math/linear/CholeskyDecompositionImpl;->getLT()Lorg/apache/commons/math/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math/linear/RealMatrix;->transpose()Lorg/apache/commons/math/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math/linear/CholeskyDecompositionImpl;->cachedL:Lorg/apache/commons/math/linear/RealMatrix;

    .line 160
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math/linear/CholeskyDecompositionImpl;->cachedL:Lorg/apache/commons/math/linear/RealMatrix;

    return-object v0
.end method

.method public getLT()Lorg/apache/commons/math/linear/RealMatrix;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/apache/commons/math/linear/CholeskyDecompositionImpl;->cachedLT:Lorg/apache/commons/math/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/apache/commons/math/linear/CholeskyDecompositionImpl;->lTData:[[D

    invoke-static {v0}, Lorg/apache/commons/math/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math/linear/CholeskyDecompositionImpl;->cachedLT:Lorg/apache/commons/math/linear/RealMatrix;

    .line 171
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math/linear/CholeskyDecompositionImpl;->cachedLT:Lorg/apache/commons/math/linear/RealMatrix;

    return-object v0
.end method

.method public getSolver()Lorg/apache/commons/math/linear/DecompositionSolver;
    .locals 3

    .line 187
    new-instance v0, Lorg/apache/commons/math/linear/CholeskyDecompositionImpl$Solver;

    iget-object v1, p0, Lorg/apache/commons/math/linear/CholeskyDecompositionImpl;->lTData:[[D

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math/linear/CholeskyDecompositionImpl$Solver;-><init>([[DLorg/apache/commons/math/linear/CholeskyDecompositionImpl$1;)V

    return-object v0
.end method
