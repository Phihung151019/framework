.class public Lorg/apache/commons/math3/linear/QRDecomposition;
.super Ljava/lang/Object;
.source "QRDecomposition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/QRDecomposition$Solver;
    }
.end annotation


# instance fields
.field private cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedQT:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedR:Lorg/apache/commons/math3/linear/RealMatrix;

.field private qrt:[[D

.field private rDiag:[D

.field private final threshold:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 2
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 80
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V
    .locals 3
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p2, "threshold"    # D

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-wide p2, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->threshold:D

    .line 93
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    .line 94
    .local v0, "m":I
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    .line 95
    .local v1, "n":I
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    .line 96
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    new-array v2, v2, [D

    iput-object v2, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->rDiag:[D

    .line 97
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 98
    iput-object v2, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedQT:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 99
    iput-object v2, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedR:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 100
    iput-object v2, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 102
    iget-object v2, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/QRDecomposition;->decompose([[D)V

    .line 104
    return-void
.end method


# virtual methods
.method protected decompose([[D)V
    .locals 3
    .param p1, "matrix"    # [[D

    .line 111
    const/4 v0, 0x0

    .local v0, "minor":I
    :goto_0
    array-length v1, p1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    array-length v2, v2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 112
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/math3/linear/QRDecomposition;->performHouseholderReflection(I[[D)V

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "minor":I
    :cond_0
    return-void
.end method

.method public getH()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 10

    .line 274
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_2

    .line 276
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    array-length v0, v0

    .line 277
    .local v0, "n":I
    iget-object v1, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    array-length v1, v1

    .line 278
    .local v1, "m":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v0, v3, v4

    aput v1, v3, v2

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 279
    .local v2, "ha":[[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 280
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    add-int/lit8 v5, v3, 0x1

    invoke-static {v5, v0}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 281
    aget-object v5, v2, v3

    iget-object v6, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    aget-object v6, v6, v4

    aget-wide v6, v6, v3

    iget-object v8, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->rDiag:[D

    aget-wide v8, v8, v4

    neg-double v8, v8

    div-double/2addr v6, v8

    aput-wide v6, v5, v4

    .line 280
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 279
    .end local v4    # "j":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 284
    .end local v3    # "i":I
    :cond_1
    invoke-static {v2}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 288
    .end local v0    # "n":I
    .end local v1    # "m":I
    .end local v2    # "ha":[[D
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getQ()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/QRDecomposition;->getQT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getQT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 18

    .line 226
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedQT:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v1, :cond_5

    .line 229
    iget-object v1, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    array-length v1, v1

    .line 230
    .local v1, "n":I
    iget-object v2, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    .line 231
    .local v2, "m":I
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v2, v4, v5

    aput v2, v4, v3

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 238
    .local v3, "qta":[[D
    add-int/lit8 v4, v2, -0x1

    .local v4, "minor":I
    :goto_0
    invoke-static {v2, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v6

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-lt v4, v6, :cond_0

    .line 239
    aget-object v6, v3, v4

    aput-wide v7, v6, v4

    .line 238
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 242
    .end local v4    # "minor":I
    :cond_0
    invoke-static {v2, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v4

    sub-int/2addr v4, v5

    .restart local v4    # "minor":I
    :goto_1
    if-ltz v4, :cond_4

    .line 243
    iget-object v5, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    aget-object v5, v5, v4

    .line 244
    .local v5, "qrtMinor":[D
    aget-object v6, v3, v4

    aput-wide v7, v6, v4

    .line 245
    aget-wide v9, v5, v4

    const-wide/16 v11, 0x0

    cmpl-double v6, v9, v11

    if-eqz v6, :cond_3

    .line 246
    move v6, v4

    .local v6, "col":I
    :goto_2
    if-ge v6, v2, :cond_3

    .line 247
    const-wide/16 v9, 0x0

    .line 248
    .local v9, "alpha":D
    move v11, v4

    .local v11, "row":I
    :goto_3
    if-ge v11, v2, :cond_1

    .line 249
    aget-object v12, v3, v6

    aget-wide v12, v12, v11

    aget-wide v14, v5, v11

    mul-double/2addr v12, v14

    sub-double/2addr v9, v12

    .line 248
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 251
    .end local v11    # "row":I
    :cond_1
    iget-object v11, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->rDiag:[D

    aget-wide v11, v11, v4

    aget-wide v13, v5, v4

    mul-double/2addr v11, v13

    div-double/2addr v9, v11

    .line 253
    move v11, v4

    .restart local v11    # "row":I
    :goto_4
    if-ge v11, v2, :cond_2

    .line 254
    aget-object v12, v3, v6

    aget-wide v13, v12, v11

    neg-double v7, v9

    aget-wide v16, v5, v11

    mul-double v7, v7, v16

    add-double/2addr v13, v7

    aput-wide v13, v12, v11

    .line 253
    add-int/lit8 v11, v11, 0x1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    goto :goto_4

    .line 246
    .end local v9    # "alpha":D
    .end local v11    # "row":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    .line 242
    .end local v5    # "qrtMinor":[D
    .end local v6    # "col":I
    :cond_3
    add-int/lit8 v4, v4, -0x1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    .line 259
    .end local v4    # "minor":I
    :cond_4
    invoke-static {v3}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedQT:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 263
    .end local v1    # "n":I
    .end local v2    # "m":I
    .end local v3    # "qta":[[D
    :cond_5
    iget-object v1, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedQT:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v1
.end method

.method public getR()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8

    .line 188
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedR:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_2

    .line 191
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    array-length v0, v0

    .line 192
    .local v0, "n":I
    iget-object v1, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    array-length v1, v1

    .line 193
    .local v1, "m":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v0, v3, v4

    aput v1, v3, v2

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 195
    .local v2, "ra":[[D
    invoke-static {v1, v0}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v3

    sub-int/2addr v3, v4

    .local v3, "row":I
    :goto_0
    if-ltz v3, :cond_1

    .line 196
    aget-object v4, v2, v3

    iget-object v5, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->rDiag:[D

    aget-wide v5, v5, v3

    aput-wide v5, v4, v3

    .line 197
    add-int/lit8 v4, v3, 0x1

    .local v4, "col":I
    :goto_1
    if-ge v4, v0, :cond_0

    .line 198
    aget-object v5, v2, v3

    iget-object v6, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    aget-object v6, v6, v4

    aget-wide v6, v6, v3

    aput-wide v6, v5, v4

    .line 197
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 195
    .end local v4    # "col":I
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 201
    .end local v3    # "row":I
    :cond_1
    invoke-static {v2}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedR:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 205
    .end local v0    # "n":I
    .end local v1    # "m":I
    .end local v2    # "ra":[[D
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedR:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;
    .locals 6

    .line 304
    new-instance v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    iget-object v2, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->rDiag:[D

    iget-wide v3, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->threshold:D

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;-><init>([[D[DDLorg/apache/commons/math3/linear/QRDecomposition$1;)V

    return-object v0
.end method

.method protected performHouseholderReflection(I[[D)V
    .locals 16
    .param p1, "minor"    # I
    .param p2, "matrix"    # [[D

    .line 123
    move-object/from16 v0, p2

    aget-object v1, v0, p1

    .line 132
    .local v1, "qrtMinor":[D
    const-wide/16 v2, 0x0

    .line 133
    .local v2, "xNormSqr":D
    move/from16 v4, p1

    .local v4, "row":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 134
    aget-wide v5, v1, v4

    .line 135
    .local v5, "c":D
    mul-double v7, v5, v5

    add-double/2addr v2, v7

    .line 133
    .end local v5    # "c":D
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 137
    .end local v4    # "row":I
    :cond_0
    aget-wide v4, v1, p1

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    neg-double v4, v4

    goto :goto_1

    :cond_1
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    .line 138
    .local v4, "a":D
    :goto_1
    move-object/from16 v8, p0

    iget-object v9, v8, Lorg/apache/commons/math3/linear/QRDecomposition;->rDiag:[D

    aput-wide v4, v9, p1

    .line 140
    cmpl-double v6, v4, v6

    if-eqz v6, :cond_4

    .line 150
    aget-wide v6, v1, p1

    sub-double/2addr v6, v4

    aput-wide v6, v1, p1

    .line 164
    add-int/lit8 v6, p1, 0x1

    .local v6, "col":I
    :goto_2
    array-length v7, v0

    if-ge v6, v7, :cond_4

    .line 165
    aget-object v7, v0, v6

    .line 166
    .local v7, "qrtCol":[D
    const-wide/16 v9, 0x0

    .line 167
    .local v9, "alpha":D
    move/from16 v11, p1

    .local v11, "row":I
    :goto_3
    array-length v12, v7

    if-ge v11, v12, :cond_2

    .line 168
    aget-wide v12, v7, v11

    aget-wide v14, v1, v11

    mul-double/2addr v12, v14

    sub-double/2addr v9, v12

    .line 167
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 170
    .end local v11    # "row":I
    :cond_2
    aget-wide v11, v1, p1

    mul-double/2addr v11, v4

    div-double/2addr v9, v11

    .line 173
    move/from16 v11, p1

    .restart local v11    # "row":I
    :goto_4
    array-length v12, v7

    if-ge v11, v12, :cond_3

    .line 174
    aget-wide v12, v7, v11

    aget-wide v14, v1, v11

    mul-double/2addr v14, v9

    sub-double/2addr v12, v14

    aput-wide v12, v7, v11

    .line 173
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 164
    .end local v7    # "qrtCol":[D
    .end local v9    # "alpha":D
    .end local v11    # "row":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 178
    .end local v6    # "col":I
    :cond_4
    return-void
.end method
