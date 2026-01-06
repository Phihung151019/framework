.class public Lorg/apache/commons/math3/ml/neuralnet/sofm/util/QuasiSigmoidDecayFunction;
.super Ljava/lang/Object;
.source "QuasiSigmoidDecayFunction.java"


# instance fields
.field private final scale:D

.field private final sigmoid:Lorg/apache/commons/math3/analysis/function/Logistic;


# direct methods
.method public constructor <init>(DDJ)V
    .locals 25
    .param p1, "initValue"    # D
    .param p3, "slope"    # D
    .param p5, "numCall"    # J

    .line 55
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-wide/16 v3, 0x0

    cmpg-double v5, p1, v3

    if-lez v5, :cond_2

    .line 59
    cmpl-double v5, p3, v3

    if-gez v5, :cond_1

    .line 62
    const-wide/16 v5, 0x1

    cmp-long v5, v1, v5

    if-lez v5, :cond_0

    .line 66
    move-wide/from16 v7, p1

    .line 67
    .local v7, "k":D
    long-to-double v9, v1

    .line 68
    .local v9, "m":D
    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    mul-double v5, v5, p3

    div-double v11, v5, p1

    .line 69
    .local v11, "b":D
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    .line 70
    .local v19, "q":D
    const-wide/16 v21, 0x0

    .line 71
    .local v21, "a":D
    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    .line 72
    .local v23, "n":D
    new-instance v6, Lorg/apache/commons/math3/analysis/function/Logistic;

    const-wide/16 v15, 0x0

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v6 .. v18}, Lorg/apache/commons/math3/analysis/function/Logistic;-><init>(DDDDDD)V

    iput-object v6, v0, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/QuasiSigmoidDecayFunction;->sigmoid:Lorg/apache/commons/math3/analysis/function/Logistic;

    .line 74
    iget-object v5, v0, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/QuasiSigmoidDecayFunction;->sigmoid:Lorg/apache/commons/math3/analysis/function/Logistic;

    invoke-virtual {v5, v3, v4}, Lorg/apache/commons/math3/analysis/function/Logistic;->value(D)D

    move-result-wide v3

    .line 75
    .local v3, "y0":D
    div-double v5, v7, v3

    iput-wide v5, v0, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/QuasiSigmoidDecayFunction;->scale:D

    .line 76
    return-void

    .line 63
    .end local v3    # "y0":D
    .end local v7    # "k":D
    .end local v9    # "m":D
    .end local v11    # "b":D
    .end local v19    # "q":D
    .end local v21    # "a":D
    .end local v23    # "n":D
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v3

    .line 60
    :cond_1
    new-instance v3, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v4, v6, v5}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v3

    .line 57
    :cond_2
    new-instance v3, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v3
.end method


# virtual methods
.method public value(J)D
    .locals 5
    .param p1, "numCall"    # J

    .line 85
    iget-wide v0, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/QuasiSigmoidDecayFunction;->scale:D

    iget-object v2, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/QuasiSigmoidDecayFunction;->sigmoid:Lorg/apache/commons/math3/analysis/function/Logistic;

    long-to-double v3, p1

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/math3/analysis/function/Logistic;->value(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method
