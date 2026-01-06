.class public Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;
.super Ljava/lang/Object;
.source "HarmonicOscillator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;
    }
.end annotation


# instance fields
.field private final amplitude:D

.field private final omega:D

.field private final phase:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 0
    .param p1, "amplitude"    # D
    .param p3, "omega"    # D
    .param p5, "phase"    # D

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->amplitude:D

    .line 55
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->omega:D

    .line 56
    iput-wide p5, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->phase:D

    .line 57
    return-void
.end method

.method static synthetic access$000(DD)D
    .locals 2
    .param p0, "x0"    # D
    .param p2, "x1"    # D

    .line 36
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->value(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static value(DD)D
    .locals 2
    .param p0, "xTimesOmegaPlusPhase"    # D
    .param p2, "amplitude"    # D

    .line 158
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, p2

    return-wide v0
.end method


# virtual methods
.method public derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    invoke-static {p0}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toDifferentiableUnivariateFunction(Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v0

    return-object v0
.end method

.method public value(D)D
    .locals 4
    .param p1, "x"    # D

    .line 61
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->omega:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->phase:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->amplitude:D

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->value(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 10
    .param p1, "t"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 166
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v0

    .line 167
    .local v0, "x":D
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [D

    .line 169
    .local v2, "f":[D
    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->omega:D

    mul-double/2addr v4, v0

    iget-wide v6, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->phase:D

    add-double/2addr v4, v6

    .line 170
    .local v4, "alpha":D
    iget-wide v6, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->amplitude:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const/4 v8, 0x0

    aput-wide v6, v2, v8

    .line 171
    array-length v6, v2

    if-le v6, v3, :cond_0

    .line 172
    iget-wide v6, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->amplitude:D

    neg-double v6, v6

    iget-wide v8, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->omega:D

    mul-double/2addr v6, v8

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    aput-wide v6, v2, v3

    .line 173
    iget-wide v6, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->omega:D

    neg-double v6, v6

    iget-wide v8, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->omega:D

    mul-double/2addr v6, v8

    .line 174
    .local v6, "mo2":D
    const/4 v3, 0x2

    .local v3, "i":I
    :goto_0
    array-length v8, v2

    if-ge v3, v8, :cond_0

    .line 175
    add-int/lit8 v8, v3, -0x2

    aget-wide v8, v2, v8

    mul-double/2addr v8, v6

    aput-wide v8, v2, v3

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 179
    .end local v3    # "i":I
    .end local v6    # "mo2":D
    :cond_0
    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compose([D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v3

    return-object v3
.end method
