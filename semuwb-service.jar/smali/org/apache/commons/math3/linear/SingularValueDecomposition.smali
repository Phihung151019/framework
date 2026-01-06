.class public Lorg/apache/commons/math3/linear/SingularValueDecomposition;
.super Ljava/lang/Object;
.source "SingularValueDecomposition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;
    }
.end annotation


# static fields
.field private static final EPS:D = 2.220446049250313E-16

.field private static final TINY:D = 1.6033346880071782E-291


# instance fields
.field private cachedS:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedUt:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final m:I

.field private final n:I

.field private final singularValues:[D

.field private final tol:D

.field private final transposed:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 57
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 87
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_0

    .line 92
    iput-boolean v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->transposed:Z

    .line 93
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v1

    .line 94
    .local v1, "A":[[D
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    iput v2, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    .line 95
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    iput v2, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    goto :goto_0

    .line 97
    .end local v1    # "A":[[D
    :cond_0
    iput-boolean v3, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->transposed:Z

    .line 98
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v1

    .line 99
    .restart local v1    # "A":[[D
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    iput v2, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    .line 100
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    iput v2, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    .line 103
    :goto_0
    iget v2, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    new-array v2, v2, [D

    iput-object v2, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    .line 104
    iget v2, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    iget v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    const/4 v6, 0x2

    new-array v7, v6, [I

    aput v5, v7, v4

    aput v2, v7, v3

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 105
    .local v2, "U":[[D
    iget v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    iget v7, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    new-array v8, v6, [I

    aput v7, v8, v4

    aput v5, v8, v3

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 106
    .local v5, "V":[[D
    iget v7, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    new-array v7, v7, [D

    .line 107
    .local v7, "e":[D
    iget v8, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    new-array v8, v8, [D

    .line 110
    .local v8, "work":[D
    iget v9, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    sub-int/2addr v9, v4

    iget v10, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v9

    .line 111
    .local v9, "nct":I
    iget v10, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    sub-int/2addr v10, v6

    invoke-static {v3, v10}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v6

    .line 112
    .local v6, "nrt":I
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_1
    invoke-static {v9, v6}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v11

    const-wide/16 v14, 0x0

    if-ge v10, v11, :cond_14

    .line 113
    if-ge v10, v9, :cond_5

    .line 117
    iget-object v11, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aput-wide v14, v11, v10

    .line 118
    move v11, v10

    .local v11, "i":I
    :goto_2
    move/from16 v16, v3

    iget v3, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v11, v3, :cond_1

    .line 119
    iget-object v3, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move/from16 v17, v4

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    aget-wide v12, v4, v10

    aget-object v4, v1, v11

    move-wide/from16 v20, v14

    aget-wide v14, v4, v10

    invoke-static {v12, v13, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v12

    aput-wide v12, v3, v10

    .line 118
    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v16

    move/from16 v4, v17

    move-wide/from16 v14, v20

    goto :goto_2

    :cond_1
    move/from16 v17, v4

    move-wide/from16 v20, v14

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 121
    .end local v11    # "i":I
    iget-object v3, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v3, v3, v10

    cmpl-double v3, v3, v20

    if-eqz v3, :cond_4

    .line 122
    aget-object v3, v1, v10

    aget-wide v3, v3, v10

    cmpg-double v3, v3, v20

    if-gez v3, :cond_2

    .line 123
    iget-object v3, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v11, v4, v10

    neg-double v11, v11

    aput-wide v11, v3, v10

    .line 125
    :cond_2
    move v3, v10

    .local v3, "i":I
    :goto_3
    iget v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v3, v4, :cond_3

    .line 126
    aget-object v4, v1, v3

    aget-wide v11, v4, v10

    iget-object v13, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v13, v13, v10

    div-double/2addr v11, v13

    aput-wide v11, v4, v10

    .line 125
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 128
    .end local v3    # "i":I
    :cond_3
    aget-object v3, v1, v10

    aget-wide v11, v3, v10

    add-double v11, v11, v18

    aput-wide v11, v3, v10

    .line 130
    :cond_4
    iget-object v3, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v11, v4, v10

    neg-double v11, v11

    aput-wide v11, v3, v10

    goto :goto_4

    .line 113
    :cond_5
    move/from16 v16, v3

    move/from16 v17, v4

    move-wide/from16 v20, v14

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 132
    :goto_4
    add-int/lit8 v3, v10, 0x1

    .local v3, "j":I
    :goto_5
    iget v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v3, v4, :cond_8

    .line 133
    if-ge v10, v9, :cond_7

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v11, v4, v10

    cmpl-double v4, v11, v20

    if-eqz v4, :cond_7

    .line 136
    const-wide/16 v11, 0x0

    .line 137
    .local v11, "t":D
    move v4, v10

    .local v4, "i":I
    :goto_6
    iget v13, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v4, v13, :cond_6

    .line 138
    aget-object v13, v1, v4

    aget-wide v13, v13, v10

    aget-object v15, v1, v4

    aget-wide v22, v15, v3

    mul-double v13, v13, v22

    add-double/2addr v11, v13

    .line 137
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 140
    .end local v4    # "i":I
    :cond_6
    neg-double v13, v11

    aget-object v4, v1, v10

    aget-wide v22, v4, v10

    div-double v13, v13, v22

    .line 141
    .end local v11    # "t":D
    .local v13, "t":D
    move v4, v10

    .restart local v4    # "i":I
    :goto_7
    iget v11, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v4, v11, :cond_7

    .line 142
    aget-object v11, v1, v4

    aget-wide v22, v11, v3

    aget-object v12, v1, v4

    aget-wide v24, v12, v10

    mul-double v24, v24, v13

    add-double v22, v22, v24

    aput-wide v22, v11, v3

    .line 141
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 147
    .end local v4    # "i":I
    .end local v13    # "t":D
    :cond_7
    aget-object v4, v1, v10

    aget-wide v11, v4, v3

    aput-wide v11, v7, v3

    .line 132
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 149
    .end local v3    # "j":I
    :cond_8
    if-ge v10, v9, :cond_9

    .line 152
    move v3, v10

    .local v3, "i":I
    :goto_8
    iget v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v3, v4, :cond_9

    .line 153
    aget-object v4, v2, v3

    aget-object v11, v1, v3

    aget-wide v11, v11, v10

    aput-wide v11, v4, v10

    .line 152
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 156
    .end local v3    # "i":I
    :cond_9
    if-ge v10, v6, :cond_13

    .line 160
    aput-wide v20, v7, v10

    .line 161
    add-int/lit8 v3, v10, 0x1

    .restart local v3    # "i":I
    :goto_9
    iget v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v3, v4, :cond_a

    .line 162
    aget-wide v11, v7, v10

    aget-wide v13, v7, v3

    invoke-static {v11, v12, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v11

    aput-wide v11, v7, v10

    .line 161
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 164
    .end local v3    # "i":I
    :cond_a
    aget-wide v3, v7, v10

    cmpl-double v3, v3, v20

    if-eqz v3, :cond_d

    .line 165
    add-int/lit8 v3, v10, 0x1

    aget-wide v3, v7, v3

    cmpg-double v3, v3, v20

    if-gez v3, :cond_b

    .line 166
    aget-wide v3, v7, v10

    neg-double v3, v3

    aput-wide v3, v7, v10

    .line 168
    :cond_b
    add-int/lit8 v3, v10, 0x1

    .restart local v3    # "i":I
    :goto_a
    iget v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v3, v4, :cond_c

    .line 169
    aget-wide v11, v7, v3

    aget-wide v13, v7, v10

    div-double/2addr v11, v13

    aput-wide v11, v7, v3

    .line 168
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 171
    .end local v3    # "i":I
    :cond_c
    add-int/lit8 v3, v10, 0x1

    aget-wide v11, v7, v3

    add-double v11, v11, v18

    aput-wide v11, v7, v3

    .line 173
    :cond_d
    aget-wide v3, v7, v10

    neg-double v3, v3

    aput-wide v3, v7, v10

    .line 174
    add-int/lit8 v3, v10, 0x1

    iget v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v3, v4, :cond_12

    aget-wide v3, v7, v10

    cmpl-double v3, v3, v20

    if-eqz v3, :cond_12

    .line 177
    add-int/lit8 v3, v10, 0x1

    .restart local v3    # "i":I
    :goto_b
    iget v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v3, v4, :cond_e

    .line 178
    aput-wide v20, v8, v3

    .line 177
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 180
    .end local v3    # "i":I
    :cond_e
    add-int/lit8 v3, v10, 0x1

    .local v3, "j":I
    :goto_c
    iget v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v3, v4, :cond_10

    .line 181
    add-int/lit8 v4, v10, 0x1

    .restart local v4    # "i":I
    :goto_d
    iget v11, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v4, v11, :cond_f

    .line 182
    aget-wide v11, v8, v4

    aget-wide v13, v7, v3

    aget-object v15, v1, v4

    aget-wide v18, v15, v3

    mul-double v13, v13, v18

    add-double/2addr v11, v13

    aput-wide v11, v8, v4

    .line 181
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 180
    .end local v4    # "i":I
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 185
    .end local v3    # "j":I
    :cond_10
    add-int/lit8 v3, v10, 0x1

    .restart local v3    # "j":I
    :goto_e
    iget v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v3, v4, :cond_12

    .line 186
    aget-wide v11, v7, v3

    neg-double v11, v11

    add-int/lit8 v4, v10, 0x1

    aget-wide v13, v7, v4

    div-double/2addr v11, v13

    .line 187
    .restart local v11    # "t":D
    add-int/lit8 v4, v10, 0x1

    .restart local v4    # "i":I
    :goto_f
    iget v13, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v4, v13, :cond_11

    .line 188
    aget-object v13, v1, v4

    aget-wide v14, v13, v3

    aget-wide v18, v8, v4

    mul-double v18, v18, v11

    add-double v14, v14, v18

    aput-wide v14, v13, v3

    .line 187
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 185
    .end local v4    # "i":I
    .end local v11    # "t":D
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 195
    .end local v3    # "j":I
    :cond_12
    add-int/lit8 v3, v10, 0x1

    .local v3, "i":I
    :goto_10
    iget v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v3, v4, :cond_13

    .line 196
    aget-object v4, v5, v3

    aget-wide v11, v7, v3

    aput-wide v11, v4, v10

    .line 195
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 112
    .end local v3    # "i":I
    :cond_13
    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v16

    move/from16 v4, v17

    goto/16 :goto_1

    :cond_14
    move/from16 v16, v3

    move/from16 v17, v4

    move-wide/from16 v20, v14

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 201
    .end local v10    # "k":I
    iget v3, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    .line 202
    .local v3, "p":I
    iget v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v9, v4, :cond_15

    .line 203
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-object v10, v1, v9

    aget-wide v10, v10, v9

    aput-wide v10, v4, v9

    .line 205
    :cond_15
    iget v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v4, v3, :cond_16

    .line 206
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    add-int/lit8 v10, v3, -0x1

    aput-wide v20, v4, v10

    .line 208
    :cond_16
    add-int/lit8 v4, v6, 0x1

    if-ge v4, v3, :cond_17

    .line 209
    aget-object v4, v1, v6

    add-int/lit8 v10, v3, -0x1

    aget-wide v10, v4, v10

    aput-wide v10, v7, v6

    .line 211
    :cond_17
    add-int/lit8 v4, v3, -0x1

    aput-wide v20, v7, v4

    .line 214
    move v4, v9

    .local v4, "j":I
    :goto_11
    iget v10, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v4, v10, :cond_19

    .line 215
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_12
    iget v11, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v10, v11, :cond_18

    .line 216
    aget-object v11, v2, v10

    aput-wide v20, v11, v4

    .line 215
    add-int/lit8 v10, v10, 0x1

    goto :goto_12

    .line 218
    .end local v10    # "i":I
    :cond_18
    aget-object v10, v2, v4

    aput-wide v18, v10, v4

    .line 214
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 220
    .end local v4    # "j":I
    :cond_19
    add-int/lit8 v4, v9, -0x1

    .local v4, "k":I
    :goto_13
    if-ltz v4, :cond_21

    .line 221
    iget-object v10, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v10, v10, v4

    cmpl-double v10, v10, v20

    if-eqz v10, :cond_1f

    .line 222
    add-int/lit8 v10, v4, 0x1

    .local v10, "j":I
    :goto_14
    iget v11, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v10, v11, :cond_1c

    .line 223
    const-wide/16 v11, 0x0

    .line 224
    .restart local v11    # "t":D
    move v13, v4

    .local v13, "i":I
    :goto_15
    iget v14, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v13, v14, :cond_1a

    .line 225
    aget-object v14, v2, v13

    aget-wide v14, v14, v4

    aget-object v22, v2, v13

    aget-wide v22, v22, v10

    mul-double v14, v14, v22

    add-double/2addr v11, v14

    .line 224
    add-int/lit8 v13, v13, 0x1

    goto :goto_15

    .line 227
    .end local v13    # "i":I
    :cond_1a
    neg-double v13, v11

    aget-object v15, v2, v4

    aget-wide v22, v15, v4

    div-double v13, v13, v22

    .line 228
    .end local v11    # "t":D
    .local v13, "t":D
    move v11, v4

    .local v11, "i":I
    :goto_16
    iget v12, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v11, v12, :cond_1b

    .line 229
    aget-object v12, v2, v11

    aget-wide v22, v12, v10

    aget-object v15, v2, v11

    aget-wide v24, v15, v4

    mul-double v24, v24, v13

    add-double v22, v22, v24

    aput-wide v22, v12, v10

    .line 228
    add-int/lit8 v11, v11, 0x1

    goto :goto_16

    .line 222
    .end local v11    # "i":I
    .end local v13    # "t":D
    :cond_1b
    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    .line 232
    .end local v10    # "j":I
    :cond_1c
    move v10, v4

    .local v10, "i":I
    :goto_17
    iget v11, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v10, v11, :cond_1d

    .line 233
    aget-object v11, v2, v10

    aget-object v12, v2, v10

    aget-wide v12, v12, v4

    neg-double v12, v12

    aput-wide v12, v11, v4

    .line 232
    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    .line 235
    .end local v10    # "i":I
    :cond_1d
    aget-object v10, v2, v4

    aget-object v11, v2, v4

    aget-wide v11, v11, v4

    add-double v11, v11, v18

    aput-wide v11, v10, v4

    .line 236
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_18
    add-int/lit8 v11, v4, -0x1

    if-ge v10, v11, :cond_1e

    .line 237
    aget-object v11, v2, v10

    aput-wide v20, v11, v4

    .line 236
    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    .end local v10    # "i":I
    :cond_1e
    goto :goto_1a

    .line 240
    :cond_1f
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_19
    iget v11, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v10, v11, :cond_20

    .line 241
    aget-object v11, v2, v10

    aput-wide v20, v11, v4

    .line 240
    add-int/lit8 v10, v10, 0x1

    goto :goto_19

    .line 243
    .end local v10    # "i":I
    :cond_20
    aget-object v10, v2, v4

    aput-wide v18, v10, v4

    .line 220
    :goto_1a
    add-int/lit8 v4, v4, -0x1

    goto :goto_13

    .line 248
    .end local v4    # "k":I
    :cond_21
    iget v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    add-int/lit8 v4, v4, -0x1

    .restart local v4    # "k":I
    :goto_1b
    if-ltz v4, :cond_26

    .line 249
    if-ge v4, v6, :cond_24

    aget-wide v10, v7, v4

    cmpl-double v10, v10, v20

    if-eqz v10, :cond_24

    .line 251
    add-int/lit8 v10, v4, 0x1

    .local v10, "j":I
    :goto_1c
    iget v11, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v10, v11, :cond_24

    .line 252
    const-wide/16 v11, 0x0

    .line 253
    .local v11, "t":D
    add-int/lit8 v13, v4, 0x1

    .local v13, "i":I
    :goto_1d
    iget v14, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v13, v14, :cond_22

    .line 254
    aget-object v14, v5, v13

    aget-wide v14, v14, v4

    aget-object v22, v5, v13

    aget-wide v22, v22, v10

    mul-double v14, v14, v22

    add-double/2addr v11, v14

    .line 253
    add-int/lit8 v13, v13, 0x1

    goto :goto_1d

    .line 256
    .end local v13    # "i":I
    :cond_22
    neg-double v13, v11

    add-int/lit8 v15, v4, 0x1

    aget-object v15, v5, v15

    aget-wide v22, v15, v4

    div-double v13, v13, v22

    .line 257
    .end local v11    # "t":D
    .local v13, "t":D
    add-int/lit8 v11, v4, 0x1

    .local v11, "i":I
    :goto_1e
    iget v12, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v11, v12, :cond_23

    .line 258
    aget-object v12, v5, v11

    aget-wide v22, v12, v10

    aget-object v15, v5, v11

    aget-wide v24, v15, v4

    mul-double v24, v24, v13

    add-double v22, v22, v24

    aput-wide v22, v12, v10

    .line 257
    add-int/lit8 v11, v11, 0x1

    goto :goto_1e

    .line 251
    .end local v11    # "i":I
    .end local v13    # "t":D
    :cond_23
    add-int/lit8 v10, v10, 0x1

    goto :goto_1c

    .line 262
    .end local v10    # "j":I
    :cond_24
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1f
    iget v11, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v10, v11, :cond_25

    .line 263
    aget-object v11, v5, v10

    aput-wide v20, v11, v4

    .line 262
    add-int/lit8 v10, v10, 0x1

    goto :goto_1f

    .line 265
    .end local v10    # "i":I
    :cond_25
    aget-object v10, v5, v4

    aput-wide v18, v10, v4

    .line 248
    add-int/lit8 v4, v4, -0x1

    goto :goto_1b

    .line 269
    .end local v4    # "k":I
    :cond_26
    add-int/lit8 v4, v3, -0x1

    .line 270
    .local v4, "pp":I
    :goto_20
    const-wide/high16 v10, 0x3cb0000000000000L    # 2.220446049250313E-16

    if-lez v3, :cond_44

    .line 282
    add-int/lit8 v12, v3, -0x2

    .local v12, "k":I
    :goto_21
    const-wide/high16 v13, 0x390000000000000L

    if-ltz v12, :cond_28

    .line 283
    iget-object v15, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v18, v15, v12

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v18

    iget-object v15, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    add-int/lit8 v22, v12, 0x1

    aget-wide v22, v15, v22

    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v22

    add-double v18, v18, v22

    mul-double v18, v18, v10

    add-double v18, v18, v13

    .line 293
    .local v18, "threshold":D
    aget-wide v22, v7, v12

    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v22

    cmpl-double v15, v22, v18

    if-gtz v15, :cond_27

    .line 294
    aput-wide v20, v7, v12

    .line 295
    goto :goto_22

    .line 282
    .end local v18    # "threshold":D
    :cond_27
    add-int/lit8 v12, v12, -0x1

    goto :goto_21

    .line 300
    :cond_28
    :goto_22
    add-int/lit8 v15, v3, -0x2

    if-ne v12, v15, :cond_29

    .line 301
    const/4 v10, 0x4

    .local v10, "kase":I
    goto :goto_27

    .line 304
    .end local v10    # "kase":I
    :cond_29
    add-int/lit8 v15, v3, -0x1

    .local v15, "ks":I
    :goto_23
    if-lt v15, v12, :cond_2e

    .line 305
    if-ne v15, v12, :cond_2a

    .line 306
    goto :goto_26

    .line 308
    :cond_2a
    if-eq v15, v3, :cond_2b

    aget-wide v18, v7, v15

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v18

    goto :goto_24

    :cond_2b
    move-wide/from16 v18, v20

    :goto_24
    move-wide/from16 v22, v10

    add-int/lit8 v10, v12, 0x1

    if-eq v15, v10, :cond_2c

    add-int/lit8 v10, v15, -0x1

    aget-wide v10, v7, v10

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    goto :goto_25

    :cond_2c
    move-wide/from16 v10, v20

    :goto_25
    add-double v18, v18, v10

    .line 310
    .local v18, "t":D
    iget-object v10, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v10, v10, v15

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    mul-double v24, v18, v22

    add-double v24, v24, v13

    cmpg-double v10, v10, v24

    if-gtz v10, :cond_2d

    .line 311
    iget-object v10, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aput-wide v20, v10, v15

    .line 312
    goto :goto_26

    .line 304
    .end local v18    # "t":D
    :cond_2d
    add-int/lit8 v15, v15, -0x1

    move-wide/from16 v10, v22

    goto :goto_23

    .line 315
    :cond_2e
    :goto_26
    if-ne v15, v12, :cond_2f

    .line 316
    const/4 v10, 0x3

    .restart local v10    # "kase":I
    goto :goto_27

    .line 317
    .end local v10    # "kase":I
    :cond_2f
    add-int/lit8 v10, v3, -0x1

    if-ne v15, v10, :cond_30

    .line 318
    const/4 v10, 0x1

    .restart local v10    # "kase":I
    goto :goto_27

    .line 320
    .end local v10    # "kase":I
    :cond_30
    const/4 v10, 0x2

    .line 321
    .restart local v10    # "kase":I
    move v12, v15

    .line 324
    .end local v15    # "ks":I
    :goto_27
    add-int/lit8 v12, v12, 0x1

    .line 326
    packed-switch v10, :pswitch_data_0

    .line 436
    move-object/from16 v50, v1

    move-object v15, v2

    move-object/from16 v36, v5

    move/from16 v37, v6

    move-object/from16 v40, v7

    move-object/from16 v41, v8

    move/from16 v48, v9

    move/from16 v49, v10

    .end local v1    # "A":[[D
    .end local v2    # "U":[[D
    .end local v5    # "V":[[D
    .end local v6    # "nrt":I
    .end local v7    # "e":[D
    .end local v8    # "work":[D
    .end local v9    # "nct":I
    .end local v10    # "kase":I
    .local v15, "U":[[D
    .local v36, "V":[[D
    .local v37, "nrt":I
    .local v40, "e":[D
    .local v41, "work":[D
    .local v48, "nct":I
    .local v49, "kase":I
    .local v50, "A":[[D
    iget-object v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v1, v1, v12

    cmpg-double v1, v1, v20

    if-gtz v1, :cond_3f

    .line 437
    iget-object v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v5, v2, v12

    cmpg-double v2, v5, v20

    if-gez v2, :cond_3e

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v5, v2, v12

    neg-double v5, v5

    goto/16 :goto_32

    .line 372
    .end local v15    # "U":[[D
    .end local v36    # "V":[[D
    .end local v37    # "nrt":I
    .end local v40    # "e":[D
    .end local v41    # "work":[D
    .end local v48    # "nct":I
    .end local v49    # "kase":I
    .end local v50    # "A":[[D
    .restart local v1    # "A":[[D
    .restart local v2    # "U":[[D
    .restart local v5    # "V":[[D
    .restart local v6    # "nrt":I
    .restart local v7    # "e":[D
    .restart local v8    # "work":[D
    .restart local v9    # "nct":I
    .restart local v10    # "kase":I
    :pswitch_0
    iget-object v11, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    add-int/lit8 v13, v3, -0x1

    aget-wide v13, v11, v13

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    iget-object v11, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    add-int/lit8 v15, v3, -0x2

    aget-wide v18, v11, v15

    move-object v11, v1

    move-object v15, v2

    .end local v1    # "A":[[D
    .end local v2    # "U":[[D
    .local v11, "A":[[D
    .restart local v15    # "U":[[D
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    invoke-static {v13, v14, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    .line 374
    .local v1, "maxPm1Pm2":D
    add-int/lit8 v13, v3, -0x2

    aget-wide v13, v7, v13

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    invoke-static {v1, v2, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v13

    move-wide/from16 v18, v1

    .end local v1    # "maxPm1Pm2":D
    .local v18, "maxPm1Pm2":D
    iget-object v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v1, v1, v12

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    invoke-static {v13, v14, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    aget-wide v13, v7, v12

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    invoke-static {v1, v2, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    .line 378
    .local v1, "scale":D
    iget-object v13, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    add-int/lit8 v14, v3, -0x1

    aget-wide v13, v13, v14

    div-double/2addr v13, v1

    .line 379
    .local v13, "sp":D
    move-wide/from16 v22, v1

    .end local v1    # "scale":D
    .local v22, "scale":D
    iget-object v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    add-int/lit8 v2, v3, -0x2

    aget-wide v1, v1, v2

    div-double v1, v1, v22

    .line 380
    .local v1, "spm1":D
    add-int/lit8 v24, v3, -0x2

    aget-wide v24, v7, v24

    div-double v24, v24, v22

    .line 381
    .local v24, "epm1":D
    move-wide/from16 v26, v1

    .end local v1    # "spm1":D
    .local v26, "spm1":D
    iget-object v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v1, v1, v12

    div-double v1, v1, v22

    .line 382
    .local v1, "sk":D
    aget-wide v28, v7, v12

    div-double v28, v28, v22

    .line 383
    .local v28, "ek":D
    add-double v30, v26, v13

    sub-double v32, v26, v13

    mul-double v30, v30, v32

    mul-double v32, v24, v24

    add-double v30, v30, v32

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v30, v30, v32

    .line 384
    .local v30, "b":D
    mul-double v32, v13, v24

    mul-double v34, v13, v24

    mul-double v32, v32, v34

    .line 385
    .local v32, "c":D
    const-wide/16 v34, 0x0

    .line 386
    .local v34, "shift":D
    cmpl-double v36, v30, v20

    if-nez v36, :cond_32

    cmpl-double v36, v32, v20

    if-eqz v36, :cond_31

    goto :goto_28

    :cond_31
    move-wide/from16 v38, v1

    goto :goto_29

    .line 388
    :cond_32
    :goto_28
    mul-double v36, v30, v30

    add-double v36, v36, v32

    move-wide/from16 v38, v1

    .end local v1    # "sk":D
    .local v38, "sk":D
    invoke-static/range {v36 .. v37}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    .line 389
    .end local v34    # "shift":D
    .local v1, "shift":D
    cmpg-double v34, v30, v20

    if-gez v34, :cond_33

    .line 390
    neg-double v1, v1

    .line 392
    :cond_33
    add-double v34, v30, v1

    div-double v34, v32, v34

    .line 394
    .end local v1    # "shift":D
    .restart local v34    # "shift":D
    :goto_29
    add-double v1, v38, v13

    sub-double v36, v38, v13

    mul-double v1, v1, v36

    add-double v1, v1, v34

    .line 395
    .local v1, "f":D
    mul-double v36, v38, v28

    .line 397
    .local v36, "g":D
    move/from16 v40, v12

    move/from16 v55, v40

    move-object/from16 v40, v7

    move/from16 v7, v55

    move-wide/from16 v55, v36

    move-object/from16 v36, v5

    move/from16 v37, v6

    move-wide/from16 v5, v55

    .end local v6    # "nrt":I
    .local v5, "g":D
    .local v7, "j":I
    .local v36, "V":[[D
    .restart local v37    # "nrt":I
    .restart local v40    # "e":[D
    :goto_2a
    move-object/from16 v41, v8

    .end local v8    # "work":[D
    .restart local v41    # "work":[D
    add-int/lit8 v8, v3, -0x1

    if-ge v7, v8, :cond_38

    .line 398
    invoke-static {v1, v2, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v42

    .line 399
    .local v42, "t":D
    div-double v44, v1, v42

    .line 400
    .local v44, "cs":D
    move-wide/from16 v46, v1

    .end local v1    # "f":D
    .local v46, "f":D
    div-double v1, v5, v42

    .line 401
    .local v1, "sn":D
    if-eq v7, v12, :cond_34

    .line 402
    add-int/lit8 v8, v7, -0x1

    aput-wide v42, v40, v8

    .line 404
    :cond_34
    iget-object v8, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v48, v8, v7

    mul-double v48, v48, v44

    aget-wide v50, v40, v7

    mul-double v50, v50, v1

    move-wide/from16 v52, v5

    .end local v5    # "g":D
    .local v52, "g":D
    add-double v5, v48, v50

    .line 405
    .end local v46    # "f":D
    .local v5, "f":D
    aget-wide v46, v40, v7

    mul-double v46, v46, v44

    iget-object v8, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v48, v8, v7

    mul-double v48, v48, v1

    sub-double v46, v46, v48

    aput-wide v46, v40, v7

    .line 406
    iget-object v8, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    add-int/lit8 v46, v7, 0x1

    aget-wide v46, v8, v46

    move/from16 v48, v9

    .end local v9    # "nct":I
    .restart local v48    # "nct":I
    mul-double v8, v1, v46

    .line 407
    .end local v52    # "g":D
    .local v8, "g":D
    move/from16 v49, v10

    .end local v10    # "kase":I
    .restart local v49    # "kase":I
    iget-object v10, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    add-int/lit8 v46, v7, 0x1

    move-object/from16 v47, v10

    iget-object v10, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    add-int/lit8 v50, v7, 0x1

    aget-wide v50, v10, v50

    mul-double v50, v50, v44

    aput-wide v50, v47, v46

    .line 409
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2b
    move-object/from16 v50, v11

    .end local v11    # "A":[[D
    .restart local v50    # "A":[[D
    iget v11, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v10, v11, :cond_35

    .line 410
    aget-object v11, v36, v10

    aget-wide v46, v11, v7

    mul-double v46, v46, v44

    aget-object v11, v36, v10

    add-int/lit8 v51, v7, 0x1

    aget-wide v51, v11, v51

    mul-double v51, v51, v1

    add-double v42, v46, v51

    .line 411
    aget-object v11, v36, v10

    add-int/lit8 v46, v7, 0x1

    move/from16 v47, v10

    move-object/from16 v51, v11

    .end local v10    # "i":I
    .local v47, "i":I
    neg-double v10, v1

    aget-object v52, v36, v47

    aget-wide v52, v52, v7

    mul-double v10, v10, v52

    aget-object v52, v36, v47

    add-int/lit8 v53, v7, 0x1

    aget-wide v52, v52, v53

    mul-double v52, v52, v44

    add-double v10, v10, v52

    aput-wide v10, v51, v46

    .line 412
    aget-object v10, v36, v47

    aput-wide v42, v10, v7

    .line 409
    add-int/lit8 v10, v47, 0x1

    move-object/from16 v11, v50

    .end local v47    # "i":I
    .restart local v10    # "i":I
    goto :goto_2b

    :cond_35
    move/from16 v47, v10

    .line 414
    .end local v10    # "i":I
    invoke-static {v5, v6, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v10

    .line 415
    .end local v42    # "t":D
    .local v10, "t":D
    div-double v42, v5, v10

    .line 416
    .end local v44    # "cs":D
    .local v42, "cs":D
    div-double v1, v8, v10

    .line 417
    move-wide/from16 v44, v5

    .end local v5    # "f":D
    .local v44, "f":D
    iget-object v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aput-wide v10, v5, v7

    .line 418
    aget-wide v5, v40, v7

    mul-double v5, v5, v42

    move-wide/from16 v46, v5

    iget-object v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    add-int/lit8 v6, v7, 0x1

    aget-wide v5, v5, v6

    mul-double/2addr v5, v1

    add-double v5, v46, v5

    .line 419
    .end local v44    # "f":D
    .restart local v5    # "f":D
    move-wide/from16 v44, v5

    .end local v5    # "f":D
    .restart local v44    # "f":D
    iget-object v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    add-int/lit8 v6, v7, 0x1

    move-object/from16 v46, v5

    move/from16 v47, v6

    neg-double v5, v1

    aget-wide v51, v40, v7

    mul-double v5, v5, v51

    move-wide/from16 v51, v5

    iget-object v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    add-int/lit8 v6, v7, 0x1

    aget-wide v5, v5, v6

    mul-double v5, v5, v42

    add-double v5, v51, v5

    aput-wide v5, v46, v47

    .line 420
    add-int/lit8 v5, v7, 0x1

    aget-wide v5, v40, v5

    mul-double/2addr v5, v1

    .line 421
    .end local v8    # "g":D
    .local v5, "g":D
    add-int/lit8 v8, v7, 0x1

    add-int/lit8 v9, v7, 0x1

    aget-wide v46, v40, v9

    mul-double v46, v46, v42

    aput-wide v46, v40, v8

    .line 422
    iget v8, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_37

    .line 423
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2c
    iget v9, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v8, v9, :cond_36

    .line 424
    aget-object v9, v15, v8

    aget-wide v46, v9, v7

    mul-double v46, v46, v42

    aget-object v9, v15, v8

    add-int/lit8 v51, v7, 0x1

    aget-wide v51, v9, v51

    mul-double v51, v51, v1

    add-double v10, v46, v51

    .line 425
    aget-object v9, v15, v8

    add-int/lit8 v46, v7, 0x1

    move-wide/from16 v51, v5

    .end local v5    # "g":D
    .local v51, "g":D
    neg-double v5, v1

    aget-object v47, v15, v8

    aget-wide v53, v47, v7

    mul-double v5, v5, v53

    aget-object v47, v15, v8

    add-int/lit8 v53, v7, 0x1

    aget-wide v53, v47, v53

    mul-double v53, v53, v42

    add-double v5, v5, v53

    aput-wide v5, v9, v46

    .line 426
    aget-object v5, v15, v8

    aput-wide v10, v5, v7

    .line 423
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v5, v51

    goto :goto_2c

    .end local v51    # "g":D
    .restart local v5    # "g":D
    :cond_36
    move-wide/from16 v51, v5

    .end local v5    # "g":D
    .restart local v51    # "g":D
    goto :goto_2d

    .line 422
    .end local v8    # "i":I
    .end local v51    # "g":D
    .restart local v5    # "g":D
    :cond_37
    move-wide/from16 v51, v5

    .line 397
    .end local v1    # "sn":D
    .end local v5    # "g":D
    .end local v10    # "t":D
    .end local v42    # "cs":D
    .restart local v51    # "g":D
    :goto_2d
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v8, v41

    move-wide/from16 v1, v44

    move/from16 v9, v48

    move/from16 v10, v49

    move-object/from16 v11, v50

    move-wide/from16 v5, v51

    goto/16 :goto_2a

    .end local v44    # "f":D
    .end local v48    # "nct":I
    .end local v49    # "kase":I
    .end local v50    # "A":[[D
    .end local v51    # "g":D
    .local v1, "f":D
    .restart local v5    # "g":D
    .restart local v9    # "nct":I
    .local v10, "kase":I
    .restart local v11    # "A":[[D
    :cond_38
    move-wide/from16 v46, v1

    move-wide/from16 v52, v5

    move/from16 v48, v9

    move/from16 v49, v10

    move-object/from16 v50, v11

    .line 430
    .end local v1    # "f":D
    .end local v5    # "g":D
    .end local v7    # "j":I
    .end local v9    # "nct":I
    .end local v10    # "kase":I
    .end local v11    # "A":[[D
    .restart local v46    # "f":D
    .restart local v48    # "nct":I
    .restart local v49    # "kase":I
    .restart local v50    # "A":[[D
    .restart local v52    # "g":D
    add-int/lit8 v1, v3, -0x2

    aput-wide v46, v40, v1

    .line 432
    .end local v13    # "sp":D
    .end local v18    # "maxPm1Pm2":D
    .end local v22    # "scale":D
    .end local v24    # "epm1":D
    .end local v26    # "spm1":D
    .end local v28    # "ek":D
    .end local v30    # "b":D
    .end local v32    # "c":D
    .end local v34    # "shift":D
    .end local v38    # "sk":D
    .end local v46    # "f":D
    .end local v52    # "g":D
    goto/16 :goto_38

    .line 351
    .end local v15    # "U":[[D
    .end local v36    # "V":[[D
    .end local v37    # "nrt":I
    .end local v40    # "e":[D
    .end local v41    # "work":[D
    .end local v48    # "nct":I
    .end local v49    # "kase":I
    .end local v50    # "A":[[D
    .local v1, "A":[[D
    .restart local v2    # "U":[[D
    .local v5, "V":[[D
    .restart local v6    # "nrt":I
    .local v7, "e":[D
    .local v8, "work":[D
    .restart local v9    # "nct":I
    .restart local v10    # "kase":I
    :pswitch_1
    move-object/from16 v50, v1

    move-object v15, v2

    move-object/from16 v36, v5

    move/from16 v37, v6

    move-object/from16 v40, v7

    move-object/from16 v41, v8

    move/from16 v48, v9

    move/from16 v49, v10

    .end local v1    # "A":[[D
    .end local v2    # "U":[[D
    .end local v5    # "V":[[D
    .end local v6    # "nrt":I
    .end local v7    # "e":[D
    .end local v8    # "work":[D
    .end local v9    # "nct":I
    .end local v10    # "kase":I
    .restart local v15    # "U":[[D
    .restart local v36    # "V":[[D
    .restart local v37    # "nrt":I
    .restart local v40    # "e":[D
    .restart local v41    # "work":[D
    .restart local v48    # "nct":I
    .restart local v49    # "kase":I
    .restart local v50    # "A":[[D
    add-int/lit8 v1, v12, -0x1

    aget-wide v1, v40, v1

    .line 352
    .local v1, "f":D
    add-int/lit8 v5, v12, -0x1

    aput-wide v20, v40, v5

    .line 353
    move v5, v12

    .local v5, "j":I
    :goto_2e
    if-ge v5, v3, :cond_3a

    .line 354
    iget-object v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v6, v6, v5

    invoke-static {v6, v7, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v6

    .line 355
    .local v6, "t":D
    iget-object v8, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v8, v8, v5

    div-double/2addr v8, v6

    .line 356
    .local v8, "cs":D
    div-double v10, v1, v6

    .line 357
    .local v10, "sn":D
    iget-object v13, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aput-wide v6, v13, v5

    .line 358
    neg-double v13, v10

    aget-wide v18, v40, v5

    mul-double v1, v13, v18

    .line 359
    aget-wide v13, v40, v5

    mul-double/2addr v13, v8

    aput-wide v13, v40, v5

    .line 361
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2f
    iget v14, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v13, v14, :cond_39

    .line 362
    aget-object v14, v15, v13

    aget-wide v18, v14, v5

    mul-double v18, v18, v8

    aget-object v14, v15, v13

    add-int/lit8 v22, v12, -0x1

    aget-wide v22, v14, v22

    mul-double v22, v22, v10

    add-double v6, v18, v22

    .line 363
    aget-object v14, v15, v13

    add-int/lit8 v18, v12, -0x1

    move-wide/from16 v22, v1

    .end local v1    # "f":D
    .local v22, "f":D
    neg-double v1, v10

    aget-object v19, v15, v13

    aget-wide v24, v19, v5

    mul-double v1, v1, v24

    aget-object v19, v15, v13

    add-int/lit8 v24, v12, -0x1

    aget-wide v24, v19, v24

    mul-double v24, v24, v8

    add-double v1, v1, v24

    aput-wide v1, v14, v18

    .line 364
    aget-object v1, v15, v13

    aput-wide v6, v1, v5

    .line 361
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v1, v22

    goto :goto_2f

    .end local v22    # "f":D
    .restart local v1    # "f":D
    :cond_39
    move-wide/from16 v22, v1

    .line 353
    .end local v1    # "f":D
    .end local v6    # "t":D
    .end local v8    # "cs":D
    .end local v10    # "sn":D
    .end local v13    # "i":I
    .restart local v22    # "f":D
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 368
    .end local v5    # "j":I
    .end local v22    # "f":D
    :cond_3a
    goto/16 :goto_38

    .line 329
    .end local v15    # "U":[[D
    .end local v36    # "V":[[D
    .end local v37    # "nrt":I
    .end local v40    # "e":[D
    .end local v41    # "work":[D
    .end local v48    # "nct":I
    .end local v49    # "kase":I
    .end local v50    # "A":[[D
    .local v1, "A":[[D
    .restart local v2    # "U":[[D
    .local v5, "V":[[D
    .local v6, "nrt":I
    .restart local v7    # "e":[D
    .local v8, "work":[D
    .restart local v9    # "nct":I
    .local v10, "kase":I
    :pswitch_2
    move-object/from16 v50, v1

    move-object v15, v2

    move-object/from16 v36, v5

    move/from16 v37, v6

    move-object/from16 v40, v7

    move-object/from16 v41, v8

    move/from16 v48, v9

    move/from16 v49, v10

    .end local v1    # "A":[[D
    .end local v2    # "U":[[D
    .end local v5    # "V":[[D
    .end local v6    # "nrt":I
    .end local v7    # "e":[D
    .end local v8    # "work":[D
    .end local v9    # "nct":I
    .end local v10    # "kase":I
    .restart local v15    # "U":[[D
    .restart local v36    # "V":[[D
    .restart local v37    # "nrt":I
    .restart local v40    # "e":[D
    .restart local v41    # "work":[D
    .restart local v48    # "nct":I
    .restart local v49    # "kase":I
    .restart local v50    # "A":[[D
    add-int/lit8 v1, v3, -0x2

    aget-wide v1, v40, v1

    .line 330
    .local v1, "f":D
    add-int/lit8 v5, v3, -0x2

    aput-wide v20, v40, v5

    .line 331
    add-int/lit8 v5, v3, -0x2

    .local v5, "j":I
    :goto_30
    if-lt v5, v12, :cond_3d

    .line 332
    iget-object v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v6, v6, v5

    invoke-static {v6, v7, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v6

    .line 333
    .local v6, "t":D
    iget-object v8, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v8, v8, v5

    div-double/2addr v8, v6

    .line 334
    .local v8, "cs":D
    div-double v10, v1, v6

    .line 335
    .local v10, "sn":D
    iget-object v13, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aput-wide v6, v13, v5

    .line 336
    if-eq v5, v12, :cond_3b

    .line 337
    neg-double v13, v10

    add-int/lit8 v18, v5, -0x1

    aget-wide v18, v40, v18

    mul-double v13, v13, v18

    .line 338
    .end local v1    # "f":D
    .local v13, "f":D
    add-int/lit8 v1, v5, -0x1

    add-int/lit8 v2, v5, -0x1

    aget-wide v18, v40, v2

    mul-double v18, v18, v8

    aput-wide v18, v40, v1

    move-wide v1, v13

    .line 341
    .end local v13    # "f":D
    .restart local v1    # "f":D
    :cond_3b
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_31
    iget v14, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v13, v14, :cond_3c

    .line 342
    aget-object v14, v36, v13

    aget-wide v18, v14, v5

    mul-double v18, v18, v8

    aget-object v14, v36, v13

    add-int/lit8 v22, v3, -0x1

    aget-wide v22, v14, v22

    mul-double v22, v22, v10

    add-double v6, v18, v22

    .line 343
    aget-object v14, v36, v13

    add-int/lit8 v18, v3, -0x1

    move-wide/from16 v22, v1

    .end local v1    # "f":D
    .restart local v22    # "f":D
    neg-double v1, v10

    aget-object v19, v36, v13

    aget-wide v24, v19, v5

    mul-double v1, v1, v24

    aget-object v19, v36, v13

    add-int/lit8 v24, v3, -0x1

    aget-wide v24, v19, v24

    mul-double v24, v24, v8

    add-double v1, v1, v24

    aput-wide v1, v14, v18

    .line 344
    aget-object v1, v36, v13

    aput-wide v6, v1, v5

    .line 341
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v1, v22

    goto :goto_31

    .end local v22    # "f":D
    .restart local v1    # "f":D
    :cond_3c
    move-wide/from16 v22, v1

    .line 331
    .end local v1    # "f":D
    .end local v6    # "t":D
    .end local v8    # "cs":D
    .end local v10    # "sn":D
    .end local v13    # "i":I
    .restart local v22    # "f":D
    add-int/lit8 v5, v5, -0x1

    goto :goto_30

    .line 348
    .end local v5    # "j":I
    .end local v22    # "f":D
    :cond_3d
    goto/16 :goto_38

    .line 437
    :cond_3e
    move-wide/from16 v5, v20

    :goto_32
    aput-wide v5, v1, v12

    .line 439
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_33
    if-gt v1, v4, :cond_3f

    .line 440
    aget-object v2, v36, v1

    aget-object v5, v36, v1

    aget-wide v5, v5, v12

    neg-double v5, v5

    aput-wide v5, v2, v12

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 444
    .end local v1    # "i":I
    :cond_3f
    :goto_34
    if-ge v12, v4, :cond_43

    .line 445
    iget-object v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v1, v1, v12

    iget-object v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    add-int/lit8 v6, v12, 0x1

    aget-wide v5, v5, v6

    cmpl-double v1, v1, v5

    if-ltz v1, :cond_40

    .line 446
    goto :goto_37

    .line 448
    :cond_40
    iget-object v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v1, v1, v12

    .line 449
    .local v1, "t":D
    iget-object v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    iget-object v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    add-int/lit8 v7, v12, 0x1

    aget-wide v6, v6, v7

    aput-wide v6, v5, v12

    .line 450
    iget-object v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    add-int/lit8 v6, v12, 0x1

    aput-wide v1, v5, v6

    .line 451
    iget v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    add-int/lit8 v5, v5, -0x1

    if-ge v12, v5, :cond_41

    .line 452
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_35
    iget v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v5, v6, :cond_41

    .line 453
    aget-object v6, v36, v5

    add-int/lit8 v7, v12, 0x1

    aget-wide v1, v6, v7

    .line 454
    aget-object v6, v36, v5

    add-int/lit8 v7, v12, 0x1

    aget-object v8, v36, v5

    aget-wide v8, v8, v12

    aput-wide v8, v6, v7

    .line 455
    aget-object v6, v36, v5

    aput-wide v1, v6, v12

    .line 452
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    .line 458
    .end local v5    # "i":I
    :cond_41
    iget v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    add-int/lit8 v5, v5, -0x1

    if-ge v12, v5, :cond_42

    .line 459
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_36
    iget v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v5, v6, :cond_42

    .line 460
    aget-object v6, v15, v5

    add-int/lit8 v7, v12, 0x1

    aget-wide v1, v6, v7

    .line 461
    aget-object v6, v15, v5

    add-int/lit8 v7, v12, 0x1

    aget-object v8, v15, v5

    aget-wide v8, v8, v12

    aput-wide v8, v6, v7

    .line 462
    aget-object v6, v15, v5

    aput-wide v1, v6, v12

    .line 459
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 465
    .end local v5    # "i":I
    :cond_42
    nop

    .end local v1    # "t":D
    add-int/lit8 v12, v12, 0x1

    .line 466
    goto :goto_34

    .line 467
    :cond_43
    :goto_37
    add-int/lit8 v3, v3, -0x1

    .line 471
    .end local v12    # "k":I
    .end local v49    # "kase":I
    :goto_38
    move-object v2, v15

    move-object/from16 v5, v36

    move/from16 v6, v37

    move-object/from16 v7, v40

    move-object/from16 v8, v41

    move/from16 v9, v48

    move-object/from16 v1, v50

    goto/16 :goto_20

    .line 474
    .end local v15    # "U":[[D
    .end local v36    # "V":[[D
    .end local v37    # "nrt":I
    .end local v40    # "e":[D
    .end local v41    # "work":[D
    .end local v48    # "nct":I
    .end local v50    # "A":[[D
    .local v1, "A":[[D
    .restart local v2    # "U":[[D
    .local v5, "V":[[D
    .local v6, "nrt":I
    .restart local v7    # "e":[D
    .local v8, "work":[D
    .restart local v9    # "nct":I
    :cond_44
    move-object/from16 v50, v1

    move-object v15, v2

    move-object/from16 v36, v5

    move/from16 v37, v6

    move-object/from16 v40, v7

    move-object/from16 v41, v8

    move/from16 v48, v9

    move-wide/from16 v22, v10

    .end local v1    # "A":[[D
    .end local v2    # "U":[[D
    .end local v5    # "V":[[D
    .end local v6    # "nrt":I
    .end local v7    # "e":[D
    .end local v8    # "work":[D
    .end local v9    # "nct":I
    .restart local v15    # "U":[[D
    .restart local v36    # "V":[[D
    .restart local v37    # "nrt":I
    .restart local v40    # "e":[D
    .restart local v41    # "work":[D
    .restart local v48    # "nct":I
    .restart local v50    # "A":[[D
    iget v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    int-to-double v1, v1

    iget-object v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v5, v5, v16

    mul-double/2addr v1, v5

    mul-double v1, v1, v22

    sget-wide v5, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->tol:D

    .line 477
    iget-boolean v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->transposed:Z

    if-nez v1, :cond_45

    .line 478
    invoke-static {v15}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 479
    invoke-static/range {v36 .. v36}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    goto :goto_39

    .line 481
    :cond_45
    invoke-static/range {v36 .. v36}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 482
    invoke-static {v15}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 484
    :goto_39
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/linear/SingularValueDecomposition;)[D
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/linear/SingularValueDecomposition;

    .line 53
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    return-object v0
.end method


# virtual methods
.method public getConditionNumber()D
    .locals 4

    .line 616
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iget-object v2, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    iget v3, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    add-int/lit8 v3, v3, -0x1

    aget-wide v2, v2, v3

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getCovariance(D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 10
    .param p1, "minSingularValue"    # D

    .line 574
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    array-length v0, v0

    .line 575
    .local v0, "p":I
    const/4 v1, 0x0

    .line 576
    .local v1, "dimension":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v2, v2, v1

    cmpl-double v2, v2, p1

    if-ltz v2, :cond_0

    .line 578
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 581
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 586
    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v0, v4, v3

    aput v1, v4, v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 587
    .local v3, "data":[[D
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getVT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    new-instance v5, Lorg/apache/commons/math3/linear/SingularValueDecomposition$1;

    invoke-direct {v5, p0, v3}, Lorg/apache/commons/math3/linear/SingularValueDecomposition$1;-><init>(Lorg/apache/commons/math3/linear/SingularValueDecomposition;[[D)V

    add-int/lit8 v7, v1, -0x1

    add-int/lit8 v9, v0, -0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v4 .. v9}, Lorg/apache/commons/math3/linear/RealMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;IIII)D

    .line 596
    new-instance v4, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v4, v3, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    .line 597
    .local v4, "jv":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {v4}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    return-object v2

    .line 582
    .end local v3    # "data":[[D
    .end local v4    # "jv":Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_1
    new-instance v4, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_LARGE_CUTOFF_SINGULAR_VALUE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v7, v7, v2

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v4, v5, v6, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v4
.end method

.method public getInverseConditionNumber()D
    .locals 4

    .line 627
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    iget v1, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    iget-object v2, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getNorm()D
    .locals 2

    .line 608
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getRank()I
    .locals 6

    .line 639
    const/4 v0, 0x0

    .line 640
    .local v0, "r":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 641
    iget-object v2, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v2, v2, v1

    iget-wide v4, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->tol:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 642
    add-int/lit8 v0, v0, 0x1

    .line 640
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 645
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public getS()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 519
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedS:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 521
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealDiagonalMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedS:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 523
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedS:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getSingularValues()[D
    .locals 1

    .line 533
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;
    .locals 8

    .line 653
    new-instance v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getUT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getV()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getRank()I

    move-result v4

    iget v5, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-wide v5, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->tol:D

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;-><init>([DLorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;ZDLorg/apache/commons/math3/linear/SingularValueDecomposition$1;)V

    return-object v0
.end method

.method public getU()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 494
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getUT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 505
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedUt:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 506
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getU()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedUt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 509
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedUt:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getV()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 544
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getVT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 554
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 555
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getV()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 558
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method
