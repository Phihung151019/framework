.class Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;
.super Ljava/lang/Object;
.source "ParameterJacobianWrapper.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/ParameterJacobianProvider;


# instance fields
.field private final fode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

.field private final hParam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final pode:Lorg/apache/commons/math3/ode/ParameterizedODE;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;Lorg/apache/commons/math3/ode/ParameterizedODE;[Lorg/apache/commons/math3/ode/ParameterConfiguration;)V
    .locals 8
    .param p1, "fode"    # Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;
    .param p2, "pode"    # Lorg/apache/commons/math3/ode/ParameterizedODE;
    .param p3, "paramsAndSteps"    # [Lorg/apache/commons/math3/ode/ParameterConfiguration;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->fode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    .line 53
    iput-object p2, p0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->pode:Lorg/apache/commons/math3/ode/ParameterizedODE;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->hParam:Ljava/util/Map;

    .line 57
    move-object v0, p3

    .local v0, "arr$":[Lorg/apache/commons/math3/ode/ParameterConfiguration;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 58
    .local v3, "param":Lorg/apache/commons/math3/ode/ParameterConfiguration;
    invoke-virtual {v3}, Lorg/apache/commons/math3/ode/ParameterConfiguration;->getParameterName()Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "name":Ljava/lang/String;
    invoke-interface {p2, v4}, Lorg/apache/commons/math3/ode/ParameterizedODE;->isSupported(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 60
    iget-object v5, p0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->hParam:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/commons/math3/ode/ParameterConfiguration;->getHP()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .end local v3    # "param":Lorg/apache/commons/math3/ode/ParameterConfiguration;
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    .end local v0    # "arr$":[Lorg/apache/commons/math3/ode/ParameterConfiguration;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    return-void
.end method


# virtual methods
.method public computeParameterJacobian(D[D[DLjava/lang/String;[D)V
    .locals 17
    .param p1, "t"    # D
    .param p3, "y"    # [D
    .param p4, "yDot"    # [D
    .param p5, "paramName"    # Ljava/lang/String;
    .param p6, "dFdP"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 80
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    iget-object v3, v0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->fode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    invoke-interface {v3}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v3

    .line 81
    .local v3, "n":I
    iget-object v4, v0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->pode:Lorg/apache/commons/math3/ode/ParameterizedODE;

    invoke-interface {v4, v1}, Lorg/apache/commons/math3/ode/ParameterizedODE;->isSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 82
    new-array v4, v3, [D

    .line 85
    .local v4, "tmpDot":[D
    iget-object v5, v0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->pode:Lorg/apache/commons/math3/ode/ParameterizedODE;

    invoke-interface {v5, v1}, Lorg/apache/commons/math3/ode/ParameterizedODE;->getParameter(Ljava/lang/String;)D

    move-result-wide v5

    .line 86
    .local v5, "p":D
    iget-object v7, v0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->hParam:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 87
    .local v7, "hP":D
    iget-object v9, v0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->pode:Lorg/apache/commons/math3/ode/ParameterizedODE;

    add-double v10, v5, v7

    invoke-interface {v9, v1, v10, v11}, Lorg/apache/commons/math3/ode/ParameterizedODE;->setParameter(Ljava/lang/String;D)V

    .line 88
    iget-object v9, v0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->fode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    move-wide/from16 v10, p1

    move-object/from16 v12, p3

    invoke-interface {v9, v10, v11, v12, v4}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->computeDerivatives(D[D[D)V

    .line 89
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v3, :cond_0

    .line 90
    aget-wide v13, v4, v9

    aget-wide v15, p4, v9

    sub-double/2addr v13, v15

    div-double/2addr v13, v7

    aput-wide v13, v2, v9

    .line 89
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 92
    .end local v9    # "i":I
    :cond_0
    iget-object v9, v0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->pode:Lorg/apache/commons/math3/ode/ParameterizedODE;

    invoke-interface {v9, v1, v5, v6}, Lorg/apache/commons/math3/ode/ParameterizedODE;->setParameter(Ljava/lang/String;D)V

    .line 93
    .end local v4    # "tmpDot":[D
    .end local v5    # "p":D
    .end local v7    # "hP":D
    goto :goto_1

    .line 94
    :cond_1
    move-wide/from16 v10, p1

    move-object/from16 v12, p3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-static {v2, v4, v3, v5, v6}, Ljava/util/Arrays;->fill([DIID)V

    .line 97
    :goto_1
    return-void
.end method

.method public getParametersNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->pode:Lorg/apache/commons/math3/ode/ParameterizedODE;

    invoke-interface {v0}, Lorg/apache/commons/math3/ode/ParameterizedODE;->getParametersNames()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public isSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->pode:Lorg/apache/commons/math3/ode/ParameterizedODE;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/ode/ParameterizedODE;->isSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
