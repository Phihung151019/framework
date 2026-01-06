.class public Lorg/apache/commons/math3/genetics/CycleCrossover;
.super Ljava/lang/Object;
.source "CycleCrossover.java"

# interfaces
.implements Lorg/apache/commons/math3/genetics/CrossoverPolicy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/genetics/CrossoverPolicy;"
    }
.end annotation


# instance fields
.field private final randomStart:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 74
    .local p0, "this":Lorg/apache/commons/math3/genetics/CycleCrossover;, "Lorg/apache/commons/math3/genetics/CycleCrossover<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/genetics/CycleCrossover;-><init>(Z)V

    .line 75
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "randomStart"    # Z

    .line 82
    .local p0, "this":Lorg/apache/commons/math3/genetics/CycleCrossover;, "Lorg/apache/commons/math3/genetics/CycleCrossover<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean p1, p0, Lorg/apache/commons/math3/genetics/CycleCrossover;->randomStart:Z

    .line 84
    return-void
.end method


# virtual methods
.method public crossover(Lorg/apache/commons/math3/genetics/Chromosome;Lorg/apache/commons/math3/genetics/Chromosome;)Lorg/apache/commons/math3/genetics/ChromosomePair;
    .locals 3
    .param p1, "first"    # Lorg/apache/commons/math3/genetics/Chromosome;
    .param p2, "second"    # Lorg/apache/commons/math3/genetics/Chromosome;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 105
    .local p0, "this":Lorg/apache/commons/math3/genetics/CycleCrossover;, "Lorg/apache/commons/math3/genetics/CycleCrossover<TT;>;"
    instance-of v0, p1, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    if-eqz v0, :cond_0

    .line 108
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    move-object v1, p2

    check-cast v1, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/genetics/CycleCrossover;->mate(Lorg/apache/commons/math3/genetics/AbstractListChromosome;Lorg/apache/commons/math3/genetics/AbstractListChromosome;)Lorg/apache/commons/math3/genetics/ChromosomePair;

    move-result-object v0

    return-object v0

    .line 106
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_FIXED_LENGTH_CHROMOSOME:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public isRandomStart()Z
    .locals 1

    .line 92
    .local p0, "this":Lorg/apache/commons/math3/genetics/CycleCrossover;, "Lorg/apache/commons/math3/genetics/CycleCrossover<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/math3/genetics/CycleCrossover;->randomStart:Z

    return v0
.end method

.method protected mate(Lorg/apache/commons/math3/genetics/AbstractListChromosome;Lorg/apache/commons/math3/genetics/AbstractListChromosome;)Lorg/apache/commons/math3/genetics/ChromosomePair;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/genetics/AbstractListChromosome<",
            "TT;>;",
            "Lorg/apache/commons/math3/genetics/AbstractListChromosome<",
            "TT;>;)",
            "Lorg/apache/commons/math3/genetics/ChromosomePair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 122
    .local p0, "this":Lorg/apache/commons/math3/genetics/CycleCrossover;, "Lorg/apache/commons/math3/genetics/CycleCrossover<TT;>;"
    .local p1, "first":Lorg/apache/commons/math3/genetics/AbstractListChromosome;, "Lorg/apache/commons/math3/genetics/AbstractListChromosome<TT;>;"
    .local p2, "second":Lorg/apache/commons/math3/genetics/AbstractListChromosome;, "Lorg/apache/commons/math3/genetics/AbstractListChromosome<TT;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getLength()I

    move-result v0

    .line 123
    .local v0, "length":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getLength()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 128
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v1

    .line 129
    .local v1, "parent1Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v2

    .line 131
    .local v2, "parent2Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 132
    .local v3, "child1Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 135
    .local v4, "child2Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 137
    .local v5, "visitedIndices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    .local v6, "indices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v7, p0

    iget-boolean v8, v7, Lorg/apache/commons/math3/genetics/CycleCrossover;->randomStart:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    invoke-static {}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v8

    invoke-interface {v8, v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v8

    goto :goto_0

    :cond_0
    move v8, v9

    .line 141
    .local v8, "idx":I
    :goto_0
    const/4 v10, 0x1

    .line 143
    .local v10, "cycle":I
    :goto_1
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v11

    if-ge v11, v0, :cond_5

    .line 144
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 147
    .local v11, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {v1, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 149
    :goto_2
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eq v8, v12, :cond_1

    .line 151
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 155
    invoke-interface {v1, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    goto :goto_2

    .line 159
    :cond_1
    add-int/lit8 v12, v10, 0x1

    .end local v10    # "cycle":I
    .local v12, "cycle":I
    rem-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_2

    .line 160
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 161
    .local v13, "i":I
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 162
    .local v14, "tmp":Ljava/lang/Object;, "TT;"
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v3, v13, v15}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-interface {v4, v13, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 164
    .end local v13    # "i":I
    .end local v14    # "tmp":Ljava/lang/Object;, "TT;"
    goto :goto_3

    .line 167
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 169
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    rem-int/2addr v10, v0

    move v8, v10

    .line 170
    :cond_3
    :goto_4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v10

    if-ge v10, v0, :cond_4

    .line 171
    add-int/lit8 v8, v8, 0x1

    .line 172
    if-lt v8, v0, :cond_3

    .line 173
    const/4 v8, 0x0

    goto :goto_4

    .line 176
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 177
    .end local v11    # "item":Ljava/lang/Object;, "TT;"
    move v10, v12

    goto/16 :goto_1

    .line 179
    .end local v12    # "cycle":I
    .local v10, "cycle":I
    :cond_5
    new-instance v9, Lorg/apache/commons/math3/genetics/ChromosomePair;

    move-object/from16 v11, p1

    invoke-virtual {v11, v3}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->newFixedLengthChromosome(Ljava/util/List;)Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    move-result-object v12

    move-object/from16 v13, p2

    invoke-virtual {v13, v4}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->newFixedLengthChromosome(Ljava/util/List;)Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    move-result-object v14

    invoke-direct {v9, v12, v14}, Lorg/apache/commons/math3/genetics/ChromosomePair;-><init>(Lorg/apache/commons/math3/genetics/Chromosome;Lorg/apache/commons/math3/genetics/Chromosome;)V

    return-object v9

    .line 124
    .end local v1    # "parent1Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v2    # "parent2Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v3    # "child1Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v4    # "child2Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v5    # "visitedIndices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v6    # "indices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "idx":I
    .end local v10    # "cycle":I
    :cond_6
    move-object/from16 v7, p0

    move-object/from16 v11, p1

    move-object/from16 v13, p2

    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {v13}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getLength()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method
