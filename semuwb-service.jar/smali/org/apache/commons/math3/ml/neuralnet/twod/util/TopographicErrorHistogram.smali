.class public Lorg/apache/commons/math3/ml/neuralnet/twod/util/TopographicErrorHistogram;
.super Ljava/lang/Object;
.source "TopographicErrorHistogram.java"

# interfaces
.implements Lorg/apache/commons/math3/ml/neuralnet/twod/util/MapDataVisualization;


# instance fields
.field private final distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

.field private final relativeCount:Z


# direct methods
.method public constructor <init>(ZLorg/apache/commons/math3/ml/distance/DistanceMeasure;)V
    .locals 0
    .param p1, "relativeCount"    # Z
    .param p2, "distance"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/TopographicErrorHistogram;->relativeCount:Z

    .line 48
    iput-object p2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/TopographicErrorHistogram;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .line 49
    return-void
.end method


# virtual methods
.method public computeImage(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;Ljava/lang/Iterable;)[[D
    .locals 21
    .param p1, "map"    # Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;",
            "Ljava/lang/Iterable<",
            "[D>;)[[D"
        }
    .end annotation

    .line 54
    .local p2, "data":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[D>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfRows()I

    move-result v2

    .line 55
    .local v2, "nR":I
    invoke-virtual {v1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfColumns()I

    move-result v3

    .line 57
    .local v3, "nC":I
    invoke-virtual {v1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNetwork()Lorg/apache/commons/math3/ml/neuralnet/Network;

    move-result-object v4

    .line 58
    .local v4, "net":Lorg/apache/commons/math3/ml/neuralnet/Network;
    new-instance v5, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;

    invoke-direct {v5, v1}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;-><init>(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)V

    .line 61
    .local v5, "finder":Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;
    const/4 v6, 0x2

    new-array v7, v6, [I

    const/4 v8, 0x1

    aput v3, v7, v8

    const/4 v9, 0x0

    aput v2, v7, v9

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    .line 63
    .local v7, "hit":[[I
    new-array v6, v6, [I

    aput v3, v6, v8

    aput v2, v6, v9

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    .line 65
    .local v6, "error":[[D
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [D

    .line 66
    .local v10, "sample":[D
    iget-object v11, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/TopographicErrorHistogram;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-static {v10, v1, v11}, Lorg/apache/commons/math3/ml/neuralnet/MapUtils;->findBestAndSecondBest([DLjava/lang/Iterable;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)Lorg/apache/commons/math3/util/Pair;

    move-result-object v11

    .line 67
    .local v11, "p":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Lorg/apache/commons/math3/ml/neuralnet/Neuron;Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    invoke-virtual {v11}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 69
    .local v12, "best":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-virtual {v5, v12}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;->getLocation(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;

    move-result-object v13

    .line 70
    .local v13, "loc":Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;
    invoke-virtual {v13}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->getRow()I

    move-result v14

    .line 71
    .local v14, "row":I
    invoke-virtual {v13}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->getColumn()I

    move-result v15

    .line 72
    .local v15, "col":I
    aget-object v16, v7, v14

    aget v17, v16, v15

    add-int/lit8 v17, v17, 0x1

    aput v17, v16, v15

    .line 74
    invoke-virtual {v4, v12}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeighbours(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v11}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    aget-object v1, v6, v14

    aget-wide v17, v1, v15

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    add-double v17, v17, v19

    aput-wide v17, v1, v15

    .line 79
    .end local v10    # "sample":[D
    .end local v11    # "p":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Lorg/apache/commons/math3/ml/neuralnet/Neuron;Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    .end local v12    # "best":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .end local v13    # "loc":Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;
    .end local v14    # "row":I
    .end local v15    # "col":I
    :cond_0
    move-object/from16 v1, p1

    const/4 v8, 0x1

    goto :goto_0

    .line 81
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-boolean v1, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/TopographicErrorHistogram;->relativeCount:Z

    if-eqz v1, :cond_3

    .line 82
    const/4 v1, 0x0

    .local v1, "r":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 83
    const/4 v8, 0x0

    .local v8, "c":I
    :goto_2
    if-ge v8, v3, :cond_2

    .line 84
    aget-object v9, v6, v1

    aget-wide v10, v9, v8

    aget-object v12, v7, v1

    aget v12, v12, v8

    int-to-double v12, v12

    div-double/2addr v10, v12

    aput-wide v10, v9, v8

    .line 83
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 82
    .end local v8    # "c":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 89
    .end local v1    # "r":I
    :cond_3
    return-object v6
.end method
