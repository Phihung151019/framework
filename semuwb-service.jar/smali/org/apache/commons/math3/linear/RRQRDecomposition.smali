.class public Lorg/apache/commons/math3/linear/RRQRDecomposition;
.super Lorg/apache/commons/math3/linear/QRDecomposition;
.source "RRQRDecomposition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/RRQRDecomposition$Solver;
    }
.end annotation


# instance fields
.field private cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

.field private p:[I


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 2
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 68
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/RRQRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V
    .locals 0
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p2, "threshold"    # D

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    .line 80
    return-void
.end method


# virtual methods
.method protected decompose([[D)V
    .locals 2
    .param p1, "qrt"    # [[D

    .line 87
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->p:[I

    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->p:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 89
    iget-object v1, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->p:[I

    aput v0, v1, v0

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "i":I
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/linear/QRDecomposition;->decompose([[D)V

    .line 92
    return-void
.end method

.method public getP()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6

    .line 137
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->p:[I

    array-length v0, v0

    .line 139
    .local v0, "n":I
    invoke-static {v0, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 140
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 141
    iget-object v2, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->p:[I

    aget v3, v3, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v2, v3, v1, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "n":I
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getRank(D)I
    .locals 12
    .param p1, "dropThreshold"    # D

    .line 167
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RRQRDecomposition;->getR()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 168
    .local v0, "r":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    .line 169
    .local v1, "rows":I
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    .line 170
    .local v2, "columns":I
    const/4 v3, 0x1

    .line 171
    .local v3, "rank":I
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getFrobeniusNorm()D

    move-result-wide v4

    .line 172
    .local v4, "lastNorm":D
    move-wide v6, v4

    .line 173
    .local v6, "rNorm":D
    :goto_0
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 174
    add-int/lit8 v8, v1, -0x1

    add-int/lit8 v9, v2, -0x1

    invoke-interface {v0, v3, v8, v3, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->getSubMatrix(IIII)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/commons/math3/linear/RealMatrix;->getFrobeniusNorm()D

    move-result-wide v8

    .line 175
    .local v8, "thisNorm":D
    const-wide/16 v10, 0x0

    cmpl-double v10, v8, v10

    if-eqz v10, :cond_1

    div-double v10, v8, v4

    mul-double/2addr v10, v6

    cmpg-double v10, v10, p1

    if-gez v10, :cond_0

    .line 176
    goto :goto_1

    .line 178
    :cond_0
    move-wide v4, v8

    .line 179
    nop

    .end local v8    # "thisNorm":D
    add-int/lit8 v3, v3, 0x1

    .line 180
    goto :goto_0

    .line 181
    :cond_1
    :goto_1
    return v3
.end method

.method public getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;
    .locals 4

    .line 198
    new-instance v0, Lorg/apache/commons/math3/linear/RRQRDecomposition$Solver;

    invoke-super {p0}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RRQRDecomposition;->getP()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/RRQRDecomposition$Solver;-><init>(Lorg/apache/commons/math3/linear/DecompositionSolver;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RRQRDecomposition$1;)V

    return-object v0
.end method

.method protected performHouseholderReflection(I[[D)V
    .locals 11
    .param p1, "minor"    # I
    .param p2, "qrt"    # [[D

    .line 101
    const-wide/16 v0, 0x0

    .line 103
    .local v0, "l2NormSquaredMax":D
    move v2, p1

    .line 104
    .local v2, "l2NormSquaredMaxIndex":I
    move v3, p1

    .local v3, "i":I
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_2

    .line 105
    const-wide/16 v4, 0x0

    .line 106
    .local v4, "l2NormSquared":D
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    aget-object v7, p2, v3

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 107
    aget-object v7, p2, v3

    aget-wide v7, v7, v6

    aget-object v9, p2, v3

    aget-wide v9, v9, v6

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    .line 106
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 109
    .end local v6    # "j":I
    :cond_0
    cmpl-double v6, v4, v0

    if-lez v6, :cond_1

    .line 110
    move-wide v0, v4

    .line 111
    move v2, v3

    .line 104
    .end local v4    # "l2NormSquared":D
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    .end local v3    # "i":I
    :cond_2
    if-eq v2, p1, :cond_3

    .line 116
    aget-object v3, p2, p1

    .line 117
    .local v3, "tmp1":[D
    aget-object v4, p2, v2

    aput-object v4, p2, p1

    .line 118
    aput-object v3, p2, v2

    .line 119
    iget-object v4, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->p:[I

    aget v4, v4, p1

    .line 120
    .local v4, "tmp2":I
    iget-object v5, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->p:[I

    iget-object v6, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->p:[I

    aget v6, v6, v2

    aput v6, v5, p1

    .line 121
    iget-object v5, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->p:[I

    aput v4, v5, v2

    .line 124
    .end local v3    # "tmp1":[D
    .end local v4    # "tmp2":I
    :cond_3
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/QRDecomposition;->performHouseholderReflection(I[[D)V

    .line 126
    return-void
.end method
