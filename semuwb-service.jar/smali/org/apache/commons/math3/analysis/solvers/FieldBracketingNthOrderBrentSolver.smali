.class public Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;
.super Ljava/lang/Object;
.source "FieldBracketingNthOrderBrentSolver.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final MAXIMAL_AGING:I = 0x2


# instance fields
.field private final absoluteAccuracy:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

.field private final field:Lorg/apache/commons/math3/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/Field<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final functionValueAccuracy:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final maximalOrder:I

.field private final relativeAccuracy:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;I)V
    .locals 4
    .param p4, "maximalOrder"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 85
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;, "Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver<TT;>;"
    .local p1, "relativeAccuracy":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "absoluteAccuracy":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p3, "functionValueAccuracy":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x2

    if-lt p4, v0, :cond_0

    .line 89
    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->field:Lorg/apache/commons/math3/Field;

    .line 90
    iput p4, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->maximalOrder:I

    .line 91
    iput-object p2, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->absoluteAccuracy:Lorg/apache/commons/math3/RealFieldElement;

    .line 92
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->relativeAccuracy:Lorg/apache/commons/math3/RealFieldElement;

    .line 93
    iput-object p3, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->functionValueAccuracy:Lorg/apache/commons/math3/RealFieldElement;

    .line 94
    invoke-static {}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->create()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    .line 95
    return-void

    .line 87
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1
.end method

