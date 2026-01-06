.class Lorg/apache/commons/math3/geometry/partitioning/BoundaryBuilder;
.super Ljava/lang/Object;
.source "BoundaryBuilder.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor<",
        "TS;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryBuilder;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryBuilder<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryBuilder;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryBuilder<TS;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    const/4 v0, 0x0

    .line 40
    .local v0, "plusOutside":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    const/4 v1, 0x0

    .line 41
    .local v1, "plusInside":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    const/4 v2, 0x0

    .line 45
    .local v2, "splitters":Lorg/apache/commons/math3/geometry/partitioning/NodesSet;, "Lorg/apache/commons/math3/geometry/partitioning/NodesSet<TS;>;"
    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/Characterization;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    .line 47
    .local v3, "plusChar":Lorg/apache/commons/math3/geometry/partitioning/Characterization;, "Lorg/apache/commons/math3/geometry/partitioning/Characterization<TS;>;"
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->touchOutside()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    new-instance v4, Lorg/apache/commons/math3/geometry/partitioning/Characterization;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->outsideTouching()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    .line 52
    .local v4, "minusChar":Lorg/apache/commons/math3/geometry/partitioning/Characterization;, "Lorg/apache/commons/math3/geometry/partitioning/Characterization<TS;>;"
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->touchInside()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 55
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->insideTouching()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    .line 56
    new-instance v5, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    invoke-direct {v5}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;-><init>()V

    move-object v2, v5

    .line 57
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->getInsideSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->addAll(Ljava/lang/Iterable;)V

    .line 58
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->getOutsideSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->addAll(Ljava/lang/Iterable;)V

    .line 62
    .end local v4    # "minusChar":Lorg/apache/commons/math3/geometry/partitioning/Characterization;, "Lorg/apache/commons/math3/geometry/partitioning/Characterization<TS;>;"
    :cond_0
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->touchInside()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 66
    new-instance v4, Lorg/apache/commons/math3/geometry/partitioning/Characterization;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->insideTouching()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    .line 67
    .restart local v4    # "minusChar":Lorg/apache/commons/math3/geometry/partitioning/Characterization;, "Lorg/apache/commons/math3/geometry/partitioning/Characterization<TS;>;"
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->touchOutside()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 70
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->outsideTouching()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    .line 71
    if-nez v2, :cond_1

    .line 72
    new-instance v5, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    invoke-direct {v5}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;-><init>()V

    move-object v2, v5

    .line 74
    :cond_1
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->getOutsideSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->addAll(Ljava/lang/Iterable;)V

    .line 75
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->getInsideSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->addAll(Ljava/lang/Iterable;)V

    .line 79
    .end local v4    # "minusChar":Lorg/apache/commons/math3/geometry/partitioning/Characterization;, "Lorg/apache/commons/math3/geometry/partitioning/Characterization<TS;>;"
    :cond_2
    if-eqz v2, :cond_3

    .line 81
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    .local v4, "up":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :goto_0
    if-eqz v4, :cond_3

    .line 82
    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->add(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    .line 81
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    goto :goto_0

    .line 87
    .end local v4    # "up":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :cond_3
    new-instance v4, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    invoke-direct {v4, v0, v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/NodesSet;)V

    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public visitLeafNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;)V"
        }
    .end annotation

    .line 93
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryBuilder;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryBuilder<TS;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    return-void
.end method

.method public visitOrder(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;"
        }
    .end annotation

    .line 33
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryBuilder;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryBuilder<TS;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->PLUS_MINUS_SUB:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    return-object v0
.end method
