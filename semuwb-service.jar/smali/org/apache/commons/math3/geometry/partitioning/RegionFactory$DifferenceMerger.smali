.class Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;
.super Ljava/lang/Object;
.source "RegionFactory.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;
.implements Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DifferenceMerger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger<",
        "TS;>;",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler<",
        "TS;>;"
    }
.end annotation


# instance fields
.field private final region1:Lorg/apache/commons/math3/geometry/partitioning/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final region2:Lorg/apache/commons/math3/geometry/partitioning/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Lorg/apache/commons/math3/geometry/partitioning/Region;Lorg/apache/commons/math3/geometry/partitioning/Region;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;)V"
        }
    .end annotation

    .line 298
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>.DifferenceMerger;"
    .local p2, "region1":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TS;>;"
    .local p3, "region2":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TS;>;"
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;->this$0:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    invoke-interface {p2}, Lorg/apache/commons/math3/geometry/partitioning/Region;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;->region1:Lorg/apache/commons/math3/geometry/partitioning/Region;

    .line 300
    invoke-interface {p3}, Lorg/apache/commons/math3/geometry/partitioning/Region;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;->region2:Lorg/apache/commons/math3/geometry/partitioning/Region;

    .line 301
    return-void
.end method


# virtual methods
.method public fixNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 324
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>.DifferenceMerger;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->pruneAroundConvexCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 325
    .local v0, "cell":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;->region1:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v1

    .line 326
    .local v1, "r":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TS;>;"
    invoke-interface {v1}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getBarycenter()Lorg/apache/commons/math3/geometry/Point;

    move-result-object v2

    .line 327
    .local v2, "p":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<TS;>;"
    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;->region1:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-interface {v4, v2}, Lorg/apache/commons/math3/geometry/partitioning/Region;->checkPoint(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object v4

    sget-object v5, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->INSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;->region2:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-interface {v4, v2}, Lorg/apache/commons/math3/geometry/partitioning/Region;->checkPoint(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object v4

    sget-object v5, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->OUTSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    return-object v3
.end method

.method public merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;ZZ)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 2
    .param p4, "isPlusChild"    # Z
    .param p5, "leafFromInstance"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;ZZ)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 307
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>.DifferenceMerger;"
    .local p1, "leaf":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p2, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p3, "parentTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;->this$0:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    if-eqz p5, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->access$400(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 311
    .local v0, "argTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    invoke-virtual {v0, p3, p4, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertInTree(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;ZLorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    .line 312
    return-object v0

    .line 315
    .end local v0    # "argTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :cond_1
    if-eqz p5, :cond_2

    move-object v0, p1

    goto :goto_1

    :cond_2
    move-object v0, p2

    .line 317
    .local v0, "instanceTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :goto_1
    invoke-virtual {v0, p3, p4, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertInTree(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;ZLorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    .line 318
    return-object v0
.end method
