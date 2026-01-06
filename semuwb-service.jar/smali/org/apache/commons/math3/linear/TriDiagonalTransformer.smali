.class Lorg/apache/commons/math3/linear/TriDiagonalTransformer;
.super Ljava/lang/Object;
.source "TriDiagonalTransformer.java"


# instance fields
.field private cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedQt:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final householderVectors:[[D

.field private final main:[D

.field private final secondary:[D


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 3
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->isSquare()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    .line 68
    .local v0, "m":I
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->householderVectors:[[D

    .line 69
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->main:[D

    .line 70
    add-int/lit8 v1, v0, -0x1

    new-array v1, v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->secondary:[D

    .line 71
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 72
    iput-object v1, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedQt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 73
    iput-object v1, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 76
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->transform()V

    .line 77
    return-void

    .line 63
    .end local v0    # "m":I
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v0
.end method

.method private transform()V
    .locals 25

    .line 192
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->householderVectors:[[D

    array-length v1, v1

    .line 193
    .local v1, "m":I
    new-array v2, v1, [D

    .line 194
    .local v2, "z":[D
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_9

    .line 197
    iget-object v4, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->householderVectors:[[D

    aget-object v4, v4, v3

    .line 198
    .local v4, "hK":[D
    iget-object v5, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->main:[D

    aget-wide v6, v4, v3

    aput-wide v6, v5, v3

    .line 199
    const-wide/16 v5, 0x0

    .line 200
    .local v5, "xNormSqr":D
    add-int/lit8 v7, v3, 0x1

    .local v7, "j":I
    :goto_1
    if-ge v7, v1, :cond_0

    .line 201
    aget-wide v8, v4, v7

    .line 202
    .local v8, "c":D
    mul-double v10, v8, v8

    add-double/2addr v5, v10

    .line 200
    .end local v8    # "c":D
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 204
    .end local v7    # "j":I
    :cond_0
    add-int/lit8 v7, v3, 0x1

    aget-wide v7, v4, v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-lez v7, :cond_1

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    neg-double v7, v7

    goto :goto_2

    :cond_1
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    .line 205
    .local v7, "a":D
    :goto_2
    iget-object v11, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->secondary:[D

    aput-wide v7, v11, v3

    .line 206
    cmpl-double v11, v7, v9

    if-eqz v11, :cond_7

    .line 209
    add-int/lit8 v11, v3, 0x1

    aget-wide v12, v4, v11

    sub-double/2addr v12, v7

    aput-wide v12, v4, v11

    .line 210
    add-int/lit8 v11, v3, 0x1

    aget-wide v11, v4, v11

    mul-double/2addr v11, v7

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    div-double/2addr v13, v11

    .line 216
    .local v13, "beta":D
    add-int/lit8 v11, v3, 0x1

    invoke-static {v2, v11, v1, v9, v10}, Ljava/util/Arrays;->fill([DIID)V

    .line 217
    add-int/lit8 v9, v3, 0x1

    .local v9, "i":I
    :goto_3
    if-ge v9, v1, :cond_3

    .line 218
    iget-object v10, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->householderVectors:[[D

    aget-object v10, v10, v9

    .line 219
    .local v10, "hI":[D
    aget-wide v11, v4, v9

    .line 220
    .local v11, "hKI":D
    aget-wide v15, v10, v9

    mul-double/2addr v15, v11

    .line 221
    .local v15, "zI":D
    add-int/lit8 v17, v9, 0x1

    move/from16 v24, v17

    move-object/from16 v17, v2

    move/from16 v2, v24

    .local v2, "j":I
    .local v17, "z":[D
    :goto_4
    if-ge v2, v1, :cond_2

    .line 222
    aget-wide v18, v10, v2

    .line 223
    .local v18, "hIJ":D
    aget-wide v20, v4, v2

    mul-double v20, v20, v18

    add-double v15, v15, v20

    .line 224
    aget-wide v20, v17, v2

    mul-double v22, v18, v11

    add-double v20, v20, v22

    aput-wide v20, v17, v2

    .line 221
    .end local v18    # "hIJ":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 226
    .end local v2    # "j":I
    :cond_2
    aget-wide v18, v17, v9

    add-double v18, v18, v15

    mul-double v18, v18, v13

    aput-wide v18, v17, v9

    .line 217
    .end local v10    # "hI":[D
    .end local v11    # "hKI":D
    .end local v15    # "zI":D
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, v17

    goto :goto_3

    .end local v17    # "z":[D
    .local v2, "z":[D
    :cond_3
    move-object/from16 v17, v2

    .line 230
    .end local v2    # "z":[D
    .end local v9    # "i":I
    .restart local v17    # "z":[D
    const-wide/16 v9, 0x0

    .line 231
    .local v9, "gamma":D
    add-int/lit8 v2, v3, 0x1

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_4

    .line 232
    aget-wide v11, v17, v2

    aget-wide v15, v4, v2

    mul-double/2addr v11, v15

    add-double/2addr v9, v11

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 234
    .end local v2    # "i":I
    :cond_4
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double v11, v13, v11

    mul-double/2addr v9, v11

    .line 237
    add-int/lit8 v2, v3, 0x1

    .restart local v2    # "i":I
    :goto_6
    if-ge v2, v1, :cond_5

    .line 238
    aget-wide v11, v17, v2

    aget-wide v15, v4, v2

    mul-double/2addr v15, v9

    sub-double/2addr v11, v15

    aput-wide v11, v17, v2

    .line 237
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 243
    .end local v2    # "i":I
    :cond_5
    add-int/lit8 v2, v3, 0x1

    .restart local v2    # "i":I
    :goto_7
    if-ge v2, v1, :cond_8

    .line 244
    iget-object v11, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->householderVectors:[[D

    aget-object v11, v11, v2

    .line 245
    .local v11, "hI":[D
    move v12, v2

    .local v12, "j":I
    :goto_8
    if-ge v12, v1, :cond_6

    .line 246
    aget-wide v15, v11, v12

    aget-wide v18, v4, v2

    aget-wide v20, v17, v12

    mul-double v18, v18, v20

    aget-wide v20, v17, v2

    aget-wide v22, v4, v12

    mul-double v20, v20, v22

    add-double v18, v18, v20

    sub-double v15, v15, v18

    aput-wide v15, v11, v12

    .line 245
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 243
    .end local v11    # "hI":[D
    .end local v12    # "j":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 206
    .end local v9    # "gamma":D
    .end local v13    # "beta":D
    .end local v17    # "z":[D
    .local v2, "z":[D
    :cond_7
    move-object/from16 v17, v2

    .line 194
    .end local v2    # "z":[D
    .end local v4    # "hK":[D
    .end local v5    # "xNormSqr":D
    .end local v7    # "a":D
    .restart local v17    # "z":[D
    :cond_8
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v17

    goto/16 :goto_0

    .end local v17    # "z":[D
    .restart local v2    # "z":[D
    :cond_9
    move-object/from16 v17, v2

    .line 251
    .end local v2    # "z":[D
    .end local v3    # "k":I
    .restart local v17    # "z":[D
    iget-object v2, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->main:[D

    add-int/lit8 v3, v1, -0x1

    iget-object v4, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->householderVectors:[[D

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    add-int/lit8 v5, v1, -0x1

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    .line 252
    return-void
.end method


# virtual methods
.method getHouseholderVectorsRef()[[D
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->householderVectors:[[D

    return-object v0
.end method

.method getMainDiagonalRef()[D
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->main:[D

    return-object v0
.end method

.method public getQ()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->getQT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getQT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 18

    .line 97
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedQt:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v1, :cond_5

    .line 98
    iget-object v1, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->householderVectors:[[D

    array-length v1, v1

    .line 99
    .local v1, "m":I
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v4, 0x0

    aput v1, v2, v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 102
    .local v2, "qta":[[D
    add-int/lit8 v5, v1, -0x1

    .local v5, "k":I
    :goto_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-lt v5, v3, :cond_4

    .line 103
    iget-object v8, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->householderVectors:[[D

    add-int/lit8 v9, v5, -0x1

    aget-object v8, v8, v9

    .line 104
    .local v8, "hK":[D
    aget-object v9, v2, v5

    aput-wide v6, v9, v5

    .line 105
    aget-wide v9, v8, v5

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-eqz v9, :cond_3

    .line 106
    iget-object v9, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->secondary:[D

    add-int/lit8 v10, v5, -0x1

    aget-wide v9, v9, v10

    aget-wide v11, v8, v5

    mul-double/2addr v9, v11

    div-double v9, v6, v9

    .line 107
    .local v9, "inv":D
    iget-object v11, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->secondary:[D

    add-int/lit8 v12, v5, -0x1

    aget-wide v11, v11, v12

    div-double v11, v6, v11

    .line 108
    .local v11, "beta":D
    aget-object v13, v2, v5

    aget-wide v14, v8, v5

    mul-double/2addr v14, v11

    add-double/2addr v14, v6

    aput-wide v14, v13, v5

    .line 109
    add-int/lit8 v6, v5, 0x1

    .local v6, "i":I
    :goto_1
    if-ge v6, v1, :cond_0

    .line 110
    aget-object v7, v2, v5

    aget-wide v13, v8, v6

    mul-double/2addr v13, v11

    aput-wide v13, v7, v6

    .line 109
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 112
    .end local v6    # "i":I
    :cond_0
    add-int/lit8 v6, v5, 0x1

    .local v6, "j":I
    :goto_2
    if-ge v6, v1, :cond_3

    .line 113
    const-wide/16 v11, 0x0

    .line 114
    add-int/lit8 v7, v5, 0x1

    .local v7, "i":I
    :goto_3
    if-ge v7, v1, :cond_1

    .line 115
    aget-object v13, v2, v6

    aget-wide v13, v13, v7

    aget-wide v15, v8, v7

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    .line 114
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 117
    .end local v7    # "i":I
    :cond_1
    mul-double/2addr v11, v9

    .line 118
    aget-object v7, v2, v6

    aget-wide v13, v8, v5

    mul-double/2addr v13, v11

    aput-wide v13, v7, v5

    .line 119
    add-int/lit8 v7, v5, 0x1

    .restart local v7    # "i":I
    :goto_4
    if-ge v7, v1, :cond_2

    .line 120
    aget-object v13, v2, v6

    aget-wide v14, v13, v7

    aget-wide v16, v8, v7

    mul-double v16, v16, v11

    add-double v14, v14, v16

    aput-wide v14, v13, v7

    .line 119
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 112
    .end local v7    # "i":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 102
    .end local v6    # "j":I
    .end local v8    # "hK":[D
    .end local v9    # "inv":D
    .end local v11    # "beta":D
    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 125
    .end local v5    # "k":I
    :cond_4
    aget-object v3, v2, v4

    aput-wide v6, v3, v4

    .line 126
    invoke-static {v2}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedQt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 130
    .end local v1    # "m":I
    .end local v2    # "qta":[[D
    :cond_5
    iget-object v1, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedQt:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v1
.end method

.method getSecondaryDiagonalRef()[D
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->secondary:[D

    return-object v0
.end method

.method public getT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8

    .line 138
    iget-object v0, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_3

    .line 139
    iget-object v0, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->main:[D

    array-length v0, v0

    .line 140
    .local v0, "m":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v3, 0x0

    aput v0, v1, v3

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 141
    .local v1, "ta":[[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 142
    aget-object v4, v1, v3

    iget-object v5, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->main:[D

    aget-wide v5, v5, v3

    aput-wide v5, v4, v3

    .line 143
    if-lez v3, :cond_0

    .line 144
    aget-object v4, v1, v3

    add-int/lit8 v5, v3, -0x1

    iget-object v6, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->secondary:[D

    add-int/lit8 v7, v3, -0x1

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    .line 146
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->main:[D

    array-length v4, v4

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_1

    .line 147
    aget-object v4, v1, v3

    add-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->secondary:[D

    aget-wide v6, v6, v3

    aput-wide v6, v4, v5

    .line 141
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    .end local v3    # "i":I
    :cond_2
    invoke-static {v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 154
    .end local v0    # "m":I
    .end local v1    # "ta":[[D
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method
