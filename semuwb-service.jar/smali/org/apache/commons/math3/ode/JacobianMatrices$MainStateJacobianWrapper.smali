.class Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;
.super Ljava/lang/Object;
.source "JacobianMatrices.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/MainStateJacobianProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/JacobianMatrices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainStateJacobianWrapper"
.end annotation


# instance fields
.field private final hY:[D

.field private final ode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;[D)V
    .locals 3
    .param p1, "ode"    # Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;
    .param p2, "hY"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    iput-object p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;->ode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    .line 438
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;->hY:[D

    .line 439
    array-length v0, p2

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 442
    return-void

    .line 440
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v1

    array-length v2, p2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;)Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;

    .line 420
    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;->ode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    return-object v0
.end method


# virtual methods
.method public computeDerivatives(D[D[D)V
    .locals 1
    .param p1, "t"    # D
    .param p3, "y"    # [D
    .param p4, "yDot"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;->ode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->computeDerivatives(D[D[D)V

    .line 453
    return-void
.end method

.method public computeMainStateJacobian(D[D[D[[D)V
    .locals 14
    .param p1, "t"    # D
    .param p3, "y"    # [D
    .param p4, "yDot"    # [D
    .param p5, "dFdY"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 459
    move-object/from16 v0, p3

    iget-object v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;->ode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    invoke-interface {v1}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v1

    .line 460
    .local v1, "n":I
    new-array v2, v1, [D

    .line 462
    .local v2, "tmpDot":[D
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 463
    aget-wide v4, v0, v3

    .line 464
    .local v4, "savedYj":D
    aget-wide v6, v0, v3

    iget-object v8, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;->hY:[D

    aget-wide v8, v8, v3

    add-double/2addr v6, v8

    aput-wide v6, v0, v3

    .line 465
    iget-object v6, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;->ode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    move-wide v7, p1

    invoke-interface {v6, v7, v8, v0, v2}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->computeDerivatives(D[D[D)V

    .line 466
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v1, :cond_0

    .line 467
    aget-object v9, p5, v6

    aget-wide v10, v2, v6

    aget-wide v12, p4, v6

    sub-double/2addr v10, v12

    iget-object v12, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;->hY:[D

    aget-wide v12, v12, v3

    div-double/2addr v10, v12

    aput-wide v10, v9, v3

    .line 466
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 469
    .end local v6    # "i":I
    :cond_0
    aput-wide v4, v0, v3

    .line 462
    .end local v4    # "savedYj":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-wide v7, p1

    .line 471
    .end local v3    # "j":I
    return-void
.end method

.method public getDimension()I
    .locals 1

    .line 446
    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;->ode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    invoke-interface {v0}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v0

    return v0
.end method
