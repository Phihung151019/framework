.class final enum Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$8;
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

    .line 902
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$1;)V

    return-void
.end method


# virtual methods
.method protected index(DI)D
    .locals 8
    .param p1, "p"    # D
    .param p3, "length"    # I

    .line 905
    const-wide/16 v0, 0x0

    .line 906
    .local v0, "minLimit":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 907
    .local v2, "maxLimit":D
    const-wide/16 v4, 0x0

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v6

    if-nez v6, :cond_1

    int-to-double v4, p3

    goto :goto_0

    :cond_1
    add-int/lit8 v6, p3, -0x1

    int-to-double v6, v6

    mul-double/2addr v6, p1

    add-double/2addr v4, v6

    :goto_0
    return-wide v4
.end method
