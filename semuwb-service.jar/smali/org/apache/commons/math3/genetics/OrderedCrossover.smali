.class public Lorg/apache/commons/math3/genetics/OrderedCrossover;
.super Ljava/lang/Object;
.source "OrderedCrossover.java"

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    .local p0, "this":Lorg/apache/commons/math3/genetics/OrderedCrossover;, "Lorg/apache/commons/math3/genetics/OrderedCrossover<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 73
    .local p0, "this":Lorg/apache/commons/math3/genetics/OrderedCrossover;, "Lorg/apache/commons/math3/genetics/OrderedCrossover<TT;>;"
    instance-of v0, p1, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    if-eqz v0, :cond_0

    .line 76
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    move-object v1, p2

    check-cast v1, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/genetics/OrderedCrossover;->mate(Lorg/apache/commons/math3/genetics/AbstractListChromosome;Lorg/apache/commons/math3/genetics/AbstractListChromosome;)Lorg/apache/commons/math3/genetics/ChromosomePair;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_FIXED_LENGTH_CHROMOSOME:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method protected mate(Lorg/apache/commons/math3/genetics/AbstractListChromosome;Lorg/apache/commons/math3/genetics/AbstractListChromosome;)Lorg/apache/commons/math3/genetics/ChromosomePair;
    .locals 17
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

    .line 90
    .local p0, "this":Lorg/apache/commons/math3/genetics/OrderedCrossover;, "Lorg/apache/commons/math3/genetics/OrderedCrossover<TT;>;"
    .local p1, "first":Lorg/apache/commons/math3/genetics/AbstractListChromosome;, "Lorg/apache/commons/math3/genetics/AbstractListChromosome<TT;>;"
    .local p2, "second":Lorg/apache/commons/math3/genetics/AbstractListChromosome;, "Lorg/apache/commons/math3/genetics/AbstractListChromosome<TT;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getLength()I

    move-result v0

    .line 91
    .local v0, "length":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getLength()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 96
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v1

    .line 97
    .local v1, "parent1Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v2

    .line 99
    .local v2, "parent2Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    .local v3, "child1":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .local v4, "child2":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 103
    .local v5, "child1Set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 105
    .local v6, "child2Set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    invoke-static {}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v7

    .line 107
    .local v7, "random":Lorg/apache/commons/math3/random/RandomGenerator;
    invoke-interface {v7, v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v8

    .line 110
    .local v8, "a":I
    :goto_0
    invoke-interface {v7, v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v9

    .line 111
    .local v9, "b":I
    if-eq v8, v9, :cond_3

    .line 113
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    .line 114
    .local v10, "lb":I
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v11

    .line 117
    .local v11, "ub":I
    add-int/lit8 v12, v11, 0x1

    invoke-interface {v1, v10, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    invoke-interface {v5, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 119
    add-int/lit8 v12, v11, 0x1

    invoke-interface {v2, v10, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    invoke-interface {v6, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 123
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_1
    if-gt v12, v0, :cond_2

    .line 124
    add-int v13, v11, v12

    rem-int/2addr v13, v0

    .line 127
    .local v13, "idx":I
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 128
    .local v14, "item1":Ljava/lang/Object;, "TT;"
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 131
    .local v15, "item2":Ljava/lang/Object;, "TT;"
    invoke-interface {v5, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 132
    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-interface {v5, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_0
    invoke-interface {v6, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 138
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-interface {v6, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v13    # "idx":I
    .end local v14    # "item1":Ljava/lang/Object;, "TT;"
    .end local v15    # "item2":Ljava/lang/Object;, "TT;"
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 144
    .end local v12    # "i":I
    :cond_2
    invoke-static {v3, v10}, Ljava/util/Collections;->rotate(Ljava/util/List;I)V

    .line 145
    invoke-static {v4, v10}, Ljava/util/Collections;->rotate(Ljava/util/List;I)V

    .line 147
    new-instance v12, Lorg/apache/commons/math3/genetics/ChromosomePair;

    move-object/from16 v13, p1

    invoke-virtual {v13, v3}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->newFixedLengthChromosome(Ljava/util/List;)Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    move-result-object v14

    move-object/from16 v15, p2

    move-object/from16 v16, v1

    .end local v1    # "parent1Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local v16, "parent1Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {v15, v4}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->newFixedLengthChromosome(Ljava/util/List;)Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    move-result-object v1

    invoke-direct {v12, v14, v1}, Lorg/apache/commons/math3/genetics/ChromosomePair;-><init>(Lorg/apache/commons/math3/genetics/Chromosome;Lorg/apache/commons/math3/genetics/Chromosome;)V

    return-object v12

    .line 111
    .end local v10    # "lb":I
    .end local v11    # "ub":I
    .end local v16    # "parent1Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local v1    # "parent1Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_3
    move-object/from16 v13, p1

    move-object/from16 v15, p2

    move-object/from16 v16, v1

    .end local v1    # "parent1Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local v16    # "parent1Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    goto :goto_0

    .line 92
    .end local v2    # "parent2Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v3    # "child1":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v4    # "child2":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v5    # "child1Set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .end local v6    # "child2Set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .end local v7    # "random":Lorg/apache/commons/math3/random/RandomGenerator;
    .end local v8    # "a":I
    .end local v9    # "b":I
    .end local v16    # "parent1Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_4
    move-object/from16 v13, p1

    move-object/from16 v15, p2

    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {v15}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getLength()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method
