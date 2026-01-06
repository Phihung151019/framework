.class public Lorg/apache/commons/math3/ml/neuralnet/twod/util/QuantizationError;
.super Ljava/lang/Object;
.source "QuantizationError.java"

# interfaces
.implements Lorg/apache/commons/math3/ml/neuralnet/twod/util/MapDataVisualization;


# instance fields
.field private final distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)V
    .locals 0
    .param p1, "distance"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/QuantizationError;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .line 40
    return-void
.end method


# virtual methods
.method public computeImage(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;Ljava/lang/Iterable;)[[D
    .locals 19
    .param p1, "map"    # Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;",
            "Ljava/lang/Iterable<",
            "[D>;)[[D"
        }
    .end annotation

    .line 45
    .local p2, "data":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[D>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfRows()I

    move-result v2

    .line 46
    .local v2, "nR":I
    invoke-virtual {v1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfColumns()I

    move-result v3

    .line 48
    .local v3, "nC":I
    new-instance v4, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;

    invoke-direct {v4, v1}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;-><init>(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)V

    .line 51
    .local v4, "finder":Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;
    const/4 v5, 0x2

    new-array v6, v5, [I

    const/4 v7, 0x1

    aput v3, v6, v7

    const/4 v8, 0x0

    aput v2, v6, v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    .line 53
    .local v6, "hit":[[I
    new-array v5, v5, [I

    aput v3, v5, v7

    aput v2, v5, v8

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 55
    .local v5, "error":[[D
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [D

    .line 56
    .local v9, "sample":[D
    iget-object v10, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/QuantizationError;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-static {v9, v1, v10}, Lorg/apache/commons/math3/ml/neuralnet/MapUtils;->findBest([DLjava/lang/Iterable;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v10

    .line 58
    .local v10, "best":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-virtual {v4, v10}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;->getLocation(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;

    move-result-object v11

    .line 59
    .local v11, "loc":Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;
    invoke-virtual {v11}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->getRow()I

    move-result v12

    .line 60
    .local v12, "row":I
    invoke-virtual {v11}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->getColumn()I

    move-result v13

    .line 61
    .local v13, "col":I
    aget-object v14, v6, v12

    aget v15, v14, v13

    add-int/2addr v15, v7

    aput v15, v14, v13

    .line 62
    aget-object v14, v5, v12

    aget-wide v15, v14, v13

    iget-object v7, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/QuantizationError;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-virtual {v10}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v0

    invoke-interface {v7, v9, v0}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v17

    add-double v15, v15, v17

    aput-wide v15, v14, v13

    .line 63
    .end local v9    # "sample":[D
    .end local v10    # "best":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .end local v11    # "loc":Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;
    .end local v12    # "row":I
    .end local v13    # "col":I
    const/4 v7, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    .line 65
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v0, 0x0

    .local v0, "r":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 66
    const/4 v7, 0x0

    .local v7, "c":I
    :goto_2
    if-ge v7, v3, :cond_2

    .line 67
    aget-object v8, v6, v0

    aget v8, v8, v7

    .line 68
    .local v8, "count":I
    if-eqz v8, :cond_1

    .line 69
    aget-object v9, v5, v0

    aget-wide v10, v9, v7

    int-to-double v12, v8

    div-double/2addr v10, v12

    aput-wide v10, v9, v7

    .line 66
    .end local v8    # "count":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 65
    .end local v7    # "c":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 74
    .end local v0    # "r":I
    :cond_3
    return-object v5
.end method