.method private guessX(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;II)Lorg/apache/commons/math3/RealFieldElement;
    .locals 6
    .param p4, "start"    # I
    .param p5, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;[TT;II)TT;"
        }
    .end annotation

    .line 429
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;, "Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver<TT;>;"
    .local p1, "targetY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "x":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p3, "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    move v0, p4

    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, p5, -0x1

    if-ge v0, v1, :cond_1

    .line 430
    add-int/lit8 v1, v0, 0x1

    sub-int/2addr v1, p4

    .line 431
    .local v1, "delta":I
    add-int/lit8 v2, p5, -0x1

    .local v2, "j":I
    :goto_1
    if-le v2, v0, :cond_0

    .line 432
    aget-object v3, p2, v2

    add-int/lit8 v4, v2, -0x1

    aget-object v4, p2, v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v4, p3, v2

    sub-int v5, v2, v1

    aget-object v5, p3, v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, p2, v2

    .line 431
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 429
    .end local v1    # "delta":I
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 437
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 438
    .local v0, "x0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    add-int/lit8 v1, p5, -0x1

    .local v1, "j":I
    :goto_2
    if-lt v1, p4, :cond_2

    .line 439
    aget-object v2, p2, v1

    aget-object v3, p3, v1

    invoke-interface {p1, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 438
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 442
    .end local v1    # "j":I
    :cond_2
    return-object v0
.end method


# virtual methods
.method public getAbsoluteAccuracy()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 130
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;, "Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->absoluteAccuracy:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getEvaluations()I
    .locals 1

    .line 122
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;, "Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method public getFunctionValueAccuracy()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 146
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;, "Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->functionValueAccuracy:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    .line 110
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;, "Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getMaximalCount()I

    move-result v0

    return v0
.end method

.method public getMaximalOrder()I
    .locals 1

    .line 101
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;, "Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->maximalOrder:I

    return v0
.end method

.method public getRelativeAccuracy()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 138
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;, "Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->relativeAccuracy:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public solve(ILorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 44
    .param p1, "maxEval"    # I
    .param p6, "allowedSolution"    # Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction<",
            "TT;>;TT;TT;TT;",
            "Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 194
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;, "Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver<TT;>;"
    .local p2, "f":Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;, "Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction<TT;>;"
    .local p3, "min":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p4, "max":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p5, "startValue":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v6, p2

    invoke-static {v6}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 197
    iget-object v1, v0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move/from16 v7, p1

    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withMaximalCount(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v1

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withStart(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    .line 198
    iget-object v1, v0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    .line 199
    .local v9, "zero":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    invoke-interface {v9, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    .line 202
    .local v10, "nan":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v1, v0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->field:Lorg/apache/commons/math3/Field;

    iget v2, v0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->maximalOrder:I

    const/4 v11, 0x1

    add-int/2addr v2, v11

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, [Lorg/apache/commons/math3/RealFieldElement;

    .line 203
    .local v12, "x":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    iget-object v1, v0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->field:Lorg/apache/commons/math3/Field;

    iget v2, v0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->maximalOrder:I

    add-int/2addr v2, v11

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Lorg/apache/commons/math3/RealFieldElement;

    .line 204
    .local v3, "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    aput-object p3, v12, v8

    .line 205
    aput-object p5, v12, v11

    .line 206
    const/4 v13, 0x2

    aput-object p4, v12, v13

    .line 209
    iget-object v1, v0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment()V

    .line 210
    aget-object v1, v12, v11

    invoke-interface {v6, v1}, Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;->value(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    aput-object v1, v3, v11

    .line 211
    aget-object v1, v3, v11

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    const-wide/16 v14, 0x0

    invoke-static {v1, v2, v14, v15, v11}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    aget-object v1, v12, v11

    return-object v1

    .line 217
    :cond_0
    iget-object v1, v0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment()V

    .line 218
    aget-object v1, v12, v8

    invoke-interface {v6, v1}, Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;->value(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    aput-object v1, v3, v8

    .line 219
    aget-object v1, v3, v8

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    invoke-static {v1, v2, v14, v15, v11}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    aget-object v1, v12, v8

    return-object v1

    .line 226
    :cond_1
    aget-object v1, v3, v8

    aget-object v2, v3, v11

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    cmpg-double v1, v1, v14

    if-gez v1, :cond_2

    .line 229
    const/4 v1, 0x2

    .line 230
    .local v1, "nbPoints":I
    const/4 v2, 0x1

    .local v2, "signChangeIndex":I
    goto :goto_0

    .line 235
    .end local v1    # "nbPoints":I
    .end local v2    # "signChangeIndex":I
    :cond_2
    iget-object v1, v0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment()V

    .line 236
    aget-object v1, v12, v13

    invoke-interface {v6, v1}, Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;->value(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    aput-object v1, v3, v13

    .line 237
    aget-object v1, v3, v13

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    invoke-static {v1, v2, v14, v15, v11}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 239
    aget-object v1, v12, v13

    return-object v1

    .line 242
    :cond_3
    aget-object v1, v3, v11

    aget-object v2, v3, v13

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    cmpg-double v1, v1, v14

    if-gez v1, :cond_18

    .line 244
    const/4 v1, 0x3

    .line 245
    .restart local v1    # "nbPoints":I
    const/4 v2, 0x2

    .line 254
    .restart local v2    # "signChangeIndex":I
    :goto_0
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->field:Lorg/apache/commons/math3/Field;

    array-length v5, v12

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/commons/math3/RealFieldElement;

    .line 257
    .local v4, "tmpX":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    add-int/lit8 v5, v2, -0x1

    aget-object v5, v12, v5

    .line 258
    .local v5, "xA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    add-int/lit8 v16, v2, -0x1

    aget-object v16, v3, v16

    .line 259
    .local v16, "yA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v8, v17

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 260
    .local v8, "absXA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {v16 .. v16}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/RealFieldElement;

    .line 261
    .local v17, "absYA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v19, 0x0

    .line 262
    .local v19, "agingA":I
    aget-object v20, v12, v2

    .line 263
    .local v20, "xB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v21, v3, v2

    .line 264
    .local v21, "yB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {v20 .. v20}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v22

    move-wide/from16 v23, v14

    move-object/from16 v14, v22

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    .line 265
    .local v14, "absXB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {v21 .. v21}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    .line 266
    .local v15, "absYB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v22, 0x0

    move-object/from16 v11, v16

    move-object/from16 v13, v17

    move/from16 v7, v19

    move-object/from16 v19, v9

    move-object/from16 v9, v20

    move-object/from16 v20, v10

    move-object/from16 v10, v21

    move/from16 v21, v1

    move-object v1, v5

    move-object v5, v15

    move/from16 v15, v22

    .line 272
    .end local v16    # "yA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v17    # "absYA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v1, "xA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v5, "absYB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v7, "agingA":I
    .local v9, "xB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v10, "yB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v11, "yA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v13, "absYA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v15, "agingB":I
    .local v19, "zero":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v20, "nan":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v21, "nbPoints":I
    :goto_1
    invoke-interface {v8, v14}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v22 .. v22}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v25

    cmpg-double v22, v25, v23

    if-gez v22, :cond_4

    move-object/from16 v22, v14

    goto :goto_2

    :cond_4
    move-object/from16 v22, v8

    :goto_2
    move-object/from16 v25, v22

    .line 273
    .local v25, "maxX":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v13, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v22 .. v22}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v26

    cmpg-double v22, v26, v23

    if-gez v22, :cond_5

    move-object/from16 v22, v5

    goto :goto_3

    :cond_5
    move-object/from16 v22, v13

    :goto_3
    move-object/from16 v26, v22

    .line 274
    .local v26, "maxY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move/from16 v22, v2

    .end local v2    # "signChangeIndex":I
    .local v22, "signChangeIndex":I
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->absoluteAccuracy:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v27, v3

    .end local v3    # "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local v27, "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    iget-object v3, v0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->relativeAccuracy:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v28, v8

    move-object/from16 v8, v25

    .end local v25    # "maxX":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v8, "maxX":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v28, "absXA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v3, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 275
    .local v2, "xTol":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v9, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v29

    cmpg-double v3, v29, v23

    if-lez v3, :cond_14

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->functionValueAccuracy:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v25, v8

    move-object/from16 v8, v26

    .end local v26    # "maxY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v8, "maxY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v25    # "maxX":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v8, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v29

    cmpg-double v3, v29, v23

    if-gez v3, :cond_6

    move/from16 v0, v22

    move-object/from16 v22, v8

    move v8, v0

    move-object/from16 v34, v1

    move-object/from16 v32, v4

    move/from16 v30, v7

    move-object/from16 v26, v10

    move-object/from16 v29, v14

    move/from16 v0, v21

    move-object/from16 v3, v27

    move-object/from16 v27, v2

    move-object v10, v5

    goto/16 :goto_d

    .line 296
    :cond_6
    move-object v3, v1

    .end local v1    # "xA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v3, "xA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v0, 0x2

    if-lt v7, v0, :cond_7

    .line 298
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    invoke-interface {v10, v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    move-object v1, v0

    .local v0, "targetY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    goto :goto_4

    .line 299
    .end local v0    # "targetY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_7
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    const/4 v0, 0x2

    if-lt v15, v0, :cond_8

    .line 301
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    invoke-interface {v11, v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    move-object v1, v0

    .restart local v0    # "targetY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    goto :goto_4

    .line 304
    .end local v0    # "targetY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_8
    move-object/from16 v0, v19

    move-object v1, v0

    .line 309
    .local v1, "targetY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_4
    const/4 v0, 0x0

    .line 310
    .local v0, "start":I
    move/from16 v26, v21

    .line 314
    .local v26, "end":I
    :goto_5
    move-object/from16 v29, v1

    .end local v1    # "targetY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v29, "targetY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    sub-int v1, v26, v0

    invoke-static {v12, v0, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    move-object v1, v10

    move-object v10, v5

    move/from16 v5, v26

    move-object/from16 v26, v1

    move/from16 v1, v22

    move-object/from16 v22, v8

    move v8, v1

    move/from16 v30, v7

    move-object/from16 v1, v29

    move-object v7, v3

    move-object/from16 v29, v14

    move-object/from16 v3, v27

    move-object/from16 v27, v2

    move-object v2, v4

    move v4, v0

    move-object/from16 v0, p0

    .end local v0    # "start":I
    .end local v14    # "absXB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v1    # "targetY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v2, "tmpX":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local v3, "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local v4, "start":I
    .local v5, "end":I
    .local v7, "xA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v8, "signChangeIndex":I
    .local v10, "absYB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v22, "maxY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v26, "yB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v27, "xTol":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v29, "absXB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v30, "agingA":I
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->guessX(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v14

    .line 317
    .local v14, "nextX":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v14, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v31 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v31

    cmpl-double v31, v31, v23

    if-lez v31, :cond_a

    invoke-interface {v14, v9}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v31 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v31

    cmpg-double v31, v31, v23

    if-ltz v31, :cond_9

    goto :goto_6

    :cond_9
    move-object/from16 v31, v1

    move-object/from16 v32, v2

    move v1, v4

    goto :goto_8

    .line 323
    :cond_a
    :goto_6
    move-object/from16 v31, v1

    .end local v1    # "targetY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v31, "targetY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    sub-int v1, v8, v4

    move-object/from16 v32, v2

    .end local v2    # "tmpX":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local v32, "tmpX":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    sub-int v2, v5, v8

    if-lt v1, v2, :cond_b

    .line 325
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "start":I
    .local v1, "start":I
    goto :goto_7

    .line 328
    .end local v1    # "start":I
    .restart local v4    # "start":I
    :cond_b
    add-int/lit8 v1, v5, -0x1

    move v5, v1

    move v1, v4

    .line 332
    .end local v4    # "start":I
    .restart local v1    # "start":I
    :goto_7
    move-object/from16 v14, v20

    .line 336
    :goto_8
    invoke-interface {v14}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v33

    invoke-static/range {v33 .. v34}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_d

    sub-int v2, v5, v1

    const/4 v4, 0x1

    if-gt v2, v4, :cond_c

    goto :goto_9

    :cond_c
    move-object/from16 v0, v26

    move/from16 v26, v5

    move-object v5, v10

    move-object v10, v0

    move-object/from16 v0, v22

    move/from16 v22, v8

    move-object v8, v0

    move v0, v1

    move-object/from16 v2, v27

    move-object/from16 v14, v29

    move-object/from16 v1, v31

    move-object/from16 v4, v32

    move-object/from16 v27, v3

    move-object v3, v7

    move/from16 v7, v30

    goto/16 :goto_5

    .line 338
    :cond_d
    :goto_9
    invoke-interface {v14}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v33

    invoke-static/range {v33 .. v34}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 340
    invoke-interface {v9, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    move/from16 v33, v5

    .end local v5    # "end":I
    .local v33, "end":I
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v7, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    .line 341
    add-int/lit8 v1, v8, -0x1

    .line 342
    move v5, v8

    .end local v33    # "end":I
    .restart local v5    # "end":I
    goto :goto_a

    .line 338
    :cond_e
    move/from16 v33, v5

    .line 346
    :goto_a
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment()V

    .line 347
    invoke-interface {v6, v14}, Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;->value(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 348
    .local v2, "nextY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move/from16 v33, v5

    .end local v5    # "end":I
    .restart local v33    # "end":I
    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    move-object/from16 v34, v7

    move-wide/from16 v6, v23

    const/4 v0, 0x1

    .end local v7    # "xA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v34, "xA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-static {v4, v5, v6, v7, v0}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 351
    return-object v14

    .line 354
    :cond_f
    move/from16 v0, v21

    const/4 v4, 0x2

    .end local v21    # "nbPoints":I
    .local v0, "nbPoints":I
    if-le v0, v4, :cond_10

    sub-int v5, v33, v1

    if-eq v5, v0, :cond_10

    .line 358
    sub-int v0, v33, v1

    .line 359
    const/4 v4, 0x0

    invoke-static {v12, v1, v12, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    invoke-static {v3, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    sub-int v4, v8, v1

    .end local v8    # "signChangeIndex":I
    .local v4, "signChangeIndex":I
    goto :goto_b

    .line 363
    .end local v4    # "signChangeIndex":I
    .restart local v8    # "signChangeIndex":I
    :cond_10
    array-length v4, v12

    if-ne v0, v4, :cond_12

    .line 366
    add-int/lit8 v0, v0, -0x1

    .line 369
    array-length v4, v12

    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/16 v17, 0x2

    div-int/lit8 v4, v4, 0x2

    if-lt v8, v4, :cond_11

    .line 371
    const/4 v4, 0x0

    invoke-static {v12, v5, v12, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 372
    invoke-static {v3, v5, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    add-int/lit8 v4, v8, -0x1

    .end local v8    # "signChangeIndex":I
    .restart local v4    # "signChangeIndex":I
    goto :goto_b

    .line 369
    .end local v4    # "signChangeIndex":I
    .restart local v8    # "signChangeIndex":I
    :cond_11
    move v4, v8

    goto :goto_b

    .line 363
    :cond_12
    move v4, v8

    .line 380
    .end local v8    # "signChangeIndex":I
    .restart local v4    # "signChangeIndex":I
    :goto_b
    add-int/lit8 v5, v4, 0x1

    sub-int v6, v0, v4

    invoke-static {v12, v4, v12, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 381
    aput-object v14, v12, v4

    .line 382
    add-int/lit8 v5, v4, 0x1

    sub-int v6, v0, v4

    invoke-static {v3, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    aput-object v2, v3, v4

    .line 384
    const/16 v16, 0x1

    add-int/lit8 v21, v0, 0x1

    .line 387
    .end local v0    # "nbPoints":I
    .restart local v21    # "nbPoints":I
    invoke-interface {v2, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v5

    const-wide/16 v23, 0x0

    cmpg-double v0, v5, v23

    if-gtz v0, :cond_13

    .line 389
    move-object v0, v14

    .line 390
    .end local v9    # "xB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v0, "xB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object v5, v2

    .line 391
    .end local v26    # "yB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v5, "yB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 392
    .end local v10    # "absYB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v6, "absYB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    add-int/lit8 v7, v30, 0x1

    .line 393
    .end local v30    # "agingA":I
    .local v7, "agingA":I
    const/4 v8, 0x0

    move-object v9, v0

    move-object v10, v5

    move-object v5, v6

    move v15, v8

    move-object/from16 v1, v34

    move v2, v4

    .end local v15    # "agingB":I
    .local v8, "agingB":I
    goto :goto_c

    .line 396
    .end local v0    # "xB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v5    # "yB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v6    # "absYB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v7    # "agingA":I
    .end local v8    # "agingB":I
    .restart local v9    # "xB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v10    # "absYB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v15    # "agingB":I
    .restart local v26    # "yB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v30    # "agingA":I
    :cond_13
    move-object v0, v14

    .line 397
    .end local v34    # "xA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v0, "xA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object v5, v2

    .line 398
    .end local v11    # "yA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v5, "yA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 399
    .end local v13    # "absYA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v6, "absYA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v7, 0x0

    .line 400
    .end local v30    # "agingA":I
    .restart local v7    # "agingA":I
    add-int/lit8 v15, v15, 0x1

    .line 403
    add-int/lit8 v4, v4, 0x1

    move-object v1, v0

    move-object v11, v5

    move-object v13, v6

    move-object v5, v10

    move-object/from16 v10, v26

    move v2, v4

    .line 407
    .end local v0    # "xA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v4    # "signChangeIndex":I
    .end local v6    # "absYA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v14    # "nextX":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v22    # "maxY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v25    # "maxX":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v26    # "yB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v27    # "xTol":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v31    # "targetY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v33    # "end":I
    .local v1, "xA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v2, "signChangeIndex":I
    .local v5, "absYB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v10, "yB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v11    # "yA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v13    # "absYA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v6, p2

    move-object/from16 v8, v28

    move-object/from16 v14, v29

    move-object/from16 v4, v32

    const-wide/16 v23, 0x0

    goto/16 :goto_1

    .line 275
    .end local v3    # "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v29    # "absXB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v32    # "tmpX":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local v2, "xTol":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v4, "tmpX":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local v8, "maxX":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v14, "absXB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v22, "signChangeIndex":I
    .local v26, "maxY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v27, "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_14
    move-object/from16 v34, v1

    move-object/from16 v32, v4

    move/from16 v30, v7

    move-object/from16 v25, v8

    move-object/from16 v29, v14

    move/from16 v0, v21

    move/from16 v8, v22

    move-object/from16 v22, v26

    move-object/from16 v3, v27

    move-object/from16 v27, v2

    move-object/from16 v26, v10

    move-object v10, v5

    .line 277
    .end local v1    # "xA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v2    # "xTol":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v4    # "tmpX":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v5    # "absYB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v7    # "agingA":I
    .end local v14    # "absXB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v21    # "nbPoints":I
    .local v0, "nbPoints":I
    .restart local v3    # "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local v8, "signChangeIndex":I
    .local v10, "absYB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v22, "maxY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v25    # "maxX":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v26, "yB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v27, "xTol":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v29    # "absXB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v30    # "agingA":I
    .restart local v32    # "tmpX":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .restart local v34    # "xA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_d
    sget-object v1, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver$1;->$SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution:[I

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 290
    new-instance v1, Lorg/apache/commons/math3/exception/MathInternalError;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 287
    :pswitch_0
    invoke-interface {v11}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    const-wide/16 v23, 0x0

    cmpg-double v1, v1, v23

    if-gez v1, :cond_15

    move-object v1, v9

    goto :goto_e

    :cond_15
    move-object/from16 v1, v34

    :goto_e
    return-object v1

    .line 285
    :pswitch_1
    const-wide/16 v23, 0x0

    invoke-interface {v11}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    cmpg-double v1, v1, v23

    if-gtz v1, :cond_16

    move-object/from16 v1, v34

    goto :goto_f

    :cond_16
    move-object v1, v9

    :goto_f
    return-object v1

    .line 283
    :pswitch_2
    return-object v9

    .line 281
    :pswitch_3
    return-object v34

    .line 279
    :pswitch_4
    invoke-interface {v13, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    const-wide/16 v23, 0x0

    cmpg-double v1, v1, v23

    if-gez v1, :cond_17

    move-object/from16 v1, v34

    goto :goto_10

    :cond_17
    move-object v1, v9

    :goto_10
    return-object v1

    .line 247
    .end local v0    # "nbPoints":I
    .end local v8    # "signChangeIndex":I
    .end local v11    # "yA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v13    # "absYA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v15    # "agingB":I
    .end local v19    # "zero":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v20    # "nan":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v22    # "maxY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v25    # "maxX":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v26    # "yB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v27    # "xTol":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v28    # "absXA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v29    # "absXB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v30    # "agingA":I
    .end local v32    # "tmpX":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v34    # "xA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v9, "zero":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v10, "nan":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_18
    new-instance v35, Lorg/apache/commons/math3/exception/NoBracketingException;

    const/16 v18, 0x0

    aget-object v0, v12, v18

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v36

    const/16 v17, 0x2

    aget-object v0, v12, v17

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v38

    aget-object v0, v3, v18

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v40

    aget-object v0, v3, v17

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v42

    invoke-direct/range {v35 .. v43}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(DDDD)V

    throw v35

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public solve(ILorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 8
    .param p1, "maxEval"    # I
    .param p5, "allowedSolution"    # Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction<",
            "TT;>;TT;TT;",
            "Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 168
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;, "Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver<TT;>;"
    .local p2, "f":Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;, "Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction<TT;>;"
    .local p3, "min":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p4, "max":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {p3, p4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    .end local p1    # "maxEval":I
    .end local p2    # "f":Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;, "Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction<TT;>;"
    .end local p3    # "min":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local p4    # "max":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local p5    # "allowedSolution":Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;
    .local v2, "maxEval":I
    .local v3, "f":Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;, "Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction<TT;>;"
    .local v4, "min":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v5, "max":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v7, "allowedSolution":Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;
    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->solve(ILorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p1

    return-object p1
.end method
