.class public Lorg/apache/commons/math3/distribution/EnumeratedDistribution;
.super Ljava/lang/Object;
.source "EnumeratedDistribution.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1330eacL


# instance fields
.field private final cumulativeProbabilities:[D

.field private final probabilities:[D

.field protected final random:Lorg/apache/commons/math3/random/RandomGenerator;

.field private final singletons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/util/Pair<",
            "TT;",
            "Ljava/lang/Double;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NotANumberException;
        }
    .end annotation

    .line 101
    .local p0, "this":Lorg/apache/commons/math3/distribution/EnumeratedDistribution;, "Lorg/apache/commons/math3/distribution/EnumeratedDistribution<TT;>;"
    .local p1, "pmf":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<TT;Ljava/lang/Double;>;>;"
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;Ljava/util/List;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;Ljava/util/List;)V
    .locals 8
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/random/RandomGenerator;",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/util/Pair<",
            "TT;",
            "Ljava/lang/Double;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NotANumberException;
        }
    .end annotation

    .line 117
    .local p0, "this":Lorg/apache/commons/math3/distribution/EnumeratedDistribution;, "Lorg/apache/commons/math3/distribution/EnumeratedDistribution<TT;>;"
    .local p2, "pmf":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<TT;Ljava/lang/Double;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->singletons:Ljava/util/List;

    .line 121
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [D

    .line 123
    .local v0, "probs":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 124
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/util/Pair;

    .line 125
    .local v2, "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<TT;Ljava/lang/Double;>;"
    iget-object v3, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->singletons:Ljava/util/List;

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 127
    .local v3, "p":D
    const-wide/16 v5, 0x0

    cmpg-double v5, v3, v5

    if-ltz v5, :cond_2

    .line 130
    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-nez v5, :cond_1

    .line 133
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_0

    .line 136
    aput-wide v3, v0, v1

    .line 123
    .end local v2    # "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<TT;Ljava/lang/Double;>;"
    .end local v3    # "p":D
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    .restart local v2    # "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<TT;Ljava/lang/Double;>;"
    .restart local v3    # "p":D
    :cond_0
    new-instance v5, Lorg/apache/commons/math3/exception/NotANumberException;

    invoke-direct {v5}, Lorg/apache/commons/math3/exception/NotANumberException;-><init>()V

    throw v5

    .line 131
    :cond_1
    new-instance v5, Lorg/apache/commons/math3/exception/NotFiniteNumberException;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/exception/NotFiniteNumberException;-><init>(Ljava/lang/Number;[Ljava/lang/Object;)V

    throw v5

    .line 128
    :cond_2
    new-instance v5, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-direct {v5, v6}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v5

    .line 139
    .end local v1    # "i":I
    .end local v2    # "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<TT;Ljava/lang/Double;>;"
    .end local v3    # "p":D
    :cond_3
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->normalizeArray([DD)[D

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probabilities:[D

    .line 141
    iget-object v1, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probabilities:[D

    array-length v1, v1

    new-array v1, v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->cumulativeProbabilities:[D

    .line 142
    const-wide/16 v1, 0x0

    .line 143
    .local v1, "sum":D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probabilities:[D

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 144
    iget-object v4, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probabilities:[D

    aget-wide v4, v4, v3

    add-double/2addr v1, v4

    .line 145
    iget-object v4, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->cumulativeProbabilities:[D

    aput-wide v1, v4, v3

    .line 143
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 147
    .end local v3    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method public getPmf()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/util/Pair<",
            "TT;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    .line 194
    .local p0, "this":Lorg/apache/commons/math3/distribution/EnumeratedDistribution;, "Lorg/apache/commons/math3/distribution/EnumeratedDistribution<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probabilities:[D

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 196
    .local v0, "samples":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<TT;Ljava/lang/Double;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probabilities:[D

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 197
    new-instance v2, Lorg/apache/commons/math3/util/Pair;

    iget-object v3, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->singletons:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probabilities:[D

    aget-wide v4, v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method probability(Ljava/lang/Object;)D
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)D"
        }
    .end annotation

    .line 171
    .local p0, "this":Lorg/apache/commons/math3/distribution/EnumeratedDistribution;, "Lorg/apache/commons/math3/distribution/EnumeratedDistribution<TT;>;"
    .local p1, "x":Ljava/lang/Object;, "TT;"
    const-wide/16 v0, 0x0

    .line 173
    .local v0, "probability":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probabilities:[D

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 174
    if-nez p1, :cond_0

    iget-object v3, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->singletons:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v3, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->singletons:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 176
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probabilities:[D

    aget-wide v3, v3, v2

    add-double/2addr v0, v3

    .line 173
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    .end local v2    # "i":I
    :cond_3
    return-wide v0
.end method

.method public reseedRandomGenerator(J)V
    .locals 1
    .param p1, "seed"    # J

    .line 155
    .local p0, "this":Lorg/apache/commons/math3/distribution/EnumeratedDistribution;, "Lorg/apache/commons/math3/distribution/EnumeratedDistribution<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomGenerator;->setSeed(J)V

    .line 156
    return-void
.end method

.method public sample()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 209
    .local p0, "this":Lorg/apache/commons/math3/distribution/EnumeratedDistribution;, "Lorg/apache/commons/math3/distribution/EnumeratedDistribution<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v0

    .line 211
    .local v0, "randomValue":D
    iget-object v2, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->cumulativeProbabilities:[D

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v2

    .line 212
    .local v2, "index":I
    if-gez v2, :cond_0

    .line 213
    neg-int v3, v2

    add-int/lit8 v2, v3, -0x1

    .line 216
    :cond_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probabilities:[D

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->cumulativeProbabilities:[D

    aget-wide v3, v3, v2

    cmpg-double v3, v0, v3

    if-gez v3, :cond_1

    .line 219
    iget-object v3, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->singletons:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 225
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->singletons:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->singletons:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public sample(I)[Ljava/lang/Object;
    .locals 3
    .param p1, "sampleSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 237
    .local p0, "this":Lorg/apache/commons/math3/distribution/EnumeratedDistribution;, "Lorg/apache/commons/math3/distribution/EnumeratedDistribution<TT;>;"
    if-lez p1, :cond_1

    .line 242
    new-array v0, p1, [Ljava/lang/Object;

    .line 244
    .local v0, "out":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 245
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->sample()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 238
    .end local v0    # "out":[Ljava/lang/Object;
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_SAMPLES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method public sample(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p1, "sampleSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TT;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 266
    .local p0, "this":Lorg/apache/commons/math3/distribution/EnumeratedDistribution;, "Lorg/apache/commons/math3/distribution/EnumeratedDistribution<TT;>;"
    .local p2, "array":[Ljava/lang/Object;, "[TT;"
    if-lez p1, :cond_3

    .line 270
    if-eqz p2, :cond_2

    .line 275
    array-length v0, p2

    if-ge v0, p1, :cond_0

    .line 277
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 278
    .local v0, "unchecked":[Ljava/lang/Object;, "[TT;"
    nop

    .line 279
    .local v0, "out":[Ljava/lang/Object;, "[TT;"
    goto :goto_0

    .line 280
    .end local v0    # "out":[Ljava/lang/Object;, "[TT;"
    :cond_0
    move-object v0, p2

    .line 283
    .restart local v0    # "out":[Ljava/lang/Object;, "[TT;"
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_1

    .line 284
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->sample()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 287
    .end local v1    # "i":I
    :cond_1
    return-object v0

    .line 271
    .end local v0    # "out":[Ljava/lang/Object;, "[TT;"
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 267
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_SAMPLES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method
