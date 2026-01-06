.class public abstract Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;
.super Ljava/lang/Object;
.source "BaseAbstractUnivariateIntegrator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/integration/UnivariateIntegrator;


# static fields
.field public static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-15

.field public static final DEFAULT_MAX_ITERATIONS_COUNT:I = 0x7fffffff

.field public static final DEFAULT_MIN_ITERATIONS_COUNT:I = 0x3

.field public static final DEFAULT_RELATIVE_ACCURACY:D = 1.0E-6


# instance fields
.field private final absoluteAccuracy:D

.field private count:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

.field private evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

.field private function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

.field protected iterations:Lorg/apache/commons/math3/util/Incrementor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private max:D

.field private min:D

.field private final minimalIterationCount:I

.field private final relativeAccuracy:D


# direct methods
.method protected constructor <init>(DD)V
    .locals 7
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D

    .line 151
    const/4 v5, 0x3

    const v6, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .end local p1    # "relativeAccuracy":D
    .end local p3    # "absoluteAccuracy":D
    .local v1, "relativeAccuracy":D
    .local v3, "absoluteAccuracy":D
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(DDII)V

    .line 153
    return-void
.end method

.method protected constructor <init>(DDII)V
    .locals 4
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D
    .param p5, "minimalIterationCount"    # I
    .param p6, "maximalIterationCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->relativeAccuracy:D

    .line 122
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->absoluteAccuracy:D

    .line 125
    if-lez p5, :cond_1

    .line 128
    if-le p6, p5, :cond_0

    .line 131
    iput p5, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->minimalIterationCount:I

    .line 132
    invoke-static {}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->create()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    invoke-virtual {v0, p6}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withMaximalCount(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->count:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    .line 135
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->count:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-static {v0}, Lorg/apache/commons/math3/util/Incrementor;->wrap(Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;)Lorg/apache/commons/math3/util/Incrementor;

    move-result-object v0

    .line 137
    .local v0, "wrapped":Lorg/apache/commons/math3/util/Incrementor;
    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    .line 140
    invoke-static {}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->create()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    .line 142
    return-void

    .line 129
    .end local v0    # "wrapped":Lorg/apache/commons/math3/util/Incrementor;
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 126
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method

.method protected constructor <init>(II)V
    .locals 7
    .param p1, "minimalIterationCount"    # I
    .param p2, "maximalIterationCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 167
    const-wide v1, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const-wide v3, 0x3cd203af9ee75616L    # 1.0E-15

    move-object v0, p0

    move v5, p1

    move v6, p2

    .end local p1    # "minimalIterationCount":I
    .end local p2    # "maximalIterationCount":I
    .local v5, "minimalIterationCount":I
    .local v6, "maximalIterationCount":I
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(DDII)V

    .line 169
    return-void
.end method


# virtual methods
.method protected computeObjectiveValue(D)D
    .locals 3
    .param p1, "point"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 233
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment()V
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    nop

    .line 237
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v0

    return-wide v0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Lorg/apache/commons/math3/exception/MaxCountExceededException;
    new-instance v1, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;

    invoke-virtual {v0}, Lorg/apache/commons/math3/exception/MaxCountExceededException;->getMax()Ljava/lang/Number;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;-><init>(Ljava/lang/Number;)V

    throw v1
.end method

.method protected abstract doIntegrate()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation
.end method

.method public getAbsoluteAccuracy()D
    .locals 2

    .line 178
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->absoluteAccuracy:D

    return-wide v0
.end method

.method public getEvaluations()I
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method public getIterations()I
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->count:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method protected getMax()D
    .locals 2

    .line 219
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->max:D

    return-wide v0
.end method

.method public getMaximalIterationCount()I
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->count:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getMaximalCount()I

    move-result v0

    return v0
.end method

.method protected getMin()D
    .locals 2

    .line 213
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->min:D

    return-wide v0
.end method

.method public getMinimalIterationCount()I
    .locals 1

    .line 183
    iget v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->minimalIterationCount:I

    return v0
.end method

.method public getRelativeAccuracy()D
    .locals 2

    .line 173
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->relativeAccuracy:D

    return-wide v0
.end method

.method protected incrementCount()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->count:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment()V

    .line 207
    return-void
.end method

.method public integrate(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D
    .locals 2
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p3, "lower"    # D
    .param p5, "upper"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 277
    invoke-virtual/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->setup(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)V

    .line 280
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->doIntegrate()D

    move-result-wide v0

    return-wide v0
.end method

.method protected setup(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)V
    .locals 2
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p3, "lower"    # D
    .param p5, "upper"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 258
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 259
    invoke-static {p3, p4, p5, p6}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->verifyInterval(DD)V

    .line 262
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->min:D

    .line 263
    iput-wide p5, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->max:D

    .line 264
    iput-object p2, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    .line 265
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withMaximalCount(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withStart(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    .line 266
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->count:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withStart(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->count:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    .line 268
    return-void
.end method
