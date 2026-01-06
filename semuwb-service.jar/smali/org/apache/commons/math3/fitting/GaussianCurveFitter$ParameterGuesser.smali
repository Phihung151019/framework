.class public Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;
.super Ljava/lang/Object;
.source "GaussianCurveFitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/fitting/GaussianCurveFitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterGuesser"
.end annotation


# instance fields
.field private final mean:D

.field private final norm:D

.field private final sigma:D


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/fitting/WeightedObservedPoint;",
            ">;)V"
        }
    .end annotation

    .line 214
    .local p1, "observations":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/fitting/WeightedObservedPoint;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 218
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-lt v1, v3, :cond_0

    .line 222
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;->sortObservations(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 223
    .local v1, "sorted":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/fitting/WeightedObservedPoint;>;"
    new-array v3, v0, [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    invoke-direct {p0, v3}, Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;->basicGuess([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)[D

    move-result-object v3

    .line 225
    .local v3, "params":[D
    aget-wide v4, v3, v0

    iput-wide v4, p0, Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;->norm:D

    .line 226
    aget-wide v4, v3, v2

    iput-wide v4, p0, Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;->mean:D

    .line 227
    const/4 v0, 0x2

    aget-wide v4, v3, v0

    iput-wide v4, p0, Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;->sigma:D

    .line 228
    return-void

    .line 219
    .end local v1    # "sorted":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/fitting/WeightedObservedPoint;>;"
    .end local v3    # "params":[D
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 216
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method private basicGuess([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)[D
    .locals 19
    .param p1, "points"    # [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .line 303
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;->findMaxY([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)I

    move-result v3

    .line 304
    .local v3, "maxYIdx":I
    aget-object v0, p1, v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v7

    .line 305
    .local v7, "n":D
    aget-object v0, p1, v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v9

    .line 309
    .local v9, "m":D
    sub-double v0, v9, v7

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v11

    add-double v5, v7, v0

    .line 310
    .local v5, "halfY":D
    const/4 v4, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;->interpolateXAtY([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;IID)D

    move-result-wide v15

    .line 311
    .local v15, "fwhmX1":D
    const/4 v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;->interpolateXAtY([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;IID)D

    move-result-wide v17
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/OutOfRangeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    .local v17, "fwhmX2":D
    sub-double v17, v17, v15

    .line 316
    .end local v5    # "halfY":D
    .end local v15    # "fwhmX1":D
    .local v17, "fwhmApprox":D
    goto :goto_0

    .line 313
    .end local v17    # "fwhmApprox":D
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Lorg/apache/commons/math3/exception/OutOfRangeException;
    array-length v1, v2

    sub-int/2addr v1, v14

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v4

    aget-object v1, v2, v13

    invoke-virtual {v1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v15

    sub-double v17, v4, v15

    .line 317
    .end local v0    # "e":Lorg/apache/commons/math3/exception/OutOfRangeException;
    .restart local v17    # "fwhmApprox":D
    :goto_0
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    mul-double/2addr v0, v11

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, v11

    div-double v0, v17, v0

    .line 319
    .local v0, "s":D
    const/4 v4, 0x3

    new-array v4, v4, [D

    aput-wide v7, v4, v13

    aput-wide v9, v4, v14

    const/4 v5, 0x2

    aput-wide v0, v4, v5

    return-object v4
.end method

.method private findMaxY([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)I
    .locals 6
    .param p1, "points"    # [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, "maxYIdx":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 331
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v2

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 332
    move v0, v1

    .line 330
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 335
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private getInterpolationPointsForY([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;IID)[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    .locals 10
    .param p1, "points"    # [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    .param p2, "startIdx"    # I
    .param p3, "idxStep"    # I
    .param p4, "y"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 394
    if-eqz p3, :cond_5

    .line 397
    move v0, p2

    .line 398
    .local v0, "i":I
    :goto_0
    add-int v1, v0, p3

    if-gez p3, :cond_1

    if-ltz v1, :cond_0

    goto :goto_1

    :cond_0
    move-wide v4, p4

    goto :goto_2

    :cond_1
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 400
    :goto_1
    aget-object v1, p1, v0

    .line 401
    .local v1, "p1":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    add-int v2, v0, p3

    aget-object v2, p1, v2

    .line 402
    .local v2, "p2":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    invoke-virtual {v1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v6

    invoke-virtual {v2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v8

    move-object v3, p0

    move-wide v4, p4

    .end local p4    # "y":D
    .local v4, "y":D
    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;->isBetween(DDD)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 403
    const/4 p4, 0x1

    const/4 p5, 0x0

    const/4 v3, 0x2

    if-gez p3, :cond_2

    .line 404
    new-array v3, v3, [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    aput-object v2, v3, p5

    aput-object v1, v3, p4

    return-object v3

    .line 406
    :cond_2
    new-array v3, v3, [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    aput-object v1, v3, p5

    aput-object v2, v3, p4

    return-object v3

    .line 399
    .end local v1    # "p1":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    .end local v2    # "p2":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    :cond_3
    add-int/2addr v0, p3

    move-wide p4, v4

    goto :goto_0

    .line 398
    .end local v4    # "y":D
    .restart local p4    # "y":D
    :cond_4
    move-wide v4, p4

    .line 414
    .end local v0    # "i":I
    .end local p4    # "y":D
    .restart local v4    # "y":D
    :goto_2
    new-instance p4, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p5

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p4, p5, v0, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p4

    .line 395
    .end local v4    # "y":D
    .restart local p4    # "y":D
    :cond_5
    move-wide v4, p4

    .end local p4    # "y":D
    .restart local v4    # "y":D
    new-instance p4, Lorg/apache/commons/math3/exception/ZeroException;

    invoke-direct {p4}, Lorg/apache/commons/math3/exception/ZeroException;-><init>()V

    throw p4
.end method

.method private interpolateXAtY([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;IID)D
    .locals 11
    .param p1, "points"    # [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    .param p2, "startIdx"    # I
    .param p3, "idxStep"    # I
    .param p4, "y"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 357
    if-eqz p3, :cond_2

    .line 360
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;->getInterpolationPointsForY([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;IID)[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    move-result-object v0

    .line 362
    .local v0, "twoPoints":[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 363
    .local v1, "p1":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    .line 364
    .local v2, "p2":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    invoke-virtual {v1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v3

    cmpl-double v3, v3, p4

    if-nez v3, :cond_0

    .line 365
    invoke-virtual {v1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v3

    return-wide v3

    .line 367
    :cond_0
    invoke-virtual {v2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v3

    cmpl-double v3, v3, p4

    if-nez v3, :cond_1

    .line 368
    invoke-virtual {v2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v3

    return-wide v3

    .line 370
    :cond_1
    invoke-virtual {v1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v3

    invoke-virtual {v1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v5

    sub-double v5, p4, v5

    invoke-virtual {v2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v7

    invoke-virtual {v1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v9

    sub-double/2addr v7, v9

    mul-double/2addr v5, v7

    invoke-virtual {v2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v7

    invoke-virtual {v1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v9

    sub-double/2addr v7, v9

    div-double/2addr v5, v7

    add-double/2addr v3, v5

    return-wide v3

    .line 358
    .end local v0    # "twoPoints":[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    .end local v1    # "p1":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    .end local v2    # "p2":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/ZeroException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/ZeroException;-><init>()V

    throw v0
.end method

.method private isBetween(DDD)Z
    .locals 1
    .param p1, "value"    # D
    .param p3, "boundary1"    # D
    .param p5, "boundary2"    # D

    .line 432
    cmpl-double v0, p1, p3

    if-ltz v0, :cond_0

    cmpg-double v0, p1, p5

    if-lez v0, :cond_1

    :cond_0
    cmpl-double v0, p1, p5

    if-ltz v0, :cond_2

    cmpg-double v0, p1, p3

    if-gtz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private sortObservations(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/fitting/WeightedObservedPoint;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/fitting/WeightedObservedPoint;",
            ">;"
        }
    .end annotation

    .line 251
    .local p1, "unsorted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/fitting/WeightedObservedPoint;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 253
    .local v0, "observations":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/fitting/WeightedObservedPoint;>;"
    new-instance v1, Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser$1;

    invoke-direct {v1, p0}, Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser$1;-><init>(Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;)V

    .line 291
    .local v1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/fitting/WeightedObservedPoint;>;"
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 292
    return-object v0
.end method


# virtual methods
.method public guess()[D
    .locals 8

    .line 241
    iget-wide v0, p0, Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;->norm:D

    iget-wide v2, p0, Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;->mean:D

    iget-wide v4, p0, Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;->sigma:D

    const/4 v6, 0x3

    new-array v6, v6, [D

    const/4 v7, 0x0

    aput-wide v0, v6, v7

    const/4 v0, 0x1

    aput-wide v2, v6, v0

    const/4 v0, 0x2

    aput-wide v4, v6, v0

    return-object v6
.end method
