.class Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;
.super Ljava/lang/Object;
.source "PolygonsSet.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SegmentsBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        ">;"
    }
.end annotation


# instance fields
.field private final segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;",
            ">;"
        }
    .end annotation
.end field

.field private final tolerance:D


# direct methods
.method constructor <init>(D)V
    .locals 1
    .param p1, "tolerance"    # D

    .line 1064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1065
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;->tolerance:D

    .line 1066
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;->segments:Ljava/util/List;

    .line 1067
    return-void
.end method

.method private addContribution(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Iterable;Z)V
    .locals 20
    .param p4, "reversed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;>;Z)V"
        }
    .end annotation

    .line 1102
    .local p1, "sub":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .local p2, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .local p3, "splitters":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    check-cast v2, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    .line 1104
    .local v2, "absSub":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 1105
    .local v7, "line":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->asList()Ljava/util/List;

    move-result-object v3

    .line 1106
    .local v3, "intervals":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;

    .line 1109
    .local v12, "i":Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;
    invoke-virtual {v12}, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->getInf()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move-object v4, v5

    goto :goto_1

    :cond_0
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {v12}, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->getInf()D

    move-result-wide v8

    invoke-direct {v4, v8, v9}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    invoke-virtual {v7, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v4

    :goto_1
    move-object v15, v4

    .line 1111
    .local v15, "startV":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-virtual {v12}, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->getSup()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {v12}, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->getSup()D

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    invoke-virtual {v7, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v5

    :goto_2
    move-object v14, v5

    .line 1115
    .local v14, "endV":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-direct {v0, v15, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;->selectClosest(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Ljava/lang/Iterable;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v19

    .line 1116
    .local v19, "startN":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-direct {v0, v14, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;->selectClosest(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Ljava/lang/Iterable;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v18

    .line 1118
    .local v18, "endN":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    if-eqz p4, :cond_2

    .line 1119
    iget-object v4, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;->segments:Ljava/util/List;

    new-instance v13, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getReverse()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v16

    move-object/from16 v17, p2

    invoke-direct/range {v13 .. v19}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1122
    :cond_2
    iget-object v13, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;->segments:Ljava/util/List;

    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-object/from16 v8, p2

    move-object v6, v14

    move-object v5, v15

    move-object/from16 v10, v18

    move-object/from16 v9, v19

    .end local v14    # "endV":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v15    # "startV":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v18    # "endN":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .end local v19    # "startN":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .local v5, "startV":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .local v6, "endV":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .local v9, "startN":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .local v10, "endN":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-direct/range {v4 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    .end local v5    # "startV":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v6    # "endV":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v9    # "startN":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .end local v10    # "endN":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .restart local v14    # "endV":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .restart local v15    # "startV":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .restart local v18    # "endN":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .restart local v19    # "startN":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1126
    .end local v12    # "i":Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;
    .end local v14    # "endV":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v15    # "startV":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v18    # "endN":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .end local v19    # "startN":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    :goto_3
    goto :goto_0

    .line 1127
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private selectClosest(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Ljava/lang/Iterable;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 8
    .param p1, "point"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation

    .line 1136
    .local p2, "candidates":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;>;"
    const/4 v0, 0x0

    .line 1137
    .local v0, "selected":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 1139
    .local v1, "min":D
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 1140
    .local v4, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v5

    invoke-interface {v5, p1}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    .line 1141
    .local v5, "distance":D
    cmpg-double v7, v5, v1

    if-gez v7, :cond_0

    .line 1142
    move-object v0, v4

    .line 1143
    move-wide v1, v5

    .line 1145
    .end local v4    # "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .end local v5    # "distance":D
    :cond_0
    goto :goto_0

    .line 1147
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;->tolerance:D

    cmpg-double v3, v1, v3

    if-gtz v3, :cond_2

    move-object v3, v0

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    return-object v3
.end method


# virtual methods
.method public getSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;",
            ">;"
        }
    .end annotation

    .line 1155
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;->segments:Ljava/util/List;

    return-object v0
.end method

.method public visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)V"
        }
    .end annotation

    .line 1077
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 1078
    .local v0, "attribute":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    move-result-object v1

    .line 1079
    .local v1, "splitters":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1080
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, p1, v1, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;->addContribution(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Iterable;Z)V

    .line 1082
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1083
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, p1, v1, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;->addContribution(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Iterable;Z)V

    .line 1085
    :cond_1
    return-void
.end method

.method public visitLeafNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)V"
        }
    .end annotation

    .line 1089
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    return-void
.end method

.method public visitOrder(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;"
        }
    .end annotation

    .line 1071
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->MINUS_SUB_PLUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    return-object v0
.end method
