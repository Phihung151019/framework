.class Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$FacetsContributionVisitor;
.super Ljava/lang/Object;
.source "PolyhedronsSet.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FacetsContributionVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;)V
    .locals 9

    .line 446
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$FacetsContributionVisitor;->this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->access$000(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;D)V

    .line 448
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v3, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    invoke-static {p1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->access$100(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;Lorg/apache/commons/math3/geometry/Point;)V

    .line 449
    return-void
.end method

.method private addContribution(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Z)V
    .locals 12
    .param p2, "reversed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;Z)V"
        }
    .end annotation

    .line 479
    .local p1, "facet":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v0

    .line 480
    .local v0, "polygon":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getSize()D

    move-result-wide v1

    .line 482
    .local v1, "area":D
    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 483
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$FacetsContributionVisitor;->this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->access$200(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;D)V

    .line 484
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$FacetsContributionVisitor;->this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    sget-object v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->access$300(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_1

    .line 487
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 488
    .local v3, "plane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getBarycenter()Lorg/apache/commons/math3/geometry/Point;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v11

    .line 489
    .local v11, "facetB":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getNormal()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    invoke-virtual {v11, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v4

    mul-double/2addr v4, v1

    .line 490
    .local v4, "scaled":D
    if-eqz p2, :cond_1

    .line 491
    neg-double v4, v4

    move-wide v9, v4

    goto :goto_0

    .line 490
    :cond_1
    move-wide v9, v4

    .line 494
    .end local v4    # "scaled":D
    .local v9, "scaled":D
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$FacetsContributionVisitor;->this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$FacetsContributionVisitor;->this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getSize()D

    move-result-wide v5

    add-double/2addr v5, v9

    invoke-static {v4, v5, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->access$400(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;D)V

    .line 495
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$FacetsContributionVisitor;->this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    new-instance v5, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$FacetsContributionVisitor;->this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getBarycenter()Lorg/apache/commons/math3/geometry/Point;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v5 .. v11}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-static {v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->access$500(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;Lorg/apache/commons/math3/geometry/Point;)V

    .line 499
    .end local v3    # "plane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .end local v9    # "scaled":D
    .end local v11    # "facetB":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :goto_1
    return-void
.end method


# virtual methods
.method public visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)V"
        }
    .end annotation

    .line 459
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 461
    .local v0, "attribute":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 462
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$FacetsContributionVisitor;->addContribution(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Z)V

    .line 464
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 465
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$FacetsContributionVisitor;->addContribution(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Z)V

    .line 467
    :cond_1
    return-void
.end method

.method public visitLeafNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)V"
        }
    .end annotation

    .line 471
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    return-void
.end method

.method public visitOrder(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;"
        }
    .end annotation

    .line 453
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->MINUS_SUB_PLUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    return-object v0
.end method
