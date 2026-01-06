.class public Lorg/apache/commons/math3/stat/inference/OneWayAnova;
.super Ljava/lang/Object;
.source "OneWayAnova.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method private anovaStats(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[D>;)",
            "Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 195
    .local p1, "categoryData":Ljava/util/Collection;, "Ljava/util/Collection<[D>;"
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    .local v0, "categoryDataSummaryStatistics":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 202
    .local v2, "data":[D
    new-instance v3, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-direct {v3}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;-><init>()V

    .line 203
    .local v3, "dataSummaryStatistics":Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 204
    move-object v4, v2

    .local v4, "arr$":[D
    array-length v5, v4

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v5, :cond_0

    aget-wide v7, v4, v6

    .line 205
    .local v7, "val":D
    invoke-virtual {v3, v7, v8}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->addValue(D)V

    .line 204
    .end local v7    # "val":D
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 207
    .end local v2    # "data":[D
    .end local v3    # "dataSummaryStatistics":Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    .end local v4    # "arr$":[D
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_0
    goto :goto_0

    .line 209
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/stat/inference/OneWayAnova;->anovaStats(Ljava/util/Collection;Z)Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;

    move-result-object v1

    return-object v1
.end method

.method private anovaStats(Ljava/util/Collection;Z)Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;
    .locals 23
    .param p2, "allowOneElementData"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;",
            ">;Z)",
            "Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 278
    .local p1, "categoryData":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;>;"
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 280
    if-nez p2, :cond_2

    .line 282
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 288
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    .line 289
    .local v2, "array":Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 293
    .end local v2    # "array":Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    goto :goto_0

    .line 290
    .restart local v2    # "array":Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TWO_OR_MORE_VALUES_IN_CATEGORY_REQUIRED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-direct {v3, v4, v5, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;II)V

    throw v3

    .line 283
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "array":Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TWO_OR_MORE_CATEGORIES_REQUIRED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;II)V

    throw v0

    .line 296
    :cond_2
    const/4 v0, 0x0

    .line 297
    .local v0, "dfwg":I
    const-wide/16 v1, 0x0

    .line 298
    .local v1, "sswg":D
    const-wide/16 v3, 0x0

    .line 299
    .local v3, "totsum":D
    const-wide/16 v5, 0x0

    .line 300
    .local v5, "totsumsq":D
    const/4 v7, 0x0

    .line 302
    .local v7, "totnum":I
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v11, v0

    .end local v0    # "dfwg":I
    .local v8, "i$":Ljava/util/Iterator;
    .local v11, "dfwg":I
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    .line 304
    .local v0, "data":Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSum()D

    move-result-wide v9

    .line 305
    .local v9, "sum":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSumsq()D

    move-result-wide v12

    .line 306
    .local v12, "sumsq":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v14

    long-to-int v14, v14

    .line 307
    .local v14, "num":I
    add-int/2addr v7, v14

    .line 308
    add-double/2addr v3, v9

    .line 309
    add-double/2addr v5, v12

    .line 311
    add-int/lit8 v15, v14, -0x1

    add-int/2addr v11, v15

    .line 312
    mul-double v15, v9, v9

    move-wide/from16 v17, v1

    move-object v2, v0

    .end local v0    # "data":Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    .end local v1    # "sswg":D
    .local v2, "data":Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    .local v17, "sswg":D
    int-to-double v0, v14

    div-double/2addr v15, v0

    sub-double v0, v12, v15

    .line 313
    .local v0, "ss":D
    add-double v1, v17, v0

    .line 314
    .end local v0    # "ss":D
    .end local v2    # "data":Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    .end local v9    # "sum":D
    .end local v12    # "sumsq":D
    .end local v14    # "num":I
    .end local v17    # "sswg":D
    .restart local v1    # "sswg":D
    goto :goto_1

    .line 302
    :cond_3
    move-wide/from16 v17, v1

    .line 316
    .end local v1    # "sswg":D
    .end local v8    # "i$":Ljava/util/Iterator;
    .restart local v17    # "sswg":D
    mul-double v0, v3, v3

    int-to-double v8, v7

    div-double/2addr v0, v8

    sub-double v0, v5, v0

    .line 317
    .local v0, "sst":D
    sub-double v15, v0, v17

    .line 318
    .local v15, "ssbg":D
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/lit8 v10, v2, -0x1

    .line 319
    .local v10, "dfbg":I
    int-to-double v8, v10

    div-double v19, v15, v8

    .line 320
    .local v19, "msbg":D
    int-to-double v8, v11

    div-double v21, v17, v8

    .line 321
    .local v21, "mswg":D
    div-double v12, v19, v21

    .line 323
    .local v12, "F":D
    new-instance v9, Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;-><init>(IIDLorg/apache/commons/math3/stat/inference/OneWayAnova$1;)V

    return-object v9
.end method


# virtual methods
.method public anovaFValue(Ljava/util/Collection;)D
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[D>;)D"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 90
    .local p1, "categoryData":Ljava/util/Collection;, "Ljava/util/Collection<[D>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/OneWayAnova;->anovaStats(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;

    move-result-object v0

    .line 91
    .local v0, "a":Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;
    invoke-static {v0}, Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;->access$000(Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;)D

    move-result-wide v1

    return-wide v1
.end method

.method public anovaPValue(Ljava/util/Collection;)D
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[D>;)D"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 127
    .local p1, "categoryData":Ljava/util/Collection;, "Ljava/util/Collection<[D>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/OneWayAnova;->anovaStats(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;

    move-result-object v0

    .line 130
    .local v0, "a":Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;
    new-instance v1, Lorg/apache/commons/math3/distribution/FDistribution;

    invoke-static {v0}, Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;->access$100(Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;)I

    move-result v2

    int-to-double v3, v2

    invoke-static {v0}, Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;->access$200(Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;)I

    move-result v2

    int-to-double v5, v2

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/distribution/FDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    .line 131
    .local v1, "fdist":Lorg/apache/commons/math3/distribution/FDistribution;
    invoke-static {v0}, Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;->access$000(Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/distribution/FDistribution;->cumulativeProbability(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v2

    return-wide v4
.end method

.method public anovaPValue(Ljava/util/Collection;Z)D
    .locals 7
    .param p2, "allowOneElementData"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;",
            ">;Z)D"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 170
    .local p1, "categoryData":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/OneWayAnova;->anovaStats(Ljava/util/Collection;Z)Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;

    move-result-object v0

    .line 172
    .local v0, "a":Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;
    new-instance v1, Lorg/apache/commons/math3/distribution/FDistribution;

    invoke-static {v0}, Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;->access$100(Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;)I

    move-result v2

    int-to-double v3, v2

    invoke-static {v0}, Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;->access$200(Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;)I

    move-result v2

    int-to-double v5, v2

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/distribution/FDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    .line 173
    .local v1, "fdist":Lorg/apache/commons/math3/distribution/FDistribution;
    invoke-static {v0}, Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;->access$000(Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/distribution/FDistribution;->cumulativeProbability(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v2

    return-wide v4
.end method

.method public anovaTest(Ljava/util/Collection;D)Z
    .locals 6
    .param p2, "alpha"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[D>;D)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 252
    .local p1, "categoryData":Ljava/util/Collection;, "Ljava/util/Collection<[D>;"
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    const/4 v3, 0x0

    if-lez v0, :cond_1

    cmpl-double v0, p2, v1

    if-gtz v0, :cond_1

    .line 257
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/inference/OneWayAnova;->anovaPValue(Ljava/util/Collection;)D

    move-result-wide v0

    cmpg-double v0, v0, p2

    if-gez v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 253
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUND_SIGNIFICANCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v4, v5, v3, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method
