.class public Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;
.super Ljava/lang/Object;
.source "RectangularCholeskyDecomposition.java"


# instance fields
.field private rank:I

.field private final root:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 2
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;
        }
    .end annotation

    .line 69
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V
    .locals 28
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p2, "small"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;
        }
    .end annotation

    .line 82
    move-object/from16 v0, p0

    move-wide/from16 v5, p2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v7

    .line 85
    .local v7, "order":I
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v8

    .line 86
    .local v8, "c":[[D
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v7, v1, v2

    const/4 v3, 0x0

    aput v7, v1, v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [[D

    .line 88
    .local v9, "b":[[D
    new-array v10, v7, [I

    .line 89
    .local v10, "index":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_0

    .line 90
    aput v1, v10, v1

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .line 94
    .local v1, "r":I
    const/4 v4, 0x1

    move v11, v1

    move v12, v4

    .end local v1    # "r":I
    .local v11, "r":I
    .local v12, "loop":Z
    :goto_1
    if-eqz v12, :cond_b

    .line 97
    move v1, v11

    .line 98
    .local v1, "swapR":I
    add-int/lit8 v4, v11, 0x1

    move v13, v1

    .end local v1    # "swapR":I
    .local v4, "i":I
    .local v13, "swapR":I
    :goto_2
    if-ge v4, v7, :cond_2

    .line 99
    aget v1, v10, v4

    .line 100
    .local v1, "ii":I
    aget v14, v10, v13

    .line 101
    .local v14, "isr":I
    aget-object v15, v8, v1

    aget-wide v15, v15, v1

    aget-object v17, v8, v14

    aget-wide v17, v17, v14

    cmpl-double v15, v15, v17

    if-lez v15, :cond_1

    .line 102
    move v13, v4

    .line 98
    .end local v1    # "ii":I
    .end local v14    # "isr":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 108
    .end local v4    # "i":I
    :cond_2
    if-eq v13, v11, :cond_3

    .line 109
    aget v1, v10, v11

    .line 110
    .local v1, "tmpIndex":I
    aget v4, v10, v13

    aput v4, v10, v11

    .line 111
    aput v1, v10, v13

    .line 112
    aget-object v4, v9, v11

    .line 113
    .local v4, "tmpRow":[D
    aget-object v14, v9, v13

    aput-object v14, v9, v11

    .line 114
    aput-object v4, v9, v13

    .line 118
    .end local v1    # "tmpIndex":I
    .end local v4    # "tmpRow":[D
    :cond_3
    aget v14, v10, v11

    .line 119
    .local v14, "ir":I
    aget-object v1, v8, v14

    aget-wide v15, v1, v14

    cmpg-double v1, v15, v5

    if-gtz v1, :cond_7

    .line 121
    if-eqz v11, :cond_6

    .line 126
    move v1, v11

    move v4, v1

    .local v4, "i":I
    :goto_3
    if-ge v4, v7, :cond_5

    .line 127
    aget v1, v10, v4

    aget-object v1, v8, v1

    aget v15, v10, v4

    aget-wide v15, v1, v15

    neg-double v2, v5

    cmpg-double v2, v15, v2

    if-ltz v2, :cond_4

    .line 126
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    goto :goto_3

    .line 130
    :cond_4
    new-instance v1, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;

    aget v2, v10, v4

    aget-object v2, v8, v2

    aget v3, v10, v4

    aget-wide v2, v2, v3

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;-><init>(DID)V

    throw v1

    .line 136
    .end local v4    # "i":I
    :cond_5
    const/4 v2, 0x0

    move v12, v2

    .end local v12    # "loop":Z
    .local v2, "loop":Z
    goto/16 :goto_7

    .line 122
    .end local v2    # "loop":Z
    .restart local v12    # "loop":Z
    :cond_6
    new-instance v1, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;

    aget-object v2, v8, v14

    aget-wide v2, v2, v14

    move-wide/from16 v5, p2

    move v4, v14

    .end local v14    # "ir":I
    .local v4, "ir":I
    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;-><init>(DID)V

    throw v1

    .line 141
    .end local v4    # "ir":I
    .restart local v14    # "ir":I
    :cond_7
    move v4, v14

    .end local v14    # "ir":I
    .restart local v4    # "ir":I
    aget-object v2, v8, v4

    aget-wide v2, v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    .line 142
    .local v2, "sqrt":D
    aget-object v5, v9, v11

    aput-wide v2, v5, v11

    .line 143
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double v14, v5, v2

    .line 144
    .local v14, "inverse":D
    aget-object v16, v8, v4

    aget-wide v18, v16, v4

    div-double v5, v5, v18

    .line 145
    .local v5, "inverse2":D
    add-int/lit8 v16, v11, 0x1

    move/from16 v1, v16

    .local v1, "i":I
    :goto_4
    if-ge v1, v7, :cond_9

    .line 146
    aget v16, v10, v1

    .line 147
    .local v16, "ii":I
    aget-object v19, v8, v16

    aget-wide v19, v19, v4

    mul-double v19, v19, v14

    .line 148
    .local v19, "e":D
    aget-object v21, v9, v1

    aput-wide v19, v21, v11

    .line 149
    aget-object v21, v8, v16

    aget-wide v22, v21, v16

    aget-object v24, v8, v16

    aget-wide v24, v24, v4

    aget-object v26, v8, v16

    aget-wide v26, v26, v4

    mul-double v24, v24, v26

    mul-double v24, v24, v5

    sub-double v22, v22, v24

    aput-wide v22, v21, v16

    .line 150
    add-int/lit8 v21, v11, 0x1

    move-wide/from16 v22, v2

    move/from16 v2, v21

    .local v2, "j":I
    .local v22, "sqrt":D
    :goto_5
    if-ge v2, v1, :cond_8

    .line 151
    aget v3, v10, v2

    .line 152
    .local v3, "ij":I
    aget-object v21, v8, v16

    aget-wide v24, v21, v3

    aget-object v21, v9, v2

    aget-wide v26, v21, v11

    mul-double v26, v26, v19

    sub-double v24, v24, v26

    .line 153
    .local v24, "f":D
    aget-object v21, v8, v16

    aput-wide v24, v21, v3

    .line 154
    aget-object v21, v8, v3

    aput-wide v24, v21, v16

    .line 150
    .end local v3    # "ij":I
    .end local v24    # "f":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 145
    .end local v2    # "j":I
    .end local v16    # "ii":I
    .end local v19    # "e":D
    :cond_8
    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v2, v22

    goto :goto_4

    .end local v22    # "sqrt":D
    .local v2, "sqrt":D
    :cond_9
    move-wide/from16 v22, v2

    .line 159
    .end local v1    # "i":I
    .end local v2    # "sqrt":D
    .restart local v22    # "sqrt":D
    add-int/lit8 v11, v11, 0x1

    if-ge v11, v7, :cond_a

    const/4 v1, 0x1

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    :goto_6
    move v12, v1

    .line 161
    .end local v4    # "ir":I
    .end local v5    # "inverse2":D
    .end local v13    # "swapR":I
    .end local v14    # "inverse":D
    .end local v22    # "sqrt":D
    :goto_7
    move-wide/from16 v5, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 164
    .end local v12    # "loop":Z
    :cond_b
    iput v11, v0, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->rank:I

    .line 165
    invoke-static {v7, v11}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->root:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 166
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    if-ge v1, v7, :cond_d

    .line 167
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_9
    if-ge v2, v11, :cond_c

    .line 168
    iget-object v3, v0, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->root:Lorg/apache/commons/math3/linear/RealMatrix;

    aget v4, v10, v1

    aget-object v5, v9, v1

    aget-wide v5, v5, v2

    invoke-interface {v3, v4, v2, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 166
    .end local v2    # "j":I
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 172
    .end local v1    # "i":I
    :cond_d
    return-void
.end method


# virtual methods
.method public getRank()I
    .locals 1

    .line 192
    iget v0, p0, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->rank:I

    return v0
.end method

.method public getRootMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->root:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method
