.class public Lorg/apache/commons/math3/linear/CholeskyDecomposition;
.super Ljava/lang/Object;
.source "CholeskyDecomposition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;
    }
.end annotation


# static fields
.field public static final DEFAULT_ABSOLUTE_POSITIVITY_THRESHOLD:D = 1.0E-10

.field public static final DEFAULT_RELATIVE_SYMMETRY_THRESHOLD:D = 1.0E-15


# instance fields
.field private cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedLT:Lorg/apache/commons/math3/linear/RealMatrix;

.field private lTData:[[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 6
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 84
    const-wide v2, 0x3cd203af9ee75616L    # 1.0E-15

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "matrix":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v1, "matrix":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/linear/CholeskyDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;DD)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;DD)V
    .locals 17
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p2, "relativeSymmetryThreshold"    # D
    .param p4, "absolutePositivityThreshold"    # D

    .line 105
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->isSquare()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 111
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    .line 112
    .local v3, "order":I
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v4

    iput-object v4, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->lTData:[[D

    .line 113
    const/4 v4, 0x0

    iput-object v4, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 114
    iput-object v4, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->cachedLT:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 117
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 118
    iget-object v5, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->lTData:[[D

    aget-object v5, v5, v4

    .line 121
    .local v5, "lI":[D
    add-int/lit8 v6, v4, 0x1

    .local v6, "j":I
    :goto_1
    if-ge v6, v3, :cond_1

    .line 122
    iget-object v7, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->lTData:[[D

    aget-object v7, v7, v6

    .line 123
    .local v7, "lJ":[D
    aget-wide v8, v5, v6

    .line 124
    .local v8, "lIJ":D
    aget-wide v10, v7, v4

    .line 125
    .local v10, "lJI":D
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v12

    mul-double/2addr v12, v1

    .line 127
    .local v12, "maxDelta":D
    sub-double v14, v8, v10

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    cmpl-double v14, v14, v12

    if-gtz v14, :cond_0

    .line 130
    const-wide/16 v14, 0x0

    aput-wide v14, v7, v4

    .line 121
    .end local v7    # "lJ":[D
    .end local v8    # "lIJ":D
    .end local v10    # "lJI":D
    .end local v12    # "maxDelta":D
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 128
    .restart local v7    # "lJ":[D
    .restart local v8    # "lIJ":D
    .restart local v10    # "lJI":D
    .restart local v12    # "maxDelta":D
    :cond_0
    new-instance v14, Lorg/apache/commons/math3/linear/NonSymmetricMatrixException;

    invoke-direct {v14, v4, v6, v1, v2}, Lorg/apache/commons/math3/linear/NonSymmetricMatrixException;-><init>(IID)V

    throw v14

    .line 117
    .end local v5    # "lI":[D
    .end local v6    # "j":I
    .end local v7    # "lJ":[D
    .end local v8    # "lIJ":D
    .end local v10    # "lJI":D
    .end local v12    # "maxDelta":D
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 135
    .end local v4    # "i":I
    :cond_2
    const/4 v4, 0x0

    move v8, v4

    .local v8, "i":I
    :goto_2
    if-ge v8, v3, :cond_6

    .line 137
    iget-object v4, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->lTData:[[D

    aget-object v4, v4, v8

    .line 140
    .local v4, "ltI":[D
    aget-wide v5, v4, v8

    cmpg-double v5, v5, p4

    if-lez v5, :cond_5

    .line 144
    aget-wide v5, v4, v8

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    aput-wide v5, v4, v8

    .line 145
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    aget-wide v9, v4, v8

    div-double/2addr v5, v9

    .line 147
    .local v5, "inverse":D
    add-int/lit8 v7, v3, -0x1

    .local v7, "q":I
    :goto_3
    if-le v7, v8, :cond_4

    .line 148
    aget-wide v9, v4, v7

    mul-double/2addr v9, v5

    aput-wide v9, v4, v7

    .line 149
    iget-object v9, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->lTData:[[D

    aget-object v9, v9, v7

    .line 150
    .local v9, "ltQ":[D
    move v10, v7

    .local v10, "p":I
    :goto_4
    if-ge v10, v3, :cond_3

    .line 151
    aget-wide v11, v9, v10

    aget-wide v13, v4, v7

    aget-wide v15, v4, v10

    mul-double/2addr v13, v15

    sub-double/2addr v11, v13

    aput-wide v11, v9, v10

    .line 150
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 147
    .end local v9    # "ltQ":[D
    .end local v10    # "p":I
    :cond_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 135
    .end local v4    # "ltI":[D
    .end local v5    # "inverse":D
    .end local v7    # "q":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 141
    .restart local v4    # "ltI":[D
    :cond_5
    new-instance v5, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;

    aget-wide v6, v4, v8

    move-wide/from16 v9, p4

    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;-><init>(DID)V

    throw v5

    .line 155
    .end local v4    # "ltI":[D
    .end local v8    # "i":I
    :cond_6
    return-void

    .line 107
    .end local v3    # "order":I
    :cond_7
    new-instance v3, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v4

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v3
.end method


# virtual methods
.method public getDeterminant()D
    .locals 7

    .line 189
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 190
    .local v0, "determinant":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->lTData:[[D

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 191
    iget-object v3, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->lTData:[[D

    aget-object v3, v3, v2

    aget-wide v3, v3, v2

    .line 192
    .local v3, "lTii":D
    mul-double v5, v3, v3

    mul-double/2addr v0, v5

    .line 190
    .end local v3    # "lTii":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    .end local v2    # "i":I
    :cond_0
    return-wide v0
.end method

.method public getL()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->getLT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getLT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->cachedLT:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->lTData:[[D

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->cachedLT:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 181
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->cachedLT:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;
    .locals 3

    .line 202
    new-instance v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->lTData:[[D

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;-><init>([[DLorg/apache/commons/math3/linear/CholeskyDecomposition$1;)V

    return-object v0
.end method
