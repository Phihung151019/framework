.class public abstract Lorg/apache/commons/math3/util/ContinuedFraction;
.super Ljava/lang/Object;
.source "ContinuedFraction.java"


# static fields
.field private static final DEFAULT_EPSILON:D = 1.0E-8


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public evaluate(D)D
    .locals 6
    .param p1, "x"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .line 72
    const-wide v3, 0x3e45798ee2308c3aL    # 1.0E-8

    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    .end local p1    # "x":D
    .local v1, "x":D
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/util/ContinuedFraction;->evaluate(DDI)D

    move-result-wide p1

    return-wide p1
.end method

.method public evaluate(DD)D
    .locals 6
    .param p1, "x"    # D
    .param p3, "epsilon"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .line 83
    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .end local p1    # "x":D
    .end local p3    # "epsilon":D
    .local v1, "x":D
    .local v3, "epsilon":D
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/util/ContinuedFraction;->evaluate(DDI)D

    move-result-wide p1

    return-wide p1
.end method

.method public evaluate(DDI)D
    .locals 29
    .param p1, "x"    # D
    .param p3, "epsilon"    # D
    .param p5, "maxIterations"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 124
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p5

    const-wide v4, 0x358dee7a4ad4b81fL    # 1.0E-50

    .line 125
    .local v4, "small":D
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v1, v2}, Lorg/apache/commons/math3/util/ContinuedFraction;->getA(ID)D

    move-result-wide v7

    .line 128
    .local v7, "hPrev":D
    const-wide/16 v9, 0x0

    const-wide v11, 0x358dee7a4ad4b81fL    # 1.0E-50

    invoke-static/range {v7 .. v12}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 129
    const-wide v7, 0x358dee7a4ad4b81fL    # 1.0E-50

    .line 132
    :cond_0
    const/4 v6, 0x1

    .line 133
    .local v6, "n":I
    const-wide/16 v9, 0x0

    .line 134
    .local v9, "dPrev":D
    move-wide v11, v7

    .line 135
    .local v11, "cPrev":D
    move-wide v13, v7

    .line 137
    .local v13, "hN":D
    :goto_0
    if-ge v6, v3, :cond_6

    .line 138
    invoke-virtual {v0, v6, v1, v2}, Lorg/apache/commons/math3/util/ContinuedFraction;->getA(ID)D

    move-result-wide v15

    .line 139
    .local v15, "a":D
    invoke-virtual {v0, v6, v1, v2}, Lorg/apache/commons/math3/util/ContinuedFraction;->getB(ID)D

    move-result-wide v17

    .line 141
    .local v17, "b":D
    mul-double v19, v17, v9

    add-double v21, v15, v19

    .line 142
    .local v21, "dN":D
    const-wide/16 v23, 0x0

    const-wide v25, 0x358dee7a4ad4b81fL    # 1.0E-50

    invoke-static/range {v21 .. v26}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 143
    const-wide v21, 0x358dee7a4ad4b81fL    # 1.0E-50

    .line 145
    :cond_1
    div-double v19, v17, v11

    add-double v23, v15, v19

    .line 146
    .local v23, "cN":D
    const-wide/16 v25, 0x0

    const-wide v27, 0x358dee7a4ad4b81fL    # 1.0E-50

    invoke-static/range {v23 .. v28}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 147
    const-wide v23, 0x358dee7a4ad4b81fL    # 1.0E-50

    .line 150
    :cond_2
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    div-double v21, v19, v21

    .line 151
    mul-double v25, v23, v21

    .line 152
    .local v25, "deltaN":D
    mul-double v13, v7, v25

    .line 154
    invoke-static {v13, v14}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v27

    if-nez v27, :cond_5

    .line 158
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v27

    if-nez v27, :cond_4

    .line 163
    sub-double v19, v25, v19

    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v19

    cmpg-double v19, v19, p3

    if-gez v19, :cond_3

    .line 164
    goto :goto_1

    .line 167
    :cond_3
    move-wide/from16 v9, v21

    .line 168
    move-wide/from16 v11, v23

    .line 169
    move-wide v7, v13

    .line 170
    nop

    .end local v15    # "a":D
    .end local v17    # "b":D
    .end local v21    # "dN":D
    .end local v23    # "cN":D
    .end local v25    # "deltaN":D
    add-int/lit8 v6, v6, 0x1

    .line 171
    goto :goto_0

    .line 159
    .restart local v15    # "a":D
    .restart local v17    # "b":D
    .restart local v21    # "dN":D
    .restart local v23    # "cN":D
    .restart local v25    # "deltaN":D
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONTINUED_FRACTION_NAN_DIVERGENCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 155
    :cond_5
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONTINUED_FRACTION_INFINITY_DIVERGENCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 173
    .end local v15    # "a":D
    .end local v17    # "b":D
    .end local v21    # "dN":D
    .end local v23    # "cN":D
    .end local v25    # "deltaN":D
    :cond_6
    :goto_1
    if-ge v6, v3, :cond_7

    .line 178
    return-wide v13

    .line 174
    :cond_7
    new-instance v0, Lorg/apache/commons/math3/exception/MaxCountExceededException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NON_CONVERGENT_CONTINUED_FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    invoke-direct {v0, v1, v2, v15}, Lorg/apache/commons/math3/exception/MaxCountExceededException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V

    throw v0
.end method

.method public evaluate(DI)D
    .locals 6
    .param p1, "x"    # D
    .param p3, "maxIterations"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 96
    const-wide v3, 0x3e45798ee2308c3aL    # 1.0E-8

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    .end local p1    # "x":D
    .end local p3    # "maxIterations":I
    .local v1, "x":D
    .local v5, "maxIterations":I
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/util/ContinuedFraction;->evaluate(DDI)D

    move-result-wide p1

    return-wide p1
.end method

.method protected abstract getA(ID)D
.end method

.method protected abstract getB(ID)D
.end method
