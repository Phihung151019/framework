.class final enum Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$2;
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

    .line 746
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$1;)V

    return-void
.end method


# virtual methods
.method protected estimate([D[IDILorg/apache/commons/math3/util/KthSelector;)D
    .locals 9
    .param p1, "values"    # [D
    .param p2, "pivotsHeap"    # [I
    .param p3, "pos"    # D
    .param p5, "length"    # I
    .param p6, "selector"    # Lorg/apache/commons/math3/util/KthSelector;

    .line 761
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double v0, p3, v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v7, p5

    move-object v8, p6

    .end local p1    # "values":[D
    .end local p2    # "pivotsHeap":[I
    .end local p5    # "length":I
    .end local p6    # "selector":Lorg/apache/commons/math3/util/KthSelector;
    .local v3, "values":[D
    .local v4, "pivotsHeap":[I
    .local v7, "length":I
    .local v8, "selector":Lorg/apache/commons/math3/util/KthSelector;
    invoke-super/range {v2 .. v8}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->estimate([D[IDILorg/apache/commons/math3/util/KthSelector;)D

    move-result-wide p1

    return-wide p1
.end method

.method protected index(DI)D
    .locals 6
    .param p1, "p"    # D
    .param p3, "length"    # I

    .line 750
    const-wide/16 v0, 0x0

    .line 751
    .local v0, "minLimit":D
    const-wide/16 v2, 0x0

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    int-to-double v2, p3

    mul-double/2addr v2, p1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    :goto_0
    return-wide v2
.end method
