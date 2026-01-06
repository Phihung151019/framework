.class public Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;
.super Ljava/lang/Object;
.source "FieldHermiteInterpolator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/FieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final abscissae:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final bottomDiagonal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[TT;>;"
        }
    .end annotation
.end field

.field private final topDiagonal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    .local p0, "this":Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;, "Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->abscissae:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->topDiagonal:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->bottomDiagonal:Ljava/util/List;

    .line 67
    return-void
.end method


# virtual methods
.method public varargs addSamplePoint(Lorg/apache/commons/math3/FieldElement;[[Lorg/apache/commons/math3/FieldElement;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ZeroException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 94
    .local p0, "this":Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;, "Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator<TT;>;"
    .local p1, "x":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .local p2, "value":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 95
    invoke-interface {p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    .line 96
    .local v0, "factorial":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_4

    .line 98
    aget-object v2, p2, v1

    invoke-virtual {v2}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/FieldElement;

    .line 99
    .local v2, "y":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    .line 100
    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    .line 101
    invoke-interface {v0}, Lorg/apache/commons/math3/FieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    .line 102
    .local v3, "inv":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_0

    .line 103
    aget-object v5, v2, v4

    invoke-interface {v5, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    aput-object v5, v2, v4

    .line 102
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 108
    .end local v3    # "inv":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v4    # "j":I
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 109
    .local v3, "n":I
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->bottomDiagonal:Ljava/util/List;

    sub-int v5, v3, v1

    invoke-interface {v4, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 110
    move-object v4, v2

    .line 111
    .local v4, "bottom0":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    move v5, v1

    .local v5, "j":I
    :goto_2
    if-ge v5, v3, :cond_3

    .line 112
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->bottomDiagonal:Ljava/util/List;

    add-int/lit8 v7, v5, 0x1

    sub-int v7, v3, v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/apache/commons/math3/FieldElement;

    .line 113
    .local v6, "bottom1":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget-object v7, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->abscissae:Ljava/util/List;

    add-int/lit8 v8, v5, 0x1

    sub-int v8, v3, v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 116
    iget-object v7, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->abscissae:Ljava/util/List;

    add-int/lit8 v8, v5, 0x1

    sub-int v8, v3, v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p1, v7}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {v7}, Lorg/apache/commons/math3/FieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/FieldElement;

    .line 117
    .local v7, "inv":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_3
    array-length v9, v2

    if-ge v8, v9, :cond_1

    .line 118
    aget-object v9, v4, v8

    aget-object v10, v6, v8

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v9}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/FieldElement;

    aput-object v9, v6, v8

    .line 117
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 120
    .end local v8    # "k":I
    :cond_1
    move-object v4, v6

    .line 111
    .end local v6    # "bottom1":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v7    # "inv":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 114
    .restart local v6    # "bottom1":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_2
    new-instance v7, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v8, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DUPLICATED_ABSCISSA_DIVISION_BY_ZERO:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v7

    .line 124
    .end local v5    # "j":I
    .end local v6    # "bottom1":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_3
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-virtual {v4}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v2    # "y":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v3    # "n":I
    .end local v4    # "bottom0":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 131
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method public derivatives(Lorg/apache/commons/math3/FieldElement;I)[[Lorg/apache/commons/math3/FieldElement;
    .locals 16
    .param p2, "order"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)[[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 173
    .local p0, "this":Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;, "Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator<TT;>;"
    .local p1, "x":Lorg/apache/commons/math3/FieldElement;, "TT;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 174
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 178
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    .line 179
    .local v2, "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    .line 180
    .local v3, "one":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/commons/math3/FieldElement;

    .line 181
    .local v4, "tj":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 182
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v1, :cond_0

    .line 183
    add-int/lit8 v7, v6, 0x1

    aget-object v8, v4, v6

    invoke-interface {v8, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/FieldElement;

    aput-object v8, v4, v7

    .line 182
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 186
    .end local v6    # "i":I
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    iget-object v8, v0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/apache/commons/math3/FieldElement;

    array-length v8, v8

    invoke-static {v6, v7, v8}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Lorg/apache/commons/math3/FieldElement;

    .line 188
    .local v6, "derivatives":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v7

    add-int/lit8 v8, v1, 0x1

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/apache/commons/math3/FieldElement;

    .line 189
    .local v7, "valueCoeff":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/FieldElement;

    aput-object v8, v7, v5

    .line 190
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v8, v0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 191
    iget-object v8, v0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/apache/commons/math3/FieldElement;

    .line 192
    .local v8, "dividedDifference":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget-object v9, v0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v10, p1

    invoke-interface {v10, v9}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/FieldElement;

    .line 193
    .local v9, "deltaX":Lorg/apache/commons/math3/FieldElement;, "TT;"
    move/from16 v11, p2

    .local v11, "j":I
    :goto_2
    if-ltz v11, :cond_3

    .line 194
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_3
    aget-object v13, v6, v11

    array-length v13, v13

    if-ge v12, v13, :cond_1

    .line 195
    aget-object v13, v6, v11

    aget-object v14, v6, v11

    aget-object v14, v14, v12

    aget-object v15, v8, v12

    aget-object v0, v7, v11

    invoke-interface {v15, v0}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v14, v0}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    aput-object v0, v13, v12

    .line 194
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto :goto_3

    .line 198
    .end local v12    # "k":I
    :cond_1
    aget-object v0, v7, v11

    invoke-interface {v0, v9}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    aput-object v0, v7, v11

    .line 199
    if-lez v11, :cond_2

    .line 200
    aget-object v0, v7, v11

    aget-object v12, v4, v11

    add-int/lit8 v13, v11, -0x1

    aget-object v13, v7, v13

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v0, v12}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    aput-object v0, v7, v11

    .line 193
    :cond_2
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    goto :goto_2

    .line 190
    .end local v8    # "dividedDifference":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v9    # "deltaX":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v11    # "j":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_1

    :cond_4
    move-object/from16 v10, p1

    .line 205
    .end local v5    # "i":I
    return-object v6

    .line 175
    .end local v2    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v3    # "one":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v4    # "tj":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v6    # "derivatives":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    .end local v7    # "valueCoeff":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_5
    move-object/from16 v10, p1

    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_INTERPOLATION_SAMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v0, v2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v0
.end method

.method public value(Lorg/apache/commons/math3/FieldElement;)[Lorg/apache/commons/math3/FieldElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 142
    .local p0, "this":Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;, "Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator<TT;>;"
    .local p1, "x":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    invoke-interface {p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->topDiagonal:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    .line 148
    .local v0, "value":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-interface {p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    .line 149
    .local v1, "valueCoeff":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 150
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/commons/math3/FieldElement;

    .line 151
    .local v3, "dividedDifference":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 152
    aget-object v5, v0, v4

    aget-object v6, v3, v4

    invoke-interface {v6, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    aput-object v5, v0, v4

    .line 151
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 154
    .end local v4    # "k":I
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    .line 155
    .local v4, "deltaX":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-interface {v1, v4}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    .line 149
    .end local v3    # "dividedDifference":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v4    # "deltaX":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    .end local v2    # "i":I
    :cond_1
    return-object v0

    .line 144
    .end local v0    # "value":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v1    # "valueCoeff":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_INTERPOLATION_SAMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v0
.end method
