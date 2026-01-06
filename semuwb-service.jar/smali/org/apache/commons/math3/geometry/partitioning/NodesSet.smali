.class public Lorg/apache/commons/math3/geometry/partitioning/NodesSet;
.super Ljava/lang/Object;
.source "NodesSet.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
        "TS;>;>;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/NodesSet;, "Lorg/apache/commons/math3/geometry/partitioning/NodesSet<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->list:Ljava/util/List;

    .line 39
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/NodesSet;, "Lorg/apache/commons/math3/geometry/partitioning/NodesSet<TS;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 47
    .local v1, "existing":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    if-ne p1, v1, :cond_0

    .line 49
    return-void

    .line 51
    .end local v1    # "existing":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :cond_0
    goto :goto_0

    .line 54
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public addAll(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;>;)V"
        }
    .end annotation

    .line 62
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/NodesSet;, "Lorg/apache/commons/math3/geometry/partitioning/NodesSet<TS;>;"
    .local p1, "iterator":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 63
    .local v1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->add(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    .line 64
    .end local v1    # "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    goto :goto_0

    .line 65
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;>;"
        }
    .end annotation

    .line 69
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/NodesSet;, "Lorg/apache/commons/math3/geometry/partitioning/NodesSet<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
