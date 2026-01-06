.class public Lorg/apache/commons/math3/stat/inference/TTest;
.super Ljava/lang/Object;
.source "TTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V
    .locals 5
    .param p1, "stat"    # Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 1173
    if-eqz p1, :cond_1

    .line 1176
    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1182
    return-void

    .line 1177
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_DATA_FOR_T_STATISTIC:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 1174
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method

.method private checkSampleData([D)V
    .locals 5
    .param p1, "data"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 1152
    if-eqz p1, :cond_1

    .line 1155
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 1161
    return-void

    .line 1156
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_DATA_FOR_T_STATISTIC:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 1153
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method

.method private checkSignificanceLevel(D)V
    .locals 7
    .param p1, "alpha"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1135
    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    if-lez v2, :cond_0

    cmpl-double v2, p1, v3

    if-gtz v2, :cond_0

    .line 1140
    return-void

    .line 1136
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SIGNIFICANCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v2, v5, v6, v0, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v2
.end method


# virtual methods
.method protected df(DDDD)D
    .locals 10
    .param p1, "v1"    # D
    .param p3, "v2"    # D
    .param p5, "n1"    # D
    .param p7, "n2"    # D

    .line 987
    div-double v0, p1, p5

    div-double v2, p3, p7

    add-double/2addr v0, v2

    div-double v2, p1, p5

    div-double v4, p3, p7

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    mul-double v2, p1, p1

    mul-double v4, p5, p5

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v8, p5, v6

    mul-double/2addr v4, v8

    div-double/2addr v2, v4

    mul-double v4, p3, p3

    mul-double v8, p7, p7

    sub-double v6, p7, v6

    mul-double/2addr v8, v6

    div-double/2addr v4, v8

    add-double/2addr v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method protected homoscedasticT(DDDDDD)D
    .locals 8
    .param p1, "m1"    # D
    .param p3, "m2"    # D
    .param p5, "v1"    # D
    .param p7, "v2"    # D
    .param p9, "n1"    # D
    .param p11, "n2"    # D

    .line 1040
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v2, p9, v0

    mul-double/2addr v2, p5

    sub-double v4, p11, v0

    mul-double/2addr v4, p7

    add-double/2addr v2, v4

    add-double v4, p9, p11

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double/2addr v4, v6

    div-double/2addr v2, v4

    .line 1041
    .local v2, "pooledVariance":D
    sub-double v4, p1, p3

    div-double v6, v0, p9

    div-double v0, v0, p11

    add-double/2addr v6, v0

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v4, v0

    return-wide v4
.end method

.method public homoscedasticT(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 13
    .param p1, "sampleStats1"    # Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .param p2, "sampleStats2"    # Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 409
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 410
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 411
    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v1

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v3

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v5

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v7

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v9

    long-to-double v9, v9

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v11

    long-to-double v11, v11

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticT(DDDDDD)D

    move-result-wide v1

    return-wide v1
.end method

.method public homoscedasticT([D[D)D
    .locals 13
    .param p1, "sample1"    # [D
    .param p2, "sample2"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 275
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 276
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 278
    invoke-static {p1}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v1

    invoke-static {p2}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v3

    invoke-static {p1}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v5

    invoke-static {p2}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v7

    array-length v0, p1

    int-to-double v9, v0

    array-length v0, p2

    int-to-double v11, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticT(DDDDDD)D

    move-result-wide v1

    return-wide v1
.end method

.method protected homoscedasticTTest(DDDDDD)D
    .locals 9
    .param p1, "m1"    # D
    .param p3, "m2"    # D
    .param p5, "v1"    # D
    .param p7, "v2"    # D
    .param p9, "n1"    # D
    .param p11, "n2"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 1118
    invoke-virtual/range {p0 .. p12}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticT(DDDDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    .line 1119
    .local v0, "t":D
    add-double v2, p9, p11

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double/2addr v2, v4

    .line 1121
    .local v2, "degreesOfFreedom":D
    new-instance v6, Lorg/apache/commons/math3/distribution/TDistribution;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v2, v3}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V

    .line 1122
    .local v6, "distribution":Lorg/apache/commons/math3/distribution/TDistribution;
    neg-double v7, v0

    invoke-virtual {v6, v7, v8}, Lorg/apache/commons/math3/distribution/TDistribution;->cumulativeProbability(D)D

    move-result-wide v7

    mul-double/2addr v7, v4

    return-wide v7
.end method

.method public homoscedasticTTest(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 13
    .param p1, "sampleStats1"    # Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .param p2, "sampleStats2"    # Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 899
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 900
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 901
    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v1

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v3

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v5

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v7

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v9

    long-to-double v9, v9

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v11

    long-to-double v11, v11

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticTTest(DDDDDD)D

    move-result-wide v1

    return-wide v1
.end method

.method public homoscedasticTTest([D[D)D
    .locals 13
    .param p1, "sample1"    # [D
    .param p2, "sample2"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 676
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 677
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 679
    invoke-static {p1}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v1

    invoke-static {p2}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v3

    invoke-static {p1}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v5

    invoke-static {p2}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v7

    array-length v0, p1

    int-to-double v9, v0

    array-length v0, p2

    int-to-double v11, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticTTest(DDDDDD)D

    move-result-wide v1

    return-wide v1
.end method

.method public homoscedasticTTest([D[DD)Z
    .locals 2
    .param p1, "sample1"    # [D
    .param p2, "sample2"    # [D
    .param p3, "alpha"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 807
    invoke-direct {p0, p3, p4}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSignificanceLevel(D)V

    .line 808
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticTTest([D[D)D

    move-result-wide v0

    cmpg-double v0, v0, p3

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pairedT([D[D)D
    .locals 9
    .param p1, "sample1"    # [D
    .param p2, "sample2"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 85
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 86
    invoke-static {p1, p2}, Lorg/apache/commons/math3/stat/StatUtils;->meanDifference([D[D)D

    move-result-wide v1

    .line 87
    .local v1, "meanDifference":D
    invoke-static {p1, p2, v1, v2}, Lorg/apache/commons/math3/stat/StatUtils;->varianceDifference([D[DD)D

    move-result-wide v5

    array-length v0, p1

    int-to-double v7, v0

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDD)D

    move-result-wide v3

    return-wide v3
.end method

.method public pairedTTest([D[D)D
    .locals 9
    .param p1, "sample1"    # [D
    .param p2, "sample2"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 133
    invoke-static {p1, p2}, Lorg/apache/commons/math3/stat/StatUtils;->meanDifference([D[D)D

    move-result-wide v1

    .line 134
    .local v1, "meanDifference":D
    invoke-static {p1, p2, v1, v2}, Lorg/apache/commons/math3/stat/StatUtils;->varianceDifference([D[DD)D

    move-result-wide v5

    array-length v0, p1

    int-to-double v7, v0

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(DDDD)D

    move-result-wide v3

    return-wide v3
.end method

.method public pairedTTest([D[DD)Z
    .locals 2
    .param p1, "sample1"    # [D
    .param p2, "sample2"    # [D
    .param p3, "alpha"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 181
    invoke-direct {p0, p3, p4}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSignificanceLevel(D)V

    .line 182
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->pairedTTest([D[D)D

    move-result-wide v0

    cmpg-double v0, v0, p3

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected t(DDDD)D
    .locals 4
    .param p1, "m"    # D
    .param p3, "mu"    # D
    .param p5, "v"    # D
    .param p7, "n"    # D

    .line 1003
    sub-double v0, p1, p3

    div-double v2, p5, p7

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method protected t(DDDDDD)D
    .locals 6
    .param p1, "m1"    # D
    .param p3, "m2"    # D
    .param p5, "v1"    # D
    .param p7, "v2"    # D
    .param p9, "n1"    # D
    .param p11, "n2"    # D

    .line 1022
    sub-double v0, p1, p3

    div-double v2, p5, p9

    div-double v4, p7, p11

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public t(DLorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 9
    .param p1, "mu"    # D
    .param p3, "sampleStats"    # Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 232
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 233
    invoke-interface {p3}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v1

    invoke-interface {p3}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v5

    invoke-interface {p3}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v3

    long-to-double v7, v3

    move-object v0, p0

    move-wide v3, p1

    .end local p1    # "mu":D
    .local v3, "mu":D
    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public t(D[D)D
    .locals 9
    .param p1, "mu"    # D
    .param p3, "observed"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 205
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 207
    invoke-static {p3}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v1

    invoke-static {p3}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v5

    array-length v0, p3

    int-to-double v7, v0

    move-object v0, p0

    move-wide v3, p1

    .end local p1    # "mu":D
    .local v3, "mu":D
    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public t(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 13
    .param p1, "sampleStats1"    # Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .param p2, "sampleStats2"    # Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 361
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 362
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 363
    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v1

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v3

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v5

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v7

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v9

    long-to-double v9, v9

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v11

    long-to-double v11, v11

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDDDD)D

    move-result-wide v1

    return-wide v1
.end method

.method public t([D[D)D
    .locals 13
    .param p1, "sample1"    # [D
    .param p2, "sample2"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 316
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 317
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 319
    invoke-static {p1}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v1

    invoke-static {p2}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v3

    invoke-static {p1}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v5

    invoke-static {p2}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v7

    array-length v0, p1

    int-to-double v9, v0

    array-length v0, p2

    int-to-double v11, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDDDD)D

    move-result-wide v1

    return-wide v1
.end method

.method protected tTest(DDDD)D
    .locals 7
    .param p1, "m"    # D
    .param p3, "mu"    # D
    .param p5, "v"    # D
    .param p7, "n"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1059
    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    .line 1061
    .local v0, "t":D
    new-instance v2, Lorg/apache/commons/math3/distribution/TDistribution;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double v3, p7, v3

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V

    .line 1062
    .local v2, "distribution":Lorg/apache/commons/math3/distribution/TDistribution;
    neg-double v3, v0

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/math3/distribution/TDistribution;->cumulativeProbability(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v5

    return-wide v3
.end method

.method protected tTest(DDDDDD)D
    .locals 13
    .param p1, "m1"    # D
    .param p3, "m2"    # D
    .param p5, "v1"    # D
    .param p7, "v2"    # D
    .param p9, "n1"    # D
    .param p11, "n2"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 1088
    invoke-virtual/range {p0 .. p12}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    .line 1089
    .local v0, "t":D
    move-object v2, p0

    move-wide/from16 v3, p5

    move-wide/from16 v5, p7

    move-wide/from16 v7, p9

    move-wide/from16 v9, p11

    invoke-virtual/range {v2 .. v10}, Lorg/apache/commons/math3/stat/inference/TTest;->df(DDDD)D

    move-result-wide v11

    .line 1091
    .local v11, "degreesOfFreedom":D
    new-instance v2, Lorg/apache/commons/math3/distribution/TDistribution;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v11, v12}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V

    .line 1092
    .local v2, "distribution":Lorg/apache/commons/math3/distribution/TDistribution;
    neg-double v3, v0

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/math3/distribution/TDistribution;->cumulativeProbability(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v5

    return-wide v3
.end method

.method public tTest(DLorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 9
    .param p1, "mu"    # D
    .param p3, "sampleStats"    # Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 534
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 535
    invoke-interface {p3}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v1

    invoke-interface {p3}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v5

    invoke-interface {p3}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v3

    long-to-double v7, v3

    move-object v0, p0

    move-wide v3, p1

    .end local p1    # "mu":D
    .local v3, "mu":D
    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(DDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public tTest(D[D)D
    .locals 9
    .param p1, "mu"    # D
    .param p3, "sample"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 448
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 450
    invoke-static {p3}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v1

    invoke-static {p3}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v5

    array-length v0, p3

    int-to-double v7, v0

    move-object v0, p0

    move-wide v3, p1

    .end local p1    # "mu":D
    .local v3, "mu":D
    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(DDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public tTest(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 13
    .param p1, "sampleStats1"    # Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .param p2, "sampleStats2"    # Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 852
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 853
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 854
    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v1

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v3

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v5

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v7

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v9

    long-to-double v9, v9

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v11

    long-to-double v11, v11

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(DDDDDD)D

    move-result-wide v1

    return-wide v1
.end method

.method public tTest([D[D)D
    .locals 13
    .param p1, "sample1"    # [D
    .param p2, "sample2"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 629
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 630
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 632
    invoke-static {p1}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v1

    invoke-static {p2}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v3

    invoke-static {p1}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v5

    invoke-static {p2}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v7

    array-length v0, p1

    int-to-double v9, v0

    array-length v0, p2

    int-to-double v11, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(DDDDDD)D

    move-result-wide v1

    return-wide v1
.end method

.method public tTest(DLorg/apache/commons/math3/stat/descriptive/StatisticalSummary;D)Z
    .locals 2
    .param p1, "mu"    # D
    .param p3, "sampleStats"    # Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .param p4, "alpha"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 583
    invoke-direct {p0, p4, p5}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSignificanceLevel(D)V

    .line 584
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(DLorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D

    move-result-wide v0

    cmpg-double v0, v0, p4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tTest(D[DD)Z
    .locals 2
    .param p1, "mu"    # D
    .param p3, "sample"    # [D
    .param p4, "alpha"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 496
    invoke-direct {p0, p4, p5}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSignificanceLevel(D)V

    .line 497
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(D[D)D

    move-result-wide v0

    cmpg-double v0, v0, p4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tTest(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;D)Z
    .locals 2
    .param p1, "sampleStats1"    # Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .param p2, "sampleStats2"    # Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .param p3, "alpha"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 970
    invoke-direct {p0, p3, p4}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSignificanceLevel(D)V

    .line 971
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D

    move-result-wide v0

    cmpg-double v0, v0, p3

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tTest([D[DD)Z
    .locals 2
    .param p1, "sample1"    # [D
    .param p2, "sample2"    # [D
    .param p3, "alpha"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 744
    invoke-direct {p0, p3, p4}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSignificanceLevel(D)V

    .line 745
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest([D[D)D

    move-result-wide v0

    cmpg-double v0, v0, p3

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
