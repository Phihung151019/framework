.class public Lorg/apache/commons/math3/ml/neuralnet/twod/util/HitHistogram;
.super Ljava/lang/Object;
.source "HitHistogram.java"

# interfaces
.implements Lorg/apache/commons/math3/ml/neuralnet/twod/util/MapDataVisualization;


# instance fields
.field private final distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

.field private final normalizeCount:Z


# direct methods
.method public constructor <init>(ZLorg/apache/commons/math3/ml/distance/DistanceMeasure;)V
    .locals 0
    .param p1, "normalizeCount"    # Z
    .param p2, "distance"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/HitHistogram;->normalizeCount:Z

    .line 46
    iput-object p2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/HitHistogram;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .line 47
    return-void
.end method


# virtual methods
.method public computeImage(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;Ljava/lang/Iterable;)[[D
    .locals 18
    .param p1, "map"    # Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;",
            "Ljava/lang/Iterable<",
            "[D>;)[[D"
        }
    .end annotation

    .line 52
    .local p2, "data":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[D>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfRows()I

    move-result v2

    .line 53
    .local v2, "nR":I
    invoke-virtual {v1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfColumns()I

    move-result v3

    .line 55
    .local v3, "nC":I
    new-instance v4, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;

    invoke-direct {v4, v1}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;-><init>(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)V

    .line 58
    .local v4, "finder":Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;
    const/4 v5, 0x0

    .line 60
    .local v5, "numSamples":I
    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x1

    aput v3, v6, v7

    const/4 v7, 0x0

    aput v2, v6, v7

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    .line 62
    .local v6, "hit":[[D
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [D

    .line 63
    .local v8, "sample":[D
    iget-object v9, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/HitHistogram;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-static {v8, v1, v9}, Lorg/apache/commons/math3/ml/neuralnet/MapUtils;->findBest([DLjava/lang/Iterable;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v9

    .line 65
    .local v9, "best":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-virtual {v4, v9}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;->getLocation(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;

    move-result-object v10

    .line 66
    .local v10, "loc":Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;
    invoke-virtual {v10}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->getRow()I

    move-result v11

    .line 67
    .local v11, "row":I
    invoke-virtual {v10}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->getColumn()I

    move-result v12

    .line 68
    .local v12, "col":I
    aget-object v13, v6, v11

    aget-wide v14, v13, v12

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v14, v14, v16

    aput-wide v14, v13, v12

    .line 70
    nop

    .end local v8    # "sample":[D
    .end local v9    # "best":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .end local v10    # "loc":Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;
    .end local v11    # "row":I
    .end local v12    # "col":I
    add-int/lit8 v5, v5, 0x1

    .line 71
    goto :goto_0

    .line 73
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-boolean v7, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/HitHistogram;->normalizeCount:Z

    if-eqz v7, :cond_2

    .line 74
    const/4 v7, 0x0

    .local v7, "r":I
    :goto_1
    if-ge v7, v2, :cond_2

    .line 75
    const/4 v8, 0x0

    .local v8, "c":I
    :goto_2
    if-ge v8, v3, :cond_1

    .line 76
    aget-object v9, v6, v7

    aget-wide v10, v9, v8

    int-to-double v12, v5

    div-double/2addr v10, v12

    aput-wide v10, v9, v8

    .line 75
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 74
    .end local v8    # "c":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 81
    .end local v7    # "r":I
    :cond_2
    return-object v6
.end method
