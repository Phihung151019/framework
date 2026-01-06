.class Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;
.super Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;
.source "PowellOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LineSearch"
.end annotation


# static fields
.field private static final ABS_TOL_UNUSED:D = 4.9E-324

.field private static final REL_TOL_UNUSED:D = 1.0E-15


# instance fields
.field private final bracket:Lorg/apache/commons/math3/optimization/univariate/BracketFinder;

.field final synthetic this$0:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;DD)V
    .locals 6
    .param p2, "rel"    # D
    .param p4, "abs"    # D

    .line 315
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;->this$0:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;

    .line 316
    new-instance v5, Lorg/apache/commons/math3/optimization/univariate/SimpleUnivariateValueChecker;

    invoke-direct {v5, p2, p3, p4, p5}, Lorg/apache/commons/math3/optimization/univariate/SimpleUnivariateValueChecker;-><init>(DD)V

    const-wide v1, 0x3cd203af9ee75616L    # 1.0E-15

    const-wide/16 v3, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;-><init>(DDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 304
    new-instance p1, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;

    invoke-direct {p1}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;-><init>()V

    iput-object p1, v0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;->bracket:Lorg/apache/commons/math3/optimization/univariate/BracketFinder;

    .line 319
    return-void
.end method


# virtual methods
.method public search([D[D)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .locals 12
    .param p1, "p"    # [D
    .param p2, "d"    # [D

    .line 331
    array-length v0, p1

    .line 332
    .local v0, "n":I
    new-instance v1, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch$1;-><init>(Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;I[D[D)V

    move-object v3, v1

    .line 344
    .local v3, "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;->this$0:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;

    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->getGoalType()Lorg/apache/commons/math3/optimization/GoalType;

    move-result-object v4

    .line 345
    .local v4, "goal":Lorg/apache/commons/math3/optimization/GoalType;
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;->bracket:Lorg/apache/commons/math3/optimization/univariate/BracketFinder;

    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v2 .. v8}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->search(Lorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DD)V

    .line 349
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;->bracket:Lorg/apache/commons/math3/optimization/univariate/BracketFinder;

    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->getLo()D

    move-result-wide v6

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;->bracket:Lorg/apache/commons/math3/optimization/univariate/BracketFinder;

    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->getHi()D

    move-result-wide v8

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;->bracket:Lorg/apache/commons/math3/optimization/univariate/BracketFinder;

    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->getMid()D

    move-result-wide v10

    move-object v5, v4

    move-object v4, v3

    .end local v3    # "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .local v4, "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .local v5, "goal":Lorg/apache/commons/math3/optimization/GoalType;
    const v3, 0x7fffffff

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;->optimize(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DDD)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v1

    move-object v3, v4

    move-object v4, v5

    .end local v5    # "goal":Lorg/apache/commons/math3/optimization/GoalType;
    .restart local v3    # "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .local v4, "goal":Lorg/apache/commons/math3/optimization/GoalType;
    return-object v1
.end method
