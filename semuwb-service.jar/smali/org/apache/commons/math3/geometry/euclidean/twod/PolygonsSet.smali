.class public Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;
.super Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
.source "PolygonsSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;,
        Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;,
        Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;,
        Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_TOLERANCE:D = 1.0E-10


# instance fields
.field private vertices:[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 162
    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(D)V

    .line 163
    return-void
.end method

.method public constructor <init>(D)V
    .locals 0
    .param p1, "tolerance"    # D

    .line 55
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(D)V

    .line 56
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 11
    .param p1, "xMin"    # D
    .param p3, "xMax"    # D
    .param p5, "yMin"    # D
    .param p7, "yMax"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 216
    const-wide v9, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(DDDDD)V

    .line 217
    return-void
.end method

.method public constructor <init>(DDDDD)V
    .locals 1
    .param p1, "xMin"    # D
    .param p3, "xMax"    # D
    .param p5, "yMin"    # D
    .param p7, "yMax"    # D
    .param p9, "tolerance"    # D

    .line 120
    invoke-static/range {p1 .. p10}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->boxBoundary(DDDDD)[Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v0

    invoke-direct {p0, v0, p9, p10}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>([Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;D)V

    .line 121
    return-void
.end method

.method public varargs constructor <init>(D[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 1
    .param p1, "hyperplaneThickness"    # D
    .param p3, "vertices"    # [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 154
    invoke-static {p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->verticesToTree(D[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 203
    .local p1, "boundary":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;>;"
    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(Ljava/util/Collection;D)V

    .line 204
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;D)V
    .locals 0
    .param p2, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;>;D)V"
        }
    .end annotation

    .line 106
    .local p1, "boundary":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Ljava/util/Collection;D)V

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 177
    .local p1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    .line 178
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V
    .locals 0
    .param p2, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;D)V"
        }
    .end annotation

    .line 80
    .local p1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    .line 81
    return-void
.end method

.method private static boxBoundary(DDDDD)[Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .locals 17
    .param p0, "xMin"    # D
    .param p2, "xMax"    # D
    .param p4, "yMin"    # D
    .param p6, "yMax"    # D
    .param p8, "tolerance"    # D

    .line 230
    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    sub-double v10, v2, v8

    cmpl-double v10, v0, v10

    if-gez v10, :cond_1

    sub-double v10, v6, v8

    cmpl-double v10, v4, v10

    if-ltz v10, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    new-instance v10, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {v10, v0, v1, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    .line 235
    .local v10, "minMin":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    new-instance v11, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {v11, v0, v1, v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    .line 236
    .local v11, "minMax":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    new-instance v12, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {v12, v2, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    .line 237
    .local v12, "maxMin":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    new-instance v13, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {v13, v2, v3, v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    .line 238
    .local v13, "maxMax":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const/4 v14, 0x4

    new-array v14, v14, [Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    new-instance v15, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {v15, v10, v12, v8, v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    const/16 v16, 0x0

    aput-object v15, v14, v16

    new-instance v15, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {v15, v12, v13, v8, v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    const/16 v16, 0x1

    aput-object v15, v14, v16

    new-instance v15, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {v15, v13, v11, v8, v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    const/16 v16, 0x2

    aput-object v15, v14, v16

    new-instance v15, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {v15, v11, v10, v8, v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    const/16 v16, 0x3

    aput-object v15, v14, v16

    return-object v14

    .line 232
    .end local v10    # "minMin":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v11    # "minMax":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v12    # "maxMin":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v13    # "maxMax":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_1
    :goto_0
    const/4 v10, 0x0

    return-object v10
.end method

.method private closeVerticesConnections(Ljava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;",
            ">;)I"
        }
    .end annotation

    .line 842
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;>;"
    const/4 v0, 0x0

    .line 843
    .local v0, "connected":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    .line 844
    .local v2, "segment":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getNext()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 845
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v3

    .line 846
    .local v3, "end":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const/4 v4, 0x0

    .line 847
    .local v4, "selectedNext":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 848
    .local v5, "min":D
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    .line 849
    .local v8, "candidateNext":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getPrevious()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v9

    if-nez v9, :cond_0

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 850
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v9

    invoke-static {v3, v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D

    move-result-wide v9

    .line 851
    .local v9, "distance":D
    cmpg-double v11, v9, v5

    if-gez v11, :cond_0

    .line 852
    move-object v4, v8

    .line 853
    move-wide v5, v9

    .line 856
    .end local v8    # "candidateNext":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    .end local v9    # "distance":D
    :cond_0
    goto :goto_1

    .line 857
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getTolerance()D

    move-result-wide v7

    cmpg-double v7, v5, v7

    if-gtz v7, :cond_2

    .line 859
    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->setNext(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;)V

    .line 860
    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->setPrevious(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;)V

    .line 861
    add-int/lit8 v0, v0, 0x1

    .line 864
    .end local v2    # "segment":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    .end local v3    # "end":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v4    # "selectedNext":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    .end local v5    # "min":D
    :cond_2
    goto :goto_0

    .line 865
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    return v0
.end method

.method private filterSpuriousVertices(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;",
            ">;)V"
        }
    .end annotation

    .line 931
    .local p1, "loop":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 932
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    .line 933
    .local v1, "previous":Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
    add-int/lit8 v2, v0, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v2, v3

    .line 934
    .local v2, "j":I
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    .line 935
    .local v3, "next":Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getAngle()D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getAngle()D

    move-result-wide v7

    sget-wide v9, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    invoke-static/range {v5 .. v10}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 939
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v6

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    invoke-interface {p1, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 940
    add-int/lit8 v4, v0, -0x1

    .end local v0    # "i":I
    .local v4, "i":I
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v4

    .line 931
    .end local v1    # "previous":Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
    .end local v2    # "j":I
    .end local v3    # "next":Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
    .end local v4    # "i":I
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 943
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private followLoop(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;)Ljava/util/List;
    .locals 5
    .param p1, "defining"    # Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;",
            ">;"
        }
    .end annotation

    .line 892
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 893
    .local v0, "loop":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 894
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->setProcessed(Z)V

    .line 897
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getNext()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v2

    .line 898
    .local v2, "next":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    :goto_0
    if-eq v2, p1, :cond_0

    if-eqz v2, :cond_0

    .line 899
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 900
    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->setProcessed(Z)V

    .line 901
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getNext()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v2

    goto :goto_0

    .line 904
    :cond_0
    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 907
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getPrevious()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v4

    .line 908
    .local v4, "previous":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    :goto_1
    if-eqz v4, :cond_1

    .line 909
    invoke-interface {v0, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 910
    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->setProcessed(Z)V

    .line 911
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getPrevious()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v4

    goto :goto_1

    .line 916
    .end local v4    # "previous":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->filterSpuriousVertices(Ljava/util/List;)V

    .line 918
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 920
    const/4 v1, 0x0

    return-object v1

    .line 922
    :cond_2
    return-object v0
.end method

.method private getUnprocessed(Ljava/util/List;)Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;"
        }
    .end annotation

    .line 874
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    .line 875
    .local v1, "segment":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->isProcessed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 876
    return-object v1

    .line 878
    .end local v1    # "segment":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    :cond_0
    goto :goto_0

    .line 879
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static insertEdges(DLorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/List;)V
    .locals 19
    .param p0, "hyperplaneThickness"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;",
            ">;)V"
        }
    .end annotation

    .line 326
    .local p2, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .local p3, "edges":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;>;"
    move-wide/from16 v0, p0

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 327
    .local v3, "index":I
    const/4 v4, 0x0

    .line 328
    .local v4, "inserted":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;
    :goto_0
    if-nez v4, :cond_2

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 329
    add-int/lit8 v5, v3, 0x1

    move-object/from16 v6, p3

    .end local v3    # "index":I
    .local v5, "index":I
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    .line 330
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getNode()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    if-nez v3, :cond_1

    .line 331
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertCut(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 332
    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->setNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    move v3, v5

    goto :goto_0

    .line 334
    :cond_0
    const/4 v4, 0x0

    move v3, v5

    goto :goto_0

    .line 337
    :cond_1
    const/4 v4, 0x0

    move v3, v5

    goto :goto_0

    .line 328
    .end local v5    # "index":I
    .restart local v3    # "index":I
    :cond_2
    move-object/from16 v6, p3

    .line 341
    if-nez v4, :cond_5

    .line 344
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v5

    .line 345
    .local v5, "parent":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v7

    if-ne v2, v7, :cond_3

    goto :goto_1

    .line 348
    :cond_3
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    goto :goto_2

    .line 346
    :cond_4
    :goto_1
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 350
    :goto_2
    return-void

    .line 355
    .end local v5    # "parent":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v5, "plusList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v7, "minusList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    .line 358
    .local v9, "edge":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;
    if-eq v9, v4, :cond_d

    .line 359
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v10

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v10

    .line 360
    .local v10, "startOffset":D
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v12

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v12

    .line 361
    .local v12, "endOffset":D
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    cmpg-double v14, v14, v0

    const-wide/16 v15, 0x0

    if-gtz v14, :cond_6

    sget-object v14, Lorg/apache/commons/math3/geometry/partitioning/Side;->HYPER:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_4

    :cond_6
    cmpg-double v14, v10, v15

    if-gez v14, :cond_7

    sget-object v14, Lorg/apache/commons/math3/geometry/partitioning/Side;->MINUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_4

    :cond_7
    sget-object v14, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    .line 363
    .local v14, "startSide":Lorg/apache/commons/math3/geometry/partitioning/Side;
    :goto_4
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v17

    cmpg-double v17, v17, v0

    if-gtz v17, :cond_8

    sget-object v15, Lorg/apache/commons/math3/geometry/partitioning/Side;->HYPER:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_5

    :cond_8
    cmpg-double v15, v12, v15

    if-gez v15, :cond_9

    sget-object v15, Lorg/apache/commons/math3/geometry/partitioning/Side;->MINUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_5

    :cond_9
    sget-object v15, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    .line 365
    .local v15, "endSide":Lorg/apache/commons/math3/geometry/partitioning/Side;
    :goto_5
    sget-object v16, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$Side:[I

    invoke-virtual {v14}, Lorg/apache/commons/math3/geometry/partitioning/Side;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    .line 387
    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    if-ne v15, v2, :cond_c

    .line 388
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 377
    :pswitch_0
    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    if-ne v15, v2, :cond_a

    .line 379
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->split(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    move-result-object v2

    .line 380
    .local v2, "splitPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    move-object/from16 v16, v2

    .end local v2    # "splitPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    .local v16, "splitPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getIncoming()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getOutgoing()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    .end local v16    # "splitPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    goto :goto_6

    .line 383
    :cond_a
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    goto :goto_6

    .line 367
    :pswitch_1
    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/Side;->MINUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    if-ne v15, v2, :cond_b

    .line 369
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->split(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    move-result-object v2

    .line 370
    .restart local v2    # "splitPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    move-object/from16 v16, v2

    .end local v2    # "splitPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    .restart local v16    # "splitPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getOutgoing()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getIncoming()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    .end local v16    # "splitPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    goto :goto_6

    .line 373
    :cond_b
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    goto :goto_6

    .line 389
    :cond_c
    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/Side;->MINUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    if-ne v15, v2, :cond_d

    .line 390
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    .end local v9    # "edge":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;
    .end local v10    # "startOffset":D
    .end local v12    # "endOffset":D
    .end local v14    # "startSide":Lorg/apache/commons/math3/geometry/partitioning/Side;
    .end local v15    # "endSide":Lorg/apache/commons/math3/geometry/partitioning/Side;
    :cond_d
    :goto_6
    move-object/from16 v2, p2

    goto/16 :goto_3

    .line 398
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 399
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    invoke-static {v0, v1, v2, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->insertEdges(DLorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/List;)V

    goto :goto_7

    .line 401
    :cond_f
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v8}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 403
    :goto_7
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 404
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    invoke-static {v0, v1, v2, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->insertEdges(DLorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/List;)V

    goto :goto_8

    .line 406
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v8}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 409
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private naturalFollowerConnections(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;",
            ">;)I"
        }
    .end annotation

    .line 786
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;>;"
    const/4 v0, 0x0

    .line 787
    .local v0, "connected":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    .line 788
    .local v2, "segment":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getNext()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v3

    if-nez v3, :cond_1

    .line 789
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getNode()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    .line 790
    .local v3, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getEndNode()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    .line 791
    .local v4, "end":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    .line 792
    .local v6, "candidateNext":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getPrevious()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getNode()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v7

    if-ne v7, v4, :cond_0

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getStartNode()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v7

    if-ne v7, v3, :cond_0

    .line 796
    invoke-virtual {v2, v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->setNext(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;)V

    .line 797
    invoke-virtual {v6, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->setPrevious(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;)V

    .line 798
    add-int/lit8 v0, v0, 0x1

    .line 799
    goto :goto_2

    .line 801
    .end local v6    # "candidateNext":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    :cond_0
    goto :goto_1

    .line 803
    .end local v2    # "segment":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    .end local v3    # "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .end local v4    # "end":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    goto :goto_0

    .line 804
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return v0
.end method

.method private splitEdgeConnections(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;",
            ">;)I"
        }
    .end annotation

    .line 812
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;>;"
    const/4 v0, 0x0

    .line 813
    .local v0, "connected":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    .line 814
    .local v2, "segment":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getNext()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v3

    if-nez v3, :cond_1

    .line 815
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getNode()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v3

    .line 816
    .local v3, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getEndNode()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    .line 817
    .local v4, "end":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    .line 818
    .local v6, "candidateNext":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getPrevious()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getNode()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v7

    if-ne v7, v3, :cond_0

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getStartNode()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v7

    if-ne v7, v4, :cond_0

    .line 822
    invoke-virtual {v2, v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->setNext(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;)V

    .line 823
    invoke-virtual {v6, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->setPrevious(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;)V

    .line 824
    add-int/lit8 v0, v0, 0x1

    .line 825
    goto :goto_2

    .line 827
    .end local v6    # "candidateNext":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    :cond_0
    goto :goto_1

    .line 829
    .end local v2    # "segment":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    .end local v3    # "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .end local v4    # "end":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    goto :goto_0

    .line 830
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return v0
.end method

.method private static varargs verticesToTree(D[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 13
    .param p0, "hyperplaneThickness"    # D
    .param p2, "vertices"    # [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D[",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ")",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation

    .line 264
    array-length v0, p2

    .line 265
    .local v0, "n":I
    if-nez v0, :cond_0

    .line 267
    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 271
    :cond_0
    new-array v1, v0, [Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    .line 272
    .local v1, "vArray":[Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 273
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    aget-object v4, p2, v2

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V

    aput-object v3, v1, v2

    .line 272
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 277
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 278
    .local v2, "edges":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_5

    .line 281
    aget-object v4, v1, v3

    .line 282
    .local v4, "start":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    add-int/lit8 v5, v3, 0x1

    rem-int/2addr v5, v0

    aget-object v5, v1, v5

    .line 287
    .local v5, "end":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->sharedLineWith(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;)Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v6

    .line 288
    .local v6, "line":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    if-nez v6, :cond_2

    .line 289
    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v8

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v9

    invoke-direct {v7, v8, v9, p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    move-object v6, v7

    .line 293
    :cond_2
    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    invoke-direct {v7, v4, v5, v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    move-object v7, v1

    .local v7, "arr$":[Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    array-length v8, v7

    .local v8, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_2
    if-ge v9, v8, :cond_4

    aget-object v10, v7, v9

    .line 297
    .local v10, "vertex":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    if-eq v10, v4, :cond_3

    if-eq v10, v5, :cond_3

    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v11

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    cmpg-double v11, v11, p0

    if-gtz v11, :cond_3

    .line 299
    invoke-virtual {v10, v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->bindWith(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    .line 296
    .end local v10    # "vertex":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 278
    .end local v4    # "start":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    .end local v5    # "end":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    .end local v6    # "line":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .end local v7    # "arr$":[Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    .end local v8    # "len$":I
    .end local v9    # "i$":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 306
    .end local v3    # "i":I
    :cond_5
    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>()V

    .line 307
    .local v3, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-static {p0, p1, v3, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->insertEdges(DLorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/List;)V

    .line 309
    return-object v3
.end method


# virtual methods
.method public buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;"
        }
    .end annotation

    .line 604
    .local p1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getTolerance()D

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-object v0
.end method

.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    move-result-object p1

    return-object p1
.end method

.method protected computeGeometricalProperties()V
    .locals 31

    .line 611
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getVertices()[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v1

    .line 613
    .local v1, "v":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    array-length v2, v1

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    if-nez v2, :cond_1

    .line 614
    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    .line 615
    .local v2, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 617
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setSize(D)V

    .line 618
    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_0

    .line 620
    :cond_0
    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setSize(D)V

    .line 621
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {v3, v6, v7, v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    .line 623
    .end local v2    # "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    :goto_0
    move-object/from16 v19, v1

    goto/16 :goto_3

    :cond_1
    aget-object v2, v1, v5

    aget-object v2, v2, v5

    if-nez v2, :cond_2

    .line 625
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setSize(D)V

    .line 626
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    move-object/from16 v19, v1

    goto/16 :goto_3

    .line 630
    :cond_2
    const-wide/16 v8, 0x0

    .line 631
    .local v8, "sum":D
    const-wide/16 v10, 0x0

    .line 632
    .local v10, "sumX":D
    const-wide/16 v12, 0x0

    .line 634
    .local v12, "sumY":D
    move-object v2, v1

    .local v2, "arr$":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_1
    if-ge v14, v5, :cond_4

    aget-object v15, v2, v14

    .line 635
    .local v15, "loop":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    move-wide/from16 v16, v6

    array-length v6, v15

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v15, v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v6

    .line 636
    .local v6, "x1":D
    array-length v3, v15

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v15, v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v3

    .line 637
    .local v3, "y1":D
    move-object/from16 v18, v15

    move-object/from16 v19, v1

    move-object/from16 v1, v18

    move-object/from16 v18, v2

    .end local v2    # "arr$":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .local v1, "arr$":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .local v18, "arr$":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .local v19, "v":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    array-length v2, v1

    .local v2, "len$":I
    const/16 v20, 0x0

    move/from16 v30, v20

    move-object/from16 v20, v1

    move/from16 v1, v30

    .local v1, "i$":I
    .local v20, "arr$":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v21, v20, v1

    .line 638
    .local v21, "point":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    move-wide/from16 v22, v6

    .line 639
    .local v22, "x0":D
    move-wide/from16 v24, v3

    .line 640
    .local v24, "y0":D
    invoke-virtual/range {v21 .. v21}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v6

    .line 641
    invoke-virtual/range {v21 .. v21}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v3

    .line 642
    mul-double v26, v22, v3

    mul-double v28, v24, v6

    sub-double v26, v26, v28

    .line 643
    .local v26, "factor":D
    add-double v8, v8, v26

    .line 644
    add-double v28, v22, v6

    mul-double v28, v28, v26

    add-double v10, v10, v28

    .line 645
    add-double v28, v24, v3

    mul-double v28, v28, v26

    add-double v12, v12, v28

    .line 637
    .end local v21    # "point":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v22    # "x0":D
    .end local v24    # "y0":D
    .end local v26    # "factor":D
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 634
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "y1":D
    .end local v6    # "x1":D
    .end local v15    # "loop":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v20    # "arr$":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v6, v16

    move-object/from16 v2, v18

    move-object/from16 v1, v19

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_1

    .end local v18    # "arr$":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v19    # "v":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .local v1, "v":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .local v2, "arr$":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_4
    move-object/from16 v19, v1

    move-object/from16 v18, v2

    move-wide/from16 v16, v6

    .line 649
    .end local v1    # "v":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v2    # "arr$":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v5    # "len$":I
    .end local v14    # "i$":I
    .restart local v19    # "v":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    cmpg-double v1, v8, v16

    if-gez v1, :cond_5

    .line 651
    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setSize(D)V

    .line 652
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_3

    .line 654
    :cond_5
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    div-double v1, v8, v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setSize(D)V

    .line 655
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double v4, v8, v2

    div-double v4, v10, v4

    mul-double/2addr v2, v8

    div-double v2, v12, v2

    invoke-direct {v1, v4, v5, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    .line 660
    .end local v8    # "sum":D
    .end local v10    # "sumX":D
    .end local v12    # "sumY":D
    :goto_3
    return-void
.end method

.method public getVertices()[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 25

    .line 686
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->vertices:[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    if-nez v1, :cond_f

    .line 687
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    if-nez v2, :cond_0

    .line 688
    new-array v1, v1, [[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->vertices:[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    goto/16 :goto_8

    .line 692
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getTolerance()D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;-><init>(D)V

    .line 693
    .local v2, "visitor":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 694
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;->getSegments()Ljava/util/List;

    move-result-object v4

    .line 698
    .local v4, "segments":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 699
    .local v5, "pending":I
    invoke-direct {v0, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->naturalFollowerConnections(Ljava/util/List;)I

    move-result v6

    sub-int/2addr v5, v6

    .line 700
    if-lez v5, :cond_1

    .line 701
    invoke-direct {v0, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->splitEdgeConnections(Ljava/util/List;)I

    move-result v6

    sub-int/2addr v5, v6

    .line 703
    :cond_1
    if-lez v5, :cond_2

    .line 704
    invoke-direct {v0, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->closeVerticesConnections(Ljava/util/List;)I

    move-result v6

    sub-int/2addr v5, v6

    .line 708
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 709
    .local v6, "loops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;>;>;"
    invoke-direct {v0, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getUnprocessed(Ljava/util/List;)Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v7

    .local v7, "s":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    :goto_0
    if-eqz v7, :cond_5

    .line 710
    invoke-direct {v0, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->followLoop(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;)Ljava/util/List;

    move-result-object v8

    .line 711
    .local v8, "loop":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;>;"
    if-eqz v8, :cond_4

    .line 712
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v9

    if-nez v9, :cond_3

    .line 714
    invoke-virtual {v6, v1, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 717
    :cond_3
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    .end local v8    # "loop":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;>;"
    :cond_4
    :goto_1
    invoke-direct {v0, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getUnprocessed(Ljava/util/List;)Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v7

    goto :goto_0

    .line 723
    .end local v7    # "s":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iput-object v7, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->vertices:[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 724
    const/4 v7, 0x0

    .line 726
    .local v7, "i":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 727
    .local v9, "loop":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v12, 0x2

    if-lt v10, v12, :cond_d

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v12, :cond_6

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v10

    if-nez v10, :cond_6

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v10

    if-nez v10, :cond_6

    move-object/from16 v24, v2

    move/from16 v17, v3

    move-object/from16 v18, v4

    const/16 v19, 0x0

    goto/16 :goto_6

    .line 736
    :cond_6
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v10

    if-nez v10, :cond_b

    .line 738
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v10, v12

    new-array v10, v10, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 739
    .local v10, "array":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const/4 v12, 0x0

    .line 740
    .local v12, "j":I
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    .line 742
    .local v14, "segment":Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
    move/from16 v17, v3

    move-object/from16 v18, v4

    .end local v4    # "segments":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;>;"
    .local v18, "segments":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;>;"
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-nez v12, :cond_7

    .line 744
    const/16 v19, 0x0

    invoke-virtual {v14}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v11

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-virtual {v14}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v15

    invoke-virtual {v11, v15}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v15

    .line 745
    .local v15, "x":D
    div-double v22, v15, v20

    move-object/from16 v24, v2

    .end local v2    # "visitor":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;
    .local v24, "visitor":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;
    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    sub-double v1, v15, v1

    .line 746
    .end local v15    # "x":D
    .local v1, "x":D
    add-int/lit8 v15, v12, 0x1

    .end local v12    # "j":I
    .local v15, "j":I
    aput-object v19, v10, v12

    .line 747
    add-int/lit8 v12, v15, 0x1

    .end local v15    # "j":I
    .restart local v12    # "j":I
    invoke-virtual {v14}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v11

    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-direct {v3, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    invoke-virtual {v11, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v3

    aput-object v3, v10, v15

    goto :goto_4

    .line 742
    .end local v1    # "x":D
    .end local v24    # "visitor":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;
    .restart local v2    # "visitor":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;
    :cond_7
    move-object/from16 v24, v2

    const/16 v19, 0x0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    .line 750
    .end local v2    # "visitor":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;
    .restart local v24    # "visitor":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;
    :goto_4
    array-length v1, v10

    add-int/lit8 v1, v1, -0x1

    if-ge v12, v1, :cond_8

    .line 752
    add-int/lit8 v1, v12, 0x1

    .end local v12    # "j":I
    .local v1, "j":I
    invoke-virtual {v14}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v2

    aput-object v2, v10, v12

    move v12, v1

    .line 755
    .end local v1    # "j":I
    .restart local v12    # "j":I
    :cond_8
    array-length v1, v10

    add-int/lit8 v1, v1, -0x1

    if-ne v12, v1, :cond_9

    .line 757
    invoke-virtual {v14}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v1

    invoke-virtual {v14}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v1

    .line 758
    .local v1, "x":D
    div-double v3, v1, v20

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    move-wide/from16 v20, v1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .end local v1    # "x":D
    .local v20, "x":D
    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    add-double v1, v20, v1

    .line 759
    .end local v20    # "x":D
    .restart local v1    # "x":D
    add-int/lit8 v3, v12, 0x1

    .end local v12    # "j":I
    .local v3, "j":I
    invoke-virtual {v14}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v4

    new-instance v11, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-direct {v11, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    invoke-virtual {v4, v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v4

    aput-object v4, v10, v12

    move v12, v3

    .line 762
    .end local v1    # "x":D
    .end local v3    # "j":I
    .end local v14    # "segment":Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
    .restart local v12    # "j":I
    :cond_9
    move/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v2, v24

    const/4 v1, 0x0

    goto/16 :goto_3

    .line 740
    .end local v18    # "segments":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;>;"
    .end local v24    # "visitor":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;
    .restart local v2    # "visitor":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;
    .restart local v4    # "segments":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;>;"
    :cond_a
    move-object/from16 v24, v2

    move/from16 v17, v3

    move-object/from16 v18, v4

    .line 763
    .end local v2    # "visitor":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;
    .end local v4    # "segments":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    .restart local v18    # "segments":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;>;"
    .restart local v24    # "visitor":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->vertices:[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    add-int/lit8 v2, v7, 0x1

    .end local v7    # "i":I
    .local v2, "i":I
    aput-object v10, v1, v7

    .line 764
    .end local v10    # "array":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v12    # "j":I
    move v7, v2

    const/4 v11, 0x0

    goto/16 :goto_7

    .line 765
    .end local v18    # "segments":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;>;"
    .end local v24    # "visitor":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;
    .local v2, "visitor":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;
    .restart local v4    # "segments":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;>;"
    .restart local v7    # "i":I
    :cond_b
    move-object/from16 v24, v2

    move/from16 v17, v3

    move-object/from16 v18, v4

    .end local v2    # "visitor":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;
    .end local v4    # "segments":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;>;"
    .restart local v18    # "segments":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;>;"
    .restart local v24    # "visitor":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 766
    .local v1, "array":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const/4 v2, 0x0

    .line 767
    .local v2, "j":I
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    .line 768
    .local v4, "segment":Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
    add-int/lit8 v10, v2, 0x1

    .end local v2    # "j":I
    .local v10, "j":I
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v11

    aput-object v11, v1, v2

    .line 769
    .end local v4    # "segment":Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
    move v2, v10

    goto :goto_5

    .line 770
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v10    # "j":I
    .restart local v2    # "j":I
    :cond_c
    iget-object v3, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->vertices:[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    add-int/lit8 v4, v7, 0x1

    .end local v7    # "i":I
    .local v4, "i":I
    aput-object v1, v3, v7

    move v7, v4

    const/4 v11, 0x0

    goto :goto_7

    .line 727
    .end local v1    # "array":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v18    # "segments":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;>;"
    .end local v24    # "visitor":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;
    .local v2, "visitor":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;
    .local v4, "segments":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;>;"
    .restart local v7    # "i":I
    :cond_d
    move-object/from16 v24, v2

    move/from16 v17, v3

    move-object/from16 v18, v4

    const/16 v19, 0x0

    .line 730
    .end local v2    # "visitor":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;
    .end local v4    # "segments":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;>;"
    .restart local v18    # "segments":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;>;"
    .restart local v24    # "visitor":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;
    :goto_6
    const/4 v11, 0x0

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v1

    .line 731
    .local v1, "line":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->vertices:[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    add-int/lit8 v3, v7, 0x1

    .end local v7    # "i":I
    .local v3, "i":I
    const/4 v4, 0x3

    new-array v4, v4, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    aput-object v19, v4, v11

    new-instance v10, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    const-wide v13, -0x3810000020000000L    # -3.4028234663852886E38

    invoke-direct {v10, v13, v14}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    invoke-virtual {v1, v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v10

    aput-object v10, v4, v17

    new-instance v10, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    const-wide v13, 0x47efffffe0000000L    # 3.4028234663852886E38

    invoke-direct {v10, v13, v14}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    invoke-virtual {v1, v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v10

    aput-object v10, v4, v12

    aput-object v4, v2, v7

    .line 736
    .end local v1    # "line":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    move v7, v3

    .line 772
    .end local v3    # "i":I
    .end local v9    # "loop":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;>;"
    .restart local v7    # "i":I
    :goto_7
    move v1, v11

    move/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v2, v24

    goto/16 :goto_2

    .line 726
    .end local v18    # "segments":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;>;"
    .end local v24    # "visitor":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;
    .restart local v2    # "visitor":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;
    .restart local v4    # "segments":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;>;"
    :cond_e
    move-object/from16 v24, v2

    move-object/from16 v18, v4

    .line 777
    .end local v2    # "visitor":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;
    .end local v4    # "segments":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;>;"
    .end local v5    # "pending":I
    .end local v6    # "loops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;>;>;"
    .end local v7    # "i":I
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_f
    :goto_8
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->vertices:[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v1}, [[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    return-object v1
.end method
