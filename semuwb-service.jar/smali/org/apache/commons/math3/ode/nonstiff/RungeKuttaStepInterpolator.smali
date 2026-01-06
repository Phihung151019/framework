.class abstract Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
.super Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
.source "RungeKuttaStepInterpolator.java"


# instance fields
.field protected integrator:Lorg/apache/commons/math3/ode/AbstractIntegrator;

.field protected previousState:[D

.field protected yDotK:[[D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    .line 61
    move-object v1, v0

    check-cast v1, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    .line 62
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->integrator:Lorg/apache/commons/math3/ode/AbstractIntegrator;

    .line 63
    return-void
.end method

.method constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V
    .locals 4
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    .line 84
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;)V

    .line 86
    iget-object v0, p1, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->currentState:[D

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p1, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    .line 90
    iget-object v0, p1, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    array-length v0, v0

    new-array v0, v0, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    .line 91
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    iget-object v2, p1, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 92
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    iget-object v3, p1, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v3, v3, v0

    invoke-virtual {v3}, [D->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    aput-object v3, v2, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "k":I
    :cond_0
    goto :goto_1

    .line 96
    :cond_1
    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    .line 97
    move-object v0, v1

    check-cast v0, [[D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    .line 102
    :goto_1
    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->integrator:Lorg/apache/commons/math3/ode/AbstractIntegrator;

    .line 104
    return-void
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 10
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 178
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->readBaseExternal(Ljava/io/ObjectInput;)D

    move-result-wide v0

    .line 181
    .local v0, "t":D
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->currentState:[D

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->currentState:[D

    array-length v2, v2

    .line 182
    .local v2, "n":I
    :goto_0
    const/4 v3, 0x0

    if-gez v2, :cond_1

    .line 183
    iput-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    goto :goto_2

    .line 185
    :cond_1
    new-array v4, v2, [D

    iput-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    .line 186
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 187
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v6

    aput-wide v6, v5, v4

    .line 186
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 191
    .end local v4    # "i":I
    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v4

    .line 192
    .local v4, "kMax":I
    if-gez v4, :cond_3

    move-object v5, v3

    check-cast v5, [[D

    move-object v5, v3

    goto :goto_3

    :cond_3
    new-array v5, v4, [[D

    :goto_3
    iput-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    .line 193
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_4
    if-ge v5, v4, :cond_6

    .line 194
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    if-gez v2, :cond_4

    move-object v7, v3

    goto :goto_5

    :cond_4
    new-array v7, v2, [D

    :goto_5
    aput-object v7, v6, v5

    .line 195
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    if-ge v6, v2, :cond_5

    .line 196
    iget-object v7, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v7, v7, v5

    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v8

    aput-wide v8, v7, v6

    .line 195
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 193
    .end local v6    # "i":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 200
    .end local v5    # "k":I
    :cond_6
    iput-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->integrator:Lorg/apache/commons/math3/ode/AbstractIntegrator;

    .line 202
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->currentState:[D

    if-eqz v3, :cond_7

    .line 204
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->setInterpolatedTime(D)V

    goto :goto_7

    .line 206
    :cond_7
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->interpolatedTime:D

    .line 209
    :goto_7
    return-void
.end method

.method public reinitialize(Lorg/apache/commons/math3/ode/AbstractIntegrator;[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V
    .locals 1
    .param p1, "rkIntegrator"    # Lorg/apache/commons/math3/ode/AbstractIntegrator;
    .param p2, "y"    # [D
    .param p3, "yDotArray"    # [[D
    .param p4, "forward"    # Z
    .param p5, "primaryMapper"    # Lorg/apache/commons/math3/ode/EquationsMapper;
    .param p6, "secondaryMappers"    # [Lorg/apache/commons/math3/ode/EquationsMapper;

    .line 133
    invoke-virtual {p0, p2, p4, p5, p6}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->reinitialize([DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    .line 135
    iput-object p3, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    .line 136
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->integrator:Lorg/apache/commons/math3/ode/AbstractIntegrator;

    .line 137
    return-void
.end method

.method public shift()V
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->currentState:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    .line 143
    invoke-super {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->shift()V

    .line 144
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 6
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->writeBaseExternal(Ljava/io/ObjectOutput;)V

    .line 155
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->currentState:[D

    const/4 v1, -0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->currentState:[D

    array-length v0, v0

    .line 156
    .local v0, "n":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 157
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    aget-wide v3, v3, v2

    invoke-interface {p1, v3, v4}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 160
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    array-length v1, v1

    .line 161
    .local v1, "kMax":I
    :goto_2
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 162
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_3
    if-ge v2, v1, :cond_4

    .line 163
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v0, :cond_3

    .line 164
    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v4, v4, v2

    aget-wide v4, v4, v3

    invoke-interface {p1, v4, v5}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 163
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 162
    .end local v3    # "i":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 170
    .end local v2    # "k":I
    :cond_4
    return-void
.end method
