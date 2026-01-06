.class public Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
.super Ljava/lang/Object;
.source "DescriptiveStatistics.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
.implements Ljava/io/Serializable;


# static fields
.field public static final INFINITE_WINDOW:I = -0x1

.field private static final SET_QUANTILE_METHOD_NAME:Ljava/lang/String; = "setQuantile"

.field private static final serialVersionUID:J = 0x395b9ac8227c57e8L


# instance fields
.field private eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

.field private geometricMeanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private kurtosisImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private maxImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private meanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private minImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private skewnessImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private sumImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private varianceImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field protected windowSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    .line 81
    new-instance v0, Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    .line 84
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 87
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->geometricMeanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 90
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->kurtosisImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 93
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Max;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 96
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Min;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 99
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 102
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->skewnessImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 105
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 108
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 111
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 117
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "window"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    .line 81
    new-instance v0, Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    .line 84
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 87
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->geometricMeanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 90
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->kurtosisImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 93
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Max;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 96
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Min;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 99
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 102
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->skewnessImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 105
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 108
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 111
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 127
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->setWindowSize(I)V

    .line 128
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;)V
    .locals 1
    .param p1, "original"    # Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    .line 81
    new-instance v0, Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    .line 84
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 87
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->geometricMeanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 90
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->kurtosisImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 93
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Max;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 96
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Min;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 99
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 102
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->skewnessImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 105
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 108
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 111
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 152
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->copy(Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;)V

    .line 153
    return-void
.end method

