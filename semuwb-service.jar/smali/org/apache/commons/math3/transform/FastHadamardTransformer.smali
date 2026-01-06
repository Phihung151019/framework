.class public Lorg/apache/commons/math3/transform/FastHadamardTransformer;
.super Ljava/lang/Object;
.source "FastHadamardTransformer.java"

# interfaces
.implements Lorg/apache/commons/math3/transform/RealTransformer;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x1330293L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected fht([D)[D
    .locals 12
    .param p1, "x"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 230
    array-length v0, p1

    .line 231
    .local v0, "n":I
    div-int/lit8 v1, v0, 0x2

    .line 233
    .local v1, "halfN":I
    int-to-long v2, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->isPowerOfTwo(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 243
    new-array v2, v0, [D

    .line 244
    .local v2, "yPrevious":[D
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    .line 247
    .local v3, "yCurrent":[D
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 250
    move-object v5, v3

    .line 251
    .local v5, "yTmp":[D
    move-object v3, v2

    .line 252
    move-object v2, v5

    .line 255
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v1, :cond_0

    .line 257
    mul-int/lit8 v7, v6, 0x2

    .line 258
    .local v7, "twoI":I
    aget-wide v8, v2, v7

    add-int/lit8 v10, v7, 0x1

    aget-wide v10, v2, v10

    add-double/2addr v8, v10

    aput-wide v8, v3, v6

    .line 255
    .end local v7    # "twoI":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 260
    .end local v6    # "i":I
    :cond_0
    move v6, v1

    .restart local v6    # "i":I
    :goto_2
    if-ge v6, v0, :cond_1

    .line 262
    mul-int/lit8 v7, v6, 0x2

    .line 263
    .restart local v7    # "twoI":I
    sub-int v8, v7, v0

    aget-wide v8, v2, v8

    sub-int v10, v7, v0

    add-int/lit8 v10, v10, 0x1

    aget-wide v10, v2, v10

    sub-double/2addr v8, v10

    aput-wide v8, v3, v6

    .line 260
    .end local v7    # "twoI":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 247
    .end local v5    # "yTmp":[D
    .end local v6    # "i":I
    :cond_1
    shl-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 267
    .end local v4    # "j":I
    :cond_2
    return-object v3

    .line 234
    .end local v2    # "yPrevious":[D
    .end local v3    # "yCurrent":[D
    :cond_3
    new-instance v2, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POWER_OF_TWO:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method protected fht([I)[I
    .locals 10
    .param p1, "x"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 281
    array-length v0, p1

    .line 282
    .local v0, "n":I
    div-int/lit8 v1, v0, 0x2

    .line 284
    .local v1, "halfN":I
    int-to-long v2, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->isPowerOfTwo(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 294
    new-array v2, v0, [I

    .line 295
    .local v2, "yPrevious":[I
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 298
    .local v3, "yCurrent":[I
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 301
    move-object v5, v3

    .line 302
    .local v5, "yTmp":[I
    move-object v3, v2

    .line 303
    move-object v2, v5

    .line 306
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v1, :cond_0

    .line 308
    mul-int/lit8 v7, v6, 0x2

    .line 309
    .local v7, "twoI":I
    aget v8, v2, v7

    add-int/lit8 v9, v7, 0x1

    aget v9, v2, v9

    add-int/2addr v8, v9

    aput v8, v3, v6

    .line 306
    .end local v7    # "twoI":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 311
    .end local v6    # "i":I
    :cond_0
    move v6, v1

    .restart local v6    # "i":I
    :goto_2
    if-ge v6, v0, :cond_1

    .line 313
    mul-int/lit8 v7, v6, 0x2

    .line 314
    .restart local v7    # "twoI":I
    sub-int v8, v7, v0

    aget v8, v2, v8

    sub-int v9, v7, v0

    add-int/lit8 v9, v9, 0x1

    aget v9, v2, v9

    sub-int/2addr v8, v9

    aput v8, v3, v6

    .line 311
    .end local v7    # "twoI":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 298
    .end local v5    # "yTmp":[I
    .end local v6    # "i":I
    :cond_1
    shl-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 319
    .end local v4    # "j":I
    :cond_2
    return-object v3

    .line 285
    .end local v2    # "yPrevious":[I
    .end local v3    # "yCurrent":[I
    :cond_3
    new-instance v2, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POWER_OF_TWO:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method public transform(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDILorg/apache/commons/math3/transform/TransformType;)[D
    .locals 1
    .param p1, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p2, "min"    # D
    .param p4, "max"    # D
    .param p6, "n"    # I
    .param p7, "type"    # Lorg/apache/commons/math3/transform/TransformType;

    .line 70
    invoke-static/range {p1 .. p6}, Lorg/apache/commons/math3/analysis/FunctionUtils;->sample(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDI)[D

    move-result-object v0

    invoke-virtual {p0, v0, p7}, Lorg/apache/commons/math3/transform/FastHadamardTransformer;->transform([DLorg/apache/commons/math3/transform/TransformType;)[D

    move-result-object v0

    return-object v0
.end method

.method public transform([DLorg/apache/commons/math3/transform/TransformType;)[D
    .locals 5
    .param p1, "f"    # [D
    .param p2, "type"    # Lorg/apache/commons/math3/transform/TransformType;

    .line 51
    sget-object v0, Lorg/apache/commons/math3/transform/TransformType;->FORWARD:Lorg/apache/commons/math3/transform/TransformType;

    if-ne p2, v0, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastHadamardTransformer;->fht([D)[D

    move-result-object v0

    return-object v0

    .line 54
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastHadamardTransformer;->fht([D)[D

    move-result-object v0

    array-length v1, p1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double/2addr v3, v1

    invoke-static {v0, v3, v4}, Lorg/apache/commons/math3/transform/TransformUtils;->scaleArray([DD)[D

    move-result-object v0

    return-object v0
.end method

.method public transform([I)[I
    .locals 1
    .param p1, "f"    # [I

    .line 83
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastHadamardTransformer;->fht([I)[I

    move-result-object v0

    return-object v0
.end method
