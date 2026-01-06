.class public final Lorg/apache/commons/math3/stat/interval/IntervalUtils;
.super Ljava/lang/Object;
.source "IntervalUtils.java"


# static fields
.field private static final AGRESTI_COULL:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

.field private static final CLOPPER_PEARSON:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

.field private static final NORMAL_APPROXIMATION:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

.field private static final WILSON_SCORE:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lorg/apache/commons/math3/stat/interval/AgrestiCoullInterval;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/interval/AgrestiCoullInterval;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->AGRESTI_COULL:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

    .line 43
    new-instance v0, Lorg/apache/commons/math3/stat/interval/ClopperPearsonInterval;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/interval/ClopperPearsonInterval;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->CLOPPER_PEARSON:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

    .line 46
    new-instance v0, Lorg/apache/commons/math3/stat/interval/NormalApproximationInterval;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/interval/NormalApproximationInterval;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->NORMAL_APPROXIMATION:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

    .line 49
    new-instance v0, Lorg/apache/commons/math3/stat/interval/WilsonScoreInterval;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/interval/WilsonScoreInterval;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->WILSON_SCORE:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method static checkParameters(IID)V
    .locals 5
    .param p0, "numberOfTrials"    # I
    .param p1, "numberOfSuccesses"    # I
    .param p2, "confidenceLevel"    # D

    .line 158
    if-lez p0, :cond_3

    .line 161
    if-ltz p1, :cond_2

    .line 164
    const/4 v0, 0x1

    if-gt p1, p0, :cond_1

    .line 168
    const-wide/16 v1, 0x0

    cmpg-double v1, p2, v1

    if-lez v1, :cond_0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, p2, v1

    if-gez v1, :cond_0

    .line 172
    return-void

    .line 169
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUNDS_CONFIDENCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1

    .line 165
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_SUCCESS_LARGER_THAN_POPULATION_SIZE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1

    .line 162
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NEGATIVE_NUMBER_OF_SUCCESSES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 159
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_TRIALS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method public static getAgrestiCoullInterval(IID)Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;
    .locals 1
    .param p0, "numberOfTrials"    # I
    .param p1, "numberOfSuccesses"    # I
    .param p2, "confidenceLevel"    # D

    .line 75
    sget-object v0, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->AGRESTI_COULL:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;->createInterval(IID)Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;

    move-result-object v0

    return-object v0
.end method

.method public static getClopperPearsonInterval(IID)Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;
    .locals 1
    .param p0, "numberOfTrials"    # I
    .param p1, "numberOfSuccesses"    # I
    .param p2, "confidenceLevel"    # D

    .line 104
    sget-object v0, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->CLOPPER_PEARSON:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;->createInterval(IID)Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;

    move-result-object v0

    return-object v0
.end method

.method public static getNormalApproximationInterval(IID)Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;
    .locals 1
    .param p0, "numberOfTrials"    # I
    .param p1, "numberOfSuccesses"    # I
    .param p2, "confidenceLevel"    # D

    .line 122
    sget-object v0, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->NORMAL_APPROXIMATION:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;->createInterval(IID)Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;

    move-result-object v0

    return-object v0
.end method

.method public static getWilsonScoreInterval(IID)Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;
    .locals 1
    .param p0, "numberOfTrials"    # I
    .param p1, "numberOfSuccesses"    # I
    .param p2, "confidenceLevel"    # D

    .line 143
    sget-object v0, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->WILSON_SCORE:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;->createInterval(IID)Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;

    move-result-object v0

    return-object v0
.end method
