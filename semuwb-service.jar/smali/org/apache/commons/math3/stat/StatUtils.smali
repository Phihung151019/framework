.class public final Lorg/apache/commons/math3/stat/StatUtils;
.super Ljava/lang/Object;
.source "StatUtils.java"


# static fields
.field private static final GEOMETRIC_MEAN:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

.field private static final MAX:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private static final MEAN:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private static final MIN:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private static final PERCENTILE:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

.field private static final PRODUCT:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private static final SUM:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private static final SUM_OF_LOGS:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private static final SUM_OF_SQUARES:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private static final VARIANCE:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->SUM:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 52
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->SUM_OF_SQUARES:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 55
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Product;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Product;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->PRODUCT:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 58
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->SUM_OF_LOGS:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 61
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Min;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->MIN:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 64
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Max;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->MAX:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 67
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->MEAN:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 70
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->VARIANCE:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    .line 73
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->PERCENTILE:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    .line 76
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->GEOMETRIC_MEAN:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static geometricMean([D)D
    .locals 2
    .param p0, "values"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 285
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->GEOMETRIC_MEAN:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static geometricMean([DII)D
    .locals 2
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 307
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->GEOMETRIC_MEAN:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->evaluate([DII)D

    move-result-wide v0

    return-wide v0
.end method

.method private static getMode([DII)[D
    .locals 9
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I

    .line 870
    new-instance v0, Lorg/apache/commons/math3/stat/Frequency;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/Frequency;-><init>()V

    .line 871
    .local v0, "freq":Lorg/apache/commons/math3/stat/Frequency;
    move v1, p1

    .local v1, "i":I
    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    .line 872
    aget-wide v2, p0, v1

    .line 873
    .local v2, "value":D
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_0

    .line 874
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/stat/Frequency;->addValue(Ljava/lang/Comparable;)V

    .line 871
    .end local v2    # "value":D
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 877
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/Frequency;->getMode()Ljava/util/List;

    move-result-object v1

    .line 879
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Comparable<*>;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [D

    .line 880
    .local v2, "modes":[D
    const/4 v3, 0x0

    .line 881
    .local v3, "i":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Comparable;

    .line 882
    .local v5, "c":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .local v6, "i":I
    move-object v7, v5

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    aput-wide v7, v2, v3

    .line 883
    .end local v5    # "c":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    move v3, v6

    goto :goto_1

    .line 884
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "i":I
    .restart local v3    # "i":I
    :cond_2
    return-object v2
.end method

.method public static max([D)D
    .locals 2
    .param p0, "values"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 554
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->MAX:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static max([DII)D
    .locals 2
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 581
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->MAX:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static mean([D)D
    .locals 2
    .param p0, "values"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 245
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->MEAN:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static mean([DII)D
    .locals 2
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 267
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->MEAN:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static meanDifference([D[D)D
    .locals 4
    .param p0, "sample1"    # [D
    .param p1, "sample2"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 732
    invoke-static {p0, p1}, Lorg/apache/commons/math3/stat/StatUtils;->sumDifference([D[D)D

    move-result-wide v0

    array-length v2, p0

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static min([D)D
    .locals 2
    .param p0, "values"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 602
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->MIN:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static min([DII)D
    .locals 2
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 629
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->MIN:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static mode([D)[D
    .locals 3
    .param p0, "sample"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 817
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 820
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/stat/StatUtils;->getMode([DII)[D

    move-result-object v0

    return-object v0

    .line 818
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public static mode([DII)[D
    .locals 3
    .param p0, "sample"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I

    .line 845
    if-eqz p0, :cond_2

    .line 849
    if-ltz p1, :cond_1

    .line 853
    if-ltz p2, :cond_0

    .line 857
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/stat/StatUtils;->getMode([DII)[D

    move-result-object v0

    return-object v0

    .line 854
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LENGTH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 850
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->START_POSITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 846
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static normalize([D)[D
    .locals 9
    .param p0, "sample"    # [D

    .line 777
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;-><init>()V

    .line 780
    .local v0, "stats":Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 781
    aget-wide v2, p0, v1

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->addValue(D)V

    .line 780
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 785
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getMean()D

    move-result-wide v1

    .line 786
    .local v1, "mean":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getStandardDeviation()D

    move-result-wide v3

    .line 789
    .local v3, "standardDeviation":D
    array-length v5, p0

    new-array v5, v5, [D

    .line 791
    .local v5, "standardizedSample":[D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, p0

    if-ge v6, v7, :cond_1

    .line 793
    aget-wide v7, p0, v6

    sub-double/2addr v7, v1

    div-double/2addr v7, v3

    aput-wide v7, v5, v6

    .line 791
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 795
    .end local v6    # "i":I
    :cond_1
    return-object v5
.end method

.method public static percentile([DD)D
    .locals 2
    .param p0, "values"    # [D
    .param p1, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 657
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->PERCENTILE:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->evaluate([DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static percentile([DIID)D
    .locals 6
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I
    .param p3, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 689
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->PERCENTILE:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    .end local p0    # "values":[D
    .end local p1    # "begin":I
    .end local p2    # "length":I
    .end local p3    # "p":D
    .local v1, "values":[D
    .local v2, "begin":I
    .local v3, "length":I
    .local v4, "p":D
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->evaluate([DIID)D

    move-result-wide p0

    return-wide p0
.end method

.method public static populationVariance([D)D
    .locals 2
    .param p0, "values"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 447
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Z)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static populationVariance([DD)D
    .locals 2
    .param p0, "values"    # [D
    .param p1, "mean"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 533
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Z)V

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static populationVariance([DDII)D
    .locals 6
    .param p0, "values"    # [D
    .param p1, "mean"    # D
    .param p3, "begin"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 505
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Z)V

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    .end local p0    # "values":[D
    .end local p1    # "mean":D
    .end local p3    # "begin":I
    .end local p4    # "length":I
    .local v1, "values":[D
    .local v2, "mean":D
    .local v4, "begin":I
    .local v5, "length":I
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DDII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static populationVariance([DII)D
    .locals 2
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 473
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Z)V

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static product([D)D
    .locals 2
    .param p0, "values"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 166
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->PRODUCT:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static product([DII)D
    .locals 2
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 185
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->PRODUCT:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static sum([D)D
    .locals 2
    .param p0, "values"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 98
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->SUM:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static sum([DII)D
    .locals 2
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 117
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->SUM:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static sumDifference([D[D)D
    .locals 8
    .param p0, "sample1"    # [D
    .param p1, "sample2"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 705
    array-length v0, p0

    .line 706
    .local v0, "n":I
    array-length v1, p1

    if-ne v0, v1, :cond_2

    .line 709
    if-lez v0, :cond_1

    .line 712
    const-wide/16 v1, 0x0

    .line 713
    .local v1, "result":D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 714
    aget-wide v4, p0, v3

    aget-wide v6, p1, v3

    sub-double/2addr v4, v6

    add-double/2addr v1, v4

    .line 713
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 716
    .end local v3    # "i":I
    :cond_0
    return-wide v1

    .line 710
    .end local v1    # "result":D
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_DIMENSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v1

    .line 707
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, p1

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method

.method public static sumLog([D)D
    .locals 2
    .param p0, "values"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 204
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->SUM_OF_LOGS:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static sumLog([DII)D
    .locals 2
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 227
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->SUM_OF_LOGS:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static sumSq([D)D
    .locals 2
    .param p0, "values"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 132
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->SUM_OF_SQUARES:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static sumSq([DII)D
    .locals 2
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 151
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->SUM_OF_SQUARES:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static variance([D)D
    .locals 2
    .param p0, "values"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 331
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->VARIANCE:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static variance([DD)D
    .locals 2
    .param p0, "values"    # [D
    .param p1, "mean"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 426
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->VARIANCE:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static variance([DDII)D
    .locals 6
    .param p0, "values"    # [D
    .param p1, "mean"    # D
    .param p3, "begin"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 395
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->VARIANCE:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    .end local p0    # "values":[D
    .end local p1    # "mean":D
    .end local p3    # "begin":I
    .end local p4    # "length":I
    .local v1, "values":[D
    .local v2, "mean":D
    .local v4, "begin":I
    .local v5, "length":I
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DDII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static variance([DII)D
    .locals 2
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 360
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->VARIANCE:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static varianceDifference([D[DD)D
    .locals 12
    .param p0, "sample1"    # [D
    .param p1, "sample2"    # [D
    .param p2, "meanDifference"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 751
    const-wide/16 v0, 0x0

    .line 752
    .local v0, "sum1":D
    const-wide/16 v2, 0x0

    .line 753
    .local v2, "sum2":D
    const-wide/16 v4, 0x0

    .line 754
    .local v4, "diff":D
    array-length v6, p0

    .line 755
    .local v6, "n":I
    array-length v7, p1

    if-ne v6, v7, :cond_2

    .line 758
    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    .line 761
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 762
    aget-wide v8, p0, v7

    aget-wide v10, p1, v7

    sub-double v4, v8, v10

    .line 763
    sub-double v8, v4, p2

    sub-double v10, v4, p2

    mul-double/2addr v8, v10

    add-double/2addr v0, v8

    .line 764
    sub-double v8, v4, p2

    add-double/2addr v2, v8

    .line 761
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 766
    .end local v7    # "i":I
    :cond_0
    mul-double v7, v2, v2

    int-to-double v9, v6

    div-double/2addr v7, v9

    sub-double v7, v0, v7

    add-int/lit8 v9, v6, -0x1

    int-to-double v9, v9

    div-double/2addr v7, v9

    return-wide v7

    .line 759
    :cond_1
    new-instance v8, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v10, 0x1

    invoke-direct {v8, v9, v7, v10}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v8

    .line 756
    :cond_2
    new-instance v7, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v8, p1

    invoke-direct {v7, v6, v8}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v7
.end method
