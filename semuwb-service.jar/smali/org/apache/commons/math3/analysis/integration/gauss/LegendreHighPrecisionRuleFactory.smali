.class public Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;
.super Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;
.source "LegendreHighPrecisionRuleFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory<",
        "Ljava/math/BigDecimal;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Ljava/math/MathContext;

.field private final minusOne:Ljava/math/BigDecimal;

.field private final oneHalf:Ljava/math/BigDecimal;

.field private final two:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    sget-object v0, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;-><init>(Ljava/math/MathContext;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/math/MathContext;)V
    .locals 2
    .param p1, "mContext"    # Ljava/math/MathContext;

    .line 55
    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    .line 57
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "2"

    invoke-direct {v0, v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->two:Ljava/math/BigDecimal;

    .line 58
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "-1"

    invoke-direct {v0, v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->minusOne:Ljava/math/BigDecimal;

    .line 59
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "0.5"

    invoke-direct {v0, v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->oneHalf:Ljava/math/BigDecimal;

    .line 60
    return-void
.end method


# virtual methods
.method protected computeRule(I)Lorg/apache/commons/math3/util/Pair;
    .locals 29
    .param p1, "numberOfPoints"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/util/Pair<",
            "[",
            "Ljava/math/BigDecimal;",
            "[",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 67
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 69
    new-instance v4, Lorg/apache/commons/math3/util/Pair;

    new-array v5, v3, [Ljava/math/BigDecimal;

    sget-object v6, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    aput-object v6, v5, v2

    new-array v3, v3, [Ljava/math/BigDecimal;

    iget-object v6, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->two:Ljava/math/BigDecimal;

    aput-object v6, v3, v2

    invoke-direct {v4, v5, v3}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    .line 76
    :cond_0
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->getRuleInternal(I)Lorg/apache/commons/math3/util/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/math/BigDecimal;

    .line 79
    .local v4, "previousPoints":[Ljava/math/BigDecimal;
    new-array v5, v1, [Ljava/math/BigDecimal;

    .line 80
    .local v5, "points":[Ljava/math/BigDecimal;
    new-array v6, v1, [Ljava/math/BigDecimal;

    .line 83
    .local v6, "weights":[Ljava/math/BigDecimal;
    div-int/lit8 v7, v1, 0x2

    .line 84
    .local v7, "iMax":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_9

    .line 86
    if-nez v8, :cond_1

    iget-object v10, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->minusOne:Ljava/math/BigDecimal;

    goto :goto_1

    :cond_1
    add-int/lit8 v10, v8, -0x1

    aget-object v10, v4, v10

    .line 88
    .local v10, "a":Ljava/math/BigDecimal;
    :goto_1
    if-ne v7, v3, :cond_2

    sget-object v11, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    goto :goto_2

    :cond_2
    aget-object v11, v4, v8

    .line 90
    .local v11, "b":Ljava/math/BigDecimal;
    :goto_2
    sget-object v12, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 92
    .local v12, "pma":Ljava/math/BigDecimal;
    move-object v13, v10

    .line 94
    .local v13, "pa":Ljava/math/BigDecimal;
    sget-object v14, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 96
    .local v14, "pmb":Ljava/math/BigDecimal;
    move-object v15, v11

    .line 97
    .local v15, "pb":Ljava/math/BigDecimal;
    const/16 v16, 0x1

    move/from16 v2, v16

    .local v2, "j":I
    :goto_3
    if-ge v2, v1, :cond_3

    .line 98
    move/from16 v17, v3

    new-instance v3, Ljava/math/BigDecimal;

    mul-int/lit8 v18, v2, 0x2

    add-int/lit8 v9, v18, 0x1

    move-object/from16 v18, v4

    .end local v4    # "previousPoints":[Ljava/math/BigDecimal;
    .local v18, "previousPoints":[Ljava/math/BigDecimal;
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-direct {v3, v9, v4}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    .line 99
    .local v3, "b_two_j_p_1":Ljava/math/BigDecimal;
    new-instance v4, Ljava/math/BigDecimal;

    iget-object v9, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-direct {v4, v2, v9}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    .line 100
    .local v4, "b_j":Ljava/math/BigDecimal;
    new-instance v9, Ljava/math/BigDecimal;

    move/from16 v19, v2

    .end local v2    # "j":I
    .local v19, "j":I
    add-int/lit8 v2, v19, 0x1

    move/from16 v20, v7

    .end local v7    # "iMax":I
    .local v20, "iMax":I
    iget-object v7, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-direct {v9, v2, v7}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    .line 105
    .local v9, "b_j_p_1":Ljava/math/BigDecimal;
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v10, v3, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 106
    .local v2, "tmp1":Ljava/math/BigDecimal;
    iget-object v7, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v13, v2, v7}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 107
    iget-object v7, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v12, v4, v7}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    .line 109
    .local v7, "tmp2":Ljava/math/BigDecimal;
    move/from16 v21, v8

    .end local v8    # "i":I
    .local v21, "i":I
    iget-object v8, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v2, v7, v8}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v8

    .line 110
    .local v8, "ppa":Ljava/math/BigDecimal;
    move-object/from16 v22, v2

    .end local v2    # "tmp1":Ljava/math/BigDecimal;
    .local v22, "tmp1":Ljava/math/BigDecimal;
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v8, v9, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 115
    .end local v8    # "ppa":Ljava/math/BigDecimal;
    .local v2, "ppa":Ljava/math/BigDecimal;
    iget-object v8, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v11, v3, v8}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v8

    .line 116
    .end local v22    # "tmp1":Ljava/math/BigDecimal;
    .local v8, "tmp1":Ljava/math/BigDecimal;
    move-object/from16 v22, v2

    .end local v2    # "ppa":Ljava/math/BigDecimal;
    .local v22, "ppa":Ljava/math/BigDecimal;
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v15, v8, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 117
    .end local v8    # "tmp1":Ljava/math/BigDecimal;
    .local v2, "tmp1":Ljava/math/BigDecimal;
    iget-object v8, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v14, v4, v8}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    .line 119
    iget-object v8, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v2, v7, v8}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v8

    .line 120
    .local v8, "ppb":Ljava/math/BigDecimal;
    move-object/from16 v23, v2

    .end local v2    # "tmp1":Ljava/math/BigDecimal;
    .local v23, "tmp1":Ljava/math/BigDecimal;
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v8, v9, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 122
    .end local v8    # "ppb":Ljava/math/BigDecimal;
    .local v2, "ppb":Ljava/math/BigDecimal;
    move-object v12, v13

    .line 123
    move-object/from16 v13, v22

    .line 124
    move-object v14, v15

    .line 125
    move-object v15, v2

    .line 97
    .end local v2    # "ppb":Ljava/math/BigDecimal;
    .end local v3    # "b_two_j_p_1":Ljava/math/BigDecimal;
    .end local v4    # "b_j":Ljava/math/BigDecimal;
    .end local v7    # "tmp2":Ljava/math/BigDecimal;
    .end local v9    # "b_j_p_1":Ljava/math/BigDecimal;
    .end local v22    # "ppa":Ljava/math/BigDecimal;
    .end local v23    # "tmp1":Ljava/math/BigDecimal;
    add-int/lit8 v2, v19, 0x1

    move/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v7, v20

    move/from16 v8, v21

    .end local v19    # "j":I
    .local v2, "j":I
    goto :goto_3

    .end local v18    # "previousPoints":[Ljava/math/BigDecimal;
    .end local v20    # "iMax":I
    .end local v21    # "i":I
    .local v4, "previousPoints":[Ljava/math/BigDecimal;
    .local v7, "iMax":I
    .local v8, "i":I
    :cond_3
    move/from16 v19, v2

    move/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v20, v7

    move/from16 v21, v8

    .line 129
    .end local v2    # "j":I
    .end local v4    # "previousPoints":[Ljava/math/BigDecimal;
    .end local v7    # "iMax":I
    .end local v8    # "i":I
    .restart local v18    # "previousPoints":[Ljava/math/BigDecimal;
    .restart local v20    # "iMax":I
    .restart local v21    # "i":I
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v10, v11, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->oneHalf:Ljava/math/BigDecimal;

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v2, v3, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 131
    .local v2, "c":Ljava/math/BigDecimal;
    sget-object v3, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 133
    .local v3, "pmc":Ljava/math/BigDecimal;
    move-object v4, v2

    .line 134
    .local v4, "pc":Ljava/math/BigDecimal;
    const/4 v7, 0x0

    .line 135
    .local v7, "done":Z
    :goto_4
    if-nez v7, :cond_8

    .line 136
    iget-object v8, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v11, v10, v8}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v8

    .line 137
    .local v8, "tmp1":Ljava/math/BigDecimal;
    invoke-virtual {v2}, Ljava/math/BigDecimal;->ulp()Ljava/math/BigDecimal;

    move-result-object v9

    move/from16 v19, v7

    .end local v7    # "done":Z
    .local v19, "done":Z
    sget-object v7, Ljava/math/BigDecimal;->TEN:Ljava/math/BigDecimal;

    move-object/from16 v22, v10

    .end local v10    # "a":Ljava/math/BigDecimal;
    .local v22, "a":Ljava/math/BigDecimal;
    iget-object v10, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v9, v7, v10}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    .line 138
    .local v7, "tmp2":Ljava/math/BigDecimal;
    invoke-virtual {v8, v7}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v9

    if-gtz v9, :cond_4

    move/from16 v9, v17

    goto :goto_5

    :cond_4
    const/4 v9, 0x0

    .line 139
    .end local v19    # "done":Z
    .local v9, "done":Z
    :goto_5
    sget-object v3, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 140
    move-object v4, v2

    .line 141
    const/4 v10, 0x1

    .local v10, "j":I
    :goto_6
    if-ge v10, v1, :cond_5

    .line 142
    move-object/from16 v19, v7

    .end local v7    # "tmp2":Ljava/math/BigDecimal;
    .local v19, "tmp2":Ljava/math/BigDecimal;
    new-instance v7, Ljava/math/BigDecimal;

    mul-int/lit8 v23, v10, 0x2

    move-object/from16 v24, v8

    .end local v8    # "tmp1":Ljava/math/BigDecimal;
    .local v24, "tmp1":Ljava/math/BigDecimal;
    add-int/lit8 v8, v23, 0x1

    move/from16 v23, v9

    .end local v9    # "done":Z
    .local v23, "done":Z
    iget-object v9, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-direct {v7, v8, v9}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    .line 143
    .local v7, "b_two_j_p_1":Ljava/math/BigDecimal;
    new-instance v8, Ljava/math/BigDecimal;

    iget-object v9, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-direct {v8, v10, v9}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    .line 144
    .local v8, "b_j":Ljava/math/BigDecimal;
    new-instance v9, Ljava/math/BigDecimal;

    move/from16 v25, v10

    .end local v10    # "j":I
    .local v25, "j":I
    add-int/lit8 v10, v25, 0x1

    move-object/from16 v26, v11

    .end local v11    # "b":Ljava/math/BigDecimal;
    .local v26, "b":Ljava/math/BigDecimal;
    iget-object v11, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-direct {v9, v10, v11}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    .line 147
    .local v9, "b_j_p_1":Ljava/math/BigDecimal;
    iget-object v10, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v2, v7, v10}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v10

    .line 148
    .end local v24    # "tmp1":Ljava/math/BigDecimal;
    .local v10, "tmp1":Ljava/math/BigDecimal;
    iget-object v11, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v4, v10, v11}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v10

    .line 149
    iget-object v11, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v3, v8, v11}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v11

    .line 151
    .end local v19    # "tmp2":Ljava/math/BigDecimal;
    .local v11, "tmp2":Ljava/math/BigDecimal;
    move-object/from16 v27, v3

    .end local v3    # "pmc":Ljava/math/BigDecimal;
    .local v27, "pmc":Ljava/math/BigDecimal;
    iget-object v3, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v10, v11, v3}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 152
    .local v3, "ppc":Ljava/math/BigDecimal;
    move-object/from16 v28, v4

    .end local v4    # "pc":Ljava/math/BigDecimal;
    .local v28, "pc":Ljava/math/BigDecimal;
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v3, v9, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 154
    move-object/from16 v4, v28

    .line 155
    .end local v27    # "pmc":Ljava/math/BigDecimal;
    .local v4, "pmc":Ljava/math/BigDecimal;
    nop

    .line 141
    .end local v7    # "b_two_j_p_1":Ljava/math/BigDecimal;
    .end local v8    # "b_j":Ljava/math/BigDecimal;
    .end local v9    # "b_j_p_1":Ljava/math/BigDecimal;
    .end local v28    # "pc":Ljava/math/BigDecimal;
    .local v3, "pc":Ljava/math/BigDecimal;
    add-int/lit8 v7, v25, 0x1

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    move-object v8, v10

    move/from16 v9, v23

    move v10, v7

    move-object v7, v11

    move-object/from16 v11, v26

    .end local v25    # "j":I
    .local v7, "j":I
    goto :goto_6

    .end local v23    # "done":Z
    .end local v26    # "b":Ljava/math/BigDecimal;
    .local v3, "pmc":Ljava/math/BigDecimal;
    .local v4, "pc":Ljava/math/BigDecimal;
    .local v7, "tmp2":Ljava/math/BigDecimal;
    .local v8, "tmp1":Ljava/math/BigDecimal;
    .local v9, "done":Z
    .local v10, "j":I
    .local v11, "b":Ljava/math/BigDecimal;
    :cond_5
    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v19, v7

    move-object/from16 v24, v8

    move/from16 v23, v9

    move/from16 v25, v10

    move-object/from16 v26, v11

    .line 158
    .end local v3    # "pmc":Ljava/math/BigDecimal;
    .end local v4    # "pc":Ljava/math/BigDecimal;
    .end local v7    # "tmp2":Ljava/math/BigDecimal;
    .end local v8    # "tmp1":Ljava/math/BigDecimal;
    .end local v9    # "done":Z
    .end local v10    # "j":I
    .end local v11    # "b":Ljava/math/BigDecimal;
    .restart local v19    # "tmp2":Ljava/math/BigDecimal;
    .restart local v23    # "done":Z
    .restart local v24    # "tmp1":Ljava/math/BigDecimal;
    .restart local v26    # "b":Ljava/math/BigDecimal;
    .restart local v27    # "pmc":Ljava/math/BigDecimal;
    .restart local v28    # "pc":Ljava/math/BigDecimal;
    if-nez v23, :cond_7

    .line 159
    invoke-virtual {v13}, Ljava/math/BigDecimal;->signum()I

    move-result v3

    invoke-virtual/range {v28 .. v28}, Ljava/math/BigDecimal;->signum()I

    move-result v4

    mul-int/2addr v3, v4

    if-gtz v3, :cond_6

    .line 160
    move-object v11, v2

    .line 161
    .end local v26    # "b":Ljava/math/BigDecimal;
    .restart local v11    # "b":Ljava/math/BigDecimal;
    move-object/from16 v14, v27

    .line 162
    move-object/from16 v15, v28

    move-object/from16 v10, v22

    goto :goto_7

    .line 164
    .end local v11    # "b":Ljava/math/BigDecimal;
    .restart local v26    # "b":Ljava/math/BigDecimal;
    :cond_6
    move-object v10, v2

    .line 165
    .end local v22    # "a":Ljava/math/BigDecimal;
    .local v10, "a":Ljava/math/BigDecimal;
    move-object/from16 v12, v27

    .line 166
    move-object/from16 v13, v28

    move-object/from16 v11, v26

    .line 168
    .end local v26    # "b":Ljava/math/BigDecimal;
    .restart local v11    # "b":Ljava/math/BigDecimal;
    :goto_7
    iget-object v3, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v10, v11, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v3

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->oneHalf:Ljava/math/BigDecimal;

    iget-object v7, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v3, v4, v7}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_8

    .line 158
    .end local v10    # "a":Ljava/math/BigDecimal;
    .end local v11    # "b":Ljava/math/BigDecimal;
    .restart local v22    # "a":Ljava/math/BigDecimal;
    .restart local v26    # "b":Ljava/math/BigDecimal;
    :cond_7
    move-object/from16 v10, v22

    move-object/from16 v11, v26

    .line 170
    .end local v19    # "tmp2":Ljava/math/BigDecimal;
    .end local v22    # "a":Ljava/math/BigDecimal;
    .end local v24    # "tmp1":Ljava/math/BigDecimal;
    .end local v26    # "b":Ljava/math/BigDecimal;
    .restart local v10    # "a":Ljava/math/BigDecimal;
    .restart local v11    # "b":Ljava/math/BigDecimal;
    :goto_8
    move/from16 v7, v23

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    goto/16 :goto_4

    .line 171
    .end local v23    # "done":Z
    .end local v27    # "pmc":Ljava/math/BigDecimal;
    .end local v28    # "pc":Ljava/math/BigDecimal;
    .restart local v3    # "pmc":Ljava/math/BigDecimal;
    .restart local v4    # "pc":Ljava/math/BigDecimal;
    .local v7, "done":Z
    :cond_8
    move/from16 v19, v7

    move-object/from16 v22, v10

    move-object/from16 v26, v11

    .end local v7    # "done":Z
    .end local v10    # "a":Ljava/math/BigDecimal;
    .end local v11    # "b":Ljava/math/BigDecimal;
    .local v19, "done":Z
    .restart local v22    # "a":Ljava/math/BigDecimal;
    .restart local v26    # "b":Ljava/math/BigDecimal;
    new-instance v7, Ljava/math/BigDecimal;

    iget-object v8, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-direct {v7, v1, v8}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    .line 172
    .local v7, "nP":Ljava/math/BigDecimal;
    iget-object v8, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v2, v4, v8}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v8

    iget-object v9, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v3, v8, v9}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v8

    .line 173
    .restart local v8    # "tmp1":Ljava/math/BigDecimal;
    invoke-virtual {v8, v7}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v8

    .line 174
    iget-object v9, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    const/4 v10, 0x2

    invoke-virtual {v8, v10, v9}, Ljava/math/BigDecimal;->pow(ILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v8

    .line 175
    iget-object v9, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v2, v10, v9}, Ljava/math/BigDecimal;->pow(ILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v9

    .line 176
    .local v9, "tmp2":Ljava/math/BigDecimal;
    sget-object v10, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    iget-object v11, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v10, v9, v11}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v9

    .line 177
    iget-object v10, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->two:Ljava/math/BigDecimal;

    iget-object v11, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v9, v10, v11}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v9

    .line 178
    iget-object v10, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v9, v8, v10}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v9

    .line 180
    aput-object v2, v5, v21

    .line 181
    aput-object v9, v6, v21

    .line 183
    sub-int v10, v1, v21

    add-int/lit8 v10, v10, -0x1

    .line 184
    .local v10, "idx":I
    iget-object v11, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v2, v11}, Ljava/math/BigDecimal;->negate(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v11

    aput-object v11, v5, v10

    .line 185
    aput-object v9, v6, v10

    .line 84
    .end local v2    # "c":Ljava/math/BigDecimal;
    .end local v3    # "pmc":Ljava/math/BigDecimal;
    .end local v4    # "pc":Ljava/math/BigDecimal;
    .end local v7    # "nP":Ljava/math/BigDecimal;
    .end local v8    # "tmp1":Ljava/math/BigDecimal;
    .end local v9    # "tmp2":Ljava/math/BigDecimal;
    .end local v10    # "idx":I
    .end local v12    # "pma":Ljava/math/BigDecimal;
    .end local v13    # "pa":Ljava/math/BigDecimal;
    .end local v14    # "pmb":Ljava/math/BigDecimal;
    .end local v15    # "pb":Ljava/math/BigDecimal;
    .end local v19    # "done":Z
    .end local v22    # "a":Ljava/math/BigDecimal;
    .end local v26    # "b":Ljava/math/BigDecimal;
    add-int/lit8 v8, v21, 0x1

    move/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v7, v20

    const/4 v2, 0x0

    .end local v21    # "i":I
    .local v8, "i":I
    goto/16 :goto_0

    .end local v18    # "previousPoints":[Ljava/math/BigDecimal;
    .end local v20    # "iMax":I
    .local v4, "previousPoints":[Ljava/math/BigDecimal;
    .local v7, "iMax":I
    :cond_9
    move-object/from16 v18, v4

    move/from16 v20, v7

    move/from16 v21, v8

    .line 191
    .end local v4    # "previousPoints":[Ljava/math/BigDecimal;
    .end local v7    # "iMax":I
    .end local v8    # "i":I
    .restart local v18    # "previousPoints":[Ljava/math/BigDecimal;
    .restart local v20    # "iMax":I
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_b

    .line 192
    sget-object v2, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 193
    .local v2, "pmc":Ljava/math/BigDecimal;
    const/4 v3, 0x1

    .local v3, "j":I
    :goto_9
    if-ge v3, v1, :cond_a

    .line 194
    new-instance v4, Ljava/math/BigDecimal;

    iget-object v7, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-direct {v4, v3, v7}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    .line 195
    .local v4, "b_j":Ljava/math/BigDecimal;
    new-instance v7, Ljava/math/BigDecimal;

    add-int/lit8 v8, v3, 0x1

    iget-object v9, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-direct {v7, v8, v9}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    .line 198
    .local v7, "b_j_p_1":Ljava/math/BigDecimal;
    iget-object v8, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v2, v4, v8}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 199
    iget-object v8, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v2, v7, v8}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 200
    iget-object v8, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v2, v8}, Ljava/math/BigDecimal;->negate(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 193
    .end local v4    # "b_j":Ljava/math/BigDecimal;
    .end local v7    # "b_j_p_1":Ljava/math/BigDecimal;
    add-int/lit8 v3, v3, 0x2

    goto :goto_9

    .line 204
    .end local v3    # "j":I
    :cond_a
    new-instance v3, Ljava/math/BigDecimal;

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-direct {v3, v1, v4}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    .line 205
    .local v3, "nP":Ljava/math/BigDecimal;
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v2, v3, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 206
    .local v4, "tmp1":Ljava/math/BigDecimal;
    iget-object v7, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    const/4 v10, 0x2

    invoke-virtual {v4, v10, v7}, Ljava/math/BigDecimal;->pow(ILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 207
    iget-object v7, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->two:Ljava/math/BigDecimal;

    iget-object v8, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v7, v4, v8}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    .line 209
    .local v7, "tmp2":Ljava/math/BigDecimal;
    sget-object v8, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    aput-object v8, v5, v20

    .line 210
    aput-object v7, v6, v20

    .line 213
    .end local v2    # "pmc":Ljava/math/BigDecimal;
    .end local v3    # "nP":Ljava/math/BigDecimal;
    .end local v4    # "tmp1":Ljava/math/BigDecimal;
    .end local v7    # "tmp2":Ljava/math/BigDecimal;
    :cond_b
    new-instance v2, Lorg/apache/commons/math3/util/Pair;

    invoke-direct {v2, v5, v6}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method
