.class public Lorg/apache/commons/math3/stat/inference/BinomialTest;
.super Ljava/lang/Object;
.source "BinomialTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    return-void
.end method


# virtual methods
.method public binomialTest(IIDLorg/apache/commons/math3/stat/inference/AlternativeHypothesis;)D
    .locals 16
    .param p1, "numberOfTrials"    # I
    .param p2, "numberOfSuccesses"    # I
    .param p3, "probability"    # D
    .param p5, "alternativeHypothesis"    # Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;

    .line 104
    move/from16 v0, p1

    move/from16 v1, p2

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    if-ltz v0, :cond_8

    .line 107
    if-ltz v1, :cond_7

    .line 110
    const-wide/16 v5, 0x0

    cmpg-double v5, v2, v5

    if-ltz v5, :cond_6

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v2, v5

    if-gtz v7, :cond_6

    .line 113
    if-lt v0, v1, :cond_5

    .line 118
    if-eqz v4, :cond_4

    .line 123
    new-instance v7, Lorg/apache/commons/math3/distribution/BinomialDistribution;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v0, v2, v3}, Lorg/apache/commons/math3/distribution/BinomialDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;ID)V

    .line 124
    .local v7, "distribution":Lorg/apache/commons/math3/distribution/BinomialDistribution;
    sget-object v8, Lorg/apache/commons/math3/stat/inference/BinomialTest$1;->$SwitchMap$org$apache$commons$math3$stat$inference$AlternativeHypothesis:[I

    invoke-virtual {v4}, Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 156
    new-instance v5, Lorg/apache/commons/math3/exception/MathInternalError;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_RANGE_SIMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    sget-object v8, Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;->TWO_SIDED:Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;

    sget-object v9, Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;->LESS_THAN:Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;

    filled-new-array {v4, v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v5

    .line 130
    :pswitch_0
    const/4 v5, 0x0

    .line 131
    .local v5, "criticalValueLow":I
    move/from16 v6, p1

    .line 132
    .local v6, "criticalValueHigh":I
    const-wide/16 v8, 0x0

    .line 135
    .local v8, "pTotal":D
    :goto_0
    invoke-virtual {v7, v5}, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probability(I)D

    move-result-wide v10

    .line 136
    .local v10, "pLow":D
    invoke-virtual {v7, v6}, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probability(I)D

    move-result-wide v12

    .line 138
    .local v12, "pHigh":D
    cmpl-double v14, v10, v12

    if-nez v14, :cond_0

    .line 139
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v14, v10

    add-double/2addr v8, v14

    .line 140
    add-int/lit8 v5, v5, 0x1

    .line 141
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 142
    :cond_0
    cmpg-double v14, v10, v12

    if-gez v14, :cond_1

    .line 143
    add-double/2addr v8, v10

    .line 144
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 146
    :cond_1
    add-double/2addr v8, v12

    .line 147
    add-int/lit8 v6, v6, -0x1

    .line 150
    :goto_1
    if-gt v5, v1, :cond_3

    if-ge v6, v1, :cond_2

    .line 151
    goto :goto_2

    .line 153
    .end local v10    # "pLow":D
    .end local v12    # "pHigh":D
    :cond_2
    goto :goto_0

    .line 154
    :cond_3
    :goto_2
    return-wide v8

    .line 128
    .end local v5    # "criticalValueLow":I
    .end local v6    # "criticalValueHigh":I
    .end local v8    # "pTotal":D
    :pswitch_1
    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/distribution/BinomialDistribution;->cumulativeProbability(I)D

    move-result-wide v5

    return-wide v5

    .line 126
    :pswitch_2
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/distribution/BinomialDistribution;->cumulativeProbability(I)D

    move-result-wide v8

    sub-double/2addr v5, v8

    return-wide v5

    .line 119
    .end local v7    # "distribution":Lorg/apache/commons/math3/distribution/BinomialDistribution;
    :cond_4
    new-instance v5, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v5}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v5

    .line 114
    :cond_5
    new-instance v5, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BINOMIAL_INVALID_PARAMETERS_ORDER:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v5

    .line 111
    :cond_6
    new-instance v5, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v5

    .line 108
    :cond_7
    new-instance v5, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v5

    .line 105
    :cond_8
    new-instance v5, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public binomialTest(IIDLorg/apache/commons/math3/stat/inference/AlternativeHypothesis;D)Z
    .locals 3
    .param p1, "numberOfTrials"    # I
    .param p2, "numberOfSuccesses"    # I
    .param p3, "probability"    # D
    .param p5, "alternativeHypothesis"    # Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;
    .param p6, "alpha"    # D

    .line 63
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/stat/inference/BinomialTest;->binomialTest(IIDLorg/apache/commons/math3/stat/inference/AlternativeHypothesis;)D

    move-result-wide v0

    .line 64
    .local v0, "pValue":D
    cmpg-double v2, v0, p6

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
