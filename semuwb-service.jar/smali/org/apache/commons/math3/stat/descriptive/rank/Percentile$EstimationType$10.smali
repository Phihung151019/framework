.class final enum Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$10;
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

    .line 951
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$1;)V

    return-void
.end method


# virtual methods
.method protected index(DI)D
    .locals 10
    .param p1, "p"    # D
    .param p3, "length"    # I

    .line 954
    int-to-double v0, p3

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    add-double/2addr v0, v2

    const-wide/high16 v4, 0x3fe4000000000000L    # 0.625

    div-double/2addr v4, v0

    .line 955
    .local v4, "minLimit":D
    int-to-double v0, p3

    const-wide/high16 v6, 0x3fd8000000000000L    # 0.375

    sub-double/2addr v0, v6

    int-to-double v8, p3

    add-double/2addr v8, v2

    div-double/2addr v0, v8

    .line 956
    .local v0, "maxLimit":D
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v8

    if-gez v8, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v8

    if-ltz v8, :cond_1

    int-to-double v2, p3

    goto :goto_0

    :cond_1
    int-to-double v8, p3

    add-double/2addr v8, v2

    mul-double/2addr v8, p1

    add-double v2, v8, v6

    :goto_0
    return-wide v2
.end method
