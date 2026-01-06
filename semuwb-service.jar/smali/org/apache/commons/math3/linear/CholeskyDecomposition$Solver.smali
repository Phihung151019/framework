.class Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;
.super Ljava/lang/Object;
.source "CholeskyDecomposition.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/DecompositionSolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/CholeskyDecomposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Solver"
.end annotation


# instance fields
.field private final lTData:[[D


# direct methods
.method private constructor <init>([[D)V
    .locals 0
    .param p1, "lTData"    # [[D

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->lTData:[[D

    .line 216
    return-void
.end method

.method synthetic constructor <init>([[DLorg/apache/commons/math3/linear/CholeskyDecomposition$1;)V
    .locals 0
    .param p1, "x0"    # [[D
    .param p2, "x1"    # Lorg/apache/commons/math3/linear/CholeskyDecomposition$1;

    .line 206
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;-><init>([[D)V

    return-void
.end method


# virtual methods
.method public getInverse()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 307
    iget-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->lTData:[[D

    array-length v0, v0

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealIdentityMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public isNonSingular()Z
    .locals 1

    .line 221
    const/4 v0, 0x1

    return v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 18
    .param p1, "b"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 257
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->lTData:[[D

    array-length v1, v1

    .line 258
    .local v1, "m":I
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    if-ne v2, v1, :cond_8

    .line 262
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    .line 263
    .local v2, "nColB":I
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v3

    .line 266
    .local v3, "x":[[D
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 267
    iget-object v5, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->lTData:[[D

    aget-object v5, v5, v4

    .line 268
    .local v5, "lJ":[D
    aget-wide v6, v5, v4

    .line 269
    .local v6, "lJJ":D
    aget-object v8, v3, v4

    .line 270
    .local v8, "xJ":[D
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_1
    if-ge v9, v2, :cond_0

    .line 271
    aget-wide v10, v8, v9

    div-double/2addr v10, v6

    aput-wide v10, v8, v9

    .line 270
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 273
    .end local v9    # "k":I
    :cond_0
    add-int/lit8 v9, v4, 0x1

    .local v9, "i":I
    :goto_2
    if-ge v9, v1, :cond_2

    .line 274
    aget-object v10, v3, v9

    .line 275
    .local v10, "xI":[D
    aget-wide v11, v5, v9

    .line 276
    .local v11, "lJI":D
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_3
    if-ge v13, v2, :cond_1

    .line 277
    aget-wide v14, v10, v13

    aget-wide v16, v8, v13

    mul-double v16, v16, v11

    sub-double v14, v14, v16

    aput-wide v14, v10, v13

    .line 276
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 273
    .end local v10    # "xI":[D
    .end local v11    # "lJI":D
    .end local v13    # "k":I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 266
    .end local v5    # "lJ":[D
    .end local v6    # "lJJ":D
    .end local v8    # "xJ":[D
    .end local v9    # "i":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 283
    .end local v4    # "j":I
    :cond_3
    add-int/lit8 v4, v1, -0x1

    .restart local v4    # "j":I
    :goto_4
    if-ltz v4, :cond_7

    .line 284
    iget-object v5, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->lTData:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v4

    .line 285
    .local v5, "lJJ":D
    aget-object v7, v3, v4

    .line 286
    .local v7, "xJ":[D
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_5
    if-ge v8, v2, :cond_4

    .line 287
    aget-wide v9, v7, v8

    div-double/2addr v9, v5

    aput-wide v9, v7, v8

    .line 286
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 289
    .end local v8    # "k":I
    :cond_4
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6
    if-ge v8, v4, :cond_6

    .line 290
    aget-object v9, v3, v8

    .line 291
    .local v9, "xI":[D
    iget-object v10, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->lTData:[[D

    aget-object v10, v10, v8

    aget-wide v10, v10, v4

    .line 292
    .local v10, "lIJ":D
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_7
    if-ge v12, v2, :cond_5

    .line 293
    aget-wide v13, v9, v12

    aget-wide v15, v7, v12

    mul-double/2addr v15, v10

    sub-double/2addr v13, v15

    aput-wide v13, v9, v12

    .line 292
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 289
    .end local v9    # "xI":[D
    .end local v10    # "lIJ":D
    .end local v12    # "k":I
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 283
    .end local v5    # "lJJ":D
    .end local v7    # "xJ":[D
    .end local v8    # "i":I
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 298
    .end local v4    # "j":I
    :cond_7
    new-instance v4, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v4, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    return-object v4

    .line 259
    .end local v2    # "nColB":I
    .end local v3    # "x":[[D
    :cond_8
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 11
    .param p1, "b"    # Lorg/apache/commons/math3/linear/RealVector;

    .line 226
    iget-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->lTData:[[D

    array-length v0, v0

    .line 227
    .local v0, "m":I
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    if-ne v1, v0, :cond_4

    .line 231
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v1

    .line 234
    .local v1, "x":[D
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 235
    iget-object v3, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->lTData:[[D

    aget-object v3, v3, v2

    .line 236
    .local v3, "lJ":[D
    aget-wide v4, v1, v2

    aget-wide v6, v3, v2

    div-double/2addr v4, v6

    aput-wide v4, v1, v2

    .line 237
    aget-wide v4, v1, v2

    .line 238
    .local v4, "xJ":D
    add-int/lit8 v6, v2, 0x1

    .local v6, "i":I
    :goto_1
    if-ge v6, v0, :cond_0

    .line 239
    aget-wide v7, v1, v6

    aget-wide v9, v3, v6

    mul-double/2addr v9, v4

    sub-double/2addr v7, v9

    aput-wide v7, v1, v6

    .line 238
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 234
    .end local v3    # "lJ":[D
    .end local v4    # "xJ":D
    .end local v6    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    .end local v2    # "j":I
    :cond_1
    add-int/lit8 v2, v0, -0x1

    .restart local v2    # "j":I
    :goto_2
    if-ltz v2, :cond_3

    .line 245
    aget-wide v3, v1, v2

    iget-object v5, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->lTData:[[D

    aget-object v5, v5, v2

    aget-wide v5, v5, v2

    div-double/2addr v3, v5

    aput-wide v3, v1, v2

    .line 246
    aget-wide v3, v1, v2

    .line 247
    .local v3, "xJ":D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v2, :cond_2

    .line 248
    aget-wide v6, v1, v5

    iget-object v8, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->lTData:[[D

    aget-object v8, v8, v5

    aget-wide v8, v8, v2

    mul-double/2addr v8, v3

    sub-double/2addr v6, v8

    aput-wide v6, v1, v5

    .line 247
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 244
    .end local v3    # "xJ":D
    .end local v5    # "i":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 252
    .end local v2    # "j":I
    :cond_3
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object v2

    .line 228
    .end local v1    # "x":[D
    :cond_4
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method
