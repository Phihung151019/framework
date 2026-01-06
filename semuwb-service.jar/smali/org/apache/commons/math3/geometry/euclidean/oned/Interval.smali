.class public Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;
.super Ljava/lang/Object;
.source "Interval.java"


# instance fields
.field private final lower:D

.field private final upper:D


# direct methods
.method public constructor <init>(DD)V
    .locals 5
    .param p1, "lower"    # D
    .param p3, "upper"    # D

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    cmpg-double v0, p3, p1

    if-ltz v0, :cond_0

    .line 45
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->lower:D

    .line 46
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->upper:D

    .line 47
    return-void

    .line 42
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ENDPOINTS_NOT_AN_INTERVAL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method


# virtual methods
.method public checkPoint(DD)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;
    .locals 2
    .param p1, "point"    # D
    .param p3, "tolerance"    # D

    .line 126
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->lower:D

    sub-double/2addr v0, p3

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->upper:D

    add-double/2addr v0, p3

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->lower:D

    add-double/2addr v0, p3

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->upper:D

    sub-double/2addr v0, p3

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 129
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->INSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    return-object v0

    .line 131
    :cond_1
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->BOUNDARY:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    return-object v0

    .line 127
    :cond_2
    :goto_0
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->OUTSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    return-object v0
.end method

.method public getBarycenter()D
    .locals 4

    .line 105
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->lower:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->upper:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getInf()D
    .locals 2

    .line 54
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->lower:D

    return-wide v0
.end method

.method public getLength()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->getSize()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLower()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->getInf()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMidPoint()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->getBarycenter()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSize()D
    .locals 4

    .line 88
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->upper:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->lower:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public getSup()D
    .locals 2

    .line 71
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->upper:D

    return-wide v0
.end method

.method public getUpper()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 80
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->getSup()D

    move-result-wide v0

    return-wide v0
.end method
