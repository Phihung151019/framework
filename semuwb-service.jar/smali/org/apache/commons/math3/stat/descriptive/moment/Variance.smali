.class public Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.source "Variance.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/math3/stat/descriptive/WeightedEvaluation;


# static fields
.field private static final serialVersionUID:J = -0x7e7431d0a4eb983aL


# instance fields
.field protected incMoment:Z

.field private isBiasCorrected:Z

.field protected moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    .line 91
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    .line 98
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 99
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V
    .locals 1
    .param p1, "m2"    # Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 111
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    .line 91
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    .line 113
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 114
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/Variance;)V
    .locals 1
    .param p1, "original"    # Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 151
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    .line 91
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    .line 152
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/Variance;Lorg/apache/commons/math3/stat/descriptive/moment/Variance;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isBiasCorrected"    # Z

    .line 124
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    .line 91
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    .line 125
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 126
    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    .line 127
    return-void
.end method

.method public constructor <init>(ZLorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V
    .locals 1
    .param p1, "isBiasCorrected"    # Z
    .param p2, "m2"    # Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 138
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    .line 91
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    .line 140
    iput-object p2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 141
    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    .line 142
    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/moment/Variance;Lorg/apache/commons/math3/stat/descriptive/moment/Variance;)V
    .locals 1
    .param p0, "source"    # Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    .param p1, "dest"    # Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 620
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 621
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 622
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->setData([D)V

    .line 623
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 624
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    iput-boolean v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    .line 625
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    iput-boolean v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    .line 626
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 205
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->clear()V

    .line 208
    :cond_0
    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    .locals 1

    .line 604
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    .line 606
    .local v0, "result":Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/Variance;Lorg/apache/commons/math3/stat/descriptive/moment/Variance;)V

    .line 607
    return-object v0
.end method

