.class final enum Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$3;
.super Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;
.source "Percentile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "x0"    # Ljava/lang/String;

    .line 775
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$1;)V

    return-void
.end method


# virtual methods
.method protected estimate([D[IDILorg/apache/commons/math3/util/KthSelector;)D
    .locals 11
    .param p1, "values"    # [D
    .param p2, "pivotsHeap"    # [I
    .param p3, "pos"    # D
    .param p5, "length"    # I
    .param p6, "selector"    # Lorg/apache/commons/math3/util/KthSelector;

    .line 793
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double v2, p3, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v7

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-super/range {v4 .. v10}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->estimate([D[IDILorg/apache/commons/math3/util/KthSelector;)D

    move-result-wide v2

    .line 795
    .local v2, "low":D
    add-double/2addr v0, p3

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v7

    invoke-super/range {v4 .. v10}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->estimate([D[IDILorg/apache/commons/math3/util/KthSelector;)D

    move-result-wide v0

    .line 797
    .local v0, "high":D
    add-double v4, v2, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    return-wide v4
.end method

.method protected index(DI)D
    .locals 8
    .param p1, "p"    # D
    .param p3, "length"    # I

    .line 779
    const-wide/16 v0, 0x0

    .line 780
    .local v0, "minLimit":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 781
    .local v2, "maxLimit":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-nez v4, :cond_0

    int-to-double v4, p3

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    int-to-double v4, p3

    mul-double/2addr v4, p1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    :goto_0
    return-wide v4
.end method
