.class Lorg/apache/commons/math3/linear/SymmLQ$State;
.super Ljava/lang/Object;
.source "SymmLQ.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/SymmLQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# static fields
.field static final CBRT_MACH_PREC:D

.field static final MACH_PREC:D


# instance fields
.field private final a:Lorg/apache/commons/math3/linear/RealLinearOperator;

.field private final b:Lorg/apache/commons/math3/linear/RealVector;

.field private bIsNull:Z

.field private beta:D

.field private beta1:D

.field private bstep:D

.field private cgnorm:D

.field private final check:Z

.field private dbar:D

.field private final delta:D

.field private gammaZeta:D

.field private gbar:D

.field private gmax:D

.field private gmin:D

.field private final goodb:Z

.field private hasConverged:Z

.field private lqnorm:D

.field private final m:Lorg/apache/commons/math3/linear/RealLinearOperator;

.field private final mb:Lorg/apache/commons/math3/linear/RealVector;

.field private minusEpsZeta:D

.field private oldb:D

.field private r1:Lorg/apache/commons/math3/linear/RealVector;

.field private r2:Lorg/apache/commons/math3/linear/RealVector;

.field private rnorm:D

.field private final shift:D

.field private snprod:D

.field private tnorm:D

.field private wbar:Lorg/apache/commons/math3/linear/RealVector;

.field private final xL:Lorg/apache/commons/math3/linear/RealVector;

.field private y:Lorg/apache/commons/math3/linear/RealVector;

.field private ynorm2:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 365
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->MACH_PREC:D

    .line 366
    sget-wide v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->MACH_PREC:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->cbrt(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->CBRT_MACH_PREC:D

    .line 367
    return-void
.end method

.method constructor <init>(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;ZDDZ)V
    .locals 2
    .param p1, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p2, "m"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p3, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p4, "goodb"    # Z
    .param p5, "shift"    # D
    .param p7, "delta"    # D
    .param p9, "check"    # Z

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput-object p1, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->a:Lorg/apache/commons/math3/linear/RealLinearOperator;

    .line 391
    iput-object p2, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    .line 392
    iput-object p3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->b:Lorg/apache/commons/math3/linear/RealVector;

    .line 393
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p3}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    .line 394
    iput-boolean p4, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->goodb:Z

    .line 395
    iput-wide p5, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->shift:D

    .line 396
    if-nez p2, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->mb:Lorg/apache/commons/math3/linear/RealVector;

    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->hasConverged:Z

    .line 398
    iput-boolean p9, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->check:Z

    .line 399
    iput-wide p7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->delta:D

    .line 400
    return-void
.end method

