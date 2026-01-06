.class public Lorg/apache/commons/math3/analysis/function/Logistic;
.super Ljava/lang/Object;
.source "Logistic.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/function/Logistic$Parametric;
    }
.end annotation


# instance fields
.field private final a:D

.field private final b:D

.field private final k:D

.field private final m:D

.field private final oneOverN:D

.field private final q:D


# direct methods
.method public constructor <init>(DDDDDD)V
    .locals 2
    .param p1, "k"    # D
    .param p3, "m"    # D
    .param p5, "b"    # D
    .param p7, "q"    # D
    .param p9, "a"    # D
    .param p11, "n"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-wide/16 v0, 0x0

    cmpg-double v0, p11, v0

    if-lez v0, :cond_0

    .line 75
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->k:D

    .line 76
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->m:D

    .line 77
    iput-wide p5, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->b:D

    .line 78
    iput-wide p7, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->q:D

    .line 79
    iput-wide p9, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->a:D

    .line 80
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p11

    iput-wide v0, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->oneOverN:D

    .line 81
    return-void

    .line 72
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p11, p12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method

.method static synthetic access$000(DDDDDD)D
    .locals 2
    .param p0, "x0"    # D
    .param p2, "x1"    # D
    .param p4, "x2"    # D
    .param p6, "x3"    # D
    .param p8, "x4"    # D
    .param p10, "x5"    # D

    .line 37
    invoke-static/range {p0 .. p11}, Lorg/apache/commons/math3/analysis/function/Logistic;->value(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static value(DDDDDD)D
    .locals 6
    .param p0, "mMinusX"    # D
    .param p2, "k"    # D
    .param p4, "b"    # D
    .param p6, "q"    # D
    .param p8, "a"    # D
    .param p10, "oneOverN"    # D

    .line 218
    sub-double v0, p2, p8

    mul-double v2, p4, p0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    mul-double/2addr v2, p6

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    move-wide/from16 v4, p10

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    add-double/2addr v0, p8

    return-wide v0
.end method


# virtual methods
.method public derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    invoke-static {p0}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toDifferentiableUnivariateFunction(Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v0

    return-object v0
.end method

.method public value(D)D
    .locals 14
    .param p1, "x"    # D

    .line 85
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->m:D

    sub-double v2, v0, p1

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->k:D

    iget-wide v6, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->b:D

    iget-wide v8, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->q:D

    iget-wide v10, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->a:D

    iget-wide v12, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->oneOverN:D

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/analysis/function/Logistic;->value(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5
    .param p1, "t"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 225
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->negate()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->m:D

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->b:D

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->exp()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->q:D

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->oneOverN:D

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->pow(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->reciprocal()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->k:D

    iget-wide v3, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->a:D

    sub-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->a:D

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method
