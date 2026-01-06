.class public Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
.super Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
.source "ArcsSet.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$InconsistentStateAt2PiWrapping;,
        Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;,
        Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<",
        "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
        "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
        ">;",
        "Ljava/lang/Iterable<",
        "[D>;"
    }
.end annotation


# direct methods
.method public constructor <init>(D)V
    .locals 0
    .param p1, "tolerance"    # D

    .line 55
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(D)V

    .line 56
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 1
    .param p1, "lower"    # D
    .param p3, "upper"    # D
    .param p5, "tolerance"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 73
    invoke-static/range {p1 .. p6}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->buildTree(DDD)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-direct {p0, v0, p5, p6}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    .line 74
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
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;>;D)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$InconsistentStateAt2PiWrapping;
        }
    .end annotation

    .line 118
    .local p1, "boundary":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Ljava/util/Collection;D)V

    .line 119
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->check2PiConsistency()V

    .line 120
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V
    .locals 0
    .param p2, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;D)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$InconsistentStateAt2PiWrapping;
        }
    .end annotation

    .line 90
    .local p1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    .line 91
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->check2PiConsistency()V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    .line 49
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getFirstArcStart()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    .param p1, "x1"    # Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 49
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getFirstLeaf(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    .param p1, "x1"    # Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 49
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->isArcStart(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    .param p1, "x1"    # Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 49
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->nextInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    .param p1, "x1"    # Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 49
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->isArcEnd(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    .param p1, "x1"    # Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 49
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getAngle(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    .param p1, "x1"    # Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 49
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->previousInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    return-object v0
.end method

.method private addArcLimit(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;DZ)V
    .locals 5
    .param p2, "alpha"    # D
    .param p4, "isStart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;DZ)V"
        }
    .end annotation

    .line 795
    .local p1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-direct {v1, p2, p3}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    xor-int/lit8 v2, p4, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getTolerance()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;-><init>(Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;ZD)V

    .line 796
    .local v0, "limit":Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->getLocation()Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getTolerance()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCell(Lorg/apache/commons/math3/geometry/Point;D)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    .line 797
    .local v1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    if-nez v2, :cond_0

    .line 802
    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertCut(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z

    .line 803
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 804
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 805
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 807
    return-void

    .line 799
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v2
.end method

.method private static buildTree(DDD)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 16
    .param p0, "lower"    # D
    .param p2, "upper"    # D
    .param p4, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDD)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 133
    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    const/4 v6, 0x0

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v7

    if-nez v7, :cond_3

    sub-double v7, v2, v0

    const-wide v9, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_0

    goto/16 :goto_0

    .line 136
    :cond_0
    cmpl-double v7, v0, v2

    const/4 v8, 0x1

    if-gtz v7, :cond_2

    .line 142
    const-wide v11, 0x400921fb54442d18L    # Math.PI

    invoke-static {v0, v1, v11, v12}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide v11

    .line 143
    .local v11, "normalizedLower":D
    sub-double v13, v2, v0

    add-double/2addr v13, v11

    .line 144
    .local v13, "normalizedUpper":D
    new-instance v7, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    new-instance v15, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-direct {v15, v11, v12}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {v7, v15, v6, v4, v5}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;-><init>(Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;ZD)V

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->wholeHyperplane()Lorg/apache/commons/math3/geometry/spherical/oned/SubLimitAngle;

    move-result-object v6

    .line 147
    .local v6, "lowerCut":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    cmpg-double v7, v13, v9

    if-gtz v7, :cond_1

    .line 149
    new-instance v7, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    new-instance v9, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-direct {v9, v13, v14}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {v7, v9, v8, v4, v5}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;-><init>(Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;ZD)V

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->wholeHyperplane()Lorg/apache/commons/math3/geometry/spherical/oned/SubLimitAngle;

    move-result-object v7

    .line 151
    .local v7, "upperCut":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    new-instance v8, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance v9, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v9, v10}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    new-instance v10, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance v15, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v15, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-direct {v10, v7, v15, v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    invoke-direct {v8, v6, v9, v10, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    return-object v8

    .line 160
    .end local v7    # "upperCut":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    sub-double v9, v13, v9

    invoke-direct {v1, v9, v10}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {v0, v1, v8, v4, v5}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;-><init>(Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;ZD)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->wholeHyperplane()Lorg/apache/commons/math3/geometry/spherical/oned/SubLimitAngle;

    move-result-object v0

    .line 162
    .local v0, "upperCut":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance v7, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance v8, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v8, v9}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    new-instance v9, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v9, v10}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    const/4 v10, 0x0

    invoke-direct {v7, v0, v8, v9, v10}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    new-instance v8, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v8, v9}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v6, v7, v8, v10}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    return-object v1

    .line 137
    .end local v0    # "upperCut":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    .end local v6    # "lowerCut":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    .end local v11    # "normalizedLower":D
    .end local v13    # "normalizedUpper":D
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ENDPOINTS_NOT_AN_INTERVAL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-direct {v0, v1, v6, v7, v8}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 135
    :cond_3
    :goto_0
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private check2PiConsistency()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$InconsistentStateAt2PiWrapping;
        }
    .end annotation

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 181
    .local v0, "root":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    if-nez v1, :cond_0

    .line 182
    return-void

    .line 186
    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getFirstLeaf(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 189
    .local v1, "stateBefore":Ljava/lang/Boolean;
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getLastLeaf(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 191
    .local v2, "stateAfter":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/2addr v3, v4

    if-nez v3, :cond_1

    .line 195
    return-void

    .line 192
    :cond_1
    new-instance v3, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$InconsistentStateAt2PiWrapping;

    invoke-direct {v3}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$InconsistentStateAt2PiWrapping;-><init>()V

    throw v3
.end method

.method private childAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .line 420
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->isDirect(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    return-object v0

    .line 425
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    return-object v0
.end method

.method private childBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .line 406
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->isDirect(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    return-object v0

    .line 411
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    return-object v0
.end method

.method private createSplitPart(Ljava/util/List;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;"
        }
    .end annotation

    .line 819
    .local p1, "limits":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 820
    return-object v3

    .line 824
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v2, v4, :cond_5

    .line 825
    add-int/lit8 v4, v2, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    rem-int/2addr v4, v7

    .line 826
    .local v4, "j":I
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 827
    .local v7, "lA":D
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-static {v9, v10, v7, v8}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide v9

    .line 828
    .local v9, "lB":D
    sub-double v11, v9, v7

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getTolerance()D

    move-result-wide v13

    cmpg-double v11, v11, v13

    if-gtz v11, :cond_4

    .line 830
    if-lez v4, :cond_1

    .line 832
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 833
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 834
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 838
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v6

    invoke-interface {v1, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    .line 839
    .local v11, "lEnd":D
    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    .line 840
    .local v13, "lStart":D
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 842
    sub-double v5, v11, v13

    const-wide v15, 0x400921fb54442d18L    # Math.PI

    cmpl-double v5, v5, v15

    if-lez v5, :cond_2

    .line 844
    new-instance v3, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    new-instance v5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v5, v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    move-wide v15, v7

    .end local v7    # "lA":D
    .local v15, "lA":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getTolerance()D

    move-result-wide v6

    invoke-direct {v3, v5, v6, v7}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-object v3

    .line 847
    .end local v15    # "lA":D
    .restart local v7    # "lA":D
    :cond_2
    return-object v3

    .line 853
    :cond_3
    move-wide v15, v7

    .end local v7    # "lA":D
    .restart local v15    # "lA":D
    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-wide v17, 0x401921fb54442d18L    # 6.283185307179586

    add-double v7, v7, v17

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 828
    .end local v11    # "lEnd":D
    .end local v13    # "lStart":D
    .end local v15    # "lA":D
    .restart local v7    # "lA":D
    :cond_4
    move-wide v15, v7

    .line 824
    .end local v4    # "j":I
    .end local v7    # "lA":D
    .end local v9    # "lB":D
    :goto_1
    add-int/2addr v2, v6

    goto/16 :goto_0

    .line 860
    .end local v2    # "i":I
    :cond_5
    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v2, v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    .line 861
    .local v2, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    if-ge v4, v7, :cond_6

    .line 862
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-direct {v0, v2, v7, v8, v6}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->addArcLimit(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;DZ)V

    .line 863
    add-int/lit8 v7, v4, 0x1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-direct {v0, v2, v7, v8, v5}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->addArcLimit(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;DZ)V

    .line 861
    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    .line 866
    .end local v4    # "i":I
    :cond_6
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v4

    if-nez v4, :cond_7

    .line 868
    return-object v3

    .line 871
    :cond_7
    new-instance v3, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getTolerance()D

    move-result-wide v4

    invoke-direct {v3, v2, v4, v5}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-object v3
.end method

.method private getAngle(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)D"
        }
    .end annotation

    .line 442
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->getLocation()Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->getAlpha()D

    move-result-wide v0

    return-wide v0
.end method

.method private getFirstArcStart()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 245
    .local v0, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    if-nez v1, :cond_0

    .line 246
    const/4 v1, 0x0

    return-object v1

    .line 250
    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getFirstLeaf(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 253
    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->isArcStart(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 254
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->nextInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    goto :goto_0

    .line 257
    :cond_1
    return-object v0
.end method

.method private getFirstLeaf(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .line 203
    .local p1, "root":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-nez v0, :cond_0

    .line 204
    return-object p1

    .line 208
    :cond_0
    const/4 v0, 0x0

    .line 209
    .local v0, "smallest":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    move-object v1, p1

    .local v1, "n":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 210
    move-object v0, v1

    .line 209
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->previousInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    goto :goto_0

    .line 213
    .end local v1    # "n":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->leafBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    return-object v1
.end method

.method private getLastLeaf(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .line 223
    .local p1, "root":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-nez v0, :cond_0

    .line 224
    return-object p1

    .line 228
    :cond_0
    const/4 v0, 0x0

    .line 229
    .local v0, "largest":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    move-object v1, p1

    .local v1, "n":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 230
    move-object v0, v1

    .line 229
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->nextInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    goto :goto_0

    .line 233
    .end local v1    # "n":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->leafAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    return-object v1
.end method

.method private isAfterParent(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)Z"
        }
    .end annotation

    .line 393
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 394
    .local v0, "parent":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 395
    return v1

    .line 397
    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->childAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isArcEnd(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)Z"
        }
    .end annotation

    .line 289
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->leafBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 291
    return v1

    .line 294
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->leafAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    return v1

    .line 301
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isArcStart(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)Z"
        }
    .end annotation

    .line 267
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->leafBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 269
    return v1

    .line 272
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->leafAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    return v1

    .line 279
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isBeforeParent(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)Z"
        }
    .end annotation

    .line 380
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 381
    .local v0, "parent":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 382
    return v1

    .line 384
    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->childBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isDirect(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)Z"
        }
    .end annotation

    .line 434
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->isDirect()Z

    move-result v0

    return v0
.end method

.method private leafAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .line 366
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->childAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    .line 367
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->childBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    goto :goto_0

    .line 371
    :cond_0
    return-object p1
.end method

.method private leafBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .line 351
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->childBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    .line 352
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->childAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    goto :goto_0

    .line 356
    :cond_0
    return-object p1
.end method

.method private nextInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .line 312
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->childAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->leafAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    return-object v0

    .line 318
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->isAfterParent(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    goto :goto_0

    .line 321
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    return-object v0
.end method

.method private previousInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .line 332
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->childBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->leafBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    return-object v0

    .line 338
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->isBeforeParent(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    goto :goto_0

    .line 341
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public asList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Arc;",
            ">;"
        }
    .end annotation

    .line 568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 569
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/spherical/oned/Arc;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 570
    .local v2, "a":[D
    new-instance v3, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;

    const/4 v4, 0x0

    aget-wide v4, v2, v4

    const/4 v6, 0x1

    aget-wide v6, v2, v6

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getTolerance()D

    move-result-wide v8

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;-><init>(DDD)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    .end local v2    # "a":[D
    goto :goto_0

    .line 572
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    move-result-object p1

    return-object p1
.end method

.method public buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;"
        }
    .end annotation

    .line 448
    .local p1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getTolerance()D

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-object v0
.end method

.method protected computeGeometricalProperties()V
    .locals 17

    .line 454
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    if-nez v2, :cond_1

    .line 455
    sget-object v2, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->NaN:Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    .line 456
    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->setSize(D)V

    goto :goto_2

    .line 458
    :cond_1
    const-wide/16 v5, 0x0

    .line 459
    .local v5, "size":D
    const-wide/16 v7, 0x0

    .line 460
    .local v7, "sum":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [D

    .line 461
    .local v9, "a":[D
    const/4 v10, 0x1

    aget-wide v11, v9, v10

    aget-wide v13, v9, v1

    sub-double/2addr v11, v13

    .line 462
    .local v11, "length":D
    add-double/2addr v5, v11

    .line 463
    aget-wide v13, v9, v1

    aget-wide v15, v9, v10

    add-double/2addr v13, v15

    mul-double/2addr v13, v11

    add-double/2addr v7, v13

    .line 464
    .end local v9    # "a":[D
    .end local v11    # "length":D
    goto :goto_1

    .line 465
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->setSize(D)V

    .line 466
    invoke-static {v5, v6, v3, v4, v1}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 467
    sget-object v1, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->NaN:Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_2

    .line 468
    :cond_3
    sget-wide v2, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    cmpl-double v2, v5, v2

    if-ltz v2, :cond_4

    .line 469
    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v5

    div-double v2, v7, v2

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_2

    .line 471
    :cond_4
    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    .line 472
    .local v1, "limit":Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->getLocation()Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    .line 475
    .end local v1    # "limit":Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;
    .end local v5    # "size":D
    .end local v7    # "sum":D
    :goto_2
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "[D>;"
        }
    .end annotation

    .line 584
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;-><init>(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;)V

    return-object v0
.end method

.method public projectToBoundary(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .line 484
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    move-object/from16 v0, p1

    move-object v1, v0

    check-cast v1, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->getAlpha()D

    move-result-wide v1

    .line 486
    .local v1, "alpha":D
    const/4 v3, 0x0

    .line 487
    .local v3, "wrapFirst":Z
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    .line 488
    .local v4, "first":D
    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    .line 489
    .local v6, "previous":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [D

    .line 491
    .local v9, "a":[D
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    .line 493
    aget-wide v4, v9, v11

    .line 496
    :cond_0
    const/4 v10, 0x1

    if-nez v3, :cond_6

    .line 497
    aget-wide v12, v9, v11

    cmpg-double v12, v1, v12

    if-gez v12, :cond_3

    .line 500
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 502
    const/4 v3, 0x1

    move-wide/from16 v17, v1

    move-wide/from16 v19, v4

    goto/16 :goto_2

    .line 504
    :cond_1
    sub-double v12, v1, v6

    .line 505
    .local v12, "previousOffset":D
    aget-wide v14, v9, v11

    sub-double/2addr v14, v1

    .line 506
    .local v14, "currentOffset":D
    cmpg-double v10, v12, v14

    if-gez v10, :cond_2

    .line 507
    new-instance v10, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    new-instance v11, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-direct {v11, v6, v7}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {v10, v0, v11, v12, v13}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object v10

    .line 509
    :cond_2
    new-instance v10, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    move/from16 v16, v11

    new-instance v11, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    move-wide/from16 v17, v1

    .end local v1    # "alpha":D
    .local v17, "alpha":D
    aget-wide v1, v9, v16

    invoke-direct {v11, v1, v2}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {v10, v0, v11, v14, v15}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object v10

    .line 512
    .end local v12    # "previousOffset":D
    .end local v14    # "currentOffset":D
    .end local v17    # "alpha":D
    .restart local v1    # "alpha":D
    :cond_3
    move-wide/from16 v17, v1

    move/from16 v16, v11

    .end local v1    # "alpha":D
    .restart local v17    # "alpha":D
    aget-wide v1, v9, v10

    cmpg-double v1, v17, v1

    if-gtz v1, :cond_5

    .line 515
    aget-wide v1, v9, v16

    sub-double v1, v1, v17

    .line 516
    .local v1, "offset0":D
    aget-wide v11, v9, v10

    sub-double v11, v17, v11

    .line 517
    .local v11, "offset1":D
    cmpg-double v13, v1, v11

    if-gez v13, :cond_4

    .line 518
    new-instance v13, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    new-instance v14, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    move v15, v3

    move-wide/from16 v19, v4

    .end local v3    # "wrapFirst":Z
    .end local v4    # "first":D
    .local v15, "wrapFirst":Z
    .local v19, "first":D
    aget-wide v3, v9, v10

    invoke-direct {v14, v3, v4}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {v13, v0, v14, v11, v12}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object v13

    .line 520
    .end local v15    # "wrapFirst":Z
    .end local v19    # "first":D
    .restart local v3    # "wrapFirst":Z
    .restart local v4    # "first":D
    :cond_4
    move v15, v3

    move-wide/from16 v19, v4

    .end local v3    # "wrapFirst":Z
    .end local v4    # "first":D
    .restart local v15    # "wrapFirst":Z
    .restart local v19    # "first":D
    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    new-instance v4, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    aget-wide v13, v9, v16

    invoke-direct {v4, v13, v14}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {v3, v0, v4, v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object v3

    .line 512
    .end local v1    # "offset0":D
    .end local v11    # "offset1":D
    .end local v15    # "wrapFirst":Z
    .end local v19    # "first":D
    .restart local v3    # "wrapFirst":Z
    .restart local v4    # "first":D
    :cond_5
    move v15, v3

    move-wide/from16 v19, v4

    .end local v3    # "wrapFirst":Z
    .end local v4    # "first":D
    .restart local v15    # "wrapFirst":Z
    .restart local v19    # "first":D
    goto :goto_1

    .line 496
    .end local v15    # "wrapFirst":Z
    .end local v17    # "alpha":D
    .end local v19    # "first":D
    .local v1, "alpha":D
    .restart local v3    # "wrapFirst":Z
    .restart local v4    # "first":D
    :cond_6
    move-wide/from16 v17, v1

    move v15, v3

    move-wide/from16 v19, v4

    .line 524
    .end local v1    # "alpha":D
    .end local v3    # "wrapFirst":Z
    .end local v4    # "first":D
    .restart local v15    # "wrapFirst":Z
    .restart local v17    # "alpha":D
    .restart local v19    # "first":D
    :goto_1
    move v3, v15

    .end local v15    # "wrapFirst":Z
    .restart local v3    # "wrapFirst":Z
    :goto_2
    aget-wide v6, v9, v10

    .line 525
    .end local v9    # "a":[D
    move-wide/from16 v1, v17

    move-wide/from16 v4, v19

    goto/16 :goto_0

    .line 489
    .end local v17    # "alpha":D
    .end local v19    # "first":D
    .restart local v1    # "alpha":D
    .restart local v4    # "first":D
    :cond_7
    move-wide/from16 v17, v1

    move v15, v3

    .line 527
    .end local v1    # "alpha":D
    .end local v3    # "wrapFirst":Z
    .end local v8    # "i$":Ljava/util/Iterator;
    .restart local v15    # "wrapFirst":Z
    .restart local v17    # "alpha":D
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    if-eqz v1, :cond_8

    .line 530
    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    const/4 v8, 0x0

    invoke-direct {v1, v0, v8, v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object v1

    .line 536
    :cond_8
    if-eqz v15, :cond_a

    .line 538
    sub-double v1, v6, v2

    sub-double v1, v17, v1

    .line 539
    .local v1, "previousOffset":D
    sub-double v8, v4, v17

    .line 540
    .local v8, "currentOffset":D
    cmpg-double v3, v1, v8

    if-gez v3, :cond_9

    .line 541
    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    new-instance v10, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-direct {v10, v6, v7}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {v3, v0, v10, v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object v3

    .line 543
    :cond_9
    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    new-instance v10, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-direct {v10, v4, v5}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {v3, v0, v10, v8, v9}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object v3

    .line 547
    .end local v1    # "previousOffset":D
    .end local v8    # "currentOffset":D
    :cond_a
    sub-double v8, v17, v6

    .line 548
    .local v8, "previousOffset":D
    add-double/2addr v2, v4

    sub-double v2, v2, v17

    .line 549
    .local v2, "currentOffset":D
    cmpg-double v1, v8, v2

    if-gez v1, :cond_b

    .line 550
    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    new-instance v10, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-direct {v10, v6, v7}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {v1, v0, v10, v8, v9}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object v1

    .line 552
    :cond_b
    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    new-instance v10, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-direct {v10, v4, v5}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {v1, v0, v10, v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object v1
.end method

.method public side(Lorg/apache/commons/math3/geometry/spherical/oned/Arc;)Lorg/apache/commons/math3/geometry/partitioning/Side;
    .locals 1
    .param p1, "arc"    # Lorg/apache/commons/math3/geometry/spherical/oned/Arc;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 712
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->split(Lorg/apache/commons/math3/geometry/spherical/oned/Arc;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;->getSide()Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v0

    return-object v0
.end method

.method public split(Lorg/apache/commons/math3/geometry/spherical/oned/Arc;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;
    .locals 24
    .param p1, "arc"    # Lorg/apache/commons/math3/geometry/spherical/oned/Arc;

    .line 723
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 724
    .local v1, "minus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 726
    .local v2, "plus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const-wide v3, 0x400921fb54442d18L    # Math.PI

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getInf()D

    move-result-wide v5

    add-double/2addr v5, v3

    .line 727
    .local v5, "reference":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getSup()D

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getInf()D

    move-result-wide v7

    sub-double/2addr v3, v7

    .line 729
    .local v3, "arcLength":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [D

    .line 730
    .local v8, "a":[D
    const/4 v9, 0x0

    aget-wide v10, v8, v9

    invoke-static {v10, v11, v5, v6}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getInf()D

    move-result-wide v12

    sub-double/2addr v10, v12

    .line 731
    .local v10, "syncedStart":D
    aget-wide v12, v8, v9

    sub-double/2addr v12, v10

    .line 732
    .local v12, "arcOffset":D
    const/4 v14, 0x1

    aget-wide v15, v8, v14

    sub-double/2addr v15, v12

    .line 733
    .local v15, "syncedEnd":D
    cmpg-double v17, v10, v3

    const-wide v18, 0x401921fb54442d18L    # 6.283185307179586

    if-gez v17, :cond_2

    .line 735
    aget-wide v20, v8, v9

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    cmpl-double v9, v15, v3

    if-lez v9, :cond_1

    .line 739
    add-double v20, v3, v12

    .line 740
    .local v20, "minusToPlus":D
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    cmpl-double v9, v15, v18

    if-lez v9, :cond_0

    .line 745
    add-double v18, v12, v18

    .line 746
    .local v18, "plusToMinus":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    aget-wide v22, v8, v14

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    .end local v18    # "plusToMinus":D
    goto :goto_1

    .line 751
    :cond_0
    aget-wide v17, v8, v14

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 753
    .end local v20    # "minusToPlus":D
    :goto_1
    goto :goto_3

    .line 755
    :cond_1
    aget-wide v17, v8, v14

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 759
    :cond_2
    aget-wide v20, v8, v9

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    cmpl-double v9, v15, v18

    if-lez v9, :cond_4

    .line 763
    add-double v20, v12, v18

    .line 764
    .local v20, "plusToMinus":D
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    add-double v22, v3, v18

    cmpl-double v9, v15, v22

    if-lez v9, :cond_3

    .line 769
    add-double v18, v3, v18

    add-double v18, v18, v12

    .line 770
    .local v18, "minusToPlus":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    aget-wide v22, v8, v14

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    .end local v18    # "minusToPlus":D
    goto :goto_2

    .line 775
    :cond_3
    aget-wide v17, v8, v14

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 777
    .end local v20    # "plusToMinus":D
    :goto_2
    goto :goto_3

    .line 779
    :cond_4
    aget-wide v17, v8, v14

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 782
    .end local v8    # "a":[D
    .end local v10    # "syncedStart":D
    .end local v12    # "arcOffset":D
    .end local v15    # "syncedEnd":D
    :goto_3
    goto/16 :goto_0

    .line 784
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_5
    new-instance v7, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;

    invoke-direct {v0, v2}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->createSplitPart(Ljava/util/List;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    move-result-object v8

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->createSplitPart(Ljava/util/List;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;-><init>(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$1;)V

    return-object v7
.end method
