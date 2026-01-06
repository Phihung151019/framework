.class public Lorg/apache/commons/math3/genetics/NPointCrossover;
.super Ljava/lang/Object;
.source "NPointCrossover.java"

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
.field private final crossoverPoints:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "crossoverPoints"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 66
    .local p0, "this":Lorg/apache/commons/math3/genetics/NPointCrossover;, "Lorg/apache/commons/math3/genetics/NPointCrossover<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-lez p1, :cond_0

    .line 70
    iput p1, p0, Lorg/apache/commons/math3/genetics/NPointCrossover;->crossoverPoints:I

    .line 71
    return-void

    .line 68
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method

.method private mate(Lorg/apache/commons/math3/genetics/AbstractListChromosome;Lorg/apache/commons/math3/genetics/AbstractListChromosome;)Lorg/apache/commons/math3/genetics/ChromosomePair;
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
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 129
    .local p0, "this":Lorg/apache/commons/math3/genetics/NPointCrossover;, "Lorg/apache/commons/math3/genetics/NPointCrossover<TT;>;"
    .local p1, "first":Lorg/apache/commons/math3/genetics/AbstractListChromosome;, "Lorg/apache/commons/math3/genetics/AbstractListChromosome<TT;>;"
    .local p2, "second":Lorg/apache/commons/math3/genetics/AbstractListChromosome;, "Lorg/apache/commons/math3/genetics/AbstractListChromosome<TT;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getLength()I

    move-result v1

    .line 130
    .local v1, "length":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getLength()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 133
    iget v2, v0, Lorg/apache/commons/math3/genetics/NPointCrossover;->crossoverPoints:I

    if-ge v2, v1, :cond_3

    .line 138
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v2

    .line 139
    .local v2, "parent1Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v3

    .line 141
    .local v3, "parent2Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    .local v4, "child1Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 144
    .local v5, "child2Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v6

    .line 146
    .local v6, "random":Lorg/apache/commons/math3/random/RandomGenerator;
    move-object v7, v4

    .line 147
    .local v7, "c1":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v8, v5

    .line 149
    .local v8, "c2":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget v9, v0, Lorg/apache/commons/math3/genetics/NPointCrossover;->crossoverPoints:I

    .line 150
    .local v9, "remainingPoints":I
    const/4 v10, 0x0

    .line 151
    .local v10, "lastIndex":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    iget v12, v0, Lorg/apache/commons/math3/genetics/NPointCrossover;->crossoverPoints:I

    if-ge v11, v12, :cond_1

    .line 153
    add-int/lit8 v12, v10, 0x1

    sub-int v13, v1, v10

    sub-int/2addr v13, v9

    invoke-interface {v6, v13}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v13

    add-int/2addr v12, v13

    .line 156
    .local v12, "crossoverIndex":I
    move v13, v10

    .local v13, "j":I
    :goto_1
    if-ge v13, v12, :cond_0

    .line 157
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 162
    .end local v13    # "j":I
    :cond_0
    move-object v13, v7

    .line 163
    .local v13, "tmp":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v7, v8

    .line 164
    move-object v8, v13

    .line 166
    move v10, v12

    .line 151
    .end local v12    # "crossoverIndex":I
    .end local v13    # "tmp":Ljava/util/List;, "Ljava/util/List<TT;>;"
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 170
    .end local v11    # "i":I
    :cond_1
    move v11, v10

    .local v11, "j":I
    :goto_2
    if-ge v11, v1, :cond_2

    .line 171
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 175
    .end local v11    # "j":I
    :cond_2
    new-instance v11, Lorg/apache/commons/math3/genetics/ChromosomePair;

    move-object/from16 v12, p1

    invoke-virtual {v12, v4}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->newFixedLengthChromosome(Ljava/util/List;)Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    move-result-object v13

    move-object/from16 v14, p2

    invoke-virtual {v14, v5}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->newFixedLengthChromosome(Ljava/util/List;)Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    move-result-object v15

    invoke-direct {v11, v13, v15}, Lorg/apache/commons/math3/genetics/ChromosomePair;-><init>(Lorg/apache/commons/math3/genetics/Chromosome;Lorg/apache/commons/math3/genetics/Chromosome;)V

    return-object v11

    .line 134
    .end local v2    # "parent1Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v3    # "parent2Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v4    # "child1Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v5    # "child2Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v6    # "random":Lorg/apache/commons/math3/random/RandomGenerator;
    .end local v7    # "c1":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v8    # "c2":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v9    # "remainingPoints":I
    .end local v10    # "lastIndex":I
    :cond_3
    move-object/from16 v12, p1

    move-object/from16 v14, p2

    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    iget v3, v0, Lorg/apache/commons/math3/genetics/NPointCrossover;->crossoverPoints:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2

    .line 131
    :cond_4
    move-object/from16 v12, p1

    move-object/from16 v14, p2

    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {v14}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getLength()I

    move-result v3

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
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

    .line 110
    .local p0, "this":Lorg/apache/commons/math3/genetics/NPointCrossover;, "Lorg/apache/commons/math3/genetics/NPointCrossover<TT;>;"
    instance-of v0, p1, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    if-eqz v0, :cond_0

    .line 113
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    move-object v1, p2

    check-cast v1, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/genetics/NPointCrossover;->mate(Lorg/apache/commons/math3/genetics/AbstractListChromosome;Lorg/apache/commons/math3/genetics/AbstractListChromosome;)Lorg/apache/commons/math3/genetics/ChromosomePair;

    move-result-object v0

    return-object v0

    .line 111
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_FIXED_LENGTH_CHROMOSOME:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getCrossoverPoints()I
    .locals 1

    .line 79
    .local p0, "this":Lorg/apache/commons/math3/genetics/NPointCrossover;, "Lorg/apache/commons/math3/genetics/NPointCrossover<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/genetics/NPointCrossover;->crossoverPoints:I

    return v0
.end method
