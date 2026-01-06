.class public Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.source "Skewness.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x628eddd741837198L


# instance fields
.field protected incMoment:Z

.field protected moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->incMoment:Z

    .line 69
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;)V
    .locals 1
    .param p1, "original"    # Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    .line 89
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;)V
    .locals 1
    .param p1, "m3"    # Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    .line 76
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->incMoment:Z

    .line 78
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    .line 79
    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;)V
    .locals 2
    .param p0, "source"    # Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;
    .param p1, "dest"    # Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 222
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 223
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 224
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->setData([D)V

    .line 225
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;-><init>(Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;)V

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    .line 226
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->incMoment:Z

    iput-boolean v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->incMoment:Z

    .line 227
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 140
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->incMoment:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->clear()V

    .line 143
    :cond_0
    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;
    .locals 1

    .line 206
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;-><init>()V

    .line 208
    .local v0, "result":Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;)V

    .line 209
    return-object v0
.end method

.method public evaluate([DII)D
    .locals 20
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
    .local v3, "skew":D
    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->test([DII)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    if-le v2, v5, :cond_2

    .line 169
    new-instance v5, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v5}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    .line 171
    .local v5, "mean":Lorg/apache/commons/math3/stat/descriptive/moment/Mean;
    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->evaluate([DII)D

    move-result-wide v6

    .line 176
    .local v6, "m":D
    const-wide/16 v8, 0x0

    .line 177
    .local v8, "accum":D
    const-wide/16 v10, 0x0

    .line 178
    .local v10, "accum2":D
    move/from16 v12, p2

    .local v12, "i":I
    :goto_0
    add-int v13, v1, v2

    if-ge v12, v13, :cond_0

    .line 179
    aget-wide v13, v0, v12

    sub-double/2addr v13, v6

    .line 180
    .local v13, "d":D
    mul-double v15, v13, v13

    add-double/2addr v8, v15

    .line 181
    add-double/2addr v10, v13

    .line 178
    .end local v13    # "d":D
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 183
    .end local v12    # "i":I
    :cond_0
    mul-double v12, v10, v10

    int-to-double v14, v2

    div-double/2addr v12, v14

    sub-double v12, v8, v12

    add-int/lit8 v14, v2, -0x1

    int-to-double v14, v14

    div-double/2addr v12, v14

    .line 185
    .local v12, "variance":D
    const-wide/16 v14, 0x0

    .line 186
    .local v14, "accum3":D
    move/from16 v16, p2

    move/from16 v0, v16

    .local v0, "i":I
    :goto_1
    add-int v1, p2, v2

    if-ge v0, v1, :cond_1

    .line 187
    aget-wide v16, p1, v0

    sub-double v16, v16, v6

    .line 188
    .local v16, "d":D
    mul-double v18, v16, v16

    mul-double v18, v18, v16

    add-double v14, v14, v18

    .line 186
    .end local v16    # "d":D
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, p2

    goto :goto_1

    .line 190
    .end local v0    # "i":I
    :cond_1
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, v12

    div-double/2addr v14, v0

    .line 193
    int-to-double v0, v2

    .line 196
    .local v0, "n0":D
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v16, v0, v16

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    sub-double v18, v0, v18

    mul-double v16, v16, v18

    div-double v16, v0, v16

    mul-double v3, v16, v14

    .line 198
    .end local v0    # "n0":D
    .end local v5    # "mean":Lorg/apache/commons/math3/stat/descriptive/moment/Mean;
    .end local v6    # "m":D
    .end local v8    # "accum":D
    .end local v10    # "accum2":D
    .end local v12    # "variance":D
    .end local v14    # "accum3":D
    :cond_2
    return-wide v3
.end method

.method public getN()J
    .locals 2

    .line 132
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->getN()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResult()D
    .locals 10

    .line 115
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->n:J

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 116
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->m2:D

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    iget-wide v2, v2, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->n:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 119
    .local v0, "variance":D
    const-wide v2, 0x3bfd83c94fb6d2acL    # 1.0E-19

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    .line 120
    const-wide/16 v2, 0x0

    return-wide v2

    .line 122
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->getN()J

    move-result-wide v2

    long-to-double v2, v2

    .line 123
    .local v2, "n0":D
    iget-object v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    iget-wide v4, v4, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->m3:D

    mul-double/2addr v4, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v6, v2, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    sub-double v8, v2, v8

    mul-double/2addr v6, v8

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    mul-double/2addr v6, v0

    div-double/2addr v4, v6

    return-wide v4
.end method

.method public increment(D)V
    .locals 1
    .param p1, "d"    # D

    .line 100
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->incMoment:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->increment(D)V

    .line 103
    :cond_0
    return-void
.end method
