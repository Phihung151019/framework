.class public Lorg/apache/commons/math3/analysis/integration/gauss/LegendreRuleFactory;
.super Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;
.source "LegendreRuleFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeRule(I)Lorg/apache/commons/math3/util/Pair;
    .locals 45
    .param p1, "numberOfPoints"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/util/Pair<",
            "[",
            "Ljava/lang/Double;",
            "[",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 38
    move/from16 v0, p1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    const-wide/16 v3, 0x0

    .line 40
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 38
    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    .line 40
    new-instance v3, Lorg/apache/commons/math3/util/Pair;

    filled-new-array {v5}, [Ljava/lang/Double;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 47
    :cond_0
    add-int/lit8 v7, v0, -0x1

    move-object/from16 v8, p0

    invoke-virtual {v8, v7}, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreRuleFactory;->getRuleInternal(I)Lorg/apache/commons/math3/util/Pair;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Double;

    .line 50
    .local v7, "previousPoints":[Ljava/lang/Double;
    new-array v9, v0, [Ljava/lang/Double;

    .line 51
    .local v9, "points":[Ljava/lang/Double;
    new-array v10, v0, [Ljava/lang/Double;

    .line 54
    .local v10, "weights":[Ljava/lang/Double;
    div-int/lit8 v11, v0, 0x2

    .line 55
    .local v11, "iMax":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v11, :cond_9

    .line 57
    if-nez v12, :cond_1

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    goto :goto_1

    :cond_1
    add-int/lit8 v13, v12, -0x1

    aget-object v13, v7, v13

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    .line 59
    .local v13, "a":D
    :goto_1
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    if-ne v11, v6, :cond_2

    move-wide/from16 v17, v15

    goto :goto_2

    :cond_2
    aget-object v17, v7, v12

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    .line 61
    .local v17, "b":D
    :goto_2
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    .line 63
    .local v19, "pma":D
    move-wide/from16 v21, v13

    .line 65
    .local v21, "pa":D
    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    .line 67
    .local v23, "pmb":D
    move-wide/from16 v25, v17

    .line 68
    .local v25, "pb":D
    const/16 v27, 0x1

    move-wide/from16 v43, v1

    move/from16 v1, v27

    move-wide/from16 v27, v43

    .local v1, "j":I
    :goto_3
    if-ge v1, v0, :cond_3

    .line 69
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v6

    .line 70
    .local v2, "two_j_p_1":I
    move-wide/from16 v29, v3

    add-int/lit8 v3, v1, 0x1

    .line 72
    .local v3, "j_p_1":I
    move v4, v6

    move-object/from16 v31, v7

    .end local v7    # "previousPoints":[Ljava/lang/Double;
    .local v31, "previousPoints":[Ljava/lang/Double;
    int-to-double v6, v2

    mul-double/2addr v6, v13

    mul-double v6, v6, v21

    move/from16 v33, v4

    move-object/from16 v32, v5

    int-to-double v4, v1

    mul-double v4, v4, v19

    sub-double/2addr v6, v4

    int-to-double v4, v3

    div-double/2addr v6, v4

    .line 74
    .local v6, "ppa":D
    int-to-double v4, v2

    mul-double v4, v4, v17

    mul-double v4, v4, v25

    move-wide/from16 v34, v4

    int-to-double v4, v1

    mul-double v4, v4, v23

    sub-double v4, v34, v4

    move/from16 v34, v1

    move/from16 v35, v2

    .end local v1    # "j":I
    .end local v2    # "two_j_p_1":I
    .local v34, "j":I
    .local v35, "two_j_p_1":I
    int-to-double v1, v3

    div-double/2addr v4, v1

    .line 75
    .local v4, "ppb":D
    move-wide/from16 v19, v21

    .line 76
    move-wide/from16 v21, v6

    .line 77
    move-wide/from16 v23, v25

    .line 78
    move-wide/from16 v25, v4

    .line 68
    .end local v3    # "j_p_1":I
    .end local v4    # "ppb":D
    .end local v6    # "ppa":D
    .end local v35    # "two_j_p_1":I
    add-int/lit8 v1, v34, 0x1

    move-wide/from16 v3, v29

    move-object/from16 v7, v31

    move-object/from16 v5, v32

    move/from16 v6, v33

    .end local v34    # "j":I
    .restart local v1    # "j":I
    goto :goto_3

    .end local v31    # "previousPoints":[Ljava/lang/Double;
    .restart local v7    # "previousPoints":[Ljava/lang/Double;
    :cond_3
    move/from16 v34, v1

    move-wide/from16 v29, v3

    move-object/from16 v32, v5

    move/from16 v33, v6

    move-object/from16 v31, v7

    .line 82
    .end local v1    # "j":I
    .end local v7    # "previousPoints":[Ljava/lang/Double;
    .restart local v31    # "previousPoints":[Ljava/lang/Double;
    add-double v1, v13, v17

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v1, v3

    .line 84
    .local v1, "c":D
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 86
    .local v5, "pmc":D
    move-wide/from16 v34, v1

    .line 87
    .local v34, "pc":D
    const/4 v7, 0x0

    .line 88
    .local v7, "done":Z
    :goto_4
    if-nez v7, :cond_8

    .line 89
    sub-double v36, v17, v13

    invoke-static {v1, v2}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v38

    cmpg-double v36, v36, v38

    if-gtz v36, :cond_4

    move/from16 v36, v33

    goto :goto_5

    :cond_4
    const/16 v36, 0x0

    :goto_5
    move/from16 v7, v36

    .line 90
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 91
    move-wide/from16 v34, v1

    .line 92
    const/16 v36, 0x1

    move-wide/from16 v43, v3

    move/from16 v3, v36

    move-wide/from16 v36, v43

    .local v3, "j":I
    :goto_6
    if-ge v3, v0, :cond_5

    .line 94
    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v38, v5

    .end local v5    # "pmc":D
    .local v38, "pmc":D
    int-to-double v4, v4

    mul-double/2addr v4, v1

    mul-double v4, v4, v34

    move-wide/from16 v40, v4

    int-to-double v4, v3

    mul-double v4, v4, v38

    sub-double v4, v40, v4

    add-int/lit8 v6, v3, 0x1

    move/from16 v40, v3

    move-wide/from16 v41, v4

    .end local v3    # "j":I
    .local v40, "j":I
    int-to-double v3, v6

    div-double v4, v41, v3

    .line 95
    .local v4, "ppc":D
    move-wide/from16 v38, v34

    .line 96
    move-wide/from16 v34, v4

    .line 92
    .end local v4    # "ppc":D
    add-int/lit8 v3, v40, 0x1

    move-wide/from16 v5, v38

    .end local v40    # "j":I
    .restart local v3    # "j":I
    goto :goto_6

    .end local v38    # "pmc":D
    .restart local v5    # "pmc":D
    :cond_5
    move/from16 v40, v3

    move-wide/from16 v38, v5

    .line 99
    .end local v3    # "j":I
    .end local v5    # "pmc":D
    .restart local v38    # "pmc":D
    if-nez v7, :cond_7

    .line 100
    mul-double v3, v21, v34

    cmpg-double v3, v3, v29

    if-gtz v3, :cond_6

    .line 101
    move-wide v3, v1

    .line 102
    .end local v17    # "b":D
    .local v3, "b":D
    move-wide/from16 v5, v38

    .line 103
    .end local v23    # "pmb":D
    .local v5, "pmb":D
    move-wide/from16 v17, v34

    move-wide/from16 v23, v5

    move-wide/from16 v25, v17

    move-wide/from16 v17, v3

    .end local v25    # "pb":D
    .local v17, "pb":D
    goto :goto_7

    .line 105
    .end local v3    # "b":D
    .end local v5    # "pmb":D
    .local v17, "b":D
    .restart local v23    # "pmb":D
    .restart local v25    # "pb":D
    :cond_6
    move-wide v3, v1

    .line 106
    .end local v13    # "a":D
    .local v3, "a":D
    move-wide/from16 v5, v38

    .line 107
    .end local v19    # "pma":D
    .local v5, "pma":D
    move-wide/from16 v13, v34

    move-wide/from16 v19, v5

    move-wide/from16 v21, v13

    move-wide v13, v3

    .line 109
    .end local v3    # "a":D
    .end local v5    # "pma":D
    .restart local v13    # "a":D
    .restart local v19    # "pma":D
    :goto_7
    add-double v3, v13, v17

    mul-double v1, v3, v36

    move-wide/from16 v3, v36

    move-wide/from16 v5, v38

    goto :goto_4

    .line 99
    :cond_7
    move-wide/from16 v3, v36

    move-wide/from16 v5, v38

    goto :goto_4

    .line 112
    .end local v38    # "pmc":D
    .local v5, "pmc":D
    :cond_8
    int-to-double v3, v0

    mul-double v36, v1, v34

    sub-double v36, v5, v36

    mul-double v3, v3, v36

    .line 113
    .local v3, "d":D
    mul-double v36, v1, v1

    sub-double v15, v15, v36

    mul-double v15, v15, v27

    mul-double v36, v3, v3

    div-double v15, v15, v36

    .line 115
    .local v15, "w":D
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v36

    aput-object v36, v9, v12

    .line 116
    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v36

    aput-object v36, v10, v12

    .line 118
    sub-int v36, v0, v12

    add-int/lit8 v36, v36, -0x1

    .line 119
    .local v36, "idx":I
    move-wide/from16 v37, v3

    .end local v3    # "d":D
    .local v37, "d":D
    neg-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v9, v36

    .line 120
    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v10, v36

    .line 55
    .end local v1    # "c":D
    .end local v5    # "pmc":D
    .end local v7    # "done":Z
    .end local v13    # "a":D
    .end local v15    # "w":D
    .end local v17    # "b":D
    .end local v19    # "pma":D
    .end local v21    # "pa":D
    .end local v23    # "pmb":D
    .end local v25    # "pb":D
    .end local v34    # "pc":D
    .end local v36    # "idx":I
    .end local v37    # "d":D
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v1, v27

    move-wide/from16 v3, v29

    move-object/from16 v7, v31

    move-object/from16 v5, v32

    move/from16 v6, v33

    goto/16 :goto_0

    .end local v31    # "previousPoints":[Ljava/lang/Double;
    .local v7, "previousPoints":[Ljava/lang/Double;
    :cond_9
    move-wide/from16 v27, v1

    move-object/from16 v32, v5

    move-object/from16 v31, v7

    .line 126
    .end local v7    # "previousPoints":[Ljava/lang/Double;
    .end local v12    # "i":I
    .restart local v31    # "previousPoints":[Ljava/lang/Double;
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_b

    .line 127
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 128
    .local v1, "pmc":D
    const/4 v3, 0x1

    .local v3, "j":I
    :goto_8
    if-ge v3, v0, :cond_a

    .line 129
    neg-int v4, v3

    int-to-double v4, v4

    mul-double/2addr v4, v1

    add-int/lit8 v6, v3, 0x1

    int-to-double v6, v6

    div-double v1, v4, v6

    .line 128
    add-int/lit8 v3, v3, 0x2

    goto :goto_8

    .line 131
    .end local v3    # "j":I
    :cond_a
    int-to-double v3, v0

    mul-double/2addr v3, v1

    .line 132
    .local v3, "d":D
    mul-double v5, v3, v3

    div-double v5, v27, v5

    .line 134
    .local v5, "w":D
    aput-object v32, v9, v11

    .line 135
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v10, v11

    .line 138
    .end local v1    # "pmc":D
    .end local v3    # "d":D
    .end local v5    # "w":D
    :cond_b
    new-instance v1, Lorg/apache/commons/math3/util/Pair;

    invoke-direct {v1, v9, v10}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
