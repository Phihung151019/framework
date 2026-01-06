.class public Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;
.super Ljava/lang/Object;
.source "UnifiedDistanceMatrix.java"

# interfaces
.implements Lorg/apache/commons/math3/ml/neuralnet/twod/util/MapVisualization;


# instance fields
.field private final distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

.field private final individualDistances:Z


# direct methods
.method public constructor <init>(ZLorg/apache/commons/math3/ml/distance/DistanceMeasure;)V
    .locals 0
    .param p1, "individualDistances"    # Z
    .param p2, "distance"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->individualDistances:Z

    .line 60
    iput-object p2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .line 61
    return-void
.end method

.method private averageDistances(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)[[D
    .locals 18
    .param p1, "map"    # Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;

    .line 184
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfRows()I

    move-result v0

    .line 185
    .local v0, "numRows":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfColumns()I

    move-result v1

    .line 186
    .local v1, "numCols":I
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v3, 0x0

    aput v0, v2, v3

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 188
    .local v2, "uMatrix":[[D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNetwork()Lorg/apache/commons/math3/ml/neuralnet/Network;

    move-result-object v3

    .line 190
    .local v3, "net":Lorg/apache/commons/math3/ml/neuralnet/Network;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 191
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v1, :cond_1

    .line 192
    move-object/from16 v6, p1

    invoke-virtual {v6, v4, v5}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(II)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v7

    .line 193
    .local v7, "neuron":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-virtual {v3, v7}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeighbours(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Ljava/util/Collection;

    move-result-object v8

    .line 194
    .local v8, "neighbours":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    invoke-virtual {v7}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v9

    .line 196
    .local v9, "features":[D
    const-wide/16 v10, 0x0

    .line 197
    .local v10, "d":D
    const/4 v12, 0x0

    .line 198
    .local v12, "count":I
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 199
    .local v14, "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    add-int/lit8 v12, v12, 0x1

    .line 200
    move-object/from16 v15, p0

    move/from16 v16, v0

    .end local v0    # "numRows":I
    .local v16, "numRows":I
    iget-object v0, v15, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    move/from16 v17, v1

    .end local v1    # "numCols":I
    .local v17, "numCols":I
    invoke-virtual {v14}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v1

    invoke-interface {v0, v9, v1}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v0

    add-double/2addr v10, v0

    .line 201
    .end local v14    # "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    move/from16 v0, v16

    move/from16 v1, v17

    goto :goto_2

    .line 198
    .end local v16    # "numRows":I
    .end local v17    # "numCols":I
    .restart local v0    # "numRows":I
    .restart local v1    # "numCols":I
    :cond_0
    move-object/from16 v15, p0

    move/from16 v16, v0

    move/from16 v17, v1

    .line 203
    .end local v0    # "numRows":I
    .end local v1    # "numCols":I
    .end local v13    # "i$":Ljava/util/Iterator;
    .restart local v16    # "numRows":I
    .restart local v17    # "numCols":I
    aget-object v0, v2, v4

    int-to-double v13, v12

    div-double v13, v10, v13

    aput-wide v13, v0, v5

    .line 191
    .end local v7    # "neuron":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .end local v8    # "neighbours":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    .end local v9    # "features":[D
    .end local v10    # "d":D
    .end local v12    # "count":I
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v16

    goto :goto_1

    .end local v16    # "numRows":I
    .end local v17    # "numCols":I
    .restart local v0    # "numRows":I
    .restart local v1    # "numCols":I
    :cond_1
    move-object/from16 v15, p0

    move-object/from16 v6, p1

    move/from16 v16, v0

    move/from16 v17, v1

    .line 190
    .end local v0    # "numRows":I
    .end local v1    # "numCols":I
    .end local v5    # "j":I
    .restart local v16    # "numRows":I
    .restart local v17    # "numCols":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 207
    .end local v4    # "i":I
    .end local v16    # "numRows":I
    .end local v17    # "numCols":I
    .restart local v0    # "numRows":I
    .restart local v1    # "numCols":I
    :cond_2
    return-object v2
.end method

.method private individualDistances(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)[[D
    .locals 23
    .param p1, "map"    # Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;

    .line 84
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfRows()I

    move-result v2

    .line 85
    .local v2, "numRows":I
    invoke-virtual {v1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfColumns()I

    move-result v3

    .line 87
    .local v3, "numCols":I
    mul-int/lit8 v4, v2, 0x2

    const/4 v5, 0x1

    add-int/2addr v4, v5

    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v6, v5

    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v6, v7, v5

    const/4 v6, 0x0

    aput v4, v7, v6

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    .line 93
    .local v4, "uMatrix":[[D
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_3

    .line 95
    mul-int/lit8 v8, v7, 0x2

    add-int/2addr v8, v5

    .line 97
    .local v8, "iR":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v3, :cond_2

    .line 99
    mul-int/lit8 v10, v9, 0x2

    add-int/2addr v10, v5

    .line 101
    .local v10, "jR":I
    invoke-virtual {v1, v7, v9}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(II)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v11

    .line 105
    .local v11, "current":[D
    sget-object v12, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;->RIGHT:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;

    sget-object v13, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;->CENTER:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;

    invoke-virtual {v1, v7, v9, v12, v13}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(IILorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v12

    .line 108
    .local v12, "neighbour":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    if-eqz v12, :cond_0

    .line 109
    aget-object v13, v4, v8

    add-int/lit8 v14, v10, 0x1

    iget-object v15, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    move/from16 v16, v5

    invoke-virtual {v12}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v5

    invoke-interface {v15, v11, v5}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v17

    aput-wide v17, v13, v14

    goto :goto_2

    .line 108
    :cond_0
    move/from16 v16, v5

    .line 114
    :goto_2
    sget-object v5, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;->CENTER:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;

    sget-object v13, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;->DOWN:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;

    invoke-virtual {v1, v7, v9, v5, v13}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(IILorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v5

    .line 117
    .end local v12    # "neighbour":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .local v5, "neighbour":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    if-eqz v5, :cond_1

    .line 118
    add-int/lit8 v12, v8, 0x1

    aget-object v12, v4, v12

    iget-object v13, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-virtual {v5}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v14

    invoke-interface {v13, v11, v14}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v13

    aput-wide v13, v12, v10

    .line 97
    .end local v5    # "neighbour":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .end local v10    # "jR":I
    .end local v11    # "current":[D
    :cond_1
    add-int/lit8 v9, v9, 0x1

    move/from16 v5, v16

    goto :goto_1

    :cond_2
    move/from16 v16, v5

    .line 93
    .end local v8    # "iR":I
    .end local v9    # "j":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    move/from16 v16, v5

    .line 129
    .end local v7    # "i":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v2, :cond_8

    .line 131
    mul-int/lit8 v7, v5, 0x2

    add-int/lit8 v7, v7, 0x1

    .line 133
    .local v7, "iR":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_4
    if-ge v8, v3, :cond_7

    .line 135
    mul-int/lit8 v9, v8, 0x2

    add-int/lit8 v9, v9, 0x1

    .line 137
    .local v9, "jR":I
    invoke-virtual {v1, v5, v8}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(II)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v10

    .line 138
    .local v10, "current":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    sget-object v11, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;->RIGHT:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;

    sget-object v12, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;->CENTER:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;

    invoke-virtual {v1, v5, v8, v11, v12}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(IILorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v11

    .line 141
    .local v11, "right":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    sget-object v12, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;->CENTER:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;

    sget-object v13, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;->DOWN:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;

    invoke-virtual {v1, v5, v8, v12, v13}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(IILorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v12

    .line 144
    .local v12, "bottom":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    sget-object v13, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;->RIGHT:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;

    sget-object v14, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;->DOWN:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;

    invoke-virtual {v1, v5, v8, v13, v14}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(IILorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v13

    .line 148
    .local v13, "bottomRight":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    move/from16 v17, v6

    if-nez v13, :cond_4

    const-wide/16 v14, 0x0

    goto :goto_5

    :cond_4
    iget-object v6, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-virtual {v10}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v14

    invoke-virtual {v13}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v15

    invoke-interface {v6, v14, v15}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v14

    .line 152
    .local v14, "current2BottomRight":D
    :goto_5
    if-eqz v11, :cond_6

    if-nez v12, :cond_5

    goto :goto_6

    :cond_5
    iget-object v6, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-virtual {v11}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v0

    invoke-virtual {v12}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v1

    invoke-interface {v6, v0, v1}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v0

    goto :goto_7

    :cond_6
    :goto_6
    const-wide/16 v0, 0x0

    .line 159
    .local v0, "right2Bottom":D
    :goto_7
    add-int/lit8 v6, v7, 0x1

    aget-object v6, v4, v6

    add-int/lit8 v18, v9, 0x1

    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    add-double v21, v14, v0

    mul-double v21, v21, v19

    aput-wide v21, v6, v18

    .line 133
    .end local v0    # "right2Bottom":D
    .end local v9    # "jR":I
    .end local v10    # "current":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .end local v11    # "right":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .end local v12    # "bottom":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .end local v13    # "bottomRight":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .end local v14    # "current2BottomRight":D
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v6, v17

    goto :goto_4

    :cond_7
    move/from16 v17, v6

    .line 129
    .end local v7    # "iR":I
    .end local v8    # "j":I
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_3

    :cond_8
    move/from16 v17, v6

    .line 164
    .end local v5    # "i":I
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    .line 165
    .local v0, "lastRow":I
    aget-object v1, v4, v0

    aput-object v1, v4, v17

    .line 169
    aget-object v1, v4, v17

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 170
    .local v1, "lastCol":I
    const/4 v5, 0x0

    .local v5, "r":I
    :goto_8
    if-ge v5, v0, :cond_9

    .line 171
    aget-object v6, v4, v5

    aget-object v7, v4, v5

    aget-wide v7, v7, v1

    aput-wide v7, v6, v17

    .line 170
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 174
    .end local v5    # "r":I
    :cond_9
    return-object v4
.end method


# virtual methods
.method public computeImage(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)[[D
    .locals 1
    .param p1, "map"    # Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;

    .line 65
    iget-boolean v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->individualDistances:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->individualDistances(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)[[D

    move-result-object v0

    return-object v0

    .line 68
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->averageDistances(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)[[D

    move-result-object v0

    return-object v0
.end method
