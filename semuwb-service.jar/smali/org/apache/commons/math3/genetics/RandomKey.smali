.class public abstract Lorg/apache/commons/math3/genetics/RandomKey;
.super Lorg/apache/commons/math3/genetics/AbstractListChromosome;
.source "RandomKey.java"

# interfaces
.implements Lorg/apache/commons/math3/genetics/PermutationChromosome;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/math3/genetics/AbstractListChromosome<",
        "Ljava/lang/Double;",
        ">;",
        "Lorg/apache/commons/math3/genetics/PermutationChromosome<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final baseSeqPermutation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final sortedRepresentation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/genetics/InvalidRepresentationException;
        }
    .end annotation

    .line 73
    .local p0, "this":Lorg/apache/commons/math3/genetics/RandomKey;, "Lorg/apache/commons/math3/genetics/RandomKey<TT;>;"
    .local p1, "representation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;-><init>(Ljava/util/List;)V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/RandomKey;->getRepresentation()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 76
    .local v0, "sortedRepr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 77
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/genetics/RandomKey;->sortedRepresentation:Ljava/util/List;

    .line 79
    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/RandomKey;->getLength()I

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/math3/genetics/RandomKey;->baseSequence(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/RandomKey;->getRepresentation()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/genetics/RandomKey;->sortedRepresentation:Ljava/util/List;

    invoke-static {v1, v2, v3}, Lorg/apache/commons/math3/genetics/RandomKey;->decodeGeneric(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/genetics/RandomKey;->baseSeqPermutation:Ljava/util/List;

    .line 82
    return-void
.end method

.method public constructor <init>([Ljava/lang/Double;)V
    .locals 1
    .param p1, "representation"    # [Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/genetics/InvalidRepresentationException;
        }
    .end annotation

    .line 91
    .local p0, "this":Lorg/apache/commons/math3/genetics/RandomKey;, "Lorg/apache/commons/math3/genetics/RandomKey<TT;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/genetics/RandomKey;-><init>(Ljava/util/List;)V

    .line 92
    return-void
.end method

.method private static baseSequence(I)Ljava/util/List;
    .locals 3
    .param p0, "l"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 294
    .local v0, "baseSequence":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 295
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static comparatorPermutation(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TS;>;",
            "Ljava/util/Comparator<",
            "TS;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 234
    .local p0, "data":Ljava/util/List;, "Ljava/util/List<TS;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TS;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 235
    .local v0, "sortedData":Ljava/util/List;, "Ljava/util/List<TS;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 237
    invoke-static {p0, v0}, Lorg/apache/commons/math3/genetics/RandomKey;->inducedPermutation(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static decodeGeneric(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TS;>;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/List<",
            "TS;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 117
    .local p0, "sequence":Ljava/util/List;, "Ljava/util/List<TS;>;"
    .local p1, "representation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .local p2, "sortedRepr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 120
    .local v0, "l":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 123
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 131
    .local v1, "reprCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    .local v2, "res":Ljava/util/List;, "Ljava/util/List<TS;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 133
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 134
    .local v4, "index":I
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 132
    .end local v4    # "index":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    .end local v3    # "i":I
    :cond_0
    return-object v2

    .line 124
    .end local v1    # "reprCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v2    # "res":Ljava/util/List;, "Ljava/util/List<TS;>;"
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 121
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method

.method public static final identityPermutation(I)Ljava/util/List;
    .locals 6
    .param p0, "l"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 213
    .local v0, "repr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 214
    int-to-double v2, v1

    int-to-double v4, p0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static inducedPermutation(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TS;>;",
            "Ljava/util/List<",
            "TS;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 261
    .local p0, "originalData":Ljava/util/List;, "Ljava/util/List<TS;>;"
    .local p1, "permutedData":Ljava/util/List;, "Ljava/util/List<TS;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 264
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 266
    .local v0, "l":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 268
    .local v1, "origDataCopy":Ljava/util/List;, "Ljava/util/List<TS;>;"
    new-array v2, v0, [Ljava/lang/Double;

    .line 269
    .local v2, "res":[Ljava/lang/Double;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 270
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 271
    .local v4, "index":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 274
    int-to-double v5, v3

    int-to-double v7, v0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v2, v4

    .line 275
    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 269
    .end local v4    # "index":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 272
    .restart local v4    # "index":I
    :cond_0
    new-instance v5, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIFFERENT_ORIG_AND_PERMUTED_DATA:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v5

    .line 277
    .end local v3    # "i":I
    .end local v4    # "index":I
    :cond_1
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 262
    .end local v0    # "l":I
    .end local v1    # "origDataCopy":Ljava/util/List;, "Ljava/util/List<TS;>;"
    .end local v2    # "res":[Ljava/lang/Double;
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public static final randomPermutation(I)Ljava/util/List;
    .locals 4
    .param p0, "l"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 198
    .local v0, "repr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 199
    invoke-static {}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected checkValidity(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/genetics/InvalidRepresentationException;
        }
    .end annotation

    .line 180
    .local p0, "this":Lorg/apache/commons/math3/genetics/RandomKey;, "Lorg/apache/commons/math3/genetics/RandomKey<TT;>;"
    .local p1, "chromosomeRepresentation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 181
    .local v1, "val":D
    const-wide/16 v3, 0x0

    cmpg-double v3, v1, v3

    if-ltz v3, :cond_0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v1, v3

    if-gtz v3, :cond_0

    .line 185
    .end local v1    # "val":D
    goto :goto_0

    .line 182
    .restart local v1    # "val":D
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/genetics/InvalidRepresentationException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_RANGE_SIMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/genetics/InvalidRepresentationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 186
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "val":D
    :cond_1
    return-void
.end method

.method public decode(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lorg/apache/commons/math3/genetics/RandomKey;, "Lorg/apache/commons/math3/genetics/RandomKey<TT;>;"
    .local p1, "sequence":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/RandomKey;->getRepresentation()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/genetics/RandomKey;->sortedRepresentation:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/math3/genetics/RandomKey;->decodeGeneric(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected isSame(Lorg/apache/commons/math3/genetics/Chromosome;)Z
    .locals 7
    .param p1, "another"    # Lorg/apache/commons/math3/genetics/Chromosome;

    .line 150
    .local p0, "this":Lorg/apache/commons/math3/genetics/RandomKey;, "Lorg/apache/commons/math3/genetics/RandomKey<TT;>;"
    instance-of v0, p1, Lorg/apache/commons/math3/genetics/RandomKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 151
    return v1

    .line 153
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/genetics/RandomKey;

    .line 155
    .local v0, "anotherRk":Lorg/apache/commons/math3/genetics/RandomKey;, "Lorg/apache/commons/math3/genetics/RandomKey<*>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/RandomKey;->getLength()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/commons/math3/genetics/RandomKey;->getLength()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 156
    return v1

    .line 161
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/math3/genetics/RandomKey;->baseSeqPermutation:Ljava/util/List;

    .line 162
    .local v2, "thisPerm":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, v0, Lorg/apache/commons/math3/genetics/RandomKey;->baseSeqPermutation:Ljava/util/List;

    .line 164
    .local v3, "anotherPerm":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/RandomKey;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 165
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq v5, v6, :cond_2

    .line 166
    return v1

    .line 164
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 170
    .end local v4    # "i":I
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 283
    .local p0, "this":Lorg/apache/commons/math3/genetics/RandomKey;, "Lorg/apache/commons/math3/genetics/RandomKey<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/RandomKey;->getFitness()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/genetics/RandomKey;->baseSeqPermutation:Ljava/util/List;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "(f=%s pi=(%s))"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
