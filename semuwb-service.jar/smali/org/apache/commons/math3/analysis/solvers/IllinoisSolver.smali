.class public Lorg/apache/commons/math3/analysis/solvers/IllinoisSolver;
.super Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;
.source "IllinoisSolver.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 47
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    sget-object v2, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;->ILLINOIS:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;-><init>(DLorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;)V

    .line 48
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "absoluteAccuracy"    # D

    .line 56
    sget-object v0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;->ILLINOIS:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;-><init>(DLorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;)V

    .line 57
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D

    .line 67
    sget-object v5, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;->ILLINOIS:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .end local p1    # "relativeAccuracy":D
    .end local p3    # "absoluteAccuracy":D
    .local v1, "relativeAccuracy":D
    .local v3, "absoluteAccuracy":D
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;-><init>(DDLorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;)V

    .line 68
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 8
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D
    .param p5, "functionValueAccuracy"    # D

    .line 80
    sget-object v7, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;->PEGASUS:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    .end local p1    # "relativeAccuracy":D
    .end local p3    # "absoluteAccuracy":D
    .end local p5    # "functionValueAccuracy":D
    .local v1, "relativeAccuracy":D
    .local v3, "absoluteAccuracy":D
    .local v5, "functionValueAccuracy":D
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;-><init>(DDDLorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;)V

    .line 81
    return-void
.end method
