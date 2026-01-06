.class public Lorg/apache/commons/math3/ml/neuralnet/MapUtils;
.super Ljava/lang/Object;
.source "MapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ml/neuralnet/MapUtils$PairNeuronDouble;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeHitHistogram(Ljava/lang/Iterable;Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)[[I
    .locals 12
    .param p1, "map"    # Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;
    .param p2, "distance"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "[D>;",
            "Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;",
            "Lorg/apache/commons/math3/ml/distance/DistanceMeasure;",
            ")[[I"
        }
    .end annotation

    .line 199
    .local p0, "data":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[D>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 200
    .local v0, "hit":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/apache/commons/math3/ml/neuralnet/Neuron;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNetwork()Lorg/apache/commons/math3/ml/neuralnet/Network;

    move-result-object v1

    .line 202
    .local v1, "net":Lorg/apache/commons/math3/ml/neuralnet/Network;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    .line 203
    .local v3, "f":[D
    invoke-static {v3, v1, p2}, Lorg/apache/commons/math3/ml/neuralnet/MapUtils;->findBest([DLjava/lang/Iterable;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v5

    .line 204
    .local v5, "best":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 205
    .local v6, "count":Ljava/lang/Integer;
    if-nez v6, :cond_0

    .line 206
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 208
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .end local v3    # "f":[D
    .end local v5    # "best":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .end local v6    # "count":Ljava/lang/Integer;
    :goto_1
    goto :goto_0

    .line 213
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfRows()I

    move-result v2

    .line 214
    .local v2, "numRows":I
    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfColumns()I

    move-result v3

    .line 215
    .local v3, "numCols":I
    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v3, v5, v4

    const/4 v4, 0x0

    aput v2, v5, v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    .line 217
    .local v5, "histo":[[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v2, :cond_4

    .line 218
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    if-ge v7, v3, :cond_3

    .line 219
    invoke-virtual {p1, v6, v7}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(II)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v8

    .line 220
    .local v8, "neuron":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 221
    .local v9, "count":Ljava/lang/Integer;
    if-nez v9, :cond_2

    .line 222
    aget-object v10, v5, v6

    aput v4, v10, v7

    goto :goto_4

    .line 224
    :cond_2
    aget-object v10, v5, v6

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v10, v7

    .line 218
    .end local v8    # "neuron":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .end local v9    # "count":Ljava/lang/Integer;
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 217
    .end local v7    # "j":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 229
    .end local v6    # "i":I
    :cond_4
    return-object v5
.end method

.method public static computeQuantizationError(Ljava/lang/Iterable;Ljava/lang/Iterable;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)D
    .locals 7
    .param p2, "distance"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "[D>;",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;",
            "Lorg/apache/commons/math3/ml/distance/DistanceMeasure;",
            ")D"
        }
    .end annotation

    .line 246
    .local p0, "data":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[D>;"
    .local p1, "neurons":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    const-wide/16 v0, 0x0

    .line 247
    .local v0, "d":D
    const/4 v2, 0x0

    .line 248
    .local v2, "count":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    .line 249
    .local v4, "f":[D
    add-int/lit8 v2, v2, 0x1

    .line 250
    invoke-static {v4, p1, p2}, Lorg/apache/commons/math3/ml/neuralnet/MapUtils;->findBest([DLjava/lang/Iterable;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v5

    invoke-interface {p2, v4, v5}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v5

    add-double/2addr v0, v5

    .line 251
    .end local v4    # "f":[D
    goto :goto_0

    .line 253
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    if-eqz v2, :cond_1

    .line 257
    int-to-double v3, v2

    div-double v3, v0, v3

    return-wide v3

    .line 254
    :cond_1
    new-instance v3, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v3}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v3
.end method

.method public static computeTopographicError(Ljava/lang/Iterable;Lorg/apache/commons/math3/ml/neuralnet/Network;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)D
    .locals 7
    .param p1, "net"    # Lorg/apache/commons/math3/ml/neuralnet/Network;
    .param p2, "distance"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "[D>;",
            "Lorg/apache/commons/math3/ml/neuralnet/Network;",
            "Lorg/apache/commons/math3/ml/distance/DistanceMeasure;",
            ")D"
        }
    .end annotation

    .line 274
    .local p0, "data":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[D>;"
    const/4 v0, 0x0

    .line 275
    .local v0, "notAdjacentCount":I
    const/4 v1, 0x0

    .line 276
    .local v1, "count":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    .line 277
    .local v3, "f":[D
    add-int/lit8 v1, v1, 0x1

    .line 278
    invoke-static {v3, p1, p2}, Lorg/apache/commons/math3/ml/neuralnet/MapUtils;->findBestAndSecondBest([DLjava/lang/Iterable;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)Lorg/apache/commons/math3/util/Pair;

    move-result-object v4

    .line 279
    .local v4, "p":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Lorg/apache/commons/math3/ml/neuralnet/Neuron;Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    invoke-virtual {v4}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    invoke-virtual {p1, v5}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeighbours(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 282
    add-int/lit8 v0, v0, 0x1

    .line 284
    .end local v3    # "f":[D
    .end local v4    # "p":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Lorg/apache/commons/math3/ml/neuralnet/Neuron;Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    :cond_0
    goto :goto_0

    .line 286
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    if-eqz v1, :cond_2

    .line 290
    int-to-double v2, v0

    int-to-double v4, v1

    div-double/2addr v2, v4

    return-wide v2

    .line 287
    :cond_2
    new-instance v2, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v2
.end method

.method public static computeU(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)[[D
    .locals 19
    .param p0, "map"    # Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;
    .param p1, "distance"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .line 162
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfRows()I

    move-result v0

    .line 163
    .local v0, "numRows":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfColumns()I

    move-result v1

    .line 164
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

    .line 166
    .local v2, "uMatrix":[[D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNetwork()Lorg/apache/commons/math3/ml/neuralnet/Network;

    move-result-object v3

    .line 168
    .local v3, "net":Lorg/apache/commons/math3/ml/neuralnet/Network;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 169
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v1, :cond_1

    .line 170
    move-object/from16 v6, p0

    invoke-virtual {v6, v4, v5}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(II)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v7

    .line 171
    .local v7, "neuron":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-virtual {v3, v7}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeighbours(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Ljava/util/Collection;

    move-result-object v8

    .line 172
    .local v8, "neighbours":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    invoke-virtual {v7}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v9

    .line 174
    .local v9, "features":[D
    const-wide/16 v10, 0x0

    .line 175
    .local v10, "d":D
    const/4 v12, 0x0

    .line 176
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

    .line 177
    .local v14, "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    add-int/lit8 v12, v12, 0x1

    .line 178
    invoke-virtual {v14}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v15

    move/from16 v16, v0

    move-object/from16 v0, p1

    .end local v0    # "numRows":I
    .local v16, "numRows":I
    invoke-interface {v0, v9, v15}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v17

    add-double v10, v10, v17

    .line 179
    .end local v14    # "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    move/from16 v0, v16

    goto :goto_2

    .line 176
    .end local v16    # "numRows":I
    .restart local v0    # "numRows":I
    :cond_0
    move/from16 v16, v0

    move-object/from16 v0, p1

    .line 181
    .end local v0    # "numRows":I
    .end local v13    # "i$":Ljava/util/Iterator;
    .restart local v16    # "numRows":I
    aget-object v13, v2, v4

    int-to-double v14, v12

    div-double v14, v10, v14

    aput-wide v14, v13, v5

    .line 169
    .end local v7    # "neuron":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .end local v8    # "neighbours":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    .end local v9    # "features":[D
    .end local v10    # "d":D
    .end local v12    # "count":I
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v16

    goto :goto_1

    .end local v16    # "numRows":I
    .restart local v0    # "numRows":I
    :cond_1
    move-object/from16 v6, p0

    move/from16 v16, v0

    move-object/from16 v0, p1

    .line 168
    .end local v0    # "numRows":I
    .end local v5    # "j":I
    .restart local v16    # "numRows":I
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v16

    goto :goto_0

    .line 185
    .end local v4    # "i":I
    .end local v16    # "numRows":I
    .restart local v0    # "numRows":I
    :cond_2
    return-object v2
.end method

.method public static findBest([DLjava/lang/Iterable;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .locals 8
    .param p0, "features"    # [D
    .param p2, "distance"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;",
            "Lorg/apache/commons/math3/ml/distance/DistanceMeasure;",
            ")",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;"
        }
    .end annotation

    .line 59
    .local p1, "neurons":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    const/4 v0, 0x0

    .line 60
    .local v0, "best":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 61
    .local v1, "min":D
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 62
    .local v4, "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-virtual {v4}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v5

    invoke-interface {p2, v5, p0}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v5

    .line 63
    .local v5, "d":D
    cmpg-double v7, v5, v1

    if-gez v7, :cond_0

    .line 64
    move-wide v1, v5

    .line 65
    move-object v0, v4

    .line 67
    .end local v4    # "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .end local v5    # "d":D
    :cond_0
    goto :goto_0

    .line 69
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method public static findBestAndSecondBest([DLjava/lang/Iterable;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)Lorg/apache/commons/math3/util/Pair;
    .locals 10
    .param p0, "features"    # [D
    .param p2, "distance"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;",
            "Lorg/apache/commons/math3/ml/distance/DistanceMeasure;",
            ")",
            "Lorg/apache/commons/math3/util/Pair<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;"
        }
    .end annotation

    .line 88
    .local p1, "neurons":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    const/4 v0, 0x2

    new-array v1, v0, [Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 89
    .local v1, "best":[Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    new-array v0, v0, [D

    fill-array-data v0, :array_0

    .line 91
    .local v0, "min":[D
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 92
    .local v5, "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-virtual {v5}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v6

    invoke-interface {p2, v6, p0}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v6

    .line 93
    .local v6, "d":D
    aget-wide v8, v0, v2

    cmpg-double v8, v6, v8

    if-gez v8, :cond_0

    .line 95
    aget-wide v8, v0, v2

    aput-wide v8, v0, v4

    .line 96
    aget-object v8, v1, v2

    aput-object v8, v1, v4

    .line 99
    aput-wide v6, v0, v2

    .line 100
    aput-object v5, v1, v2

    goto :goto_1

    .line 101
    :cond_0
    aget-wide v8, v0, v4

    cmpg-double v8, v6, v8

    if-gez v8, :cond_1

    .line 103
    aput-wide v6, v0, v4

    .line 104
    aput-object v5, v1, v4

    .line 106
    .end local v5    # "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .end local v6    # "d":D
    :cond_1
    :goto_1
    goto :goto_0

    .line 108
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    new-instance v3, Lorg/apache/commons/math3/util/Pair;

    aget-object v2, v1, v2

    aget-object v4, v1, v4

    invoke-direct {v3, v2, v4}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    nop

    :array_0
    .array-data 8
        0x7ff0000000000000L    # Double.POSITIVE_INFINITY
        0x7ff0000000000000L    # Double.POSITIVE_INFINITY
    .end array-data
.end method

.method public static sort([DLjava/lang/Iterable;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)[Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .locals 6
    .param p0, "features"    # [D
    .param p2, "distance"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;",
            "Lorg/apache/commons/math3/ml/distance/DistanceMeasure;",
            ")[",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;"
        }
    .end annotation

    .line 133
    .local p1, "neurons":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/neuralnet/MapUtils$PairNeuronDouble;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 136
    .local v2, "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-virtual {v2}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v3

    invoke-interface {p2, v3, p0}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v3

    .line 137
    .local v3, "d":D
    new-instance v5, Lorg/apache/commons/math3/ml/neuralnet/MapUtils$PairNeuronDouble;

    invoke-direct {v5, v2, v3, v4}, Lorg/apache/commons/math3/ml/neuralnet/MapUtils$PairNeuronDouble;-><init>(Lorg/apache/commons/math3/ml/neuralnet/Neuron;D)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v2    # "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .end local v3    # "d":D
    goto :goto_0

    .line 140
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    sget-object v1, Lorg/apache/commons/math3/ml/neuralnet/MapUtils$PairNeuronDouble;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 142
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 143
    .local v1, "len":I
    new-array v2, v1, [Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 145
    .local v2, "sorted":[Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 146
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/ml/neuralnet/MapUtils$PairNeuronDouble;

    invoke-virtual {v4}, Lorg/apache/commons/math3/ml/neuralnet/MapUtils$PairNeuronDouble;->getNeuron()Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v4

    aput-object v4, v2, v3

    .line 145
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 148
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method