.method public evaluate([D)D
    .locals 3
    .param p1, "values"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 228
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 231
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DII)D

    move-result-wide v0

    return-wide v0

    .line 229
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public evaluate([DD)D
    .locals 6
    .param p1, "values"    # [D
    .param p2, "mean"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 457
    const/4 v4, 0x0

    array-length v5, p1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .end local p1    # "values":[D
    .end local p2    # "mean":D
    .local v1, "values":[D
    .local v2, "mean":D
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DDII)D

    move-result-wide p1

    return-wide p1
.end method

.method public evaluate([DDII)D
    .locals 18
    .param p1, "values"    # [D
    .param p2, "mean"    # D
    .param p4, "begin"    # I
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 406
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    .line 408
    .local v4, "var":D
    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->test([DII)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 409
    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    .line 410
    const-wide/16 v4, 0x0

    goto :goto_1

    .line 411
    :cond_0
    if-le v3, v6, :cond_3

    .line 412
    const-wide/16 v6, 0x0

    .line 413
    .local v6, "accum":D
    const-wide/16 v8, 0x0

    .line 414
    .local v8, "dev":D
    const-wide/16 v10, 0x0

    .line 415
    .local v10, "accum2":D
    move/from16 v12, p4

    .local v12, "i":I
    :goto_0
    add-int v13, v2, v3

    if-ge v12, v13, :cond_1

    .line 416
    aget-wide v13, v1, v12

    sub-double v8, v13, p2

    .line 417
    mul-double v13, v8, v8

    add-double/2addr v6, v13

    .line 418
    add-double/2addr v10, v8

    .line 415
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 420
    .end local v12    # "i":I
    :cond_1
    int-to-double v12, v3

    .line 421
    .local v12, "len":D
    iget-boolean v14, v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    if-eqz v14, :cond_2

    .line 422
    mul-double v14, v10, v10

    div-double/2addr v14, v12

    sub-double v14, v6, v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v16, v12, v16

    div-double v4, v14, v16

    goto :goto_1

    .line 424
    :cond_2
    mul-double v14, v10, v10

    div-double/2addr v14, v12

    sub-double v14, v6, v14

    div-double v4, v14, v12

    .line 428
    .end local v6    # "accum":D
    .end local v8    # "dev":D
    .end local v10    # "accum2":D
    .end local v12    # "len":D
    :cond_3
    :goto_1
    return-wide v4
.end method

.method public evaluate([DII)D
    .locals 9
    .param p1, "values"    # [D
    .param p2, "begin"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 259
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 261
    .local v0, "var":D
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->test([DII)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 262
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->clear()V

    .line 263
    const/4 v2, 0x1

    if-ne p3, v2, :cond_0

    .line 264
    const-wide/16 v0, 0x0

    move-object v4, p1

    move v7, p2

    move v8, p3

    goto :goto_0

    .line 265
    :cond_0
    if-le p3, v2, :cond_1

    .line 266
    new-instance v2, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v2}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    .line 267
    .local v2, "mean":Lorg/apache/commons/math3/stat/descriptive/moment/Mean;
    invoke-virtual {v2, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->evaluate([DII)D

    move-result-wide v5

    .line 268
    .local v5, "m":D
    move-object v3, p0

    move-object v4, p1

    move v7, p2

    move v8, p3

    .end local p1    # "values":[D
    .end local p2    # "begin":I
    .end local p3    # "length":I
    .local v4, "values":[D
    .local v7, "begin":I
    .local v8, "length":I
    invoke-virtual/range {v3 .. v8}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DDII)D

    move-result-wide v0

    goto :goto_0

    .line 265
    .end local v2    # "mean":Lorg/apache/commons/math3/stat/descriptive/moment/Mean;
    .end local v4    # "values":[D
    .end local v5    # "m":D
    .end local v7    # "begin":I
    .end local v8    # "length":I
    .restart local p1    # "values":[D
    .restart local p2    # "begin":I
    .restart local p3    # "length":I
    :cond_1
    move-object v4, p1

    move v7, p2

    move v8, p3

    .end local p1    # "values":[D
    .end local p2    # "begin":I
    .end local p3    # "length":I
    .restart local v4    # "values":[D
    .restart local v7    # "begin":I
    .restart local v8    # "length":I
    goto :goto_0

    .line 261
    .end local v4    # "values":[D
    .end local v7    # "begin":I
    .end local v8    # "length":I
    .restart local p1    # "values":[D
    .restart local p2    # "begin":I
    .restart local p3    # "length":I
    :cond_2
    move-object v4, p1

    move v7, p2

    move v8, p3

    .line 271
    .end local p1    # "values":[D
    .end local p2    # "begin":I
    .end local p3    # "length":I
    .restart local v4    # "values":[D
    .restart local v7    # "begin":I
    .restart local v8    # "length":I
    :goto_0
    return-wide v0
.end method

.method public evaluate([D[D)D
    .locals 2
    .param p1, "values"    # [D
    .param p2, "weights"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 374
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([D[DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public evaluate([D[DD)D
    .locals 7
    .param p1, "values"    # [D
    .param p2, "weights"    # [D
    .param p3, "mean"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 582
    const/4 v5, 0x0

    array-length v6, p1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .end local p1    # "values":[D
    .end local p2    # "weights":[D
    .end local p3    # "mean":D
    .local v1, "values":[D
    .local v2, "weights":[D
    .local v3, "mean":D
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([D[DDII)D

    move-result-wide p1

    return-wide p1
.end method

.method public evaluate([D[DDII)D
    .locals 19
    .param p1, "values"    # [D
    .param p2, "weights"    # [D
    .param p3, "mean"    # D
    .param p5, "begin"    # I
    .param p6, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 509
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    .line 511
    .local v5, "var":D
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->test([D[DII)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 512
    const/4 v7, 0x1

    if-ne v4, v7, :cond_0

    .line 513
    const-wide/16 v5, 0x0

    goto :goto_2

    .line 514
    :cond_0
    if-le v4, v7, :cond_4

    .line 515
    const-wide/16 v7, 0x0

    .line 516
    .local v7, "accum":D
    const-wide/16 v9, 0x0

    .line 517
    .local v9, "dev":D
    const-wide/16 v11, 0x0

    .line 518
    .local v11, "accum2":D
    move/from16 v13, p5

    .local v13, "i":I
    :goto_0
    add-int v14, v3, v4

    if-ge v13, v14, :cond_1

    .line 519
    aget-wide v14, v1, v13

    sub-double v9, v14, p3

    .line 520
    aget-wide v14, v2, v13

    mul-double v16, v9, v9

    mul-double v14, v14, v16

    add-double/2addr v7, v14

    .line 521
    aget-wide v14, v2, v13

    mul-double/2addr v14, v9

    add-double/2addr v11, v14

    .line 518
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 524
    .end local v13    # "i":I
    :cond_1
    const-wide/16 v13, 0x0

    .line 525
    .local v13, "sumWts":D
    move/from16 v15, p5

    .local v15, "i":I
    :goto_1
    add-int v1, v3, v4

    if-ge v15, v1, :cond_2

    .line 526
    aget-wide v16, v2, v15

    add-double v13, v13, v16

    .line 525
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    goto :goto_1

    .line 529
    .end local v15    # "i":I
    :cond_2
    iget-boolean v1, v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    if-eqz v1, :cond_3

    .line 530
    mul-double v15, v11, v11

    div-double/2addr v15, v13

    sub-double v15, v7, v15

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    sub-double v17, v13, v17

    div-double v5, v15, v17

    goto :goto_2

    .line 532
    :cond_3
    mul-double v15, v11, v11

    div-double/2addr v15, v13

    sub-double v15, v7, v15

    div-double v5, v15, v13

    .line 536
    .end local v7    # "accum":D
    .end local v9    # "dev":D
    .end local v11    # "accum2":D
    .end local v13    # "sumWts":D
    :cond_4
    :goto_2
    return-wide v5
.end method

.method public evaluate([D[DII)D
    .locals 10
    .param p1, "values"    # [D
    .param p2, "weights"    # [D
    .param p3, "begin"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 319
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 321
    .local v0, "var":D
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->test([D[DII)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 322
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->clear()V

    .line 323
    const/4 v2, 0x1

    if-ne p4, v2, :cond_0

    .line 324
    const-wide/16 v0, 0x0

    move-object v4, p1

    move-object v5, p2

    move v8, p3

    move v9, p4

    goto :goto_0

    .line 325
    :cond_0
    if-le p4, v2, :cond_1

    .line 326
    new-instance v2, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v2}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    .line 327
    .local v2, "mean":Lorg/apache/commons/math3/stat/descriptive/moment/Mean;
    invoke-virtual {v2, p1, p2, p3, p4}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->evaluate([D[DII)D

    move-result-wide v6

    .line 328
    .local v6, "m":D
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v8, p3

    move v9, p4

    .end local p1    # "values":[D
    .end local p2    # "weights":[D
    .end local p3    # "begin":I
    .end local p4    # "length":I
    .local v4, "values":[D
    .local v5, "weights":[D
    .local v8, "begin":I
    .local v9, "length":I
    invoke-virtual/range {v3 .. v9}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([D[DDII)D

    move-result-wide v0

    goto :goto_0

    .line 325
    .end local v2    # "mean":Lorg/apache/commons/math3/stat/descriptive/moment/Mean;
    .end local v4    # "values":[D
    .end local v5    # "weights":[D
    .end local v6    # "m":D
    .end local v8    # "begin":I
    .end local v9    # "length":I
    .restart local p1    # "values":[D
    .restart local p2    # "weights":[D
    .restart local p3    # "begin":I
    .restart local p4    # "length":I
    :cond_1
    move-object v4, p1

    move-object v5, p2

    move v8, p3

    move v9, p4

    .end local p1    # "values":[D
    .end local p2    # "weights":[D
    .end local p3    # "begin":I
    .end local p4    # "length":I
    .restart local v4    # "values":[D
    .restart local v5    # "weights":[D
    .restart local v8    # "begin":I
    .restart local v9    # "length":I
    goto :goto_0

    .line 321
    .end local v4    # "values":[D
    .end local v5    # "weights":[D
    .end local v8    # "begin":I
    .end local v9    # "length":I
    .restart local p1    # "values":[D
    .restart local p2    # "weights":[D
    .restart local p3    # "begin":I
    .restart local p4    # "length":I
    :cond_2
    move-object v4, p1

    move-object v5, p2

    move v8, p3

    move v9, p4

    .line 331
    .end local p1    # "values":[D
    .end local p2    # "weights":[D
    .end local p3    # "begin":I
    .end local p4    # "length":I
    .restart local v4    # "values":[D
    .restart local v5    # "weights":[D
    .restart local v8    # "begin":I
    .restart local v9    # "length":I
    :goto_0
    return-wide v0
.end method

.method public getN()J
    .locals 2

    .line 197
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->getN()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResult()D
    .locals 6

    .line 180
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 181
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 182
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->n:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 183
    const-wide/16 v0, 0x0

    return-wide v0

    .line 185
    :cond_1
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    iget-wide v2, v2, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->n:J

    long-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    return-wide v0

    .line 188
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    iget-wide v2, v2, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->n:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public increment(D)V
    .locals 1
    .param p1, "d"    # D

    .line 170
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->increment(D)V

    .line 173
    :cond_0
    return-void
.end method

.method public isBiasCorrected()Z
    .locals 1

    .line 589
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    return v0
.end method

.method public setBiasCorrected(Z)V
    .locals 0
    .param p1, "biasCorrected"    # Z

    .line 596
    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    .line 597
    return-void
.end method
