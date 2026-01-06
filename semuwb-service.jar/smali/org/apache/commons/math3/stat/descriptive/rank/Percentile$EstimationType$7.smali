.class final enum Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$7;
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

    .line 878
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$1;)V

    return-void
.end method


# virtual methods
.method protected index(DI)D
    .locals 6
    .param p1, "p"    # D
    .param p3, "length"    # I

    .line 882
    add-int/lit8 v0, p3, 0x1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v0, v2, v0

    .line 883
    .local v0, "minLimit":D
    int-to-double v4, p3

    mul-double/2addr v4, v2

    add-int/lit8 v2, p3, 0x1

    int-to-double v2, v2

    div-double/2addr v4, v2

    .line 884
    .local v4, "maxLimit":D
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-gez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-ltz v2, :cond_1

    int-to-double v2, p3

    goto :goto_0

    :cond_1
    add-int/lit8 v2, p3, 0x1

    int-to-double v2, v2

    mul-double/2addr v2, p1

    :goto_0
    return-wide v2
.end method
