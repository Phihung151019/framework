.class public Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
.super Ljava/lang/Object;
.source "Edge.java"


# instance fields
.field private final circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

.field private end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

.field private final length:D

.field private final start:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLorg/apache/commons/math3/geometry/spherical/twod/Circle;)V
    .locals 0
    .param p1, "start"    # Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .param p2, "end"    # Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .param p3, "length"    # D
    .param p5, "circle"    # Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->start:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    .line 54
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    .line 55
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->length:D

    .line 56
    iput-object p5, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .line 59
    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->setOutgoing(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)V

    .line 60
    invoke-virtual {p2, p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->setIncoming(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)V

    .line 62
    return-void
.end method

.method private addSubEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .locals 7
    .param p1, "subStart"    # Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .param p2, "subEnd"    # Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .param p3, "subLength"    # D
    .param p6, "splitCircle"    # Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;",
            "D",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Edge;",
            ">;",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Circle;",
            ")",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;"
        }
    .end annotation

    .line 209
    .local p5, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/spherical/twod/Edge;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getTolerance()D

    move-result-wide v0

    cmpg-double v0, p3, v0

    if-gtz v0, :cond_0

    .line 211
    return-object p1

    .line 215
    :cond_0
    invoke-virtual {p2, p6}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->bindWith(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    .line 216
    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .end local p1    # "subStart":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .end local p2    # "subEnd":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .end local p3    # "subLength":D
    .local v2, "subStart":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .local v3, "subEnd":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .local v4, "subLength":D
    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    .line 217
    .local v1, "edge":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    return-object v3
.end method


# virtual methods
.method public getCircle()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    return-object v0
.end method

.method public getEnd()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    return-object v0
.end method

.method public getLength()D
    .locals 2

    .line 82
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->length:D

    return-wide v0
.end method

.method public getPointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 3
    .param p1, "alpha"    # D

    .line 103
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->start:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPhase(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v1

    add-double/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public getStart()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->start:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    return-object v0
.end method

.method setNextEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)V
    .locals 2
    .param p1, "next"    # Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    .line 110
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getStart()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    .line 111
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->setIncoming(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)V

    .line 112
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getCircle()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->bindWith(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    .line 113
    return-void
.end method

.method split(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;Ljava/util/List;Ljava/util/List;)V
    .locals 23
    .param p1, "splitCircle"    # Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Circle;",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Edge;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Edge;",
            ">;)V"
        }
    .end annotation

    .line 129
    .local p2, "outsideList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/spherical/twod/Edge;>;"
    .local p3, "insideList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/spherical/twod/Edge;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->start:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPhase(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v7

    .line 130
    .local v7, "edgeStart":D
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-object/from16 v6, p1

    invoke-virtual {v1, v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getInsideArc(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/oned/Arc;

    move-result-object v9

    .line 131
    .local v9, "arc":Lorg/apache/commons/math3/geometry/spherical/oned/Arc;
    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getInf()D

    move-result-wide v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v3, v7

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide v1

    sub-double v10, v1, v7

    .line 132
    .local v10, "arcRelativeStart":D
    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getSize()D

    move-result-wide v1

    add-double v12, v10, v1

    .line 133
    .local v12, "arcRelativeEnd":D
    const-wide v1, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v3, v12, v1

    .line 136
    .local v3, "unwrappedEnd":D
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getTolerance()D

    move-result-wide v14

    .line 137
    .local v14, "tolerance":D
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->start:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    .line 138
    .local v1, "previousVertex":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    move-object v5, v1

    .end local v1    # "previousVertex":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .local v5, "previousVertex":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->length:D

    sub-double/2addr v1, v14

    cmpl-double v1, v3, v1

    if-ltz v1, :cond_0

    .line 142
    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v20, v3

    move-object v1, v5

    goto/16 :goto_1

    .line 148
    :cond_0
    move-object/from16 v1, p3

    const-wide/16 v16, 0x0

    .line 149
    .local v16, "alreadyManagedLength":D
    const-wide/16 v18, 0x0

    cmpl-double v2, v3, v18

    if-ltz v2, :cond_1

    .line 151
    new-instance v2, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-wide/from16 v20, v3

    .end local v3    # "unwrappedEnd":D
    .local v20, "unwrappedEnd":D
    iget-object v3, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-object/from16 v22, v5

    .end local v5    # "previousVertex":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .local v22, "previousVertex":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    add-double v4, v7, v20

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V

    move-object/from16 v5, p3

    move-wide/from16 v3, v20

    move-object/from16 v1, v22

    .end local v20    # "unwrappedEnd":D
    .end local v22    # "previousVertex":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .restart local v1    # "previousVertex":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .restart local v3    # "unwrappedEnd":D
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->addSubEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v1

    .line 154
    .end local v3    # "unwrappedEnd":D
    .restart local v20    # "unwrappedEnd":D
    move-wide/from16 v16, v20

    goto :goto_0

    .line 149
    .end local v1    # "previousVertex":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .end local v20    # "unwrappedEnd":D
    .restart local v3    # "unwrappedEnd":D
    .restart local v5    # "previousVertex":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    :cond_1
    move-wide/from16 v20, v3

    move-object v1, v5

    .line 157
    .end local v3    # "unwrappedEnd":D
    .end local v5    # "previousVertex":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .restart local v1    # "previousVertex":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .restart local v20    # "unwrappedEnd":D
    :goto_0
    iget-wide v2, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->length:D

    sub-double/2addr v2, v14

    cmpl-double v2, v10, v2

    if-ltz v2, :cond_3

    .line 159
    cmpl-double v2, v20, v18

    if-ltz v2, :cond_2

    .line 160
    iget-object v2, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    iget-wide v3, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->length:D

    sub-double v3, v3, v16

    move-object/from16 v6, p1

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->addSubEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v1

    goto :goto_1

    .line 165
    :cond_2
    move-object/from16 v5, p2

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 169
    :cond_3
    move-object/from16 v5, p2

    new-instance v2, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    new-instance v3, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    iget-object v4, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-object v6, v1

    .end local v1    # "previousVertex":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .local v6, "previousVertex":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    add-double v0, v7, v10

    invoke-virtual {v4, v0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V

    sub-double v3, v10, v16

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v6, p1

    .end local v6    # "previousVertex":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .restart local v1    # "previousVertex":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->addSubEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v1

    .line 172
    move-wide/from16 v16, v10

    .line 174
    iget-wide v2, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->length:D

    sub-double/2addr v2, v14

    cmpl-double v2, v12, v2

    if-ltz v2, :cond_4

    .line 176
    iget-object v2, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    iget-wide v3, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->length:D

    sub-double v3, v3, v16

    move-object/from16 v6, p1

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->addSubEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v1

    goto :goto_1

    .line 180
    :cond_4
    new-instance v2, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    new-instance v3, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    iget-object v4, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    add-double v5, v7, v10

    invoke-virtual {v4, v5, v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V

    sub-double v3, v10, v16

    move-object/from16 v6, p1

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->addSubEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v1

    .line 183
    move-wide/from16 v16, v10

    .line 184
    iget-object v2, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    iget-wide v3, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->length:D

    sub-double v3, v3, v16

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->addSubEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v1

    .line 191
    .end local v16    # "alreadyManagedLength":D
    :goto_1
    return-void
.end method
