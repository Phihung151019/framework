.class public Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;
.super Ljava/lang/Object;
.source "RegionFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$VanishingToLeaf;,
        Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;,
        Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;,
        Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$XorMerger;,
        Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$IntersectionMerger;,
        Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$UnionMerger;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final nodeCleaner:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<",
            "TS;>.NodesCleaner;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;-><init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$1;)V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->nodeCleaner:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;

    .line 45
    return-void
.end method

.method static synthetic access$400(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;
    .param p1, "x1"    # Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 36
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->recurseComplement(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    return-object v0
.end method

.method private recurseComplement(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 178
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 179
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;>;"
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->recurseComplement(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/Map;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    .line 182
    .local v1, "transformedTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 183
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 185
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 186
    .local v4, "original":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TS;>;"
    if-eqz v4, :cond_0

    .line 188
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 189
    .local v5, "transformed":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TS;>;"
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 190
    .local v7, "splitter":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    move-result-object v8

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->add(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    .line 191
    .end local v7    # "splitter":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    goto :goto_1

    .line 194
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;>;"
    .end local v4    # "original":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TS;>;"
    .end local v5    # "transformed":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TS;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_0
    goto :goto_0

    .line 196
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v1
.end method

.method private recurseComplement(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/Map;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;",
            "Ljava/util/Map<",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 209
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-nez v0, :cond_1

    .line 210
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    .local v0, "transformedNode":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    goto :goto_3

    .line 214
    .end local v0    # "transformedNode":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 215
    .local v0, "attribute":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TS;>;"
    if-eqz v0, :cond_4

    .line 216
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    .line 218
    .local v1, "plusOutside":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    :goto_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    .line 221
    .local v2, "plusInside":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    :goto_2
    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    new-instance v4, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    invoke-direct {v4}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;-><init>()V

    invoke-direct {v3, v1, v2, v4}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/NodesSet;)V

    move-object v0, v3

    .line 224
    .end local v1    # "plusOutside":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    .end local v2    # "plusInside":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    :cond_4
    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->recurseComplement(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/Map;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->recurseComplement(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/Map;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    move-object v0, v1

    .line 230
    .local v0, "transformedNode":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :goto_3
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    return-object v0
.end method


# virtual methods
.method public varargs buildConvex([Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;"
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>;"
    .local p1, "hyperplanes":[Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "[Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    array-length v1, p1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 57
    :cond_0
    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-interface {v2}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->wholeSpace()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v2

    .line 60
    .local v2, "region":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TS;>;"
    invoke-interface {v2, v1}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    .line 61
    .local v3, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 62
    move-object v4, p1

    .local v4, "arr$":[Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    array-length v5, v4

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 63
    .local v7, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    invoke-virtual {v3, v7}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertCut(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 64
    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 65
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 66
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    .line 67
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v8}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    goto :goto_3

    .line 72
    :cond_1
    invoke-interface {v7}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->wholeHyperplane()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v8

    .line 73
    .local v8, "s":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    move-object v9, v3

    .local v9, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :goto_1
    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v10

    if-eqz v10, :cond_3

    if-eqz v8, :cond_3

    .line 74
    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v10

    .line 75
    .local v10, "other":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    invoke-interface {v8, v10}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v11

    .line 76
    .local v11, "split":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<TS;>;"
    sget-object v12, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$Side:[I

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getSide()Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/commons/math3/geometry/partitioning/Side;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 91
    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v8

    goto :goto_2

    .line 89
    :pswitch_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v12, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_CONVEX_HYPERPLANES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v12, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 79
    :pswitch_1
    invoke-interface {v7, v10}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 82
    aget-object v0, p1, v1

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->wholeSpace()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->getComplement(Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v0

    return-object v0

    .line 73
    .end local v10    # "other":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    .end local v11    # "split":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<TS;>;"
    :cond_2
    :goto_2
    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v9

    goto :goto_1

    .line 62
    .end local v7    # "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    .end local v8    # "s":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    .end local v9    # "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 97
    .end local v4    # "arr$":[Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_4
    return-object v2

    .line 53
    .end local v2    # "region":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TS;>;"
    .end local v3    # "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :cond_5
    :goto_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public difference(Lorg/apache/commons/math3/geometry/partitioning/Region;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;"
        }
    .end annotation

    .line 151
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>;"
    .local p1, "region1":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TS;>;"
    .local p2, "region2":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TS;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-interface {p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;

    invoke-direct {v2, p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;-><init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Lorg/apache/commons/math3/geometry/partitioning/Region;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 153
    .local v0, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->nodeCleaner:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 154
    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v1

    return-object v1
.end method

.method public getComplement(Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;"
        }
    .end annotation

    .line 168
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>;"
    .local p1, "region":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TS;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->recurseComplement(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v0

    return-object v0
.end method

.method public intersection(Lorg/apache/commons/math3/geometry/partitioning/Region;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;"
        }
    .end annotation

    .line 123
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>;"
    .local p1, "region1":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TS;>;"
    .local p2, "region2":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TS;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-interface {p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$IntersectionMerger;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$IntersectionMerger;-><init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$1;)V

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 125
    .local v0, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->nodeCleaner:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 126
    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v1

    return-object v1
.end method

.method public union(Lorg/apache/commons/math3/geometry/partitioning/Region;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;"
        }
    .end annotation

    .line 109
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>;"
    .local p1, "region1":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TS;>;"
    .local p2, "region2":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TS;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-interface {p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$UnionMerger;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$UnionMerger;-><init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$1;)V

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 111
    .local v0, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->nodeCleaner:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 112
    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v1

    return-object v1
.end method

.method public xor(Lorg/apache/commons/math3/geometry/partitioning/Region;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>;"
    .local p1, "region1":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TS;>;"
    .local p2, "region2":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TS;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-interface {p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$XorMerger;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$XorMerger;-><init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$1;)V

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 139
    .local v0, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->nodeCleaner:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 140
    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v1

    return-object v1
.end method
