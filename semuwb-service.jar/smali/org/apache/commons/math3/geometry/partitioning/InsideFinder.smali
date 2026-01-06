.class Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;
.super Ljava/lang/Object;
.source "InsideFinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private minusFound:Z

.field private plusFound:Z

.field private final region:Lorg/apache/commons/math3/geometry/partitioning/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/Region;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;, "Lorg/apache/commons/math3/geometry/partitioning/InsideFinder<TS;>;"
    .local p1, "region":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->region:Lorg/apache/commons/math3/geometry/partitioning/Region;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->plusFound:Z

    .line 43
    iput-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound:Z

    .line 44
    return-void
.end method


# virtual methods
.method public minusFound()Z
    .locals 1

    .line 147
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;, "Lorg/apache/commons/math3/geometry/partitioning/InsideFinder<TS;>;"
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound:Z

    return v0
.end method

.method public plusFound()Z
    .locals 1

    .line 140
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;, "Lorg/apache/commons/math3/geometry/partitioning/InsideFinder<TS;>;"
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->plusFound:Z

    return v0
.end method

.method public recurseSides(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;)V"
        }
    .end annotation

    .line 62
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;, "Lorg/apache/commons/math3/geometry/partitioning/InsideFinder<TS;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p2, "sub":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 63
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iput-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->plusFound:Z

    .line 66
    iput-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound:Z

    .line 68
    :cond_0
    return-void

    .line 71
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    .line 72
    .local v0, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    invoke-interface {p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v2

    .line 73
    .local v2, "split":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<TS;>;"
    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$Side:[I

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getSide()Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/Side;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 117
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v3

    invoke-interface {p2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 118
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    if-nez v3, :cond_9

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    goto/16 :goto_2

    .line 108
    :pswitch_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->recurseSides(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    .line 111
    iget-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->plusFound:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound:Z

    if-nez v1, :cond_10

    .line 112
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->recurseSides(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    goto/16 :goto_3

    .line 91
    :pswitch_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    invoke-interface {p2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getSide()Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v3

    sget-object v4, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    if-ne v3, v4, :cond_3

    .line 92
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->region:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/Region;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 93
    iput-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->plusFound:Z

    goto :goto_0

    .line 96
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->region:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/Region;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 97
    iput-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound:Z

    .line 100
    :cond_4
    :goto_0
    iget-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->plusFound:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound:Z

    if-nez v1, :cond_10

    .line 101
    :cond_5
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->recurseSides(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    goto/16 :goto_3

    .line 76
    :pswitch_2
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    invoke-interface {p2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getSide()Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v3

    sget-object v4, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    if-ne v3, v4, :cond_6

    .line 77
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->region:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/Region;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 78
    iput-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->plusFound:Z

    goto :goto_1

    .line 81
    :cond_6
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->region:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/Region;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 82
    iput-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound:Z

    .line 85
    :cond_7
    :goto_1
    iget-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->plusFound:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound:Z

    if-nez v1, :cond_10

    .line 86
    :cond_8
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->recurseSides(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    goto :goto_3

    .line 119
    :cond_9
    :goto_2
    iput-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->plusFound:Z

    .line 121
    :cond_a
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    if-nez v3, :cond_b

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 122
    :cond_b
    iput-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound:Z

    goto :goto_3

    .line 125
    :cond_c
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    if-nez v3, :cond_d

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 126
    :cond_d
    iput-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound:Z

    .line 128
    :cond_e
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    if-nez v3, :cond_f

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 129
    :cond_f
    iput-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->plusFound:Z

    .line 134
    :cond_10
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
