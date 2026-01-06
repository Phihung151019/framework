.class public Lorg/apache/commons/math3/ode/ContinuousOutputModel;
.super Ljava/lang/Object;
.source "ContinuousOutputModel.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/sampling/StepHandler;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x13ad9f94dd1a30b6L


# instance fields
.field private finalTime:D

.field private forward:Z

.field private index:I

.field private initialTime:D

.field private steps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/ode/sampling/StepInterpolator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    .line 115
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->initialTime:D

    .line 116
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->finalTime:D

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->forward:Z

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    .line 119
    return-void
.end method

.method private locatePoint(DLorg/apache/commons/math3/ode/sampling/StepInterpolator;)I
    .locals 6
    .param p1, "time"    # D
    .param p3, "interval"    # Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    .line 425
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->forward:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_2

    .line 426
    invoke-interface {p3}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v4

    cmpg-double v0, p1, v4

    if-gez v0, :cond_0

    .line 427
    return v3

    .line 428
    :cond_0
    invoke-interface {p3}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v3

    cmpl-double v0, p1, v3

    if-lez v0, :cond_1

    .line 429
    return v1

    .line 431
    :cond_1
    return v2

    .line 434
    :cond_2
    invoke-interface {p3}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v4

    cmpl-double v0, p1, v4

    if-lez v0, :cond_3

    .line 435
    return v3

    .line 436
    :cond_3
    invoke-interface {p3}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v3

    cmpg-double v0, p1, v3

    if-gez v0, :cond_4

    .line 437
    return v1

    .line 439
    :cond_4
    return v2
.end method


