.class public abstract Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
.super Ljava/lang/Object;
.source "AbstractSubHyperplane.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        "T::",
        "Lorg/apache/commons/math3/geometry/Space;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
        "TS;>;"
    }
.end annotation


# instance fields
.field private final hyperplane:Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final remainingRegion:Lorg/apache/commons/math3/geometry/partitioning/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TT;>;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;"
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    .local p2, "remainingRegion":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->hyperplane:Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    .line 54
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->remainingRegion:Lorg/apache/commons/math3/geometry/partitioning/Region;

    .line 55
    return-void
.end method

.method private recurseTransform(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Transform;Ljava/util/Map;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Transform<",
            "TS;TT;>;",
            "Ljava/util/Map<",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TT;>;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TT;>;"
        }
    .end annotation

    .line 151
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;"
    .local p2, "transformed":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    .local p3, "transform":Lorg/apache/commons/math3/geometry/partitioning/Transform;, "Lorg/apache/commons/math3/geometry/partitioning/Transform<TS;TT;>;"
    .local p4, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    .local v0, "transformedNode":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;"
    goto :goto_2

    .line 156
    .end local v0    # "transformedNode":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;"
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 157
    .local v0, "attribute":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TT;>;"
    if-eqz v0, :cond_3

    .line 158
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->hyperplane:Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    invoke-interface {p3, v1, v3, p2}, Lorg/apache/commons/math3/geometry/partitioning/Transform;->apply(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    .line 160
    .local v1, "tPO":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TT;>;"
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->hyperplane:Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    invoke-interface {p3, v2, v3, p2}, Lorg/apache/commons/math3/geometry/partitioning/Transform;->apply(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    .line 163
    .local v2, "tPI":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TT;>;"
    :goto_1
    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    new-instance v4, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    invoke-direct {v4}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;-><init>()V

    invoke-direct {v3, v1, v2, v4}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/NodesSet;)V

    move-object v0, v3

    .line 166
    .end local v1    # "tPO":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TT;>;"
    .end local v2    # "tPI":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TT;>;"
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->hyperplane:Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    invoke-interface {p3, v2, v3, p2}, Lorg/apache/commons/math3/geometry/partitioning/Transform;->apply(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3, p4}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->recurseTransform(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Transform;Ljava/util/Map;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    invoke-direct {p0, v4, p2, p3, p4}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->recurseTransform(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Transform;Ljava/util/Map;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    move-object v0, v1

    .line 172
    .local v0, "transformedNode":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;"
    :goto_2
    invoke-interface {p4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    return-object v0
.end method


# virtual methods
.method public applyTransform(Lorg/apache/commons/math3/geometry/partitioning/Transform;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Transform<",
            "TS;TT;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<",
            "TS;TT;>;"
        }
    .end annotation

    .line 112
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;"
    .local p1, "transform":Lorg/apache/commons/math3/geometry/partitioning/Transform;, "Lorg/apache/commons/math3/geometry/partitioning/Transform<TS;TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->hyperplane:Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/Transform;->apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    .line 115
    .local v0, "tHyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 116
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;>;"
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->remainingRegion:Lorg/apache/commons/math3/geometry/partitioning/Region;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    invoke-direct {p0, v2, v0, p1, v1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->recurseTransform(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Transform;Ljava/util/Map;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    .line 120
    .local v2, "tTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 121
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 123
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 124
    .local v5, "original":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TT;>;"
    if-eqz v5, :cond_0

    .line 126
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 127
    .local v6, "transformed":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TT;>;"
    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 128
    .local v8, "splitter":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;"
    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    move-result-object v9

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v9, v10}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->add(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    .line 129
    .end local v8    # "splitter":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;"
    goto :goto_1

    .line 132
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;>;"
    .end local v5    # "original":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TT;>;"
    .end local v6    # "transformed":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TT;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_0
    goto :goto_0

    .line 134
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->remainingRegion:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/geometry/partitioning/Region;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    move-result-object v3

    return-object v3
.end method

.method protected abstract buildNew(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TT;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<",
            "TS;TT;>;"
        }
    .end annotation
.end method

.method public copySelf()Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<",
            "TS;TT;>;"
        }
    .end annotation

    .line 67
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->hyperplane:Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->remainingRegion:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1

    .line 38
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    move-result-object v0

    return-object v0
.end method

.method public getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "TS;>;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->hyperplane:Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    return-object v0
.end method

.method public getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TT;>;"
        }
    .end annotation

    .line 85
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->remainingRegion:Lorg/apache/commons/math3/geometry/partitioning/Region;

    return-object v0
.end method

.method public getSize()D
    .locals 2

    .line 90
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->remainingRegion:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getSize()D

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 188
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->remainingRegion:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public reunite(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<",
            "TS;TT;>;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;"
    .local p1, "other":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    .line 97
    .local v0, "o":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;"
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->hyperplane:Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {v2}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;-><init>()V

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->remainingRegion:Lorg/apache/commons/math3/geometry/partitioning/Region;

    iget-object v4, v0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->remainingRegion:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->union(Lorg/apache/commons/math3/geometry/partitioning/Region;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic reunite(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 0

    .line 38
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->reunite(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    move-result-object p1

    return-object p1
.end method

.method public side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Side;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Side;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;"
    .local p1, "hyper":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getSide()Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v0

    return-object v0
.end method

.method public abstract split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<",
            "TS;>;"
        }
    .end annotation
.end method
