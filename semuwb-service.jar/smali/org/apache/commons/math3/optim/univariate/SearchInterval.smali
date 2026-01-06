.class public Lorg/apache/commons/math3/optim/univariate/SearchInterval;
.super Ljava/lang/Object;
.source "SearchInterval.java"

# interfaces
.implements Lorg/apache/commons/math3/optim/OptimizationData;


# instance fields
.field private final lower:D

.field private final start:D

.field private final upper:D


# direct methods
.method public constructor <init>(DD)V
    .locals 11
    .param p1, "lo"    # D
    .param p3, "hi"    # D

    .line 68
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double v2, p1, p3

    mul-double v9, v2, v0

    move-object v4, p0

    move-wide v5, p1

    move-wide v7, p3

    .end local p1    # "lo":D
    .end local p3    # "hi":D
    .local v5, "lo":D
    .local v7, "hi":D
    invoke-direct/range {v4 .. v10}, Lorg/apache/commons/math3/optim/univariate/SearchInterval;-><init>(DDD)V

    .line 69
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 4
    .param p1, "lo"    # D
    .param p3, "hi"    # D
    .param p5, "init"    # D

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    cmpl-double v0, p1, p3

    if-gez v0, :cond_1

    .line 51
    cmpg-double v0, p5, p1

    if-ltz v0, :cond_0

    cmpl-double v0, p5, p3

    if-gtz v0, :cond_0

    .line 56
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/univariate/SearchInterval;->lower:D

    .line 57
    iput-wide p3, p0, Lorg/apache/commons/math3/optim/univariate/SearchInterval;->upper:D

    .line 58
    iput-wide p5, p0, Lorg/apache/commons/math3/optim/univariate/SearchInterval;->start:D

    .line 59
    return-void

    .line 53
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 49
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method


# virtual methods
.method public getMax()D
    .locals 2

    .line 85
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/SearchInterval;->upper:D

    return-wide v0
.end method

.method public getMin()D
    .locals 2

    .line 77
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/SearchInterval;->lower:D

    return-wide v0
.end method

.method public getStartValue()D
    .locals 2

    .line 93
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/SearchInterval;->start:D

    return-wide v0
.end method