# virtual methods
.method public append(Lorg/apache/commons/math3/ode/ContinuousOutputModel;)V
    .locals 17
    .param p1, "model"    # Lorg/apache/commons/math3/ode/ContinuousOutputModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 132
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 133
    return-void

    .line 136
    :cond_0
    iget-object v2, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 137
    iget-wide v2, v1, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->initialTime:D

    iput-wide v2, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->initialTime:D

    .line 138
    iget-boolean v2, v1, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->forward:Z

    iput-boolean v2, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->forward:Z

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->getInterpolatedState()[D

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->getInterpolatedState()[D

    move-result-object v3

    array-length v3, v3

    if-ne v2, v3, :cond_5

    .line 146
    iget-boolean v2, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->forward:Z

    iget-boolean v3, v1, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->forward:Z

    xor-int/2addr v2, v3

    if-nez v2, :cond_4

    .line 150
    iget-object v2, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    iget v3, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    .line 151
    .local v2, "lastInterpolator":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    invoke-interface {v2}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v3

    .line 152
    .local v3, "current":D
    invoke-interface {v2}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v5

    .line 153
    .local v5, "previous":D
    sub-double v7, v3, v5

    .line 154
    .local v7, "step":D
    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->getInitialTime()D

    move-result-wide v9

    sub-double/2addr v9, v3

    .line 155
    .local v9, "gap":D
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    const-wide v13, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    cmpl-double v11, v11, v15

    if-gtz v11, :cond_3

    .line 162
    .end local v2    # "lastInterpolator":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .end local v3    # "current":D
    .end local v5    # "previous":D
    .end local v7    # "step":D
    .end local v9    # "gap":D
    :goto_0
    iget-object v2, v1, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    .line 163
    .local v3, "interpolator":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    iget-object v4, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {v3}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->copy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    .end local v3    # "interpolator":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    goto :goto_1

    .line 166
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v2, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    .line 167
    iget-object v2, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    iget v3, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    invoke-interface {v2}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->finalTime:D

    .line 169
    return-void

    .line 156
    .local v2, "lastInterpolator":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .local v3, "current":D
    .restart local v5    # "previous":D
    .restart local v7    # "step":D
    .restart local v9    # "gap":D
    :cond_3
    new-instance v11, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v12, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->HOLE_BETWEEN_MODELS_TIME_RANGES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v11

    .line 147
    .end local v2    # "lastInterpolator":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .end local v3    # "current":D
    .end local v5    # "previous":D
    .end local v7    # "step":D
    .end local v9    # "gap":D
    :cond_4
    new-instance v2, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->PROPAGATION_DIRECTION_MISMATCH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 142
    :cond_5
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->getInterpolatedState()[D

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->getInterpolatedState()[D

    move-result-object v4

    array-length v4, v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public getFinalTime()D
    .locals 2

    .line 218
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->finalTime:D

    return-wide v0
.end method

.method public getInitialTime()D
    .locals 2

    .line 210
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->initialTime:D

    return-wide v0
.end method

.method public getInterpolatedDerivatives()[D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    iget v1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    invoke-interface {v0}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedDerivatives()[D

    move-result-object v0

    return-object v0
.end method

.method public getInterpolatedSecondaryDerivatives(I)[D
    .locals 2
    .param p1, "secondaryStateIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    iget v1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedSecondaryDerivatives(I)[D

    move-result-object v0

    return-object v0
.end method

.method public getInterpolatedSecondaryState(I)[D
    .locals 2
    .param p1, "secondaryStateIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    iget v1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v0

    return-object v0
.end method

.method public getInterpolatedState()[D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    iget v1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    invoke-interface {v0}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedState()[D

    move-result-object v0

    return-object v0
.end method

.method public getInterpolatedTime()D
    .locals 2

    .line 228
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    iget v1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    invoke-interface {v0}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedTime()D

    move-result-wide v0

    return-wide v0
.end method

.method public handleStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;Z)V
    .locals 2
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .param p2, "isLast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->initialTime:D

    .line 193
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->isForward()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->forward:Z

    .line 196
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->copy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    if-eqz p2, :cond_1

    .line 199
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->finalTime:D

    .line 200
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    .line 203
    :cond_1
    return-void
.end method

.method public init(D[DD)V
    .locals 2
    .param p1, "t0"    # D
    .param p3, "y0"    # [D
    .param p4, "t"    # D

    .line 173
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->initialTime:D

    .line 174
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->finalTime:D

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->forward:Z

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    .line 177
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 178
    return-void
.end method

.method public setInterpolatedTime(D)V
    .locals 38
    .param p1, "time"    # D

    .line 253
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const/4 v3, 0x0

    .line 254
    .local v3, "iMin":I
    iget-object v4, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    .line 255
    .local v4, "sMin":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    invoke-interface {v4}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v5

    invoke-interface {v4}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v7

    add-double/2addr v5, v7

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v5, v7

    .line 257
    .local v5, "tMin":D
    iget-object v9, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    .line 258
    .local v9, "iMax":I
    iget-object v10, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    .line 259
    .local v10, "sMax":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    invoke-interface {v10}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v11

    invoke-interface {v10}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v13

    add-double/2addr v11, v13

    mul-double/2addr v11, v7

    .line 263
    .local v11, "tMax":D
    invoke-direct {v0, v1, v2, v4}, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->locatePoint(DLorg/apache/commons/math3/ode/sampling/StepInterpolator;)I

    move-result v13

    if-gtz v13, :cond_0

    .line 264
    iput v3, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    .line 265
    invoke-interface {v4, v1, v2}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 266
    return-void

    .line 268
    :cond_0
    invoke-direct {v0, v1, v2, v10}, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->locatePoint(DLorg/apache/commons/math3/ode/sampling/StepInterpolator;)I

    move-result v13

    if-ltz v13, :cond_1

    .line 269
    iput v9, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    .line 270
    invoke-interface {v10, v1, v2}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 271
    return-void

    .line 275
    :cond_1
    :goto_0
    sub-int v13, v9, v3

    const/4 v14, 0x5

    if-le v13, v14, :cond_8

    .line 278
    iget-object v13, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    iget v14, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    .line 279
    .local v13, "si":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    invoke-direct {v0, v1, v2, v13}, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->locatePoint(DLorg/apache/commons/math3/ode/sampling/StepInterpolator;)I

    move-result v14

    .line 280
    .local v14, "location":I
    if-gez v14, :cond_2

    .line 281
    iget v9, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    .line 282
    invoke-interface {v13}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v15

    invoke-interface {v13}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v17

    add-double v15, v15, v17

    mul-double/2addr v15, v7

    move-wide v11, v15

    .end local v11    # "tMax":D
    .local v15, "tMax":D
    goto :goto_1

    .line 283
    .end local v15    # "tMax":D
    .restart local v11    # "tMax":D
    :cond_2
    if-lez v14, :cond_7

    .line 284
    iget v3, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    .line 285
    invoke-interface {v13}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v15

    invoke-interface {v13}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v17

    add-double v15, v15, v17

    mul-double/2addr v15, v7

    move-wide v5, v15

    .line 293
    :goto_1
    add-int v15, v3, v9

    div-int/lit8 v15, v15, 0x2

    .line 294
    .local v15, "iMed":I
    move-wide/from16 v16, v7

    iget-object v7, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    .line 295
    .local v7, "sMed":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    invoke-interface {v7}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v18

    invoke-interface {v7}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v20

    add-double v18, v18, v20

    mul-double v18, v18, v16

    .line 297
    .local v18, "tMed":D
    sub-double v20, v18, v5

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v20

    const-wide v22, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v8, v20, v22

    if-ltz v8, :cond_4

    sub-double v20, v11, v18

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v20

    cmpg-double v8, v20, v22

    if-gez v8, :cond_3

    move-object v8, v4

    move-wide/from16 v34, v5

    goto :goto_2

    .line 304
    :cond_3
    sub-double v20, v11, v18

    .line 305
    .local v20, "d12":D
    sub-double v22, v18, v5

    .line 306
    .local v22, "d23":D
    sub-double v24, v11, v5

    .line 307
    .local v24, "d13":D
    sub-double v26, v1, v11

    .line 308
    .local v26, "dt1":D
    sub-double v28, v1, v18

    .line 309
    .local v28, "dt2":D
    sub-double v30, v1, v5

    .line 310
    .local v30, "dt3":D
    mul-double v32, v28, v30

    mul-double v32, v32, v22

    move-object v8, v4

    move-wide/from16 v34, v5

    .end local v4    # "sMin":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .end local v5    # "tMin":D
    .local v8, "sMin":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .local v34, "tMin":D
    int-to-double v4, v9

    mul-double v32, v32, v4

    mul-double v4, v26, v30

    mul-double v4, v4, v24

    move-wide/from16 v36, v4

    int-to-double v4, v15

    mul-double v4, v4, v36

    sub-double v32, v32, v4

    mul-double v4, v26, v28

    mul-double v4, v4, v20

    move-wide/from16 v36, v4

    int-to-double v4, v3

    mul-double v4, v4, v36

    add-double v32, v32, v4

    mul-double v4, v20, v22

    mul-double v4, v4, v24

    div-double v32, v32, v4

    .line 314
    .local v32, "iLagrange":D
    invoke-static/range {v32 .. v33}, Lorg/apache/commons/math3/util/FastMath;->rint(D)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    goto :goto_3

    .line 297
    .end local v8    # "sMin":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .end local v20    # "d12":D
    .end local v22    # "d23":D
    .end local v24    # "d13":D
    .end local v26    # "dt1":D
    .end local v28    # "dt2":D
    .end local v30    # "dt3":D
    .end local v32    # "iLagrange":D
    .end local v34    # "tMin":D
    .restart local v4    # "sMin":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .restart local v5    # "tMin":D
    :cond_4
    move-object v8, v4

    move-wide/from16 v34, v5

    .line 299
    .end local v4    # "sMin":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .end local v5    # "tMin":D
    .restart local v8    # "sMin":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .restart local v34    # "tMin":D
    :goto_2
    iput v15, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    .line 318
    :goto_3
    add-int/lit8 v4, v3, 0x1

    mul-int/lit8 v5, v3, 0x9

    add-int/2addr v5, v9

    div-int/lit8 v5, v5, 0xa

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v4

    .line 319
    .local v4, "low":I
    add-int/lit8 v5, v9, -0x1

    mul-int/lit8 v6, v9, 0x9

    add-int/2addr v6, v3

    div-int/lit8 v6, v6, 0xa

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    .line 320
    .local v5, "high":I
    iget v6, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    if-ge v6, v4, :cond_5

    .line 321
    iput v4, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    goto :goto_4

    .line 322
    :cond_5
    iget v6, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    if-le v6, v5, :cond_6

    .line 323
    iput v5, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    .line 326
    .end local v4    # "low":I
    .end local v5    # "high":I
    .end local v7    # "sMed":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .end local v13    # "si":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .end local v14    # "location":I
    .end local v15    # "iMed":I
    .end local v18    # "tMed":D
    :cond_6
    :goto_4
    move-object v4, v8

    move-wide/from16 v7, v16

    move-wide/from16 v5, v34

    goto/16 :goto_0

    .line 288
    .end local v8    # "sMin":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .end local v34    # "tMin":D
    .local v4, "sMin":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .local v5, "tMin":D
    .restart local v13    # "si":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .restart local v14    # "location":I
    :cond_7
    invoke-interface {v13, v1, v2}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 289
    return-void

    .line 329
    .end local v13    # "si":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .end local v14    # "location":I
    :cond_8
    move-object v8, v4

    .end local v4    # "sMin":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .restart local v8    # "sMin":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    iput v3, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    .line 330
    :goto_5
    iget v4, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    if-gt v4, v9, :cond_9

    iget-object v4, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    iget v7, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    invoke-direct {v0, v1, v2, v4}, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->locatePoint(DLorg/apache/commons/math3/ode/sampling/StepInterpolator;)I

    move-result v4

    if-lez v4, :cond_9

    .line 331
    iget v4, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    goto :goto_5

    .line 334
    :cond_9
    iget-object v4, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    iget v7, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    invoke-interface {v4, v1, v2}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 336
    return-void
.end method
