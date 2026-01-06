.class public Lorg/apache/commons/math3/ml/neuralnet/twod/util/SmoothedDataHistogram;
.super Ljava/lang/Object;
.source "SmoothedDataHistogram.java"

# interfaces
.implements Lorg/apache/commons/math3/ml/neuralnet/twod/util/MapDataVisualization;


# instance fields
.field private final distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

.field private final membershipNormalization:D

.field private final smoothingBins:I


# direct methods
.method public constructor <init>(ILorg/apache/commons/math3/ml/distance/DistanceMeasure;)V
    .locals 5
    .param p1, "smoothingBins"    # I
    .param p2, "distance"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/SmoothedDataHistogram;->smoothingBins:I

    .line 51
    iput-object p2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/SmoothedDataHistogram;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .line 53
    const-wide/16 v0, 0x0

    .line 54
    .local v0, "sum":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 55
    sub-int v3, p1, v2

    int-to-double v3, v3

    add-double/2addr v0, v3

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    .end local v2    # "i":I
    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/SmoothedDataHistogram;->membershipNormalization:D

    .line 59
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

    .line 70
    .local p2, "data":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[D>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfRows()I

    move-result v1

    .line 71
    .local v1, "nR":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfColumns()I

    move-result v2

    .line 73
    .local v2, "nC":I
    mul-int v3, v1, v2

    .line 74
    .local v3, "mapSize":I
    iget v4, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/SmoothedDataHistogram;->smoothingBins:I

    const/4 v5, 0x1

    if-lt v3, v4, :cond_2

    .line 78
    new-instance v4, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;

    move-object/from16 v6, p1

    invoke-direct {v4, v6}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;-><init>(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)V

    .line 81
    .local v4, "finder":Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;
    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v2, v7, v5

    const/4 v5, 0x0

    aput v1, v7, v5

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 83
    .local v5, "histo":[[D
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [D

    .line 84
    .local v8, "sample":[D
    invoke-virtual {v6}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNetwork()Lorg/apache/commons/math3/ml/neuralnet/Network;

    move-result-object v9

    iget-object v10, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/SmoothedDataHistogram;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-static {v8, v9, v10}, Lorg/apache/commons/math3/ml/neuralnet/MapUtils;->sort([DLjava/lang/Iterable;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)[Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v9

    .line 87
    .local v9, "sorted":[Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    iget v11, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/SmoothedDataHistogram;->smoothingBins:I

    if-ge v10, v11, :cond_0

    .line 88
    aget-object v11, v9, v10

    invoke-virtual {v4, v11}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;->getLocation(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;

    move-result-object v11

    .line 89
    .local v11, "loc":Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;
    invoke-virtual {v11}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->getRow()I

    move-result v12

    .line 90
    .local v12, "row":I
    invoke-virtual {v11}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->getColumn()I

    move-result v13

    .line 91
    .local v13, "col":I
    aget-object v14, v5, v12

    aget-wide v15, v14, v13

    move/from16 v17, v1

    .end local v1    # "nR":I
    .local v17, "nR":I
    iget v1, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/SmoothedDataHistogram;->smoothingBins:I

    sub-int/2addr v1, v10

    move/from16 v18, v2

    .end local v2    # "nC":I
    .local v18, "nC":I
    int-to-double v1, v1

    move-wide/from16 v19, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/SmoothedDataHistogram;->membershipNormalization:D

    mul-double v1, v1, v19

    add-double/2addr v15, v1

    aput-wide v15, v14, v13

    .line 87
    .end local v11    # "loc":Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;
    .end local v12    # "row":I
    .end local v13    # "col":I
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, v17

    move/from16 v2, v18

    goto :goto_1

    .end local v17    # "nR":I
    .end local v18    # "nC":I
    .restart local v1    # "nR":I
    .restart local v2    # "nC":I
    :cond_0
    move/from16 v17, v1

    move/from16 v18, v2

    .line 93
    .end local v1    # "nR":I
    .end local v2    # "nC":I
    .end local v8    # "sample":[D
    .end local v9    # "sorted":[Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .end local v10    # "i":I
    .restart local v17    # "nR":I
    .restart local v18    # "nC":I
    goto :goto_0

    .line 95
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v17    # "nR":I
    .end local v18    # "nC":I
    .restart local v1    # "nR":I
    .restart local v2    # "nC":I
    :cond_1
    return-object v5

    .line 75
    .end local v4    # "finder":Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;
    .end local v5    # "histo":[[D
    :cond_2
    move/from16 v17, v1

    move/from16 v18, v2

    .end local v1    # "nR":I
    .end local v2    # "nC":I
    .restart local v17    # "nR":I
    .restart local v18    # "nC":I
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v4, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/SmoothedDataHistogram;->smoothingBins:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4, v5}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1
.end method
