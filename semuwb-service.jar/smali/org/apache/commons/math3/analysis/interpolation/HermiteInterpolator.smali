.class public Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;
.super Ljava/lang/Object;
.source "HermiteInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableVectorFunction;


# instance fields
.field private final abscissae:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final bottomDiagonal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation
.end field

.field private final topDiagonal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->abscissae:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->bottomDiagonal:Ljava/util/List;

    .line 65
    return-void
.end method

.method private checkInterpolation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    return-void

    .line 227
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_INTERPOLATION_SAMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v0
.end method

.method private varargs polynomial([D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 1
    .param p1, "c"    # [D

    .line 236
    new-instance v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    return-object v0
.end method


# virtual methods
.method public varargs addSamplePoint(D[[D)V
    .locals 17
    .param p1, "x"    # D
    .param p3, "value"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ZeroException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 89
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 91
    aget-object v3, v1, v2

    invoke-virtual {v3}, [D->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    .line 92
    .local v3, "y":[D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x1

    if-le v2, v6, :cond_0

    .line 93
    invoke-static {v2}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorial(I)J

    move-result-wide v6

    long-to-double v6, v6

    div-double v6, v4, v6

    .line 94
    .local v6, "inv":D
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    array-length v9, v3

    if-ge v8, v9, :cond_0

    .line 95
    aget-wide v9, v3, v8

    mul-double/2addr v9, v6

    aput-wide v9, v3, v8

    .line 94
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 100
    .end local v6    # "inv":D
    .end local v8    # "j":I
    :cond_0
    iget-object v6, v0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 101
    .local v6, "n":I
    iget-object v7, v0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->bottomDiagonal:Ljava/util/List;

    sub-int v8, v6, v2

    invoke-interface {v7, v8, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 102
    move-object v7, v3

    .line 103
    .local v7, "bottom0":[D
    move v8, v2

    .restart local v8    # "j":I
    :goto_2
    if-ge v8, v6, :cond_3

    .line 104
    iget-object v9, v0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->bottomDiagonal:Ljava/util/List;

    add-int/lit8 v10, v8, 0x1

    sub-int v10, v6, v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [D

    .line 105
    .local v9, "bottom1":[D
    iget-object v10, v0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->abscissae:Ljava/util/List;

    add-int/lit8 v11, v8, 0x1

    sub-int v11, v6, v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    sub-double v10, p1, v10

    div-double v10, v4, v10

    .line 106
    .local v10, "inv":D
    invoke-static {v10, v11}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v12

    if-nez v12, :cond_2

    .line 109
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_3
    array-length v13, v3

    if-ge v12, v13, :cond_1

    .line 110
    aget-wide v13, v7, v12

    aget-wide v15, v9, v12

    sub-double/2addr v13, v15

    mul-double/2addr v13, v10

    aput-wide v13, v9, v12

    .line 109
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 112
    .end local v12    # "k":I
    :cond_1
    move-object v7, v9

    .line 103
    .end local v9    # "bottom1":[D
    .end local v10    # "inv":D
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 107
    .restart local v9    # "bottom1":[D
    .restart local v10    # "inv":D
    :cond_2
    new-instance v4, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DUPLICATED_ABSCISSA_DIVISION_BY_ZERO:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-direct {v4, v5, v12}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 116
    .end local v8    # "j":I
    .end local v9    # "bottom1":[D
    .end local v10    # "inv":D
    :cond_3
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-virtual {v7}, [D->clone()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .end local v3    # "y":[D
    .end local v6    # "n":I
    .end local v7    # "bottom0":[D
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 123
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method public getPolynomials()[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->checkInterpolation()V

    .line 136
    const/4 v0, 0x1

    new-array v1, v0, [D

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->polynomial([D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v1

    .line 137
    .local v1, "zero":Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    array-length v3, v3

    new-array v3, v3, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    .line 138
    .local v3, "polynomials":[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 139
    aput-object v1, v3, v4

    .line 138
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 141
    .end local v4    # "i":I
    :cond_0
    new-array v4, v0, [D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    aput-wide v5, v4, v2

    invoke-direct {p0, v4}, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->polynomial([D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v4

    .line 144
    .local v4, "coeff":Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget-object v8, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 145
    iget-object v8, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [D

    .line 146
    .local v8, "tdi":[D
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_2
    array-length v10, v3

    if-ge v9, v10, :cond_1

    .line 147
    aget-object v10, v3, v9

    aget-wide v11, v8, v9

    new-array v13, v0, [D

    aput-wide v11, v13, v2

    invoke-direct {p0, v13}, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->polynomial([D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v11

    invoke-virtual {v4, v11}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->multiply(Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->add(Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v10

    aput-object v10, v3, v9

    .line 146
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 149
    .end local v9    # "k":I
    :cond_1
    iget-object v9, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    neg-double v9, v9

    const/4 v11, 0x2

    new-array v11, v11, [D

    aput-wide v9, v11, v2

    aput-wide v5, v11, v0

    invoke-direct {p0, v11}, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->polynomial([D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->multiply(Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v4

    .line 144
    .end local v8    # "tdi":[D
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 152
    .end local v7    # "i":I
    :cond_2
    return-object v3
.end method

.method public value(D)[D
    .locals 10
    .param p1, "x"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->checkInterpolation()V

    .line 173
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    array-length v0, v0

    new-array v0, v0, [D

    .line 174
    .local v0, "value":[D
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 175
    .local v1, "valueCoeff":D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 176
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    .line 177
    .local v4, "dividedDifference":[D
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1
    array-length v6, v0

    if-ge v5, v6, :cond_0

    .line 178
    aget-wide v6, v0, v5

    aget-wide v8, v4, v5

    mul-double/2addr v8, v1

    add-double/2addr v6, v8

    aput-wide v6, v0, v5

    .line 177
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 180
    .end local v5    # "k":I
    :cond_0
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    sub-double v5, p1, v5

    .line 181
    .local v5, "deltaX":D
    mul-double/2addr v1, v5

    .line 175
    .end local v4    # "dividedDifference":[D
    .end local v5    # "deltaX":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 184
    .end local v3    # "i":I
    :cond_1
    return-object v0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 8
    .param p1, "x"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->checkInterpolation()V

    .line 205
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    array-length v0, v0

    new-array v0, v0, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 206
    .local v0, "value":[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 207
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 208
    .local v1, "valueCoeff":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 209
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    .line 210
    .local v3, "dividedDifference":[D
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 211
    aget-object v5, v0, v4

    aget-wide v6, v3, v4

    invoke-virtual {v1, v6, v7}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v5

    aput-object v5, v0, v4

    .line 210
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 213
    .end local v4    # "k":I
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->subtract(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v4

    .line 214
    .local v4, "deltaX":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v1

    .line 208
    .end local v3    # "dividedDifference":[D
    .end local v4    # "deltaX":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method
