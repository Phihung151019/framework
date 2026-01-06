.class public Lorg/apache/commons/math3/ode/FieldExpandableODE;
.super Ljava/lang/Object;
.source "FieldExpandableODE.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/ode/FieldSecondaryEquations<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private mapper:Lorg/apache/commons/math3/ode/FieldEquationsMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final primary:Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations<",
            "TT;>;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lorg/apache/commons/math3/ode/FieldExpandableODE;, "Lorg/apache/commons/math3/ode/FieldExpandableODE<TT;>;"
    .local p1, "primary":Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations;, "Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->primary:Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->components:Ljava/util/List;

    .line 69
    new-instance v0, Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    const/4 v1, 0x0

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations;->getDimension()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;-><init>(Lorg/apache/commons/math3/ode/FieldEquationsMapper;I)V

    iput-object v0, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->mapper:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    .line 70
    return-void
.end method


# virtual methods
.method public addSecondaryEquations(Lorg/apache/commons/math3/ode/FieldSecondaryEquations;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldSecondaryEquations<",
            "TT;>;)I"
        }
    .end annotation

    .line 88
    .local p0, "this":Lorg/apache/commons/math3/ode/FieldExpandableODE;, "Lorg/apache/commons/math3/ode/FieldExpandableODE<TT;>;"
    .local p1, "secondary":Lorg/apache/commons/math3/ode/FieldSecondaryEquations;, "Lorg/apache/commons/math3/ode/FieldSecondaryEquations<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->components:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v0, Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->mapper:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/FieldSecondaryEquations;->getDimension()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;-><init>(Lorg/apache/commons/math3/ode/FieldEquationsMapper;I)V

    iput-object v0, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->mapper:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    .line 91
    iget-object v0, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 127
    .local p0, "this":Lorg/apache/commons/math3/ode/FieldExpandableODE;, "Lorg/apache/commons/math3/ode/FieldExpandableODE<TT;>;"
    .local p1, "t":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->mapper:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->getTotalDimension()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    .line 130
    .local v0, "yDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v1, 0x0

    .line 131
    .local v1, "index":I
    iget-object v2, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->mapper:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    invoke-virtual {v2, v1, p2}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->extractEquationData(I[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 132
    .local v2, "primaryState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    iget-object v3, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->primary:Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations;

    invoke-interface {v3, p1, v2}, Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    .line 133
    .local v3, "primaryStateDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    iget-object v4, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->mapper:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    invoke-virtual {v4, v1, v3, v0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->insertEquationData(I[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    .line 136
    :goto_0
    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->mapper:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    invoke-virtual {v4}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->getNumberOfEquations()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 137
    iget-object v4, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->mapper:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    invoke-virtual {v4, v1, p2}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->extractEquationData(I[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    .line 138
    .local v4, "componentState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    iget-object v5, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->components:Ljava/util/List;

    add-int/lit8 v6, v1, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/ode/FieldSecondaryEquations;

    invoke-interface {v5, p1, v2, v3, v4}, Lorg/apache/commons/math3/ode/FieldSecondaryEquations;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    .line 140
    .local v5, "componentStateDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    iget-object v6, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->mapper:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    invoke-virtual {v6, v1, v5, v0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->insertEquationData(I[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    .line 141
    .end local v4    # "componentState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v5    # "componentStateDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    goto :goto_0

    .line 143
    :cond_0
    return-object v0
.end method

.method public getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;"
        }
    .end annotation

    .line 76
    .local p0, "this":Lorg/apache/commons/math3/ode/FieldExpandableODE;, "Lorg/apache/commons/math3/ode/FieldExpandableODE<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->mapper:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    return-object v0
.end method

.method public init(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;TT;)V"
        }
    .end annotation

    .line 105
    .local p0, "this":Lorg/apache/commons/math3/ode/FieldExpandableODE;, "Lorg/apache/commons/math3/ode/FieldExpandableODE<TT;>;"
    .local p1, "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "y0":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p3, "finalTime":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v0, 0x0

    .line 106
    .local v0, "index":I
    iget-object v1, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->mapper:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    invoke-virtual {v1, v0, p2}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->extractEquationData(I[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    .line 107
    .local v1, "primary0":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    iget-object v2, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->primary:Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations;

    invoke-interface {v2, p1, v1, p3}, Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations;->init(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 110
    :goto_0
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->mapper:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->getNumberOfEquations()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 111
    iget-object v2, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->mapper:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    invoke-virtual {v2, v0, p2}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->extractEquationData(I[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 112
    .local v2, "secondary0":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    iget-object v3, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->components:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/ode/FieldSecondaryEquations;

    invoke-interface {v3, p1, v1, v2, p3}, Lorg/apache/commons/math3/ode/FieldSecondaryEquations;->init(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 113
    .end local v2    # "secondary0":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method
