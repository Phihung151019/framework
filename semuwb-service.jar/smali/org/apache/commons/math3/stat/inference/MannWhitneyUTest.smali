.class public Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;
.super Ljava/lang/Object;
.source "MannWhitneyUTest.java"


# instance fields
.field private naturalRanking:Lorg/apache/commons/math3/stat/ranking/NaturalRanking;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    sget-object v1, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->FIXED:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    sget-object v2, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->AVERAGE:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;-><init>(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/stat/ranking/TiesStrategy;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;->naturalRanking:Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/stat/ranking/TiesStrategy;)V
    .locals 1
    .param p1, "nanStrategy"    # Lorg/apache/commons/math3/stat/ranking/NaNStrategy;
    .param p2, "tiesStrategy"    # Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;-><init>(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/stat/ranking/TiesStrategy;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;->naturalRanking:Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    .line 60
    return-void
.end method

.method private calculateAsymptoticPValue(DII)D
    .locals 18
    .param p1, "Umin"    # D
    .param p3, "n1"    # I
    .param p4, "n2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 175
    move/from16 v0, p3

    move/from16 v1, p4

    int-to-long v2, v0

    int-to-long v4, v1

    mul-long/2addr v2, v4

    .line 178
    .local v2, "n1n2prod":J
    long-to-double v4, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    .line 179
    .local v4, "EU":D
    add-int v8, v0, v1

    add-int/lit8 v8, v8, 0x1

    int-to-long v8, v8

    mul-long/2addr v8, v2

    long-to-double v8, v8

    const-wide/high16 v10, 0x4028000000000000L    # 12.0

    div-double/2addr v8, v10

    .line 181
    .local v8, "VarU":D
    sub-double v10, p1, v4

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v12

    div-double/2addr v10, v12

    .line 185
    .local v10, "z":D
    new-instance v12, Lorg/apache/commons/math3/distribution/NormalDistribution;

    const-wide/16 v14, 0x0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const/4 v13, 0x0

    invoke-direct/range {v12 .. v17}, Lorg/apache/commons/math3/distribution/NormalDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    .line 187
    .local v12, "standardNormal":Lorg/apache/commons/math3/distribution/NormalDistribution;
    invoke-virtual {v12, v10, v11}, Lorg/apache/commons/math3/distribution/NormalDistribution;->cumulativeProbability(D)D

    move-result-wide v13

    mul-double/2addr v13, v6

    return-wide v13
.end method

.method private concatenateSamples([D[D)[D
    .locals 4
    .param p1, "x"    # [D
    .param p2, "y"    # [D

    .line 89
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [D

    .line 91
    .local v0, "z":[D
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    array-length v1, p1

    array-length v3, p2

    invoke-static {p2, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    return-object v0
.end method

.method private ensureDataConformance([D[D)V
    .locals 1
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 73
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 77
    array-length v0, p1

    if-eqz v0, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    .line 81
    return-void

    .line 79
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v0

    .line 75
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public mannWhitneyU([D[D)D
    .locals 10
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;->ensureDataConformance([D[D)V

    .line 130
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;->concatenateSamples([D[D)[D

    move-result-object v0

    .line 131
    .local v0, "z":[D
    iget-object v1, p0, Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;->naturalRanking:Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->rank([D)[D

    move-result-object v1

    .line 133
    .local v1, "ranks":[D
    const-wide/16 v2, 0x0

    .line 139
    .local v2, "sumRankX":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_0

    .line 140
    aget-wide v5, v1, v4

    add-double/2addr v2, v5

    .line 139
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 147
    .end local v4    # "i":I
    :cond_0
    array-length v4, p1

    int-to-long v4, v4

    array-length v6, p1

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    long-to-double v4, v4

    sub-double v4, v2, v4

    .line 152
    .local v4, "U1":D
    array-length v6, p1

    int-to-long v6, v6

    array-length v8, p2

    int-to-long v8, v8

    mul-long/2addr v6, v8

    long-to-double v6, v6

    sub-double/2addr v6, v4

    .line 154
    .local v6, "U2":D
    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v8

    return-wide v8
.end method

.method public mannWhitneyUTest([D[D)D
    .locals 6
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 226
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;->ensureDataConformance([D[D)V

    .line 228
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;->mannWhitneyU([D[D)D

    move-result-wide v0

    .line 233
    .local v0, "Umax":D
    array-length v2, p1

    int-to-long v2, v2

    array-length v4, p2

    int-to-long v4, v4

    mul-long/2addr v2, v4

    long-to-double v2, v2

    sub-double/2addr v2, v0

    .line 235
    .local v2, "Umin":D
    array-length v4, p1

    array-length v5, p2

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;->calculateAsymptoticPValue(DII)D

    move-result-wide v4

    return-wide v4
.end method
