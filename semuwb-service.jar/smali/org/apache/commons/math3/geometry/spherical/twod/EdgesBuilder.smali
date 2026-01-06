.class Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;
.super Ljava/lang/Object;
.source "EdgesBuilder.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor<",
        "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
        ">;"
    }
.end annotation


# instance fields
.field private final edgeToNode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Edge;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;>;"
        }
    .end annotation
.end field

.field private final nodeToEdgesList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Edge;",
            ">;>;"
        }
    .end annotation
.end field

.field private final root:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;"
        }
    .end annotation
.end field

.field private final tolerance:D


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V
    .locals 1
    .param p2, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;D)V"
        }
    .end annotation

    .line 55
    .local p1, "root":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->root:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 57
    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->tolerance:D

    .line 58
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->edgeToNode:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->nodeToEdgesList:Ljava/util/Map;

    .line 60
    return-void
.end method

.method private addContribution(Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;ZLorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 17
    .param p1, "sub"    # Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;
    .param p2, "reversed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;",
            "Z",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p3, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .line 92
    .local v8, "circle":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->asList()Ljava/util/List;

    move-result-object v2

    .line 93
    .local v2, "arcs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/spherical/oned/Arc;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;

    .line 94
    .local v10, "a":Lorg/apache/commons/math3/geometry/spherical/oned/Arc;
    new-instance v4, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    new-instance v3, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getInf()D

    move-result-wide v5

    invoke-direct {v3, v5, v6}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-virtual {v8, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V

    move-object v13, v4

    .line 95
    .local v13, "start":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    new-instance v12, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    new-instance v3, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getSup()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-virtual {v8, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v3

    invoke-direct {v12, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V

    .line 96
    .local v12, "end":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    invoke-virtual {v13, v8}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->bindWith(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    .line 97
    invoke-virtual {v12, v8}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->bindWith(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    .line 99
    if-eqz p2, :cond_0

    .line 100
    new-instance v11, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getSize()D

    move-result-wide v14

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getReverse()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object v16

    invoke-direct/range {v11 .. v16}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    .local v11, "edge":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    goto :goto_1

    .line 102
    .end local v11    # "edge":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getSize()D

    move-result-wide v6

    move-object v5, v12

    move-object v4, v13

    .end local v12    # "end":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .end local v13    # "start":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .local v4, "start":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .local v5, "end":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    .end local v4    # "start":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .end local v5    # "end":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .restart local v12    # "end":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .restart local v13    # "start":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    move-object v11, v3

    .line 104
    .restart local v11    # "edge":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    :goto_1
    iget-object v3, v0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->edgeToNode:Ljava/util/Map;

    invoke-interface {v3, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v3, v0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->nodeToEdgesList:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .end local v10    # "a":Lorg/apache/commons/math3/geometry/spherical/oned/Arc;
    .end local v11    # "edge":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    .end local v12    # "end":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .end local v13    # "start":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    goto :goto_0

    .line 107
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private getFollowingEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    .locals 13
    .param p1, "previous"    # Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .line 119
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getEnd()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v0

    .line 120
    .local v0, "point":Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->root:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->tolerance:D

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCloseCuts(Lorg/apache/commons/math3/geometry/Point;D)Ljava/util/List;

    move-result-object v1

    .line 123
    .local v1, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;>;"
    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->tolerance:D

    .line 124
    .local v2, "closest":D
    const/4 v4, 0x0

    .line 125
    .local v4, "following":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 126
    .local v6, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    iget-object v7, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->nodeToEdgesList:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    .line 127
    .local v8, "edge":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    if-eq v8, p1, :cond_0

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getStart()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getIncoming()Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    move-result-object v9

    if-nez v9, :cond_0

    .line 128
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getStart()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v9

    .line 129
    .local v9, "edgeStart":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v10

    invoke-static {v10, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v10

    .line 130
    .local v10, "gap":D
    cmpg-double v12, v10, v2

    if-gtz v12, :cond_0

    .line 131
    move-wide v2, v10

    .line 132
    move-object v4, v8

    .line 135
    .end local v8    # "edge":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    .end local v9    # "edgeStart":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v10    # "gap":D
    :cond_0
    goto :goto_1

    .line 136
    .end local v6    # "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_1
    goto :goto_0

    .line 138
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    if-nez v4, :cond_4

    .line 139
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getStart()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v5

    .line 140
    .local v5, "previousStart":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    invoke-static {v6, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v6

    iget-wide v8, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->tolerance:D

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_3

    .line 142
    return-object p1

    .line 146
    :cond_3
    new-instance v6, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v7, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUTLINE_BOUNDARY_LOOP_OPEN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v6

    .line 150
    .end local v5    # "previousStart":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_4
    return-object v4
.end method


# virtual methods
.method public getEdges()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Edge;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->edgeToNode:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    .line 162
    .local v1, "previous":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->getFollowingEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->setNextEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)V

    .line 163
    .end local v1    # "previous":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    goto :goto_0

    .line 165
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->edgeToNode:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)V"
        }
    .end annotation

    .line 69
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->nodeToEdgesList:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 72
    .local v0, "attribute":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->addContribution(Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;ZLorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    .line 75
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->addContribution(Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;ZLorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    .line 78
    :cond_1
    return-void
.end method

.method public visitLeafNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)V"
        }
    .end annotation

    .line 82
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    return-void
.end method

.method public visitOrder(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;"
        }
    .end annotation

    .line 64
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->MINUS_SUB_PLUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    return-object v0
.end method
