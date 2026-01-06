.class public Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory;
.super Ljava/lang/Object;
.source "LearningFactorFunctionFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exponentialDecay(DDJ)Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;
    .locals 8
    .param p0, "initValue"    # D
    .param p2, "valueAtNumCall"    # D
    .param p4, "numCall"    # J

    .line 60
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-lez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p0, v0

    if-gtz v0, :cond_0

    .line 65
    new-instance v1, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$1;

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    .end local p0    # "initValue":D
    .end local p2    # "valueAtNumCall":D
    .end local p4    # "numCall":J
    .local v2, "initValue":D
    .local v4, "valueAtNumCall":D
    .local v6, "numCall":J
    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$1;-><init>(DDJ)V

    return-object v1

    .line 60
    .end local v2    # "initValue":D
    .end local v4    # "valueAtNumCall":D
    .end local v6    # "numCall":J
    .restart local p0    # "initValue":D
    .restart local p2    # "valueAtNumCall":D
    .restart local p4    # "numCall":J
    :cond_0
    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    .line 62
    .end local p0    # "initValue":D
    .end local p2    # "valueAtNumCall":D
    .end local p4    # "numCall":J
    .restart local v2    # "initValue":D
    .restart local v4    # "valueAtNumCall":D
    .restart local v6    # "numCall":J
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0
.end method

.method public static quasiSigmoidDecay(DDJ)Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;
    .locals 8
    .param p0, "initValue"    # D
    .param p2, "slope"    # D
    .param p4, "numCall"    # J

    .line 101
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-lez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p0, v0

    if-gtz v0, :cond_0

    .line 106
    new-instance v1, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$2;

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    .end local p0    # "initValue":D
    .end local p2    # "slope":D
    .end local p4    # "numCall":J
    .local v2, "initValue":D
    .local v4, "slope":D
    .local v6, "numCall":J
    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$2;-><init>(DDJ)V

    return-object v1

    .line 101
    .end local v2    # "initValue":D
    .end local v4    # "slope":D
    .end local v6    # "numCall":J
    .restart local p0    # "initValue":D
    .restart local p2    # "slope":D
    .restart local p4    # "numCall":J
    :cond_0
    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    .line 103
    .end local p0    # "initValue":D
    .end local p2    # "slope":D
    .end local p4    # "numCall":J
    .restart local v2    # "initValue":D
    .restart local v4    # "slope":D
    .restart local v6    # "numCall":J
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0
.end method
