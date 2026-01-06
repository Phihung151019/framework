.class public Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
.super Ljava/lang/Object;
.source "BSPTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;,
        Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;
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
.field private attribute:Ljava/lang/Object;

.field private cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;"
        }
    .end annotation
.end field

.field private minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation
.end field

.field private parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation
.end field

.field private plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 87
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 89
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 90
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 91
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 92
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "attribute"    # Ljava/lang/Object;

    .line 98
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 100
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 101
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 102
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 103
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    .line 104
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V
    .locals 1
    .param p4, "attribute"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 120
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p1, "cut":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    .local p2, "plus":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p3, "minus":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 122
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 123
    iput-object p3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 125
    iput-object p4, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    .line 126
    iput-object p0, p2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 127
    iput-object p0, p3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 128
    return-void
.end method

.method private chopOffMinus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler<",
            "TS;>;)V"
        }
    .end annotation

    .line 776
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    .local p2, "vanishingHandler":Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 779
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->chopOffMinus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    .line 780
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->chopOffMinus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    .line 782
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v0, :cond_0

    .line 784
    invoke-interface {p2, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;->fixNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 785
    .local v0, "fixed":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 786
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 787
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 788
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    .line 792
    .end local v0    # "fixed":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :cond_0
    return-void
.end method

.method private chopOffPlus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler<",
            "TS;>;)V"
        }
    .end annotation

    .line 803
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    .local p2, "vanishingHandler":Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 806
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->chopOffPlus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    .line 807
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->chopOffPlus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    .line 809
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v0, :cond_0

    .line 811
    invoke-interface {p2, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;->fixNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 812
    .local v0, "fixed":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 813
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 814
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 815
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    .line 819
    .end local v0    # "fixed":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :cond_0
    return-void
.end method

.method private condense()V
    .locals 2

    .line 398
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v1, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 401
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    :goto_0
    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    .line 402
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 403
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 404
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 406
    :cond_3
    return-void
.end method

.method private fitToCell(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;"
        }
    .end annotation

    .line 297
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p1, "sub":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    move-object v0, p1

    .line 298
    .local v0, "s":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    move-object v1, p0

    .local v1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :goto_0
    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 299
    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v2, v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-ne v1, v2, :cond_0

    .line 300
    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v2, v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    goto :goto_1

    .line 302
    :cond_0
    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v2, v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    .line 298
    :goto_1
    iget-object v1, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_0

    .line 305
    .end local v1    # "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :cond_1
    return-object v0
.end method

.method private merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 7
    .param p4, "isPlusChild"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;Z)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 447
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p2, "leafMerger":Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger<TS;>;"
    .local p3, "parentTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v0, :cond_0

    .line 449
    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v1, p2

    move-object v4, p3

    move v5, p4

    .end local p1    # "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .end local p2    # "leafMerger":Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger<TS;>;"
    .end local p3    # "parentTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .end local p4    # "isPlusChild":Z
    .local v1, "leafMerger":Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger<TS;>;"
    .local v3, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local v4, "parentTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local v5, "isPlusChild":Z
    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;->merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;ZZ)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move v4, v5

    .end local v5    # "isPlusChild":Z
    .local v0, "leafMerger":Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger<TS;>;"
    .local v1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local v3, "parentTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local v4, "isPlusChild":Z
    return-object p1

    .line 450
    .end local v0    # "leafMerger":Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger<TS;>;"
    .end local v1    # "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .end local v3    # "parentTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .end local v4    # "isPlusChild":Z
    .restart local p1    # "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .restart local p2    # "leafMerger":Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger<TS;>;"
    .restart local p3    # "parentTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .restart local p4    # "isPlusChild":Z
    :cond_0
    move-object v1, p1

    move-object v0, p2

    move-object v3, p3

    move v4, p4

    .end local p1    # "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .end local p2    # "leafMerger":Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger<TS;>;"
    .end local p3    # "parentTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .end local p4    # "isPlusChild":Z
    .restart local v0    # "leafMerger":Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger<TS;>;"
    .restart local v1    # "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .restart local v3    # "parentTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .restart local v4    # "isPlusChild":Z
    iget-object p1, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez p1, :cond_1

    .line 452
    const/4 v5, 0x0

    move-object v2, p0

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;->merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;ZZ)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    return-object p1

    .line 455
    :cond_1
    move-object v2, p0

    iget-object p1, v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->split(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    .line 456
    .local p1, "merged":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    if-eqz v3, :cond_3

    .line 457
    iput-object v3, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 458
    if-eqz v4, :cond_2

    .line 459
    iput-object p1, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_0

    .line 461
    :cond_2
    iput-object p1, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 466
    :cond_3
    :goto_0
    iget-object p2, v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object p3, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    const/4 p4, 0x1

    invoke-direct {p2, p3, v0, p1, p4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 467
    iget-object p2, v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object p3, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    const/4 p4, 0x0

    invoke-direct {p2, p3, v0, p1, p4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 468
    invoke-direct {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->condense()V

    .line 469
    iget-object p2, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz p2, :cond_4

    .line 470
    iget-object p2, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {p2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->wholeHyperplane()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->fitToCell(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p2

    iput-object p2, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 473
    :cond_4
    return-object p1
.end method

.method private recurseCloseCuts(Lorg/apache/commons/math3/geometry/Point;DLjava/util/List;)V
    .locals 4
    .param p2, "maxOffset"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;D",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;>;)V"
        }
    .end annotation

    .line 372
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<TS;>;"
    .local p4, "close":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz v0, :cond_2

    .line 375
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    .line 377
    .local v0, "offset":D
    neg-double v2, p2

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 379
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->recurseCloseCuts(Lorg/apache/commons/math3/geometry/Point;DLjava/util/List;)V

    goto :goto_0

    .line 380
    :cond_0
    cmpl-double v2, v0, p2

    if-lez v2, :cond_1

    .line 382
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->recurseCloseCuts(Lorg/apache/commons/math3/geometry/Point;DLjava/util/List;)V

    goto :goto_0

    .line 385
    :cond_1
    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->recurseCloseCuts(Lorg/apache/commons/math3/geometry/Point;DLjava/util/List;)V

    .line 387
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->recurseCloseCuts(Lorg/apache/commons/math3/geometry/Point;DLjava/util/List;)V

    .line 391
    .end local v0    # "offset":D
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 186
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 190
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getAttribute()Ljava/lang/Object;
    .locals 1

    .line 240
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    return-object v0
.end method

.method public getCell(Lorg/apache/commons/math3/geometry/Point;D)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 4
    .param p2, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;D)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 332
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v0, :cond_0

    .line 333
    return-object p0

    .line 337
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    .line 339
    .local v0, "offset":D
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, p2

    if-gez v2, :cond_1

    .line 340
    return-object p0

    .line 341
    :cond_1
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_2

    .line 343
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v2, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCell(Lorg/apache/commons/math3/geometry/Point;D)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    return-object v2

    .line 346
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v2, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCell(Lorg/apache/commons/math3/geometry/Point;D)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    return-object v2
.end method

.method public getCell(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 318
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p1, "point":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<TS;>;"
    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCell(Lorg/apache/commons/math3/geometry/Point;D)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    return-object v0
.end method

.method public getCloseCuts(Lorg/apache/commons/math3/geometry/Point;D)Ljava/util/List;
    .locals 1
    .param p2, "maxOffset"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;D)",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;>;"
        }
    .end annotation

    .line 359
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<TS;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v0, "close":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;>;"
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->recurseCloseCuts(Lorg/apache/commons/math3/geometry/Point;DLjava/util/List;)V

    .line 361
    return-object v0
.end method

.method public getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;"
        }
    .end annotation

    .line 199
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    return-object v0
.end method

.method public getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 215
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-object v0
.end method

.method public getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 222
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-object v0
.end method

.method public getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 207
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-object v0
.end method

.method public insertCut(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "TS;>;)Z"
        }
    .end annotation

    .line 155
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 157
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 160
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->wholeHyperplane()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->fitToCell(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    .line 161
    .local v0, "chopped":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 168
    :cond_1
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 169
    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 170
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object p0, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 171
    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 172
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object p0, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 173
    const/4 v1, 0x1

    return v1

    .line 162
    :cond_2
    :goto_0
    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 163
    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 164
    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 165
    const/4 v1, 0x0

    return v1
.end method

.method public insertInTree(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Z)V
    .locals 1
    .param p2, "isPlusChild"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 649
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p1, "parentTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$1;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertInTree(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;ZLorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    .line 656
    return-void
.end method

.method public insertInTree(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;ZLorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V
    .locals 4
    .param p2, "isPlusChild"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;Z",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler<",
            "TS;>;)V"
        }
    .end annotation

    .line 674
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p1, "parentTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p3, "vanishingHandler":Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler<TS;>;"
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 675
    if-eqz p1, :cond_1

    .line 676
    if-eqz p2, :cond_0

    .line 677
    iput-object p0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_0

    .line 679
    :cond_0
    iput-object p0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 684
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz v0, :cond_5

    .line 687
    move-object v0, p0

    .local v0, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :goto_1
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-eqz v1, :cond_4

    .line 690
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v1, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v1

    .line 694
    .local v1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    iget-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v2, v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-ne v0, v2, :cond_2

    .line 695
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v2, v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 696
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v2, v1, p3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->chopOffMinus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    .line 697
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v2, v1, p3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->chopOffMinus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    goto :goto_2

    .line 699
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v2, v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 700
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v2, v1, p3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->chopOffPlus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    .line 701
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v2, v1, p3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->chopOffPlus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    .line 704
    :goto_2
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v2, :cond_3

    .line 706
    invoke-interface {p3, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;->fixNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    .line 707
    .local v2, "fixed":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    iput-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 708
    iget-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 709
    iget-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 710
    iget-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    iput-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    .line 711
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v3, :cond_3

    .line 712
    goto :goto_3

    .line 687
    .end local v1    # "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    .end local v2    # "fixed":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :cond_3
    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_1

    .line 720
    .end local v0    # "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :cond_4
    :goto_3
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->condense()V

    .line 724
    :cond_5
    return-void
.end method

.method public merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 427
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p2, "leafMerger":Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger<TS;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    return-object v0
.end method

.method public pruneAroundConvexCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 5
    .param p1, "cellAttribute"    # Ljava/lang/Object;
    .param p2, "otherLeafsAttributes"    # Ljava/lang/Object;
    .param p3, "internalAttributes"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 750
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    .line 753
    .local v0, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    move-object v1, p0

    .local v1, "current":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :goto_0
    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-eqz v2, :cond_1

    .line 754
    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v2, v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    .line 755
    .local v2, "parentCut":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v3, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    .line 756
    .local v3, "sibling":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v4, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v4, v4, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-ne v1, v4, :cond_0

    .line 757
    new-instance v4, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v4, v2, v0, v3, p3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    move-object v0, v4

    .end local v0    # "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local v4, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    goto :goto_1

    .line 759
    .end local v4    # "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .restart local v0    # "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v4, v2, v3, v0, p3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    move-object v0, v4

    .line 753
    .end local v2    # "parentCut":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    .end local v3    # "sibling":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :goto_1
    iget-object v1, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_0

    .line 763
    .end local v1    # "current":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :cond_1
    return-object v0
.end method

.method public setAttribute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "attribute"    # Ljava/lang/Object;

    .line 230
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    .line 231
    return-void
.end method

.method public split(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 572
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p1, "sub":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 573
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p1, v2, v3, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    return-object v0

    .line 576
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    .line 577
    .local v0, "cHyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    invoke-interface {p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v2

    .line 578
    .local v2, "sHyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v3

    .line 579
    .local v3, "subParts":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<TS;>;"
    sget-object v4, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$2;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$Side:[I

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getSide()Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/partitioning/Side;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 630
    invoke-interface {v0, v2}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v1, p1, v4, v5, v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 614
    :pswitch_0
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v4, v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v4

    .line 615
    .local v4, "cutParts":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<TS;>;"
    new-instance v5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->split(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->split(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v7

    invoke-direct {v5, p1, v6, v7, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    .line 618
    .local v5, "split":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v1, v5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v6

    iput-object v6, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 619
    iget-object v1, v5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v6

    iput-object v6, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 620
    iget-object v1, v5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v1, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 621
    .local v1, "tmp":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v6, v5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v7, v5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v7, v7, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v7, v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 622
    iget-object v6, v5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v6, v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v7, v5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v7, v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 623
    iget-object v6, v5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v1, v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 624
    iget-object v6, v5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v6, v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v7, v5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v7, v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 625
    iget-object v6, v5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->condense()V

    .line 626
    iget-object v6, v5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->condense()V

    .line 627
    return-object v5

    .line 598
    .end local v1    # "tmp":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .end local v4    # "cutParts":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<TS;>;"
    .end local v5    # "split":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :pswitch_1
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->split(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    .line 599
    .local v1, "split":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v4, v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getSide()Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v4

    sget-object v5, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    if-ne v4, v5, :cond_1

    .line 600
    new-instance v4, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v5}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v6

    iget-object v7, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    iput-object v4, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 602
    iget-object v4, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->condense()V

    .line 603
    iget-object v4, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v1, v4, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_0

    .line 605
    :cond_1
    new-instance v4, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v5}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v6

    iget-object v7, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    iput-object v4, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 607
    iget-object v4, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->condense()V

    .line 608
    iget-object v4, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v1, v4, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 610
    :goto_0
    return-object v1

    .line 582
    .end local v1    # "split":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :pswitch_2
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->split(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    .line 583
    .restart local v1    # "split":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v4, v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getSide()Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v4

    sget-object v5, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    if-ne v4, v5, :cond_2

    .line 584
    new-instance v4, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v5}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v5

    iget-object v6, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    iput-object v4, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 586
    iget-object v4, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->condense()V

    .line 587
    iget-object v4, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v1, v4, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_1

    .line 589
    :cond_2
    new-instance v4, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v5}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v5

    iget-object v6, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    iput-object v4, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 591
    iget-object v4, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->condense()V

    .line 592
    iget-object v4, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v1, v4, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 594
    :goto_1
    return-object v1

    .line 630
    .end local v1    # "split":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v1, p1, v4, v5, v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    :goto_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor<",
            "TS;>;)V"
        }
    .end annotation

    .line 247
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v0, :cond_0

    .line 248
    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;->visitLeafNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    goto :goto_0

    .line 250
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$2;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$BSPTreeVisitor$Order:[I

    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;->visitOrder(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 282
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v0

    .line 277
    :pswitch_0
    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;->visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    .line 278
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 279
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 280
    goto :goto_0

    .line 272
    :pswitch_1
    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;->visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    .line 273
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 274
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 275
    goto :goto_0

    .line 267
    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 268
    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;->visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    .line 269
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 270
    goto :goto_0

    .line 262
    :pswitch_3
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 263
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 264
    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;->visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    .line 265
    goto :goto_0

    .line 257
    :pswitch_4
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 258
    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;->visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    .line 259
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 260
    goto :goto_0

    .line 252
    :pswitch_5
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 253
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 254
    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;->visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    .line 255
    nop

    .line 286
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
