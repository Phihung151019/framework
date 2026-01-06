.class public Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;
.super Ljava/lang/Object;
.source "ExponentialDecayFunction.java"


# instance fields
.field private final a:D

.field private final oneOverB:D


# direct methods
.method public constructor <init>(DDJ)V
    .locals 4
    .param p1, "initValue"    # D
    .param p3, "valueAtNumCall"    # D
    .param p5, "numCall"    # J

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-lez v2, :cond_3

    .line 60
    cmpg-double v0, p3, v0

    if-lez v0, :cond_2

    .line 63
    cmpl-double v0, p3, p1

    if-gez v0, :cond_1

    .line 66
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-lez v0, :cond_0

    .line 70
    iput-wide p1, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;->a:D

    .line 71
    div-double v0, p3, p1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    neg-double v0, v0

    long-to-double v2, p5

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;->oneOverB:D

    .line 72
    return-void

    .line 67
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 64
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 61
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 58
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method


# virtual methods
.method public value(J)D
    .locals 6
    .param p1, "numCall"    # J

    .line 81
    iget-wide v0, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;->a:D

    neg-long v2, p1

    long-to-double v2, v2

    iget-wide v4, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;->oneOverB:D

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method
