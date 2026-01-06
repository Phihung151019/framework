.class public Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "EnumeratedRealDistribution.java"


# static fields
.field private static final serialVersionUID:J = 0x1332a04L


# instance fields
.field protected final innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/distribution/EnumeratedDistribution<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;[D)V
    .locals 11
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "data"    # [D

    .line 115
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 117
    .local v0, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Double;Ljava/lang/Integer;>;"
    move-object v1, p2

    .local v1, "arr$":[D
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-wide v4, v1, v3

    .line 118
    .local v4, "value":D
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 119
    .local v6, "count":Ljava/lang/Integer;
    if-nez v6, :cond_0

    .line 120
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 122
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v6, v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .end local v4    # "value":D
    .end local v6    # "count":Ljava/lang/Integer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 124
    .end local v1    # "arr$":[D
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    .line 125
    .local v1, "massPoints":I
    array-length v2, p2

    int-to-double v2, v2

    .line 126
    .local v2, "denom":D
    new-array v4, v1, [D

    .line 127
    .local v4, "values":[D
    new-array v5, v1, [D

    .line 128
    .local v5, "probabilities":[D
    const/4 v6, 0x0

    .line 129
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

    .line 130
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    aput-wide v9, v4, v6

    .line 131
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-double v9, v9

    div-double/2addr v9, v2

    aput-wide v9, v5, v6

    .line 132
    nop

    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Integer;>;"
    add-int/lit8 v6, v6, 0x1

    .line 133
    goto :goto_1

    .line 134
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_2
    new-instance v7, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-static {v4, v5}, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;->createDistribution([D[D)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;Ljava/util/List;)V

    iput-object v7, p0, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    .line 135
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;[D[D)V
    .locals 2
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "singletons"    # [D
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

    .line 100
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 102
    new-instance v0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-static {p2, p3}, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;->createDistribution([D[D)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;Ljava/util/List;)V

    iput-object v0, p0, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    .line 104
    return-void
.end method

.method public constructor <init>([D)V
    .locals 1
    .param p1, "data"    # [D

    .line 146
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;[D)V

    .line 147
    return-void
.end method

.method public constructor <init>([D[D)V
    .locals 1
    .param p1, "singletons"    # [D
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

    .line 79
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;[D[D)V

    .line 80
    return-void
.end method

.method private static createDistribution([D[D)Ljava/util/List;
    .locals 6
    .param p0, "singletons"    # [D
    .param p1, "probabilities"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D[D)",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/util/Pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    .line 156
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    .local v0, "samples":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 163
    new-instance v2, Lorg/apache/commons/math3/util/Pair;

    aget-wide v3, p0, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aget-wide v4, p1, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 157
    .end local v0    # "samples":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;>;"
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    array-length v2, p0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 6
    .param p1, "x"    # D

    .line 194
    const-wide/16 v0, 0x0

    .line 196
    .local v0, "probability":D
    iget-object v2, p0, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

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

    .line 197
    .local v3, "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpg-double v4, v4, p1

    if-gtz v4, :cond_0

    .line 198
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    add-double/2addr v0, v4

    .line 200
    .end local v3    # "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    :cond_0
    goto :goto_0

    .line 202
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-wide v0
.end method

.method public density(D)D
    .locals 2
    .param p1, "x"    # D

    .line 187
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;->probability(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 8

    .line 238
    const-wide/16 v0, 0x0

    .line 240
    .local v0, "mean":D
    iget-object v2, p0, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

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

    .line 241
    .local v3, "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    .line 242
    .end local v3    # "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    goto :goto_0

    .line 244
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 10

    .line 253
    const-wide/16 v0, 0x0

    .line 254
    .local v0, "mean":D
    const-wide/16 v2, 0x0

    .line 256
    .local v2, "meanOfSquares":D
    iget-object v4, p0, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

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

    .line 257
    .local v5, "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    invoke-virtual {v5}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v0, v6

    .line 258
    invoke-virtual {v5}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-virtual {v5}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 259
    .end local v5    # "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    goto :goto_0

    .line 261
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    mul-double v4, v0, v0

    sub-double v4, v2, v4

    return-wide v4
.end method

.method public getSupportLowerBound()D
    .locals 8

    .line 272
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 273
    .local v0, "min":D
    iget-object v2, p0, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

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

    .line 274
    .local v3, "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpg-double v4, v4, v0

    if-gez v4, :cond_0

    invoke-virtual {v3}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 275
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 277
    .end local v3    # "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    :cond_0
    goto :goto_0

    .line 279
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 8

    .line 290
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 291
    .local v0, "max":D
    iget-object v2, p0, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

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

    .line 292
    .local v3, "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v4, v4, v0

    if-lez v4, :cond_0

    invoke-virtual {v3}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 293
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 295
    .end local v3    # "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    :cond_0
    goto :goto_0

    .line 297
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-wide v0
.end method

.method public inverseCumulativeProbability(D)D
    .locals 10
    .param p1, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 210
    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v2

    if-gtz v2, :cond_3

    .line 214
    const-wide/16 v2, 0x0

    .line 215
    .local v2, "probability":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;->getSupportLowerBound()D

    move-result-wide v4

    .line 216
    .local v4, "x":D
    iget-object v6, p0, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-virtual {v6}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->getPmf()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/util/Pair;

    .line 217
    .local v7, "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    invoke-virtual {v7}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    cmpl-double v8, v8, v0

    if-nez v8, :cond_0

    .line 218
    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {v7}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    add-double/2addr v2, v8

    .line 222
    invoke-virtual {v7}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 224
    cmpl-double v8, v2, p1

    if-ltz v8, :cond_1

    .line 225
    goto :goto_1

    .line 227
    .end local v7    # "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    :cond_1
    goto :goto_0

    .line 229
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    return-wide v4

    .line 211
    .end local v2    # "probability":D
    .end local v4    # "x":D
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public isSupportConnected()Z
    .locals 1

    .line 330
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 1

    .line 308
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    .line 319
    const/4 v0, 0x1

    return v0
.end method

.method public probability(D)D
    .locals 2
    .param p1, "x"    # D

    .line 174
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probability(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public sample()D
    .locals 2

    .line 338
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->sample()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method
