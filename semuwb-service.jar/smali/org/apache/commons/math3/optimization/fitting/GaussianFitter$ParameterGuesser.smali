.class public Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;
.super Ljava/lang/Object;
.source "GaussianFitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optimization/fitting/GaussianFitter;
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
.method public constructor <init>([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;)V
    .locals 6
    .param p1, "observations"    # [Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 153
    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-lt v1, v3, :cond_0

    .line 157
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->sortObservations([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;)[Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    move-result-object v1

    .line 158
    .local v1, "sorted":[Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->basicGuess([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;)[D

    move-result-object v3

    .line 160
    .local v3, "params":[D
    aget-wide v4, v3, v0

    iput-wide v4, p0, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->norm:D

    .line 161
    aget-wide v4, v3, v2

    iput-wide v4, p0, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->mean:D

    .line 162
    const/4 v0, 0x2

    aget-wide v4, v3, v0

    iput-wide v4, p0, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->sigma:D

    .line 163
    return-void

    .line 154
    .end local v1    # "sorted":[Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    .end local v3    # "params":[D
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 151
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method private basicGuess([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;)[D
    .locals 19
    .param p1, "points"    # [Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    .line 238
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->findMaxY([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;)I

    move-result v3

    .line 239
    .local v3, "maxYIdx":I
    aget-object v0, p1, v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v7

    .line 240
    .local v7, "n":D
    aget-object v0, p1, v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v9

    .line 244
    .local v9, "m":D
    sub-double v0, v9, v7

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v11

    add-double v5, v7, v0

    .line 245
    .local v5, "halfY":D
    const/4 v4, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->interpolateXAtY([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;IID)D

    move-result-wide v15

    .line 246
    .local v15, "fwhmX1":D
    const/4 v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->interpolateXAtY([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;IID)D

    move-result-wide v17
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/OutOfRangeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .local v17, "fwhmX2":D
    sub-double v17, v17, v15

    .line 251
    .end local v5    # "halfY":D
    .end local v15    # "fwhmX1":D
    .local v17, "fwhmApprox":D
    goto :goto_0

    .line 248
    .end local v17    # "fwhmApprox":D
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Lorg/apache/commons/math3/exception/OutOfRangeException;
    array-length v1, v2

    sub-int/2addr v1, v14

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v4

    aget-object v1, v2, v13

    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v15

    sub-double v17, v4, v15

    .line 252
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

    .line 254
    .local v0, "s":D
    const/4 v4, 0x3

    new-array v4, v4, [D

    aput-wide v7, v4, v13

    aput-wide v9, v4, v14

    const/4 v5, 0x2

    aput-wide v0, v4, v5

    return-object v4
.end method

.method private findMaxY([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;)I
    .locals 6
    .param p1, "points"    # [Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "maxYIdx":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 266
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v2

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 267
    move v0, v1

    .line 265
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private getInterpolationPointsForY([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;IID)[Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    .locals 10
    .param p1, "points"    # [Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    .param p2, "startIdx"    # I
    .param p3, "idxStep"    # I
    .param p4, "y"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 329
    if-eqz p3, :cond_5

    .line 332
    move v0, p2

    .line 333
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

    .line 335
    :goto_1
    aget-object v1, p1, v0

    .line 336
    .local v1, "p1":Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    add-int v2, v0, p3

    aget-object v2, p1, v2

    .line 337
    .local v2, "p2":Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v6

    invoke-virtual {v2}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v8

    move-object v3, p0

    move-wide v4, p4

    .end local p4    # "y":D
    .local v4, "y":D
    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->isBetween(DDD)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 338
    const/4 p4, 0x1

    const/4 p5, 0x0

    const/4 v3, 0x2

    if-gez p3, :cond_2

    .line 339
    new-array v3, v3, [Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    aput-object v2, v3, p5

    aput-object v1, v3, p4

    return-object v3

    .line 341
    :cond_2
    new-array v3, v3, [Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    aput-object v1, v3, p5

    aput-object v2, v3, p4

    return-object v3

    .line 334
    .end local v1    # "p1":Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    .end local v2    # "p2":Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    :cond_3
    add-int/2addr v0, p3

    move-wide p4, v4

    goto :goto_0

    .line 333
    .end local v4    # "y":D
    .restart local p4    # "y":D
    :cond_4
    move-wide v4, p4

    .line 349
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

    .line 330
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

.method private interpolateXAtY([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;IID)D
    .locals 11
    .param p1, "points"    # [Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    .param p2, "startIdx"    # I
    .param p3, "idxStep"    # I
    .param p4, "y"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 292
    if-eqz p3, :cond_2

    .line 295
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->getInterpolationPointsForY([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;IID)[Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    move-result-object v0

    .line 297
    .local v0, "twoPoints":[Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 298
    .local v1, "p1":Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    .line 299
    .local v2, "p2":Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v3

    cmpl-double v3, v3, p4

    if-nez v3, :cond_0

    .line 300
    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v3

    return-wide v3

    .line 302
    :cond_0
    invoke-virtual {v2}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v3

    cmpl-double v3, v3, p4

    if-nez v3, :cond_1

    .line 303
    invoke-virtual {v2}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v3

    return-wide v3

    .line 305
    :cond_1
    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v3

    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v5

    sub-double v5, p4, v5

    invoke-virtual {v2}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v7

    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v9

    sub-double/2addr v7, v9

    mul-double/2addr v5, v7

    invoke-virtual {v2}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v7

    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v9

    sub-double/2addr v7, v9

    div-double/2addr v5, v7

    add-double/2addr v3, v5

    return-wide v3

    .line 293
    .end local v0    # "twoPoints":[Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    .end local v1    # "p1":Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    .end local v2    # "p2":Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
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

    .line 367
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

.method private sortObservations([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;)[Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    .locals 2
    .param p1, "unsorted"    # [Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    .line 186
    invoke-virtual {p1}, [Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    .line 187
    .local v0, "observations":[Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    new-instance v1, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser$1;

    invoke-direct {v1, p0}, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser$1;-><init>(Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;)V

    .line 226
    .local v1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;>;"
    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 227
    return-object v0
.end method


# virtual methods
.method public guess()[D
    .locals 8

    .line 176
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->norm:D

    iget-wide v2, p0, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->mean:D

    iget-wide v4, p0, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->sigma:D

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
