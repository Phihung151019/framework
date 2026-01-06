.class public Lorg/apache/commons/math3/genetics/RandomKeyMutation;
.super Ljava/lang/Object;
.source "RandomKeyMutation.java"

# interfaces
.implements Lorg/apache/commons/math3/genetics/MutationPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mutate(Lorg/apache/commons/math3/genetics/Chromosome;)Lorg/apache/commons/math3/genetics/Chromosome;
    .locals 6
    .param p1, "original"    # Lorg/apache/commons/math3/genetics/Chromosome;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 39
    instance-of v0, p1, Lorg/apache/commons/math3/genetics/RandomKey;

    if-eqz v0, :cond_0

    .line 44
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/genetics/RandomKey;

    .line 45
    .local v0, "originalRk":Lorg/apache/commons/math3/genetics/RandomKey;, "Lorg/apache/commons/math3/genetics/RandomKey<*>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/genetics/RandomKey;->getRepresentation()Ljava/util/List;

    move-result-object v1

    .line 46
    .local v1, "repr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-static {}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v2

    .line 48
    .local v2, "rInd":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 49
    .local v3, "newRepr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-static {}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/genetics/RandomKey;->newFixedLengthChromosome(Ljava/util/List;)Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    move-result-object v4

    return-object v4

    .line 40
    .end local v0    # "originalRk":Lorg/apache/commons/math3/genetics/RandomKey;, "Lorg/apache/commons/math3/genetics/RandomKey<*>;"
    .end local v1    # "repr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v2    # "rInd":I
    .end local v3    # "newRepr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->RANDOMKEY_MUTATION_WRONG_CLASS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method
