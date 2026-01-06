.class public Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;
.super Ljava/lang/Object;
.source "KohonenUpdateAction.java"

# interfaces
.implements Lorg/apache/commons/math3/ml/neuralnet/UpdateAction;


# instance fields
.field private final distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

.field private final learningFactor:Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;

.field private final neighbourhoodSize:Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunction;

.field private final numberOfCalls:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ml/distance/DistanceMeasure;Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunction;)V
    .locals 3
    .param p1, "distance"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;
    .param p2, "learningFactor"    # Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;
    .param p3, "neighbourhoodSize"    # Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunction;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->numberOfCalls:Ljava/util/concurrent/atomic/AtomicLong;

    .line 87
    iput-object p1, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .line 88
    iput-object p2, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->learningFactor:Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;

    .line 89
    iput-object p3, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->neighbourhoodSize:Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunction;

    .line 90
    return-void
.end method

.method private attemptNeuronUpdate(Lorg/apache/commons/math3/ml/neuralnet/Neuron;[DD)Z
    .locals 3
    .param p1, "n"    # Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .param p2, "features"    # [D
    .param p3, "learningRate"    # D

    .line 159
    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v0

    .line 160
    .local v0, "expect":[D
    invoke-direct {p0, v0, p2, p3, p4}, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->computeFeatures([D[DD)[D

    move-result-object v1

    .line 164
    .local v1, "update":[D
    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->compareAndSetFeatures([D[D)Z

    move-result v2

    return v2
.end method

.method private computeFeatures([D[DD)[D
    .locals 3
    .param p1, "current"    # [D
    .param p2, "sample"    # [D
    .param p3, "learningRate"    # D

    .line 220
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    .line 221
    .local v0, "c":Lorg/apache/commons/math3/linear/ArrayRealVector;
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, p2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    .line 223
    .local v2, "s":Lorg/apache/commons/math3/linear/ArrayRealVector;
    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->mapMultiplyToSelf(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/linear/RealVector;->add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v1

    return-object v1
.end method

.method private findAndUpdateBestNeuron(Lorg/apache/commons/math3/ml/neuralnet/Network;[DD)Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .locals 2
    .param p1, "net"    # Lorg/apache/commons/math3/ml/neuralnet/Network;
    .param p2, "features"    # [D
    .param p3, "learningRate"    # D

    .line 197
    nop

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-static {p2, p1, v0}, Lorg/apache/commons/math3/ml/neuralnet/MapUtils;->findBest([DLjava/lang/Iterable;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v0

    .line 199
    .local v0, "best":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-direct {p0, v0, p2, p3, p4}, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->attemptNeuronUpdate(Lorg/apache/commons/math3/ml/neuralnet/Neuron;[DD)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    return-object v0

    .line 206
    .end local v0    # "best":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    :cond_0
    goto :goto_0
.end method

.method private updateNeighbouringNeuron(Lorg/apache/commons/math3/ml/neuralnet/Neuron;[DD)V
    .locals 1
    .param p1, "n"    # Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .param p2, "features"    # [D
    .param p3, "learningRate"    # D

    .line 178
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->attemptNeuronUpdate(Lorg/apache/commons/math3/ml/neuralnet/Neuron;[DD)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    nop

    .line 182
    return-void
.end method


# virtual methods
.method public getNumberOfCalls()J
    .locals 2

    .line 144
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->numberOfCalls:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public update(Lorg/apache/commons/math3/ml/neuralnet/Network;[D)V
    .locals 17
    .param p1, "net"    # Lorg/apache/commons/math3/ml/neuralnet/Network;
    .param p2, "features"    # [D

    .line 97
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->numberOfCalls:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    .line 98
    .local v3, "numCalls":J
    iget-object v5, v0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->learningFactor:Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;

    invoke-interface {v5, v3, v4}, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;->value(J)D

    move-result-wide v7

    .line 99
    .local v7, "currentLearning":D
    invoke-direct {v0, v1, v2, v7, v8}, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->findAndUpdateBestNeuron(Lorg/apache/commons/math3/ml/neuralnet/Network;[DD)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v5

    .line 103
    .local v5, "best":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    iget-object v6, v0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->neighbourhoodSize:Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunction;

    invoke-interface {v6, v3, v4}, Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunction;->value(J)I

    move-result v13

    .line 106
    .local v13, "currentNeighbourhood":I
    new-instance v6, Lorg/apache/commons/math3/analysis/function/Gaussian;

    const-wide/16 v9, 0x0

    int-to-double v11, v13

    invoke-direct/range {v6 .. v12}, Lorg/apache/commons/math3/analysis/function/Gaussian;-><init>(DDD)V

    .line 111
    .local v6, "neighbourhoodDecay":Lorg/apache/commons/math3/analysis/function/Gaussian;
    if-lez v13, :cond_2

    .line 113
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 114
    .local v9, "neighbours":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    invoke-interface {v9, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 117
    .local v10, "exclude":Ljava/util/HashSet;, "Ljava/util/HashSet<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    invoke-virtual {v10, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 119
    const/4 v11, 0x1

    .line 122
    .local v11, "radius":I
    :goto_0
    invoke-virtual {v1, v9, v10}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeighbours(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v9

    .line 125
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 126
    .local v14, "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    move-wide v15, v3

    .end local v3    # "numCalls":J
    .local v15, "numCalls":J
    int-to-double v3, v11

    invoke-virtual {v6, v3, v4}, Lorg/apache/commons/math3/analysis/function/Gaussian;->value(D)D

    move-result-wide v3

    invoke-direct {v0, v14, v2, v3, v4}, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->updateNeighbouringNeuron(Lorg/apache/commons/math3/ml/neuralnet/Neuron;[DD)V

    .line 127
    .end local v14    # "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    move-wide v3, v15

    goto :goto_1

    .line 125
    .end local v15    # "numCalls":J
    .restart local v3    # "numCalls":J
    :cond_0
    move-wide v15, v3

    .line 131
    .end local v3    # "numCalls":J
    .end local v12    # "i$":Ljava/util/Iterator;
    .restart local v15    # "numCalls":J
    invoke-virtual {v10, v9}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 132
    add-int/lit8 v11, v11, 0x1

    .line 133
    if-le v11, v13, :cond_1

    goto :goto_2

    :cond_1
    move-wide v3, v15

    goto :goto_0

    .line 111
    .end local v9    # "neighbours":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    .end local v10    # "exclude":Ljava/util/HashSet;, "Ljava/util/HashSet<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    .end local v11    # "radius":I
    .end local v15    # "numCalls":J
    .restart local v3    # "numCalls":J
    :cond_2
    move-wide v15, v3

    .line 135
    .end local v3    # "numCalls":J
    .restart local v15    # "numCalls":J
    :goto_2
    return-void
.end method
