.class public Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;
.super Ljava/lang/Object;
.source "ContinuousOutputFieldModel.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/ode/sampling/FieldStepHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private finalTime:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private forward:Z

.field private index:I

.field private initialTime:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private steps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 102
    .local p0, "this":Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;, "Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->initialTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 105
    iput-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->finalTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->forward:Z

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    .line 108
    return-void
.end method

.method private checkDimensionsEquality(II)V
    .locals 1
    .param p1, "d1"    # I
    .param p2, "d2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 173
    .local p0, "this":Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;, "Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel<TT;>;"
    if-ne p1, p2, :cond_0

    .line 176
    return-void

    .line 174
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-direct {v0, p2, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method private locatePoint(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<",
            "TT;>;)I"
        }
    .end annotation

    .line 327
    .local p0, "this":Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;, "Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel<TT;>;"
    .local p1, "time":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "interval":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->forward:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_2

    .line 328
    invoke-interface {p2}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    cmpg-double v0, v6, v4

    if-gez v0, :cond_0

    .line 329
    return v3

    .line 330
    :cond_0
    invoke-interface {p2}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    cmpl-double v0, v6, v4

    if-lez v0, :cond_1

    .line 331
    return v1

    .line 333
    :cond_1
    return v2

    .line 336
    :cond_2
    invoke-interface {p2}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    cmpl-double v0, v6, v4

    if-lez v0, :cond_3

    .line 337
    return v3

    .line 338
    :cond_3
    invoke-interface {p2}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    cmpg-double v0, v6, v4

    if-gez v0, :cond_4

    .line 339
    return v1

    .line 341
    :cond_4
    return v2
.end method


# virtual methods
.method public append(Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 123
    .local p0, "this":Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;, "Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel<TT;>;"
    .local p1, "model":Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;, "Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel<TT;>;"
    iget-object v0, p1, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 124
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p1, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->initialTime:Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->initialTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 129
    iget-boolean v0, p1, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->forward:Z

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->forward:Z

    goto/16 :goto_1

    .line 133
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    invoke-interface {v0}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    .line 134
    .local v0, "s1":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    iget-object v2, p1, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    invoke-interface {v2}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v2

    .line 135
    .local v2, "s2":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getStateDimension()I

    move-result v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getStateDimension()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->checkDimensionsEquality(II)V

    .line 136
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getNumberOfSecondaryStates()I

    move-result v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getNumberOfSecondaryStates()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->checkDimensionsEquality(II)V

    .line 137
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getNumberOfSecondaryStates()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 138
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getSecondaryStateDimension(I)I

    move-result v4

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getSecondaryStateDimension(I)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->checkDimensionsEquality(II)V

    .line 137
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 141
    .end local v3    # "i":I
    :cond_2
    iget-boolean v3, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->forward:Z

    iget-boolean v4, p1, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->forward:Z

    xor-int/2addr v3, v4

    if-nez v3, :cond_5

    .line 145
    iget-object v1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    iget v3, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    .line 146
    .local v1, "lastInterpolator":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    invoke-interface {v1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    .line 147
    .local v3, "current":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    .line 148
    .local v4, "previous":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 149
    .local v5, "step":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->getInitialTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-interface {v6, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 150
    .local v6, "gap":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v9, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-interface {v8, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-gtz v7, :cond_4

    .line 157
    .end local v0    # "s1":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .end local v1    # "lastInterpolator":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    .end local v2    # "s2":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .end local v3    # "current":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v4    # "previous":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v5    # "step":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v6    # "gap":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_1
    iget-object v0, p1, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    .line 158
    .local v1, "interpolator":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    iget-object v2, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .end local v1    # "interpolator":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    goto :goto_2

    .line 161
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    .line 162
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    iget v1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    invoke-interface {v0}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->finalTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 164
    return-void

    .line 151
    .local v0, "s1":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local v1, "lastInterpolator":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    .restart local v2    # "s2":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .restart local v3    # "current":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v4    # "previous":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v5    # "step":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v6    # "gap":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_4
    new-instance v7, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v8, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->HOLE_BETWEEN_MODELS_TIME_RANGES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v7

    .line 142
    .end local v1    # "lastInterpolator":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    .end local v3    # "current":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v4    # "previous":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v5    # "step":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v6    # "gap":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_5
    new-instance v3, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->PROPAGATION_DIRECTION_MISMATCH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v3, v4, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3
.end method

.method public getFinalTime()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 225
    .local p0, "this":Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;, "Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->finalTime:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getInitialTime()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 217
    .local p0, "this":Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;, "Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->initialTime:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getInterpolatedState(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    .line 236
    .local p0, "this":Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;, "Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel<TT;>;"
    .local p1, "time":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 237
    .local v2, "iMin":I
    iget-object v3, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    .line 238
    .local v3, "sMin":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    invoke-interface {v3}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 240
    .local v4, "tMin":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v7, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .line 241
    .local v7, "iMax":I
    iget-object v8, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    .line 242
    .local v8, "sMax":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    invoke-interface {v8}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-interface {v8}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    .line 246
    .local v9, "tMax":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->locatePoint(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)I

    move-result v10

    if-gtz v10, :cond_0

    .line 247
    iput v2, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    .line 248
    invoke-interface {v3, v1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getInterpolatedState(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v5

    return-object v5

    .line 250
    :cond_0
    invoke-direct {v0, v1, v8}, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->locatePoint(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)I

    move-result v10

    if-ltz v10, :cond_1

    .line 251
    iput v7, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    .line 252
    invoke-interface {v8, v1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getInterpolatedState(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v5

    return-object v5

    .line 256
    :cond_1
    :goto_0
    sub-int v10, v7, v2

    const/4 v11, 0x5

    if-le v10, v11, :cond_8

    .line 259
    iget-object v10, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    iget v11, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    .line 260
    .local v10, "si":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    invoke-direct {v0, v1, v10}, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->locatePoint(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)I

    move-result v11

    .line 261
    .local v11, "location":I
    if-gez v11, :cond_2

    .line 262
    iget v7, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    .line 263
    invoke-interface {v10}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v12

    invoke-interface {v10}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v12, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v12

    move-object v9, v12

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    goto :goto_1

    .line 264
    :cond_2
    if-lez v11, :cond_7

    .line 265
    iget v2, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    .line 266
    invoke-interface {v10}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v12

    invoke-interface {v10}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v12, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v12

    move-object v4, v12

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 273
    :goto_1
    add-int v12, v2, v7

    div-int/lit8 v12, v12, 0x2

    .line 274
    .local v12, "iMed":I
    iget-object v13, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    .line 275
    .local v13, "sMed":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    invoke-interface {v13}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v14

    invoke-virtual {v14}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v14

    invoke-interface {v13}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v15

    invoke-virtual {v15}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v14, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    .line 277
    .local v14, "tMed":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v14, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v15}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-interface {v15, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v15}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmpg-double v15, v16, v18

    if-ltz v15, :cond_4

    invoke-interface {v9, v14}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v15}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v15, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v5

    cmpg-double v5, v5, v18

    if-gez v5, :cond_3

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v18, v8

    move-object/from16 v20, v9

    move v9, v2

    goto/16 :goto_2

    .line 285
    :cond_3
    invoke-interface {v9, v14}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 286
    .local v5, "d12":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v14, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 287
    .local v6, "d23":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v9, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    .line 288
    .local v15, "d13":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v1, v9}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v3

    .end local v3    # "sMin":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    .local v17, "sMin":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    move-object/from16 v3, v16

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 289
    .local v3, "dt1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v1, v14}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v18, v8

    .end local v8    # "sMax":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    .local v18, "sMax":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    move-object/from16 v8, v16

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 290
    .local v8, "dt2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v1, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v19, v4

    .end local v4    # "tMin":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v19, "tMin":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v4, v16

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 291
    .local v4, "dt3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v8, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v20, v9

    .end local v9    # "tMax":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v20, "tMax":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v9, v16

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v21, v4

    .end local v4    # "dt3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v21, "dt3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v4, v16

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v15}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v9, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v4, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v15}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v4, v9}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 295
    .local v4, "iLagrange":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v22

    move v9, v2

    move-object/from16 v16, v3

    .end local v2    # "iMin":I
    .end local v3    # "dt1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v9, "iMin":I
    .local v16, "dt1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->rint(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    goto :goto_3

    .line 277
    .end local v5    # "d12":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v6    # "d23":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v15    # "d13":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v16    # "dt1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v17    # "sMin":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    .end local v18    # "sMax":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    .end local v19    # "tMin":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v20    # "tMax":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v21    # "dt3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v2    # "iMin":I
    .local v3, "sMin":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    .local v4, "tMin":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v8, "sMax":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    .local v9, "tMax":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_4
    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v18, v8

    move-object/from16 v20, v9

    move v9, v2

    .line 280
    .end local v2    # "iMin":I
    .end local v3    # "sMin":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    .end local v4    # "tMin":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v8    # "sMax":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    .local v9, "iMin":I
    .restart local v17    # "sMin":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    .restart local v18    # "sMax":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    .restart local v19    # "tMin":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v20    # "tMax":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_2
    iput v12, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    .line 299
    :goto_3
    add-int/lit8 v2, v9, 0x1

    mul-int/lit8 v3, v9, 0x9

    add-int/2addr v3, v7

    div-int/lit8 v3, v3, 0xa

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v2

    .line 300
    .local v2, "low":I
    add-int/lit8 v3, v7, -0x1

    mul-int/lit8 v4, v7, 0x9

    add-int/2addr v4, v9

    div-int/lit8 v4, v4, 0xa

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v3

    .line 301
    .local v3, "high":I
    iget v4, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    if-ge v4, v2, :cond_5

    .line 302
    iput v2, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    goto :goto_4

    .line 303
    :cond_5
    iget v4, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    if-le v4, v3, :cond_6

    .line 304
    iput v3, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    .line 307
    .end local v2    # "low":I
    .end local v3    # "high":I
    .end local v10    # "si":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    .end local v11    # "location":I
    .end local v12    # "iMed":I
    .end local v13    # "sMed":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    .end local v14    # "tMed":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_6
    :goto_4
    move v2, v9

    move-object/from16 v3, v17

    move-object/from16 v8, v18

    move-object/from16 v4, v19

    move-object/from16 v9, v20

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    goto/16 :goto_0

    .line 269
    .end local v17    # "sMin":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    .end local v18    # "sMax":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    .end local v19    # "tMin":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v20    # "tMax":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v2, "iMin":I
    .local v3, "sMin":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    .restart local v4    # "tMin":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v8    # "sMax":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    .local v9, "tMax":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v10    # "si":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    .restart local v11    # "location":I
    :cond_7
    move-object/from16 v17, v3

    .end local v3    # "sMin":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    .restart local v17    # "sMin":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    invoke-interface {v10, v1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getInterpolatedState(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v3

    return-object v3

    .line 310
    .end local v10    # "si":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    .end local v11    # "location":I
    .end local v17    # "sMin":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    .restart local v3    # "sMin":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    :cond_8
    move-object/from16 v17, v3

    move-object/from16 v18, v8

    .end local v3    # "sMin":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    .end local v8    # "sMax":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    .restart local v17    # "sMin":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    .restart local v18    # "sMax":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    iput v2, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    .line 311
    :goto_5
    iget v3, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    if-gt v3, v7, :cond_9

    iget-object v3, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    iget v5, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->locatePoint(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)I

    move-result v3

    if-lez v3, :cond_9

    .line 312
    iget v3, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    goto :goto_5

    .line 315
    :cond_9
    iget-object v3, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    iget v5, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    invoke-interface {v3, v1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getInterpolatedState(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v3

    return-object v3
.end method

.method public handleStep(Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;Z)V
    .locals 1
    .param p2, "isLast"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<",
            "TT;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 198
    .local p0, "this":Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;, "Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel<TT;>;"
    .local p1, "interpolator":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 199
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->initialTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 200
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->isForward()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->forward:Z

    .line 203
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    if-eqz p2, :cond_1

    .line 206
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->finalTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 207
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    .line 210
    :cond_1
    return-void
.end method

.method public init(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 180
    .local p0, "this":Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;, "Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel<TT;>;"
    .local p1, "initialState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p2, "t":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->initialTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 181
    iput-object p2, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->finalTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->forward:Z

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    .line 184
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 185
    return-void
.end method
