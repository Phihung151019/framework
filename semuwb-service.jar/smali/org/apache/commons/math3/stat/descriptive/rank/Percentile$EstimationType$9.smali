.class final enum Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$9;
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

    .line 928
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$1;)V

    return-void
.end method


# virtual methods
.method protected index(DI)D
    .locals 8
    .param p1, "p"    # D
    .param p3, "length"    # I

    .line 931
    int-to-double v0, p3

    const-wide v2, 0x3fd5555555555555L    # 0.3333333333333333

    add-double/2addr v0, v2

    const-wide v4, 0x3fe5555555555555L    # 0.6666666666666666

    div-double/2addr v4, v0

    .line 932
    .local v4, "minLimit":D
    int-to-double v0, p3

    sub-double/2addr v0, v2

    int-to-double v6, p3

    add-double/2addr v6, v2

    div-double/2addr v0, v6

    .line 934
    .local v0, "maxLimit":D
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v6

    if-gez v6, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v6

    if-ltz v6, :cond_1

    int-to-double v2, p3

    goto :goto_0

    :cond_1
    int-to-double v6, p3

    add-double/2addr v6, v2

    mul-double/2addr v6, p1

    add-double/2addr v2, v6

    :goto_0
    return-wide v2
.end method
