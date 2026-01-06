.class public Lorg/apache/commons/math3/transform/FastCosineTransformer;
.super Ljava/lang/Object;
.source "FastCosineTransformer.java"

# interfaces
.implements Lorg/apache/commons/math3/transform/RealTransformer;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x1330294L


# instance fields
.field private final normalization:Lorg/apache/commons/math3/transform/DctNormalization;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/transform/DctNormalization;)V
    .locals 0
    .param p1, "normalization"    # Lorg/apache/commons/math3/transform/DctNormalization;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/apache/commons/math3/transform/FastCosineTransformer;->normalization:Lorg/apache/commons/math3/transform/DctNormalization;

    .line 82
    return-void
.end method


# virtual methods
.method protected fct([D)[D
    .locals 20
    .param p1, "f"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 138
    move-object/from16 v0, p1

    array-length v1, v0

    new-array v1, v1, [D

    .line 140
    .local v1, "transformed":[D
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 141
    .local v2, "n":I
    int-to-long v4, v2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/ArithmeticUtils;->isPowerOfTwo(J)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 146
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const/4 v6, 0x0

    if-ne v2, v3, :cond_0

    .line 147
    aget-wide v7, v0, v6

    aget-wide v9, v0, v3

    add-double/2addr v7, v9

    mul-double/2addr v7, v4

    aput-wide v7, v1, v6

    .line 148
    aget-wide v6, v0, v6

    aget-wide v8, v0, v3

    sub-double/2addr v6, v8

    mul-double/2addr v6, v4

    aput-wide v6, v1, v3

    .line 149
    return-object v1

    .line 153
    :cond_0
    new-array v7, v2, [D

    .line 154
    .local v7, "x":[D
    aget-wide v8, v0, v6

    aget-wide v10, v0, v2

    add-double/2addr v8, v10

    mul-double/2addr v8, v4

    aput-wide v8, v7, v6

    .line 155
    shr-int/lit8 v8, v2, 0x1

    shr-int/lit8 v9, v2, 0x1

    aget-wide v9, v0, v9

    aput-wide v9, v7, v8

    .line 157
    aget-wide v8, v0, v6

    aget-wide v10, v0, v2

    sub-double/2addr v8, v10

    mul-double/2addr v8, v4

    .line 158
    .local v8, "t1":D
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_0
    shr-int/lit8 v11, v2, 0x1

    if-ge v10, v11, :cond_1

    .line 159
    aget-wide v11, v0, v10

    sub-int v13, v2, v10

    aget-wide v13, v0, v13

    add-double/2addr v11, v13

    mul-double/2addr v11, v4

    .line 160
    .local v11, "a":D
    int-to-double v13, v10

    const-wide v15, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v13, v15

    move/from16 v17, v3

    int-to-double v3, v2

    div-double/2addr v13, v3

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v3

    aget-wide v13, v0, v10

    sub-int v5, v2, v10

    aget-wide v18, v0, v5

    sub-double v13, v13, v18

    mul-double/2addr v3, v13

    .line 161
    .local v3, "b":D
    int-to-double v13, v10

    mul-double/2addr v13, v15

    move v5, v6

    move-object v15, v7

    .end local v7    # "x":[D
    .local v15, "x":[D
    int-to-double v6, v2

    div-double/2addr v13, v6

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v6

    aget-wide v13, v0, v10

    sub-int v16, v2, v10

    aget-wide v18, v0, v16

    sub-double v13, v13, v18

    mul-double/2addr v6, v13

    .line 162
    .local v6, "c":D
    sub-double v13, v11, v3

    aput-wide v13, v15, v10

    .line 163
    sub-int v13, v2, v10

    add-double v18, v11, v3

    aput-wide v18, v15, v13

    .line 164
    add-double/2addr v8, v6

    .line 158
    .end local v3    # "b":D
    .end local v6    # "c":D
    .end local v11    # "a":D
    add-int/lit8 v10, v10, 0x1

    move v6, v5

    move-object v7, v15

    move/from16 v3, v17

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    goto :goto_0

    .end local v15    # "x":[D
    .restart local v7    # "x":[D
    :cond_1
    move/from16 v17, v3

    move v5, v6

    move-object v15, v7

    .line 167
    .end local v7    # "x":[D
    .end local v10    # "i":I
    .restart local v15    # "x":[D
    new-instance v3, Lorg/apache/commons/math3/transform/FastFourierTransformer;

    sget-object v4, Lorg/apache/commons/math3/transform/DftNormalization;->STANDARD:Lorg/apache/commons/math3/transform/DftNormalization;

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/transform/FastFourierTransformer;-><init>(Lorg/apache/commons/math3/transform/DftNormalization;)V

    .line 168
    .local v3, "transformer":Lorg/apache/commons/math3/transform/FastFourierTransformer;
    sget-object v4, Lorg/apache/commons/math3/transform/TransformType;->FORWARD:Lorg/apache/commons/math3/transform/TransformType;

    invoke-virtual {v3, v15, v4}, Lorg/apache/commons/math3/transform/FastFourierTransformer;->transform([DLorg/apache/commons/math3/transform/TransformType;)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object v4

    .line 171
    .local v4, "y":[Lorg/apache/commons/math3/complex/Complex;
    aget-object v6, v4, v5

    invoke-virtual {v6}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v6

    aput-wide v6, v1, v5

    .line 172
    aput-wide v8, v1, v17

    .line 173
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1
    shr-int/lit8 v6, v2, 0x1

    if-ge v5, v6, :cond_2

    .line 174
    mul-int/lit8 v6, v5, 0x2

    aget-object v7, v4, v5

    invoke-virtual {v7}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v10

    aput-wide v10, v1, v6

    .line 175
    mul-int/lit8 v6, v5, 0x2

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v7, v5, 0x2

    add-int/lit8 v7, v7, -0x1

    aget-wide v10, v1, v7

    aget-object v7, v4, v5

    invoke-virtual {v7}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v12

    sub-double/2addr v10, v12

    aput-wide v10, v1, v6

    .line 173
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 177
    .end local v5    # "i":I
    :cond_2
    shr-int/lit8 v5, v2, 0x1

    aget-object v5, v4, v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v5

    aput-wide v5, v1, v2

    .line 179
    return-object v1

    .line 142
    .end local v3    # "transformer":Lorg/apache/commons/math3/transform/FastFourierTransformer;
    .end local v4    # "y":[Lorg/apache/commons/math3/complex/Complex;
    .end local v8    # "t1":D
    .end local v15    # "x":[D
    :cond_3
    new-instance v3, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POWER_OF_TWO_PLUS_ONE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3
.end method

.method public transform(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDILorg/apache/commons/math3/transform/TransformType;)[D
    .locals 2
    .param p1, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p2, "min"    # D
    .param p4, "max"    # D
    .param p6, "n"    # I
    .param p7, "type"    # Lorg/apache/commons/math3/transform/TransformType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 123
    invoke-static/range {p1 .. p6}, Lorg/apache/commons/math3/analysis/FunctionUtils;->sample(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDI)[D

    move-result-object v0

    .line 124
    .local v0, "data":[D
    invoke-virtual {p0, v0, p7}, Lorg/apache/commons/math3/transform/FastCosineTransformer;->transform([DLorg/apache/commons/math3/transform/TransformType;)[D

    move-result-object v1

    return-object v1
.end method

.method public transform([DLorg/apache/commons/math3/transform/TransformType;)[D
    .locals 5
    .param p1, "f"    # [D
    .param p2, "type"    # Lorg/apache/commons/math3/transform/TransformType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 92
    sget-object v0, Lorg/apache/commons/math3/transform/TransformType;->FORWARD:Lorg/apache/commons/math3/transform/TransformType;

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    if-ne p2, v0, :cond_1

    .line 93
    iget-object v0, p0, Lorg/apache/commons/math3/transform/FastCosineTransformer;->normalization:Lorg/apache/commons/math3/transform/DctNormalization;

    sget-object v3, Lorg/apache/commons/math3/transform/DctNormalization;->ORTHOGONAL_DCT_I:Lorg/apache/commons/math3/transform/DctNormalization;

    if-ne v0, v3, :cond_0

    .line 94
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    int-to-double v3, v0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    .line 95
    .local v0, "s":D
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastCosineTransformer;->fct([D)[D

    move-result-object v2

    invoke-static {v2, v0, v1}, Lorg/apache/commons/math3/transform/TransformUtils;->scaleArray([DD)[D

    move-result-object v2

    return-object v2

    .line 97
    .end local v0    # "s":D
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastCosineTransformer;->fct([D)[D

    move-result-object v0

    return-object v0

    .line 99
    :cond_1
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    int-to-double v3, v0

    div-double/2addr v1, v3

    .line 101
    .local v1, "s2":D
    iget-object v0, p0, Lorg/apache/commons/math3/transform/FastCosineTransformer;->normalization:Lorg/apache/commons/math3/transform/DctNormalization;

    sget-object v3, Lorg/apache/commons/math3/transform/DctNormalization;->ORTHOGONAL_DCT_I:Lorg/apache/commons/math3/transform/DctNormalization;

    if-ne v0, v3, :cond_2

    .line 102
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    .local v3, "s1":D
    goto :goto_0

    .line 104
    .end local v3    # "s1":D
    :cond_2
    move-wide v3, v1

    .line 106
    .restart local v3    # "s1":D
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastCosineTransformer;->fct([D)[D

    move-result-object v0

    invoke-static {v0, v3, v4}, Lorg/apache/commons/math3/transform/TransformUtils;->scaleArray([DD)[D

    move-result-object v0

    return-object v0
.end method
