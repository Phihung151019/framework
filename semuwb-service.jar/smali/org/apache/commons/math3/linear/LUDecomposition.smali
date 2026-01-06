.class public Lorg/apache/commons/math3/linear/LUDecomposition;
.super Ljava/lang/Object;
.source "LUDecomposition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/LUDecomposition$Solver;
    }
.end annotation


# static fields
.field private static final DEFAULT_TOO_SMALL:D = 1.0E-11


# instance fields
.field private cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

.field private even:Z

.field private final lu:[[D

.field private final pivot:[I

.field private singular:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 2
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 75
    const-wide v0, 0x3da5fd7fe1796495L    # 1.0E-11

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/LUDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V
    .locals 16
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p2, "singularityThreshold"    # D

    .line 85
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->isSquare()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 91
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    .line 92
    .local v1, "m":I
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v2

    iput-object v2, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    .line 93
    new-array v2, v1, [I

    iput-object v2, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    .line 94
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 95
    iput-object v2, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 96
    iput-object v2, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 99
    const/4 v2, 0x0

    .local v2, "row":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 100
    iget-object v3, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    aput v2, v3, v2

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v2    # "row":I
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->even:Z

    .line 103
    const/4 v3, 0x0

    iput-boolean v3, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->singular:Z

    .line 106
    const/4 v3, 0x0

    .local v3, "col":I
    :goto_1
    if-ge v3, v1, :cond_a

    .line 109
    const/4 v4, 0x0

    .local v4, "row":I
    :goto_2
    if-ge v4, v3, :cond_2

    .line 110
    iget-object v5, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    aget-object v5, v5, v4

    .line 111
    .local v5, "luRow":[D
    aget-wide v6, v5, v3

    .line 112
    .local v6, "sum":D
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v4, :cond_1

    .line 113
    aget-wide v9, v5, v8

    iget-object v11, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    aget-object v11, v11, v8

    aget-wide v11, v11, v3

    mul-double/2addr v9, v11

    sub-double/2addr v6, v9

    .line 112
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 115
    .end local v8    # "i":I
    :cond_1
    aput-wide v6, v5, v3

    .line 109
    .end local v5    # "luRow":[D
    .end local v6    # "sum":D
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 119
    .end local v4    # "row":I
    :cond_2
    move v4, v3

    .line 120
    .local v4, "max":I
    const-wide/high16 v5, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 121
    .local v5, "largest":D
    move v7, v3

    .local v7, "row":I
    :goto_4
    if-ge v7, v1, :cond_5

    .line 122
    iget-object v8, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    aget-object v8, v8, v7

    .line 123
    .local v8, "luRow":[D
    aget-wide v9, v8, v3

    .line 124
    .local v9, "sum":D
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5
    if-ge v11, v3, :cond_3

    .line 125
    aget-wide v12, v8, v11

    iget-object v14, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    aget-object v14, v14, v11

    aget-wide v14, v14, v3

    mul-double/2addr v12, v14

    sub-double/2addr v9, v12

    .line 124
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 127
    .end local v11    # "i":I
    :cond_3
    aput-wide v9, v8, v3

    .line 130
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    cmpl-double v11, v11, v5

    if-lez v11, :cond_4

    .line 131
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    .line 132
    move v4, v7

    .line 121
    .end local v8    # "luRow":[D
    .end local v9    # "sum":D
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 137
    .end local v7    # "row":I
    :cond_5
    iget-object v7, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    aget-object v7, v7, v4

    aget-wide v7, v7, v3

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    cmpg-double v7, v7, p2

    if-gez v7, :cond_6

    .line 138
    iput-boolean v2, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->singular:Z

    .line 139
    return-void

    .line 143
    :cond_6
    if-eq v4, v3, :cond_8

    .line 144
    const-wide/16 v7, 0x0

    .line 145
    .local v7, "tmp":D
    iget-object v9, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    aget-object v9, v9, v4

    .line 146
    .local v9, "luMax":[D
    iget-object v10, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    aget-object v10, v10, v3

    .line 147
    .local v10, "luCol":[D
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_6
    if-ge v11, v1, :cond_7

    .line 148
    aget-wide v7, v9, v11

    .line 149
    aget-wide v12, v10, v11

    aput-wide v12, v9, v11

    .line 150
    aput-wide v7, v10, v11

    .line 147
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 152
    .end local v11    # "i":I
    :cond_7
    iget-object v11, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    aget v11, v11, v4

    .line 153
    .local v11, "temp":I
    iget-object v12, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    iget-object v13, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    aget v13, v13, v3

    aput v13, v12, v4

    .line 154
    iget-object v12, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    aput v11, v12, v3

    .line 155
    iget-boolean v12, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->even:Z

    xor-int/2addr v12, v2

    iput-boolean v12, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->even:Z

    .line 159
    .end local v7    # "tmp":D
    .end local v9    # "luMax":[D
    .end local v10    # "luCol":[D
    .end local v11    # "temp":I
    :cond_8
    iget-object v7, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    aget-object v7, v7, v3

    aget-wide v7, v7, v3

    .line 160
    .local v7, "luDiag":D
    add-int/lit8 v9, v3, 0x1

    .local v9, "row":I
    :goto_7
    if-ge v9, v1, :cond_9

    .line 161
    iget-object v10, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    aget-object v10, v10, v9

    aget-wide v11, v10, v3

    div-double/2addr v11, v7

    aput-wide v11, v10, v3

    .line 160
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 106
    .end local v4    # "max":I
    .end local v5    # "largest":D
    .end local v7    # "luDiag":D
    .end local v9    # "row":I
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 164
    .end local v3    # "col":I
    :cond_a
    return-void

    .line 87
    .end local v1    # "m":I
    :cond_b
    new-instance v1, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v1
.end method


# virtual methods
.method public getDeterminant()D
    .locals 6

    .line 239
    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->singular:Z

    if-eqz v0, :cond_0

    .line 240
    const-wide/16 v0, 0x0

    return-wide v0

    .line 242
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    array-length v0, v0

    .line 243
    .local v0, "m":I
    iget-boolean v1, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->even:Z

    if-eqz v1, :cond_1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_1
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 244
    .local v1, "determinant":D
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 245
    iget-object v4, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    aget-object v4, v4, v3

    aget-wide v4, v4, v3

    mul-double/2addr v1, v4

    .line 244
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 247
    .end local v3    # "i":I
    :cond_2
    return-wide v1
.end method

.method public getL()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7

    .line 172
    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->singular:Z

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    array-length v0, v0

    .line 174
    .local v0, "m":I
    invoke-static {v0, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 175
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 176
    iget-object v2, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    aget-object v2, v2, v1

    .line 177
    .local v2, "luI":[D
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 178
    iget-object v4, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

    aget-wide v5, v2, v3

    invoke-interface {v4, v1, v3, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 177
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 180
    .end local v3    # "j":I
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v3, v1, v1, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 175
    .end local v2    # "luI":[D
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "m":I
    .end local v1    # "i":I
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getP()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6

    .line 215
    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->singular:Z

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    array-length v0, v0

    .line 217
    .local v0, "m":I
    invoke-static {v0, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 218
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 219
    iget-object v2, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    aget v3, v3, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v2, v1, v3, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    .end local v0    # "m":I
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getPivot()[I
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;
    .locals 5

    .line 257
    new-instance v0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    iget-object v2, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    iget-boolean v3, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->singular:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;-><init>([[D[IZLorg/apache/commons/math3/linear/LUDecomposition$1;)V

    return-object v0
.end method

.method public getU()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7

    .line 192
    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->singular:Z

    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    array-length v0, v0

    .line 194
    .local v0, "m":I
    invoke-static {v0, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 195
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 196
    iget-object v2, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    aget-object v2, v2, v1

    .line 197
    .local v2, "luI":[D
    move v3, v1

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 198
    iget-object v4, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    aget-wide v5, v2, v3

    invoke-interface {v4, v1, v3, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 197
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 195
    .end local v2    # "luI":[D
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v0    # "m":I
    .end local v1    # "i":I
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method
