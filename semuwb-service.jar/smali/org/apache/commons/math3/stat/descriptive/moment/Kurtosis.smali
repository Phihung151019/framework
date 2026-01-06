.class public Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.source "Kurtosis.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x26a468dc400966b7L


# instance fields
.field protected incMoment:Z

.field protected moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->incMoment:Z

    .line 70
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;)V
    .locals 1
    .param p1, "m4"    # Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    .line 78
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->incMoment:Z

    .line 80
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;)V
    .locals 0
    .param p1, "original"    # Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 91
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;)V

    .line 92
    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;)V
    .locals 1
    .param p0, "source"    # Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;
    .param p1, "dest"    # Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 219
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 220
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 221
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->setData([D)V

    .line 222
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    .line 223
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->incMoment:Z

    iput-boolean v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->incMoment:Z

    .line 224
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 133
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->incMoment:Z

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->clear()V

    .line 136
    :cond_0
    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;
    .locals 1

    .line 203
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;-><init>()V

    .line 205
    .local v0, "result":Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;)V

    .line 206
    return-object v0
.end method

.method public evaluate([DII)D
    .locals 24
    .param p1, "values"    # [D
    .param p2, "begin"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 166
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    .line 168
    .local v3, "kurt":D
    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->test([DII)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    if-le v2, v5, :cond_1

    .line 171
    new-instance v5, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v5}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    .line 172
    .local v5, "variance":Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incrementAll([DII)V

    .line 173
    iget-object v6, v5, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    iget-wide v6, v6, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m1:D

    .line 174
    .local v6, "mean":D
    invoke-virtual {v5}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->getResult()D

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    .line 178
    .local v8, "stdDev":D
    const-wide/16 v10, 0x0

    .line 179
    .local v10, "accum3":D
    move/from16 v12, p2

    .local v12, "i":I
    :goto_0
    add-int v13, v1, v2

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    if-ge v12, v13, :cond_0

    .line 180
    aget-wide v16, v0, v12

    sub-double v0, v16, v6

    invoke-static {v0, v1, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    add-double/2addr v10, v0

    .line 179
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p2

    goto :goto_0

    .line 182
    .end local v12    # "i":I
    :cond_0
    invoke-static {v8, v9, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    div-double/2addr v10, v0

    .line 185
    int-to-double v0, v2

    .line 187
    .local v0, "n0":D
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double v14, v0, v12

    mul-double/2addr v14, v0

    sub-double v16, v0, v12

    move-wide/from16 v18, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    sub-double v20, v0, v12

    mul-double v16, v16, v20

    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    sub-double v22, v0, v20

    mul-double v16, v16, v22

    div-double v14, v14, v16

    .line 189
    .local v14, "coefficientOne":D
    move-wide/from16 v16, v0

    .end local v0    # "n0":D
    .local v16, "n0":D
    sub-double v0, v16, v18

    invoke-static {v0, v1, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    mul-double v0, v0, v20

    sub-double v12, v16, v12

    sub-double v18, v16, v20

    mul-double v12, v12, v18

    div-double/2addr v0, v12

    .line 193
    .local v0, "termTwo":D
    mul-double v12, v14, v10

    sub-double v3, v12, v0

    .line 195
    .end local v0    # "termTwo":D
    .end local v5    # "variance":Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    .end local v6    # "mean":D
    .end local v8    # "stdDev":D
    .end local v10    # "accum3":D
    .end local v14    # "coefficientOne":D
    .end local v16    # "n0":D
    :cond_1
    return-wide v3
.end method

.method public getN()J
    .locals 2

    .line 142
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->getN()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResult()D
    .locals 18

    .line 112
    move-object/from16 v0, p0

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    .line 113
    .local v1, "kurtosis":D
    iget-object v3, v0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    invoke-virtual {v3}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->getN()J

    move-result-wide v3

    const-wide/16 v5, 0x3

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 114
    iget-object v3, v0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    iget-wide v3, v3, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m2:D

    iget-object v7, v0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    iget-wide v7, v7, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->n:J

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    long-to-double v7, v7

    div-double/2addr v3, v7

    .line 115
    .local v3, "variance":D
    iget-object v7, v0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    iget-wide v7, v7, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->n:J

    cmp-long v5, v7, v5

    if-lez v5, :cond_1

    const-wide v5, 0x3bfd83c94fb6d2acL    # 1.0E-19

    cmpg-double v5, v3, v5

    if-gez v5, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    iget-object v5, v0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    iget-wide v5, v5, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->n:J

    long-to-double v5, v5

    .line 119
    .local v5, "n":D
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double v9, v5, v7

    mul-double/2addr v9, v5

    iget-object v11, v0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    invoke-virtual {v11}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->getResult()D

    move-result-wide v11

    mul-double/2addr v9, v11

    iget-object v11, v0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    iget-wide v11, v11, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m2:D

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    mul-double/2addr v11, v13

    iget-object v15, v0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    move-wide/from16 v16, v7

    iget-wide v7, v15, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m2:D

    mul-double/2addr v11, v7

    sub-double v7, v5, v16

    mul-double/2addr v11, v7

    sub-double/2addr v9, v11

    sub-double v7, v5, v16

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    sub-double v11, v5, v11

    mul-double/2addr v7, v11

    sub-double v11, v5, v13

    mul-double/2addr v7, v11

    mul-double/2addr v7, v3

    mul-double/2addr v7, v3

    div-double v1, v9, v7

    goto :goto_1

    .line 116
    .end local v5    # "n":D
    :cond_1
    :goto_0
    const-wide/16 v1, 0x0

    .line 125
    .end local v3    # "variance":D
    :cond_2
    :goto_1
    return-wide v1
.end method

.method public increment(D)V
    .locals 1
    .param p1, "d"    # D

    .line 102
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->incMoment:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->increment(D)V

    .line 105
    :cond_0
    return-void
.end method
