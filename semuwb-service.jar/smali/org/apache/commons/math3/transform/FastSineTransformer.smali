.class public Lorg/apache/commons/math3/transform/FastSineTransformer;
.super Ljava/lang/Object;
.source "FastSineTransformer.java"

# interfaces
.implements Lorg/apache/commons/math3/transform/RealTransformer;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x1330293L


# instance fields
.field private final normalization:Lorg/apache/commons/math3/transform/DstNormalization;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/transform/DstNormalization;)V
    .locals 0
    .param p1, "normalization"    # Lorg/apache/commons/math3/transform/DstNormalization;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lorg/apache/commons/math3/transform/FastSineTransformer;->normalization:Lorg/apache/commons/math3/transform/DstNormalization;

    .line 85
    return-void
.end method


# virtual methods
.method protected fst([D)[D
    .locals 18
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

    int-to-long v2, v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->isPowerOfTwo(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 145
    const/4 v2, 0x0

    aget-wide v3, v0, v2

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    .line 150
    array-length v3, v0

    .line 151
    .local v3, "n":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 152
    aput-wide v5, v1, v2

    .line 153
    return-object v1

    .line 157
    :cond_0
    new-array v7, v3, [D

    .line 158
    .local v7, "x":[D
    aput-wide v5, v7, v2

    .line 159
    shr-int/lit8 v8, v3, 0x1

    shr-int/lit8 v9, v3, 0x1

    aget-wide v9, v0, v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double/2addr v9, v11

    aput-wide v9, v7, v8

    .line 160
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_0
    shr-int/lit8 v9, v3, 0x1

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    if-ge v8, v9, :cond_1

    .line 161
    int-to-double v12, v8

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v12, v14

    int-to-double v14, v3

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v12

    aget-wide v14, v0, v8

    sub-int v9, v3, v8

    aget-wide v16, v0, v9

    add-double v14, v14, v16

    mul-double/2addr v12, v14

    .line 162
    .local v12, "a":D
    aget-wide v14, v0, v8

    sub-int v9, v3, v8

    aget-wide v16, v0, v9

    sub-double v14, v14, v16

    mul-double/2addr v14, v10

    .line 163
    .local v14, "b":D
    add-double v9, v12, v14

    aput-wide v9, v7, v8

    .line 164
    sub-int v9, v3, v8

    sub-double v10, v12, v14

    aput-wide v10, v7, v9

    .line 160
    .end local v12    # "a":D
    .end local v14    # "b":D
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 167
    .end local v8    # "i":I
    :cond_1
    new-instance v8, Lorg/apache/commons/math3/transform/FastFourierTransformer;

    sget-object v9, Lorg/apache/commons/math3/transform/DftNormalization;->STANDARD:Lorg/apache/commons/math3/transform/DftNormalization;

    invoke-direct {v8, v9}, Lorg/apache/commons/math3/transform/FastFourierTransformer;-><init>(Lorg/apache/commons/math3/transform/DftNormalization;)V

    .line 168
    .local v8, "transformer":Lorg/apache/commons/math3/transform/FastFourierTransformer;
    sget-object v9, Lorg/apache/commons/math3/transform/TransformType;->FORWARD:Lorg/apache/commons/math3/transform/TransformType;

    invoke-virtual {v8, v7, v9}, Lorg/apache/commons/math3/transform/FastFourierTransformer;->transform([DLorg/apache/commons/math3/transform/TransformType;)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object v9

    .line 171
    .local v9, "y":[Lorg/apache/commons/math3/complex/Complex;
    aput-wide v5, v1, v2

    .line 172
    aget-object v2, v9, v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v5

    mul-double/2addr v5, v10

    aput-wide v5, v1, v4

    .line 173
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    shr-int/lit8 v5, v3, 0x1

    if-ge v2, v5, :cond_2

    .line 174
    mul-int/lit8 v5, v2, 0x2

    aget-object v6, v9, v2

    invoke-virtual {v6}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v10

    neg-double v10, v10

    aput-wide v10, v1, v5

    .line 175
    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v4

    aget-object v6, v9, v2

    invoke-virtual {v6}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v10

    mul-int/lit8 v6, v2, 0x2

    sub-int/2addr v6, v4

    aget-wide v12, v1, v6

    add-double/2addr v10, v12

    aput-wide v10, v1, v5

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 178
    .end local v2    # "i":I
    :cond_2
    return-object v1

    .line 146
    .end local v3    # "n":I
    .end local v7    # "x":[D
    .end local v8    # "transformer":Lorg/apache/commons/math3/transform/FastFourierTransformer;
    .end local v9    # "y":[Lorg/apache/commons/math3/complex/Complex;
    :cond_3
    new-instance v3, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FIRST_ELEMENT_NOT_ZERO:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    aget-wide v5, v0, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 141
    :cond_4
    new-instance v2, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POWER_OF_TWO_CONSIDER_PADDING:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method public transform(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDILorg/apache/commons/math3/transform/TransformType;)[D
    .locals 4
    .param p1, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p2, "min"    # D
    .param p4, "max"    # D
    .param p6, "n"    # I
    .param p7, "type"    # Lorg/apache/commons/math3/transform/TransformType;

    .line 122
    invoke-static/range {p1 .. p6}, Lorg/apache/commons/math3/analysis/FunctionUtils;->sample(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDI)[D

    move-result-object v0

    .line 123
    .local v0, "data":[D
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 124
    invoke-virtual {p0, v0, p7}, Lorg/apache/commons/math3/transform/FastSineTransformer;->transform([DLorg/apache/commons/math3/transform/TransformType;)[D

    move-result-object v1

    return-object v1
.end method

.method public transform([DLorg/apache/commons/math3/transform/TransformType;)[D
    .locals 4
    .param p1, "f"    # [D
    .param p2, "type"    # Lorg/apache/commons/math3/transform/TransformType;

    .line 96
    iget-object v0, p0, Lorg/apache/commons/math3/transform/FastSineTransformer;->normalization:Lorg/apache/commons/math3/transform/DstNormalization;

    sget-object v1, Lorg/apache/commons/math3/transform/DstNormalization;->ORTHOGONAL_DST_I:Lorg/apache/commons/math3/transform/DstNormalization;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    if-ne v0, v1, :cond_0

    .line 97
    array-length v0, p1

    int-to-double v0, v0

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    .line 98
    .local v0, "s":D
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastSineTransformer;->fst([D)[D

    move-result-object v2

    invoke-static {v2, v0, v1}, Lorg/apache/commons/math3/transform/TransformUtils;->scaleArray([DD)[D

    move-result-object v2

    return-object v2

    .line 100
    .end local v0    # "s":D
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/transform/TransformType;->FORWARD:Lorg/apache/commons/math3/transform/TransformType;

    if-ne p2, v0, :cond_1

    .line 101
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastSineTransformer;->fst([D)[D

    move-result-object v0

    return-object v0

    .line 103
    :cond_1
    array-length v0, p1

    int-to-double v0, v0

    div-double/2addr v2, v0

    .line 104
    .local v2, "s":D
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastSineTransformer;->fst([D)[D

    move-result-object v0

    invoke-static {v0, v2, v3}, Lorg/apache/commons/math3/transform/TransformUtils;->scaleArray([DD)[D

    move-result-object v0

    return-object v0
.end method
