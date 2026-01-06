.class public Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;
.source "EnumeratedIntegerDistribution.java"


# static fields
.field private static final serialVersionUID:J = 0x1332a04L


# instance fields
.field protected final innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/distribution/EnumeratedDistribution<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;[I)V
    .locals 11
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "data"    # [I

    .line 113
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 115
    .local v0, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object v1, p2

    .local v1, "arr$":[I
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 116
    .local v4, "value":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 117
    .local v5, "count":Ljava/lang/Integer;
    if-nez v5, :cond_0

    .line 118
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 120
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v5, v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .end local v4    # "value":I
    .end local v5    # "count":Ljava/lang/Integer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    .end local v1    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    .line 123
    .local v1, "massPoints":I
    array-length v2, p2

    int-to-double v2, v2

    .line 124
    .local v2, "denom":D
    new-array v4, v1, [I

    .line 125
    .local v4, "values":[I
    new-array v5, v1, [D

    .line 126
    .local v5, "probabilities":[D
    const/4 v6, 0x0

    .line 127
    .local v6, "index":I
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 128
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v4, v6

    .line 129
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-double v9, v9

    div-double/2addr v9, v2

    aput-wide v9, v5, v6

    .line 130
    nop

    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    add-int/lit8 v6, v6, 0x1

    .line 131
    goto :goto_1

    .line 132
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_2
    new-instance v7, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-static {v4, v5}, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;->createDistribution([I[D)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;Ljava/util/List;)V

    iput-object v7, p0, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    .line 133
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;[I[D)V
    .locals 2
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "singletons"    # [I
    .param p3, "probabilities"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NotANumberException;
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 100
    new-instance v0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-static {p2, p3}, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;->createDistribution([I[D)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;Ljava/util/List;)V

    iput-object v0, p0, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    .line 102
    return-void
.end method

.method public constructor <init>([I)V
    .locals 1
    .param p1, "data"    # [I

    .line 144
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;[I)V

    .line 145
    return-void
.end method

.method public constructor <init>([I[D)V
    .locals 1
    .param p1, "singletons"    # [I
    .param p2, "probabilities"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NotANumberException;
        }
    .end annotation

    .line 78
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;[I[D)V

    .line 79
    return-void
.end method

.method private static createDistribution([I[D)Ljava/util/List;
    .locals 6
    .param p0, "singletons"    # [I
    .param p1, "probabilities"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[D)",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    .line 155
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 161
    .local v0, "samples":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 162
    new-instance v2, Lorg/apache/commons/math3/util/Pair;

    aget v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-wide v4, p1, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 156
    .end local v0    # "samples":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;>;"
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    array-length v2, p0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method


# virtual methods
.method public cumulativeProbability(I)D
    .locals 6
    .param p1, "x"    # I

    .line 179
    const-wide/16 v0, 0x0

    .line 181
    .local v0, "probability":D
    iget-object v2, p0, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-virtual {v2}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->getPmf()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/util/Pair;

    .line 182
    .local v3, "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, p1, :cond_0

    .line 183
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    add-double/2addr v0, v4

    .line 185
    .end local v3    # "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;"
    :cond_0
    goto :goto_0

    .line 187
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 8

    .line 196
    const-wide/16 v0, 0x0

    .line 198
    .local v0, "mean":D
    iget-object v2, p0, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-virtual {v2}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->getPmf()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/util/Pair;

    .line 199
    .local v3, "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    .line 200
    .end local v3    # "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;"
    goto :goto_0

    .line 202
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 10

    .line 211
    const-wide/16 v0, 0x0

    .line 212
    .local v0, "mean":D
    const-wide/16 v2, 0x0

    .line 214
    .local v2, "meanOfSquares":D
    iget-object v4, p0, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-virtual {v4}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->getPmf()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/util/Pair;

    .line 215
    .local v5, "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-virtual {v5}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v0, v6

    .line 216
    invoke-virtual {v5}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v6, v8

    invoke-virtual {v5}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 217
    .end local v5    # "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;"
    goto :goto_0

    .line 219
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    mul-double v4, v0, v0

    sub-double v4, v2, v4

    return-wide v4
.end method

.method public getSupportLowerBound()I
    .locals 7

    .line 230
    const v0, 0x7fffffff

    .line 231
    .local v0, "min":I
    iget-object v1, p0, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-virtual {v1}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->getPmf()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/util/Pair;

    .line 232
    .local v2, "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v3, v0, :cond_0

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    .line 233
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 235
    .end local v2    # "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;"
    :cond_0
    goto :goto_0

    .line 237
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return v0
.end method

.method public getSupportUpperBound()I
    .locals 7

    .line 248
    const/high16 v0, -0x80000000

    .line 249
    .local v0, "max":I
    iget-object v1, p0, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-virtual {v1}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->getPmf()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/util/Pair;

    .line 250
    .local v2, "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v0, :cond_0

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    .line 251
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 253
    .end local v2    # "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;"
    :cond_0
    goto :goto_0

    .line 255
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return v0
.end method

.method public isSupportConnected()Z
    .locals 1

    .line 266
    const/4 v0, 0x1

    return v0
.end method

.method public probability(I)D
    .locals 2
    .param p1, "x"    # I

    .line 172
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probability(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public sample()I
    .locals 1

    .line 274
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->sample()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