.method public constructor <init>([D)V
    .locals 1
    .param p1, "initialDoubleArray"    # [D

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    .line 81
    new-instance v0, Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    .line 84
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 87
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->geometricMeanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 90
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->kurtosisImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 93
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Max;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 96
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Min;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 99
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 102
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->skewnessImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 105
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 108
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 111
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 139
    if-eqz p1, :cond_0

    .line 140
    new-instance v0, Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>([D)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    .line 142
    :cond_0
    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;)V
    .locals 1
    .param p0, "source"    # Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    .param p1, "dest"    # Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 759
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 760
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 762
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->copy()Lorg/apache/commons/math3/util/ResizableDoubleArray;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    .line 763
    iget v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    iput v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    .line 766
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 767
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 768
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 769
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 770
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 771
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 772
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->geometricMeanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->geometricMeanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 773
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->kurtosisImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->kurtosisImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 774
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->skewnessImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->skewnessImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 775
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 776
    return-void
.end method


# virtual methods
.method public addValue(D)V
    .locals 4
    .param p1, "v"    # D

    .line 164
    iget v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 165
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getN()J

    move-result-wide v0

    iget v2, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->addElementRolling(D)D

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getN()J

    move-result-wide v0

    iget v2, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 168
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->addElement(D)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->addElement(D)V

    .line 173
    :cond_2
    :goto_0
    return-void
.end method

.method public apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D
    .locals 2
    .param p1, "stat"    # Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 499
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->compute(Lorg/apache/commons/math3/util/MathArrays$Function;)D

    move-result-wide v0

    return-wide v0
.end method

.method public clear()V
    .locals 1

    .line 341
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->clear()V

    .line 342
    return-void
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    .locals 1

    .line 743
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;-><init>()V

    .line 745
    .local v0, "result":Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->copy(Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;)V

    .line 746
    return-object v0
.end method

.method public getElement(I)D
    .locals 2
    .param p1, "index"    # I

    .line 418
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->getElement(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getGeometricMean()D
    .locals 2

    .line 219
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->geometricMeanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getGeometricMeanImpl()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    monitor-enter p0

    .line 532
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->geometricMeanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 532
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getKurtosis()D
    .locals 2

    .line 293
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->kurtosisImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getKurtosisImpl()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    monitor-enter p0

    .line 554
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->kurtosisImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 554
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getMax()D
    .locals 2

    .line 301
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getMaxImpl()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    monitor-enter p0

    .line 575
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 575
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getMean()D
    .locals 2

    .line 206
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getMeanImpl()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    monitor-enter p0

    .line 511
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 511
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getMin()D
    .locals 2

    .line 309
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getMinImpl()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    monitor-enter p0

    .line 596
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 596
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getN()J
    .locals 2

    .line 317
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->getNumElements()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPercentile(D)D
    .locals 5
    .param p1, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 441
    const-string v0, "setQuantile"

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    instance-of v1, v1, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    if-eqz v1, :cond_0

    .line 442
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->setQuantile(D)V

    goto :goto_0

    .line 445
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    nop

    .line 460
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0

    return-wide v0

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e3":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 452
    .end local v0    # "e3":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 453
    .local v1, "e2":Ljava/lang/IllegalAccessException;
    new-instance v2, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->PERCENTILE_IMPLEMENTATION_CANNOT_ACCESS_METHOD:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-object v4, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 448
    .end local v1    # "e2":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 449
    .local v1, "e1":Ljava/lang/NoSuchMethodException;
    new-instance v2, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->PERCENTILE_IMPLEMENTATION_UNSUPPORTED_METHOD:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-object v4, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method public declared-synchronized getPercentileImpl()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    monitor-enter p0

    .line 617
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 617
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPopulationVariance()D
    .locals 2

    .line 244
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Z)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getQuadraticMean()D
    .locals 6

    .line 272
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getN()J

    move-result-wide v0

    .line 273
    .local v0, "n":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getSumsq()D

    move-result-wide v2

    long-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    :goto_0
    return-wide v2
.end method

.method public getSkewness()D
    .locals 2

    .line 283
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->skewnessImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getSkewnessImpl()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    monitor-enter p0

    .line 658
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->skewnessImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 658
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSortedValues()[D
    .locals 1

    .line 407
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getValues()[D

    move-result-object v0

    .line 408
    .local v0, "sort":[D
    invoke-static {v0}, Ljava/util/Arrays;->sort([D)V

    .line 409
    return-object v0
.end method

.method public getStandardDeviation()D
    .locals 6

    .line 253
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 254
    .local v0, "stdDev":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getN()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 255
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getN()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 256
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getVariance()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    goto :goto_0

    .line 258
    :cond_0
    const-wide/16 v0, 0x0

    .line 261
    :cond_1
    :goto_0
    return-wide v0
.end method

.method public getSum()D
    .locals 2

    .line 325
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getSumImpl()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    monitor-enter p0

    .line 723
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 723
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSumsq()D
    .locals 2

    .line 334
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getSumsqImpl()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    monitor-enter p0

    .line 702
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 702
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getValues()[D
    .locals 1

    .line 395
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->getElements()[D

    move-result-object v0

    return-object v0
.end method

.method public getVariance()D
    .locals 2

    .line 233
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getVarianceImpl()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    monitor-enter p0

    .line 680
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 680
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getWindowSize()I
    .locals 1

    .line 352
    iget v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    return v0
.end method

.method public removeMostRecentValue()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .line 182
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->discardMostRecentElements(I)V
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MathIllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    nop

    .line 186
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "ex":Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_DATA:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public replaceMostRecentValue(D)D
    .locals 2
    .param p1, "v"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->substituteMostRecentElement(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized setGeometricMeanImpl(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)V
    .locals 0
    .param p1, "geometricMeanImpl"    # Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    monitor-enter p0

    .line 544
    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->geometricMeanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    monitor-exit p0

    return-void

    .line 543
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    .end local p1    # "geometricMeanImpl":Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setKurtosisImpl(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)V
    .locals 0
    .param p1, "kurtosisImpl"    # Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    monitor-enter p0

    .line 565
    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->kurtosisImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    monitor-exit p0

    return-void

    .line 564
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    .end local p1    # "kurtosisImpl":Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setMaxImpl(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)V
    .locals 0
    .param p1, "maxImpl"    # Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    monitor-enter p0

    .line 586
    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    monitor-exit p0

    return-void

    .line 585
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    .end local p1    # "maxImpl":Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setMeanImpl(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)V
    .locals 0
    .param p1, "meanImpl"    # Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    monitor-enter p0

    .line 522
    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    monitor-exit p0

    return-void

    .line 521
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    .end local p1    # "meanImpl":Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setMinImpl(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)V
    .locals 0
    .param p1, "minImpl"    # Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    monitor-enter p0

    .line 607
    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    monitor-exit p0

    return-void

    .line 606
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    .end local p1    # "minImpl":Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setPercentileImpl(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)V
    .locals 5
    .param p1, "percentileImpl"    # Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 634
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setQuantile"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    nop

    .line 648
    :try_start_1
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 649
    monitor-exit p0

    return-void

    .line 633
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    .end local p1    # "percentileImpl":Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 645
    .restart local p1    # "percentileImpl":Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :catch_0
    move-exception v0

    .line 646
    .local v0, "e3":Ljava/lang/reflect/InvocationTargetException;
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 641
    .end local v0    # "e3":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 642
    .local v0, "e2":Ljava/lang/IllegalAccessException;
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->PERCENTILE_IMPLEMENTATION_CANNOT_ACCESS_METHOD:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const-string v3, "setQuantile"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 637
    .end local v0    # "e2":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 638
    .local v0, "e1":Ljava/lang/NoSuchMethodException;
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->PERCENTILE_IMPLEMENTATION_UNSUPPORTED_METHOD:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "setQuantile"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 633
    .end local v0    # "e1":Ljava/lang/NoSuchMethodException;
    .end local p1    # "percentileImpl":Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized setSkewnessImpl(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)V
    .locals 0
    .param p1, "skewnessImpl"    # Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    monitor-enter p0

    .line 670
    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->skewnessImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    monitor-exit p0

    return-void

    .line 669
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    .end local p1    # "skewnessImpl":Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setSumImpl(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)V
    .locals 0
    .param p1, "sumImpl"    # Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    monitor-enter p0

    .line 734
    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    monitor-exit p0

    return-void

    .line 733
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    .end local p1    # "sumImpl":Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setSumsqImpl(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)V
    .locals 0
    .param p1, "sumsqImpl"    # Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    monitor-enter p0

    .line 713
    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    monitor-exit p0

    return-void

    .line 712
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    .end local p1    # "sumsqImpl":Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setVarianceImpl(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)V
    .locals 0
    .param p1, "varianceImpl"    # Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    monitor-enter p0

    .line 692
    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    monitor-exit p0

    return-void

    .line 691
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    .end local p1    # "varianceImpl":Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setWindowSize(I)V
    .locals 3
    .param p1, "windowSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 370
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ge p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 371
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POSITIVE_WINDOW_SIZE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 375
    :cond_1
    :goto_0
    iput p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    .line 380
    if-eq p1, v1, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->getNumElements()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 381
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->getNumElements()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->discardFrontElements(I)V

    .line 383
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    .local v0, "outBuffer":Ljava/lang/StringBuilder;
    const-string v1, "\n"

    .line 474
    .local v1, "endl":Ljava/lang/String;
    const-string v2, "DescriptiveStatistics:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    const-string v2, "n: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getN()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    const-string v2, "min: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getMin()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    const-string v2, "max: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getMax()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    const-string v2, "mean: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getMean()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    const-string v2, "std dev: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getStandardDeviation()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    :try_start_0
    const-string v2, "median: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/high16 v3, 0x4049000000000000L    # 50.0

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getPercentile(D)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MathIllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    goto :goto_0

    .line 484
    :catch_0
    move-exception v2

    .line 485
    .local v2, "ex":Lorg/apache/commons/math3/exception/MathIllegalStateException;
    const-string v3, "median: unavailable"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .end local v2    # "ex":Lorg/apache/commons/math3/exception/MathIllegalStateException;
    :goto_0
    const-string v2, "skewness: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getSkewness()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    const-string v2, "kurtosis: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getKurtosis()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