.method private static checkSymmetry(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 10
    .param p0, "l"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p1, "x"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p2, "y"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p3, "z"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;
        }
    .end annotation

    .line 418
    invoke-virtual {p2, p2}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    .line 419
    .local v0, "s":D
    invoke-virtual {p1, p3}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v2

    .line 420
    .local v2, "t":D
    sget-wide v4, Lorg/apache/commons/math3/linear/SymmLQ$State;->MACH_PREC:D

    add-double/2addr v4, v0

    sget-wide v6, Lorg/apache/commons/math3/linear/SymmLQ$State;->CBRT_MACH_PREC:D

    mul-double/2addr v4, v6

    .line 421
    .local v4, "epsa":D
    sub-double v6, v0, v2

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    cmpl-double v6, v6, v4

    if-gtz v6, :cond_0

    .line 431
    return-void

    .line 423
    :cond_0
    new-instance v6, Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;

    invoke-direct {v6}, Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;-><init>()V

    .line 424
    .local v6, "e":Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;
    invoke-virtual {v6}, Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v7

    .line 425
    .local v7, "context":Lorg/apache/commons/math3/exception/util/ExceptionContext;
    const-string v8, "operator"

    invoke-virtual {v7, v8, p0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 426
    const-string v8, "vector1"

    invoke-virtual {v7, v8, p1}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 427
    const-string v8, "vector2"

    invoke-virtual {v7, v8, p2}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 428
    const-string v8, "threshold"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 429
    throw v6
.end method

.method private static daxpbypz(DLorg/apache/commons/math3/linear/RealVector;DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 6
    .param p0, "a"    # D
    .param p2, "x"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p3, "b"    # D
    .param p5, "y"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p6, "z"    # Lorg/apache/commons/math3/linear/RealVector;

    .line 481
    invoke-virtual {p6}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    .line 482
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 484
    invoke-virtual {p2, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v2

    mul-double/2addr v2, p0

    invoke-virtual {p5, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v4

    mul-double/2addr v4, p3

    add-double/2addr v2, v4

    invoke-virtual {p6, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 485
    .local v2, "zi":D
    invoke-virtual {p6, v1, v2, v3}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 482
    .end local v2    # "zi":D
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 487
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private static daxpy(DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 6
    .param p0, "a"    # D
    .param p2, "x"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p3, "y"    # Lorg/apache/commons/math3/linear/RealVector;

    .line 462
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    .line 463
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 464
    invoke-virtual {p2, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v2

    mul-double/2addr v2, p0

    invoke-virtual {p3, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {p3, v1, v2, v3}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 463
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 466
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private static throwNPDLOException(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 3
    .param p0, "l"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p1, "v"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;
        }
    .end annotation

    .line 444
    new-instance v0, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;

    invoke-direct {v0}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;-><init>()V

    .line 445
    .local v0, "e":Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v1

    .line 446
    .local v1, "context":Lorg/apache/commons/math3/exception/util/ExceptionContext;
    const-string v2, "operator"

    invoke-virtual {v1, v2, p0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 447
    const-string v2, "vector"

    invoke-virtual {v1, v2, p1}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 448
    throw v0
.end method

.method private updateNorms()V
    .locals 21

    .line 760
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->tnorm:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    .line 761
    .local v1, "anorm":D
    iget-wide v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->ynorm2:D

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    .line 762
    .local v3, "ynorm":D
    sget-wide v5, Lorg/apache/commons/math3/linear/SymmLQ$State;->MACH_PREC:D

    mul-double/2addr v5, v1

    .line 763
    .local v5, "epsa":D
    mul-double v7, v1, v3

    sget-wide v9, Lorg/apache/commons/math3/linear/SymmLQ$State;->MACH_PREC:D

    mul-double/2addr v7, v9

    .line 764
    .local v7, "epsx":D
    mul-double v9, v1, v3

    iget-wide v11, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->delta:D

    mul-double/2addr v9, v11

    .line 765
    .local v9, "epsr":D
    iget-wide v11, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gbar:D

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_0

    move-wide v11, v5

    goto :goto_0

    :cond_0
    iget-wide v11, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gbar:D

    .line 766
    .local v11, "diag":D
    :goto_0
    iget-wide v13, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gammaZeta:D

    move-wide v15, v1

    .end local v1    # "anorm":D
    .local v15, "anorm":D
    iget-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gammaZeta:D

    mul-double/2addr v13, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->minusEpsZeta:D

    move-wide/from16 v17, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->minusEpsZeta:D

    mul-double v1, v1, v17

    add-double/2addr v13, v1

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->lqnorm:D

    .line 768
    iget-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->snprod:D

    iget-wide v13, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    mul-double/2addr v1, v13

    .line 769
    .local v1, "qrnorm":D
    iget-wide v13, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    mul-double/2addr v13, v1

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v17

    div-double v13, v13, v17

    iput-wide v13, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->cgnorm:D

    .line 778
    iget-wide v13, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->lqnorm:D

    move-wide/from16 v17, v1

    .end local v1    # "qrnorm":D
    .local v17, "qrnorm":D
    iget-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->cgnorm:D

    cmpg-double v1, v13, v1

    if-gtz v1, :cond_1

    .line 779
    iget-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmax:D

    iget-wide v13, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmin:D

    div-double/2addr v1, v13

    .local v1, "acond":D
    goto :goto_1

    .line 781
    .end local v1    # "acond":D
    :cond_1
    iget-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmax:D

    iget-wide v13, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmin:D

    move-wide/from16 v19, v1

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    invoke-static {v13, v14, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    div-double v1, v19, v1

    .line 783
    .restart local v1    # "acond":D
    :goto_1
    sget-wide v13, Lorg/apache/commons/math3/linear/SymmLQ$State;->MACH_PREC:D

    mul-double/2addr v13, v1

    const-wide v19, 0x3fb999999999999aL    # 0.1

    cmpl-double v13, v13, v19

    if-gez v13, :cond_5

    .line 786
    iget-wide v13, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    cmpg-double v13, v13, v7

    if-lez v13, :cond_4

    .line 793
    iget-wide v13, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->cgnorm:D

    move-wide/from16 v19, v3

    .end local v3    # "ynorm":D
    .local v19, "ynorm":D
    iget-wide v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->lqnorm:D

    invoke-static {v13, v14, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v3

    iput-wide v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->rnorm:D

    .line 794
    iget-wide v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->cgnorm:D

    cmpg-double v3, v3, v7

    if-lez v3, :cond_3

    iget-wide v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->cgnorm:D

    cmpg-double v3, v3, v9

    if-gtz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    :goto_3
    iput-boolean v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->hasConverged:Z

    .line 795
    return-void

    .line 791
    .end local v19    # "ynorm":D
    .restart local v3    # "ynorm":D
    :cond_4
    move-wide/from16 v19, v3

    .end local v3    # "ynorm":D
    .restart local v19    # "ynorm":D
    new-instance v3, Lorg/apache/commons/math3/linear/SingularOperatorException;

    invoke-direct {v3}, Lorg/apache/commons/math3/linear/SingularOperatorException;-><init>()V

    throw v3

    .line 784
    .end local v19    # "ynorm":D
    .restart local v3    # "ynorm":D
    :cond_5
    move-wide/from16 v19, v3

    .end local v3    # "ynorm":D
    .restart local v19    # "ynorm":D
    new-instance v3, Lorg/apache/commons/math3/linear/IllConditionedOperatorException;

    invoke-direct {v3, v1, v2}, Lorg/apache/commons/math3/linear/IllConditionedOperatorException;-><init>(D)V

    throw v3
.end method


# virtual methods
.method bEqualsNullVector()Z
    .locals 1

    .line 812
    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->bIsNull:Z

    return v0
.end method

.method betaEqualsZero()Z
    .locals 4

    .line 822
    iget-wide v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    sget-wide v2, Lorg/apache/commons/math3/linear/SymmLQ$State;->MACH_PREC:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getNormOfResidual()D
    .locals 2

    .line 831
    iget-wide v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->rnorm:D

    return-wide v0
.end method

.method hasConverged()Z
    .locals 1

    .line 803
    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->hasConverged:Z

    return v0
.end method

.method init()V
    .locals 15

    .line 544
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->set(D)V

    .line 549
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->b:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r1:Lorg/apache/commons/math3/linear/RealVector;

    .line 550
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->b:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r1:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    .line 551
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->check:Z

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r1:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v4, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v5, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    iget-object v6, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Lorg/apache/commons/math3/linear/SymmLQ$State;->checkSymmetry(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 555
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r1:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    .line 556
    iget-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    cmpg-double v0, v3, v1

    if-gez v0, :cond_2

    .line 557
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v0, v3}, Lorg/apache/commons/math3/linear/SymmLQ$State;->throwNPDLOException(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 559
    :cond_2
    iget-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    cmpl-double v0, v3, v1

    if-nez v0, :cond_3

    .line 561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->bIsNull:Z

    .line 562
    return-void

    .line 564
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->bIsNull:Z

    .line 565
    iget-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    .line 571
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    iget-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double v3, v5, v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/linear/RealVector;->mapMultiply(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    .line 572
    .local v0, "v":Lorg/apache/commons/math3/linear/RealVector;
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->a:Lorg/apache/commons/math3/linear/RealLinearOperator;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    .line 573
    iget-boolean v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->check:Z

    if-eqz v3, :cond_4

    .line 574
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->a:Lorg/apache/commons/math3/linear/RealLinearOperator;

    iget-object v4, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->a:Lorg/apache/commons/math3/linear/RealLinearOperator;

    iget-object v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v7

    invoke-static {v3, v0, v4, v7}, Lorg/apache/commons/math3/linear/SymmLQ$State;->checkSymmetry(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 580
    :cond_4
    iget-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->shift:D

    neg-double v3, v3

    iget-object v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v3, v4, v0, v7}, Lorg/apache/commons/math3/linear/SymmLQ$State;->daxpy(DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 581
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v3

    .line 582
    .local v3, "alpha":D
    neg-double v7, v3

    iget-wide v9, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    div-double/2addr v7, v9

    iget-object v9, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r1:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v10, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v7, v8, v9, v10}, Lorg/apache/commons/math3/linear/SymmLQ$State;->daxpy(DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 589
    iget-object v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v7

    .line 590
    .local v7, "vty":D
    invoke-virtual {v0, v0}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v9

    .line 591
    .local v9, "vtv":D
    neg-double v11, v7

    div-double/2addr v11, v9

    iget-object v13, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v11, v12, v0, v13}, Lorg/apache/commons/math3/linear/SymmLQ$State;->daxpy(DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 592
    iget-object v11, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v11}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v11

    iput-object v11, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r2:Lorg/apache/commons/math3/linear/RealVector;

    .line 593
    iget-object v11, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    if-eqz v11, :cond_5

    .line 594
    iget-object v11, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    iget-object v12, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r2:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v11, v12}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v11

    iput-object v11, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    .line 596
    :cond_5
    iget-wide v11, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    iput-wide v11, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->oldb:D

    .line 597
    iget-object v11, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r2:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v12, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v11, v12}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v11

    iput-wide v11, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    .line 598
    iget-wide v11, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    cmpg-double v11, v11, v1

    if-gez v11, :cond_6

    .line 599
    iget-object v11, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    iget-object v12, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v11, v12}, Lorg/apache/commons/math3/linear/SymmLQ$State;->throwNPDLOException(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 601
    :cond_6
    iget-wide v11, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    iput-wide v11, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    .line 609
    iget-wide v11, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    iput-wide v11, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->cgnorm:D

    .line 610
    iput-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gbar:D

    .line 611
    iget-wide v11, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    iput-wide v11, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->dbar:D

    .line 612
    iget-wide v11, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    iput-wide v11, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gammaZeta:D

    .line 613
    iput-wide v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->minusEpsZeta:D

    .line 614
    iput-wide v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->bstep:D

    .line 615
    iput-wide v5, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->snprod:D

    .line 616
    mul-double v5, v3, v3

    iget-wide v11, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    iget-wide v13, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    mul-double/2addr v11, v13

    add-double/2addr v5, v11

    iput-wide v5, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->tnorm:D

    .line 617
    iput-wide v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->ynorm2:D

    .line 618
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    sget-wide v11, Lorg/apache/commons/math3/linear/SymmLQ$State;->MACH_PREC:D

    add-double/2addr v5, v11

    iput-wide v5, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmax:D

    .line 619
    iget-wide v5, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmax:D

    iput-wide v5, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmin:D

    .line 621
    iget-boolean v5, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->goodb:Z

    if-eqz v5, :cond_7

    .line 622
    new-instance v5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v6, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->a:Lorg/apache/commons/math3/linear/RealLinearOperator;

    invoke-virtual {v6}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getRowDimension()I

    move-result v6

    invoke-direct {v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v5, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->wbar:Lorg/apache/commons/math3/linear/RealVector;

    .line 623
    iget-object v5, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->wbar:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v5, v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->set(D)V

    goto :goto_1

    .line 625
    :cond_7
    iput-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->wbar:Lorg/apache/commons/math3/linear/RealVector;

    .line 627
    :goto_1
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SymmLQ$State;->updateNorms()V

    .line 628
    return-void
.end method

.method refineSolution(Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 26
    .param p1, "x"    # Lorg/apache/commons/math3/linear/RealVector;

    .line 503
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v2

    .line 504
    .local v2, "n":I
    iget-wide v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->lqnorm:D

    iget-wide v5, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->cgnorm:D

    cmpg-double v3, v3, v5

    if-gez v3, :cond_2

    .line 505
    iget-boolean v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->goodb:Z

    if-nez v3, :cond_0

    .line 506
    const/4 v3, 0x0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1, v3, v4}, Lorg/apache/commons/math3/linear/RealVector;->setSubVector(ILorg/apache/commons/math3/linear/RealVector;)V

    goto/16 :goto_4

    .line 508
    :cond_0
    iget-wide v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->bstep:D

    iget-wide v5, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    div-double/2addr v3, v5

    .line 509
    .local v3, "step":D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 510
    iget-object v6, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->mb:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v6, v5}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v6

    .line 511
    .local v6, "bi":D
    iget-object v8, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v8, v5}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v8

    .line 512
    .local v8, "xi":D
    mul-double v10, v3, v6

    add-double/2addr v10, v8

    invoke-virtual {v1, v5, v10, v11}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 509
    .end local v6    # "bi":D
    .end local v8    # "xi":D
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 514
    .end local v3    # "step":D
    .end local v5    # "i":I
    :cond_1
    goto/16 :goto_4

    .line 516
    :cond_2
    iget-wide v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->tnorm:D

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    .line 517
    .local v3, "anorm":D
    iget-wide v5, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gbar:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_3

    sget-wide v5, Lorg/apache/commons/math3/linear/SymmLQ$State;->MACH_PREC:D

    mul-double/2addr v5, v3

    goto :goto_1

    :cond_3
    iget-wide v5, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gbar:D

    .line 518
    .local v5, "diag":D
    :goto_1
    iget-wide v7, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gammaZeta:D

    div-double/2addr v7, v5

    .line 519
    .local v7, "zbar":D
    iget-wide v9, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->bstep:D

    iget-wide v11, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->snprod:D

    mul-double/2addr v11, v7

    add-double/2addr v9, v11

    iget-wide v11, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    div-double/2addr v9, v11

    .line 521
    .local v9, "step":D
    iget-boolean v11, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->goodb:Z

    if-nez v11, :cond_5

    .line 522
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v2, :cond_4

    .line 523
    iget-object v12, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v12

    .line 524
    .local v12, "xi":D
    iget-object v14, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->wbar:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v14, v11}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v14

    .line 525
    .local v14, "wi":D
    mul-double v16, v7, v14

    move-wide/from16 v18, v3

    .end local v3    # "anorm":D
    .local v18, "anorm":D
    add-double v3, v12, v16

    invoke-virtual {v1, v11, v3, v4}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 522
    .end local v12    # "xi":D
    .end local v14    # "wi":D
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v3, v18

    goto :goto_2

    .end local v18    # "anorm":D
    .restart local v3    # "anorm":D
    :cond_4
    move-wide/from16 v18, v3

    .end local v3    # "anorm":D
    .end local v11    # "i":I
    .restart local v18    # "anorm":D
    goto :goto_4

    .line 528
    .end local v18    # "anorm":D
    .restart local v3    # "anorm":D
    :cond_5
    move-wide/from16 v18, v3

    .end local v3    # "anorm":D
    .restart local v18    # "anorm":D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v2, :cond_6

    .line 529
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v11

    .line 530
    .local v11, "xi":D
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->wbar:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v13

    .line 531
    .local v13, "wi":D
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->mb:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v15

    .line 532
    .local v15, "bi":D
    mul-double v20, v7, v13

    add-double v20, v11, v20

    mul-double v22, v9, v15

    move-wide/from16 v24, v5

    .end local v5    # "diag":D
    .local v24, "diag":D
    add-double v4, v20, v22

    invoke-virtual {v1, v3, v4, v5}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 528
    .end local v11    # "xi":D
    .end local v13    # "wi":D
    .end local v15    # "bi":D
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v5, v24

    goto :goto_3

    .end local v24    # "diag":D
    .restart local v5    # "diag":D
    :cond_6
    move-wide/from16 v24, v5

    .line 536
    .end local v3    # "i":I
    .end local v5    # "diag":D
    .end local v7    # "zbar":D
    .end local v9    # "step":D
    .end local v18    # "anorm":D
    :goto_4
    return-void
.end method

.method update()V
    .locals 35

    .line 637
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/linear/RealVector;->mapMultiply(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v6

    .line 638
    .local v6, "v":Lorg/apache/commons/math3/linear/RealVector;
    iget-object v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->a:Lorg/apache/commons/math3/linear/RealLinearOperator;

    invoke-virtual {v1, v6}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    .line 639
    iget-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->shift:D

    neg-double v4, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    neg-double v1, v1

    iget-wide v7, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->oldb:D

    div-double v7, v1, v7

    iget-object v9, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r1:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v10, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static/range {v4 .. v10}, Lorg/apache/commons/math3/linear/SymmLQ$State;->daxpbypz(DLorg/apache/commons/math3/linear/RealVector;DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 640
    iget-object v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v1

    .line 651
    .local v1, "alpha":D
    neg-double v3, v1

    iget-wide v7, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    div-double/2addr v3, v7

    iget-object v5, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r2:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v7, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v3, v4, v5, v7}, Lorg/apache/commons/math3/linear/SymmLQ$State;->daxpy(DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 665
    iget-object v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r2:Lorg/apache/commons/math3/linear/RealVector;

    iput-object v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r1:Lorg/apache/commons/math3/linear/RealVector;

    .line 666
    iget-object v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    iput-object v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r2:Lorg/apache/commons/math3/linear/RealVector;

    .line 667
    iget-object v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    if-eqz v3, :cond_0

    .line 668
    iget-object v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r2:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    .line 670
    :cond_0
    iget-wide v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    iput-wide v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->oldb:D

    .line 671
    iget-object v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r2:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v3

    iput-wide v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    .line 672
    iget-wide v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    const-wide/16 v7, 0x0

    cmpg-double v3, v3, v7

    if-gez v3, :cond_1

    .line 673
    iget-object v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v3, v4}, Lorg/apache/commons/math3/linear/SymmLQ$State;->throwNPDLOException(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 675
    :cond_1
    iget-wide v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    iput-wide v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    .line 684
    iget-wide v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->tnorm:D

    mul-double v7, v1, v1

    iget-wide v9, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->oldb:D

    iget-wide v11, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->oldb:D

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    iget-wide v9, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    iget-wide v11, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    add-double/2addr v3, v7

    iput-wide v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->tnorm:D

    .line 692
    iget-wide v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gbar:D

    iget-wide v7, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gbar:D

    mul-double/2addr v3, v7

    iget-wide v7, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->oldb:D

    iget-wide v9, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->oldb:D

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    .line 693
    .local v3, "gamma":D
    iget-wide v7, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gbar:D

    div-double/2addr v7, v3

    .line 694
    .local v7, "c":D
    iget-wide v9, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->oldb:D

    div-double/2addr v9, v3

    .line 704
    .local v9, "s":D
    iget-wide v11, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->dbar:D

    mul-double/2addr v11, v7

    mul-double v13, v9, v1

    add-double/2addr v11, v13

    .line 705
    .local v11, "deltak":D
    iget-wide v13, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->dbar:D

    mul-double/2addr v13, v9

    mul-double v15, v7, v1

    sub-double/2addr v13, v15

    iput-wide v13, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gbar:D

    .line 706
    iget-wide v13, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    mul-double/2addr v13, v9

    .line 707
    .local v13, "eps":D
    move-wide v15, v1

    .end local v1    # "alpha":D
    .local v15, "alpha":D
    neg-double v1, v7

    move-wide/from16 v17, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    mul-double v1, v1, v17

    iput-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->dbar:D

    .line 708
    iget-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gammaZeta:D

    div-double/2addr v1, v3

    .line 717
    .local v1, "zeta":D
    mul-double v17, v1, v7

    .line 718
    .local v17, "zetaC":D
    mul-double v19, v1, v9

    .line 719
    .local v19, "zetaS":D
    iget-object v5, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v5}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v5

    .line 720
    .local v5, "n":I
    const/16 v21, 0x0

    move-wide/from16 v22, v1

    move/from16 v1, v21

    .local v1, "i":I
    .local v22, "zeta":D
    :goto_0
    if-ge v1, v5, :cond_2

    .line 721
    iget-object v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v24

    .line 722
    .local v24, "xi":D
    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v26

    .line 723
    .local v26, "vi":D
    iget-object v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->wbar:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v28

    .line 724
    .local v28, "wi":D
    iget-object v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    mul-double v30, v28, v17

    add-double v30, v24, v30

    mul-double v32, v26, v19

    move/from16 v34, v5

    move-object/from16 v21, v6

    .end local v5    # "n":I
    .end local v6    # "v":Lorg/apache/commons/math3/linear/RealVector;
    .local v21, "v":Lorg/apache/commons/math3/linear/RealVector;
    .local v34, "n":I
    add-double v5, v30, v32

    invoke-virtual {v2, v1, v5, v6}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 725
    iget-object v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->wbar:Lorg/apache/commons/math3/linear/RealVector;

    mul-double v5, v28, v9

    mul-double v30, v26, v7

    sub-double v5, v5, v30

    invoke-virtual {v2, v1, v5, v6}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 720
    .end local v24    # "xi":D
    .end local v26    # "vi":D
    .end local v28    # "wi":D
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v6, v21

    move/from16 v5, v34

    goto :goto_0

    .end local v21    # "v":Lorg/apache/commons/math3/linear/RealVector;
    .end local v34    # "n":I
    .restart local v5    # "n":I
    .restart local v6    # "v":Lorg/apache/commons/math3/linear/RealVector;
    :cond_2
    move/from16 v34, v5

    .line 733
    .end local v1    # "i":I
    .end local v5    # "n":I
    .restart local v34    # "n":I
    iget-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->bstep:D

    iget-wide v5, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->snprod:D

    mul-double/2addr v5, v7

    mul-double v5, v5, v22

    add-double/2addr v1, v5

    iput-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->bstep:D

    .line 734
    iget-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->snprod:D

    mul-double/2addr v1, v9

    iput-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->snprod:D

    .line 735
    iget-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmax:D

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmax:D

    .line 736
    iget-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmin:D

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmin:D

    .line 737
    iget-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->ynorm2:D

    mul-double v5, v22, v22

    add-double/2addr v1, v5

    iput-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->ynorm2:D

    .line 738
    iget-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->minusEpsZeta:D

    mul-double v5, v11, v22

    sub-double/2addr v1, v5

    iput-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gammaZeta:D

    .line 739
    neg-double v1, v13

    mul-double v1, v1, v22

    iput-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->minusEpsZeta:D

    .line 752
    invoke-direct {v0}, Lorg/apache/commons/math3/linear/SymmLQ$State;->updateNorms()V

    .line 753
    return-void
.end method
