.class Lorg/apache/commons/math3/linear/HessenbergTransformer;
.super Ljava/lang/Object;
.source "HessenbergTransformer.java"


# instance fields
.field private cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final householderVectors:[[D

.field private final ort:[D


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 3
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->isSquare()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    .line 66
    .local v0, "m":I
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    .line 67
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    .line 68
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 69
    iput-object v1, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 70
    iput-object v1, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 73
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/HessenbergTransformer;->transform()V

    .line 74
    return-void

    .line 61
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
    .locals 20

    .line 180
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    array-length v1, v1

    .line 181
    .local v1, "n":I
    add-int/lit8 v2, v1, -0x1

    .line 183
    .local v2, "high":I
    const/4 v3, 0x1

    .local v3, "m":I
    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-gt v3, v4, :cond_a

    .line 185
    const-wide/16 v4, 0x0

    .line 186
    .local v4, "scale":D
    move v6, v3

    .local v6, "i":I
    :goto_1
    if-gt v6, v2, :cond_0

    .line 187
    iget-object v7, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v7, v7, v6

    add-int/lit8 v8, v3, -0x1

    aget-wide v7, v7, v8

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    add-double/2addr v4, v7

    .line 186
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 190
    .end local v6    # "i":I
    :cond_0
    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v8

    if-nez v8, :cond_9

    .line 192
    const-wide/16 v8, 0x0

    .line 193
    .local v8, "h":D
    move v10, v2

    .local v10, "i":I
    :goto_2
    if-lt v10, v3, :cond_1

    .line 194
    iget-object v11, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    iget-object v12, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v12, v12, v10

    add-int/lit8 v13, v3, -0x1

    aget-wide v12, v12, v13

    div-double/2addr v12, v4

    aput-wide v12, v11, v10

    .line 195
    iget-object v11, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v11, v11, v10

    iget-object v13, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v13, v13, v10

    mul-double/2addr v11, v13

    add-double/2addr v8, v11

    .line 193
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 197
    .end local v10    # "i":I
    :cond_1
    iget-object v10, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v10, v10, v3

    cmpl-double v6, v10, v6

    if-lez v6, :cond_2

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    neg-double v6, v6

    goto :goto_3

    :cond_2
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    .line 199
    .local v6, "g":D
    :goto_3
    iget-object v10, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v10, v10, v3

    mul-double/2addr v10, v6

    sub-double/2addr v8, v10

    .line 200
    iget-object v10, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v11, v10, v3

    sub-double/2addr v11, v6

    aput-wide v11, v10, v3

    .line 205
    move v10, v3

    .local v10, "j":I
    :goto_4
    if-ge v10, v1, :cond_5

    .line 206
    const-wide/16 v11, 0x0

    .line 207
    .local v11, "f":D
    move v13, v2

    .local v13, "i":I
    :goto_5
    if-lt v13, v3, :cond_3

    .line 208
    iget-object v14, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v14, v14, v13

    move/from16 v16, v1

    .end local v1    # "n":I
    .local v16, "n":I
    iget-object v1, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v1, v1, v13

    aget-wide v17, v1, v10

    mul-double v14, v14, v17

    add-double/2addr v11, v14

    .line 207
    add-int/lit8 v13, v13, -0x1

    move/from16 v1, v16

    goto :goto_5

    .end local v16    # "n":I
    .restart local v1    # "n":I
    :cond_3
    move/from16 v16, v1

    .line 210
    .end local v1    # "n":I
    .end local v13    # "i":I
    .restart local v16    # "n":I
    div-double/2addr v11, v8

    .line 211
    move v1, v3

    .local v1, "i":I
    :goto_6
    if-gt v1, v2, :cond_4

    .line 212
    iget-object v13, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v13, v13, v1

    aget-wide v14, v13, v10

    move/from16 v17, v1

    .end local v1    # "i":I
    .local v17, "i":I
    iget-object v1, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v18, v1, v17

    mul-double v18, v18, v11

    sub-double v14, v14, v18

    aput-wide v14, v13, v10

    .line 211
    add-int/lit8 v1, v17, 0x1

    .end local v17    # "i":I
    .restart local v1    # "i":I
    goto :goto_6

    :cond_4
    move/from16 v17, v1

    .line 205
    .end local v1    # "i":I
    .end local v11    # "f":D
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, v16

    goto :goto_4

    .end local v16    # "n":I
    .local v1, "n":I
    :cond_5
    move/from16 v16, v1

    .line 216
    .end local v1    # "n":I
    .end local v10    # "j":I
    .restart local v16    # "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-gt v1, v2, :cond_8

    .line 217
    const-wide/16 v10, 0x0

    .line 218
    .local v10, "f":D
    move v12, v2

    .local v12, "j":I
    :goto_8
    if-lt v12, v3, :cond_6

    .line 219
    iget-object v13, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v13, v13, v12

    iget-object v15, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v15, v15, v1

    aget-wide v17, v15, v12

    mul-double v13, v13, v17

    add-double/2addr v10, v13

    .line 218
    add-int/lit8 v12, v12, -0x1

    goto :goto_8

    .line 221
    .end local v12    # "j":I
    :cond_6
    div-double/2addr v10, v8

    .line 222
    move v12, v3

    .restart local v12    # "j":I
    :goto_9
    if-gt v12, v2, :cond_7

    .line 223
    iget-object v13, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v13, v13, v1

    aget-wide v14, v13, v12

    move/from16 v17, v1

    .end local v1    # "i":I
    .restart local v17    # "i":I
    iget-object v1, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v18, v1, v12

    mul-double v18, v18, v10

    sub-double v14, v14, v18

    aput-wide v14, v13, v12

    .line 222
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, v17

    goto :goto_9

    .end local v17    # "i":I
    .restart local v1    # "i":I
    :cond_7
    move/from16 v17, v1

    .line 216
    .end local v1    # "i":I
    .end local v10    # "f":D
    .end local v12    # "j":I
    .restart local v17    # "i":I
    add-int/lit8 v1, v17, 0x1

    .end local v17    # "i":I
    .restart local v1    # "i":I
    goto :goto_7

    :cond_8
    move/from16 v17, v1

    .line 227
    .end local v1    # "i":I
    iget-object v1, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    iget-object v10, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v10, v10, v3

    mul-double/2addr v10, v4

    aput-wide v10, v1, v3

    .line 228
    iget-object v1, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v1, v1, v3

    add-int/lit8 v10, v3, -0x1

    mul-double v11, v4, v6

    aput-wide v11, v1, v10

    goto :goto_a

    .line 190
    .end local v6    # "g":D
    .end local v8    # "h":D
    .end local v16    # "n":I
    .local v1, "n":I
    :cond_9
    move/from16 v16, v1

    .line 183
    .end local v1    # "n":I
    .end local v4    # "scale":D
    .restart local v16    # "n":I
    :goto_a
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v16

    goto/16 :goto_0

    .line 231
    .end local v3    # "m":I
    .end local v16    # "n":I
    .restart local v1    # "n":I
    :cond_a
    return-void
.end method


# virtual methods
.method public getH()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7

    .line 143
    iget-object v0, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_3

    .line 144
    iget-object v0, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    array-length v0, v0

    .line 145
    .local v0, "m":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 146
    .local v1, "h":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 147
    if-lez v2, :cond_0

    .line 149
    aget-object v3, v1, v2

    add-int/lit8 v4, v2, -0x1

    iget-object v5, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v5, v5, v2

    add-int/lit8 v6, v2, -0x1

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    .line 153
    :cond_0
    move v3, v2

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 154
    aget-object v4, v1, v2

    iget-object v5, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v5, v5, v2

    aget-wide v5, v5, v3

    aput-wide v5, v4, v3

    .line 153
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 146
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    .end local v2    # "i":I
    :cond_2
    invoke-static {v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 161
    .end local v0    # "m":I
    .end local v1    # "h":[[D
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method getHouseholderVectorsRef()[[D
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    return-object v0
.end method

.method public getP()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 17

    .line 83
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v1, :cond_8

    .line 84
    iget-object v1, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    array-length v1, v1

    .line 85
    .local v1, "n":I
    add-int/lit8 v2, v1, -0x1

    .line 86
    .local v2, "high":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v5, 0x0

    aput v1, v3, v5

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 88
    .local v3, "pa":[[D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const-wide/16 v6, 0x0

    if-ge v5, v1, :cond_2

    .line 89
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v1, :cond_1

    .line 90
    aget-object v9, v3, v5

    if-ne v5, v8, :cond_0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_0
    move-wide v10, v6

    :goto_2
    aput-wide v10, v9, v8

    .line 89
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 88
    .end local v8    # "j":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 94
    .end local v5    # "i":I
    :cond_2
    add-int/lit8 v5, v2, -0x1

    .local v5, "m":I
    :goto_3
    if-lt v5, v4, :cond_7

    .line 95
    iget-object v8, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v8, v8, v5

    add-int/lit8 v9, v5, -0x1

    aget-wide v8, v8, v9

    cmpl-double v8, v8, v6

    if-eqz v8, :cond_6

    .line 96
    add-int/lit8 v8, v5, 0x1

    .local v8, "i":I
    :goto_4
    if-gt v8, v2, :cond_3

    .line 97
    iget-object v9, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    iget-object v10, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v10, v10, v8

    add-int/lit8 v11, v5, -0x1

    aget-wide v10, v10, v11

    aput-wide v10, v9, v8

    .line 96
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 100
    .end local v8    # "i":I
    :cond_3
    move v8, v5

    .local v8, "j":I
    :goto_5
    if-gt v8, v2, :cond_6

    .line 101
    const-wide/16 v9, 0x0

    .line 103
    .local v9, "g":D
    move v11, v5

    .local v11, "i":I
    :goto_6
    if-gt v11, v2, :cond_4

    .line 104
    iget-object v12, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v12, v12, v11

    aget-object v14, v3, v11

    aget-wide v14, v14, v8

    mul-double/2addr v12, v14

    add-double/2addr v9, v12

    .line 103
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 108
    .end local v11    # "i":I
    :cond_4
    iget-object v11, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v11, v11, v5

    div-double v11, v9, v11

    iget-object v13, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v13, v13, v5

    add-int/lit8 v14, v5, -0x1

    aget-wide v13, v13, v14

    div-double/2addr v11, v13

    .line 110
    .end local v9    # "g":D
    .local v11, "g":D
    move v9, v5

    .local v9, "i":I
    :goto_7
    if-gt v9, v2, :cond_5

    .line 111
    aget-object v10, v3, v9

    aget-wide v13, v10, v8

    iget-object v15, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v15, v15, v9

    mul-double/2addr v15, v11

    add-double/2addr v13, v15

    aput-wide v13, v10, v8

    .line 110
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 100
    .end local v9    # "i":I
    .end local v11    # "g":D
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 94
    .end local v8    # "j":I
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 117
    .end local v5    # "m":I
    :cond_7
    invoke-static {v3}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 119
    .end local v1    # "n":I
    .end local v2    # "high":I
    .end local v3    # "pa":[[D
    :cond_8
    iget-object v1, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v1
.end method

.method public getPT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/HessenbergTransformer;->getP()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 134
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method
