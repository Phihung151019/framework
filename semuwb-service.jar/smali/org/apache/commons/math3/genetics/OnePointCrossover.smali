.class public Lorg/apache/commons/math3/genetics/OnePointCrossover;
.super Ljava/lang/Object;
.source "OnePointCrossover.java"

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

    .line 51
    .local p0, "this":Lorg/apache/commons/math3/genetics/OnePointCrossover;, "Lorg/apache/commons/math3/genetics/OnePointCrossover<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private crossover(Lorg/apache/commons/math3/genetics/AbstractListChromosome;Lorg/apache/commons/math3/genetics/AbstractListChromosome;)Lorg/apache/commons/math3/genetics/ChromosomePair;
    .locals 9
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

    .line 98
    .local p0, "this":Lorg/apache/commons/math3/genetics/OnePointCrossover;, "Lorg/apache/commons/math3/genetics/OnePointCrossover<TT;>;"
    .local p1, "first":Lorg/apache/commons/math3/genetics/AbstractListChromosome;, "Lorg/apache/commons/math3/genetics/AbstractListChromosome<TT;>;"
    .local p2, "second":Lorg/apache/commons/math3/genetics/AbstractListChromosome;, "Lorg/apache/commons/math3/genetics/AbstractListChromosome<TT;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getLength()I

    move-result v0

    .line 99
    .local v0, "length":I
    invoke-virtual {p2}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getLength()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 104
    invoke-virtual {p1}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v1

    .line 105
    .local v1, "parent1Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p2}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v2

    .line 107
    .local v2, "parent2Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    .local v3, "child1Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 111
    .local v4, "child2Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v5

    add-int/lit8 v6, v0, -0x2

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 114
    .local v5, "crossoverIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_0

    .line 115
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 119
    .end local v6    # "i":I
    :cond_0
    move v6, v5

    .restart local v6    # "i":I
    :goto_1
    if-ge v6, v0, :cond_1

    .line 120
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 124
    .end local v6    # "i":I
    :cond_1
    new-instance v6, Lorg/apache/commons/math3/genetics/ChromosomePair;

    invoke-virtual {p1, v3}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->newFixedLengthChromosome(Ljava/util/List;)Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    move-result-object v7

    invoke-virtual {p2, v4}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->newFixedLengthChromosome(Ljava/util/List;)Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/math3/genetics/ChromosomePair;-><init>(Lorg/apache/commons/math3/genetics/Chromosome;Lorg/apache/commons/math3/genetics/Chromosome;)V

    return-object v6

    .line 100
    .end local v1    # "parent1Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v2    # "parent2Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v3    # "child1Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v4    # "child2Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v5    # "crossoverIndex":I
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p2}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getLength()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
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

    .line 81
    .local p0, "this":Lorg/apache/commons/math3/genetics/OnePointCrossover;, "Lorg/apache/commons/math3/genetics/OnePointCrossover<TT;>;"
    instance-of v0, p1, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    if-eqz v0, :cond_0

    .line 84
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    move-object v1, p2

    check-cast v1, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/genetics/OnePointCrossover;->crossover(Lorg/apache/commons/math3/genetics/AbstractListChromosome;Lorg/apache/commons/math3/genetics/AbstractListChromosome;)Lorg/apache/commons/math3/genetics/ChromosomePair;

    move-result-object v0

    return-object v0

    .line 82
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_FIXED_LENGTH_CHROMOSOME:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method
