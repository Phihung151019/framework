.class public Lorg/apache/commons/math3/genetics/BinaryMutation;
.super Ljava/lang/Object;
.source "BinaryMutation.java"

# interfaces
.implements Lorg/apache/commons/math3/genetics/MutationPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mutate(Lorg/apache/commons/math3/genetics/Chromosome;)Lorg/apache/commons/math3/genetics/Chromosome;
    .locals 5
    .param p1, "original"    # Lorg/apache/commons/math3/genetics/Chromosome;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 40
    instance-of v0, p1, Lorg/apache/commons/math3/genetics/BinaryChromosome;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 44
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/genetics/BinaryChromosome;

    .line 45
    .local v0, "origChrom":Lorg/apache/commons/math3/genetics/BinaryChromosome;
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/apache/commons/math3/genetics/BinaryChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 48
    .local v2, "newRepr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/genetics/BinaryChromosome;->getLength()I

    move-result v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v3

    .line 50
    .local v3, "geneIndex":I
    invoke-virtual {v0}, Lorg/apache/commons/math3/genetics/BinaryChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/genetics/BinaryChromosome;->newFixedLengthChromosome(Ljava/util/List;)Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    move-result-object v1

    .line 53
    .local v1, "newChrom":Lorg/apache/commons/math3/genetics/Chromosome;
    return-object v1

    .line 41
    .end local v0    # "origChrom":Lorg/apache/commons/math3/genetics/BinaryChromosome;
    .end local v1    # "newChrom":Lorg/apache/commons/math3/genetics/Chromosome;
    .end local v2    # "newRepr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "geneIndex":I
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_BINARY_CHROMOSOME:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method
