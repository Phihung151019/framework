.class public Lorg/apache/commons/math3/analysis/integration/gauss/HermiteRuleFactory;
.super Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;
.source "HermiteRuleFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field private static final H0:D = 0.7511255444649425

.field private static final H1:D = 1.0622519320271968

.field private static final SQRT_PI:D = 1.772453850905516


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeRule(I)Lorg/apache/commons/math3/util/Pair;
    .locals 53
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

    .line 64
    move/from16 v0, p1

    const-wide/16 v1, 0x0

    .line 66
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 64
    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 66
    new-instance v1, Lorg/apache/commons/math3/util/Pair;

    filled-new-array {v3}, [Ljava/lang/Double;

    move-result-object v2

    const-wide v3, 0x3ffc5bf891b4ef6bL    # 1.772453850905516

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 73
    :cond_0
    add-int/lit8 v5, v0, -0x1

    .line 74
    .local v5, "lastNumPoints":I
    move-object/from16 v6, p0

    invoke-virtual {v6, v5}, Lorg/apache/commons/math3/analysis/integration/gauss/HermiteRuleFactory;->getRuleInternal(I)Lorg/apache/commons/math3/util/Pair;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Double;

    .line 77
    .local v7, "previousPoints":[Ljava/lang/Double;
    new-array v8, v0, [Ljava/lang/Double;

    .line 78
    .local v8, "points":[Ljava/lang/Double;
    new-array v9, v0, [Ljava/lang/Double;

    .line 80
    .local v9, "weights":[Ljava/lang/Double;
    mul-int/lit8 v10, v5, 0x2

    int-to-double v10, v10

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    .line 81
    .local v10, "sqrtTwoTimesLastNumPoints":D
    mul-int/lit8 v12, v0, 0x2

    int-to-double v12, v12

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v12

    .line 84
    .local v12, "sqrtTwoTimesNumPoints":D
    div-int/lit8 v14, v0, 0x2

    .line 85
    .local v14, "iMax":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    if-ge v15, v14, :cond_9

    .line 87
    if-nez v15, :cond_1

    move-wide/from16 v18, v1

    neg-double v1, v10

    goto :goto_1

    :cond_1
    move-wide/from16 v18, v1

    add-int/lit8 v1, v15, -0x1

    aget-object v1, v7, v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 89
    .local v1, "a":D
    :goto_1
    if-ne v14, v4, :cond_2

    const-wide/high16 v20, -0x4020000000000000L    # -0.5

    goto :goto_2

    :cond_2
    aget-object v20, v7, v15

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    .line 92
    .local v20, "b":D
    :goto_2
    const-wide v22, 0x3fe8093870155910L    # 0.7511255444649425

    .line 94
    .local v22, "hma":D
    const-wide v24, 0x3ff0fefbe1c2b6c9L    # 1.0622519320271968

    mul-double v26, v1, v24

    .line 96
    .local v26, "ha":D
    const-wide v28, 0x3fe8093870155910L    # 0.7511255444649425

    .line 98
    .local v28, "hmb":D
    mul-double v30, v20, v24

    .line 99
    .local v30, "hb":D
    const/16 v32, 0x1

    move/from16 v4, v32

    .local v4, "j":I
    :goto_3
    if-ge v4, v0, :cond_3

    .line 101
    move-wide/from16 v33, v1

    .end local v1    # "a":D
    .local v33, "a":D
    add-int/lit8 v1, v4, 0x1

    int-to-double v1, v1

    .line 102
    .local v1, "jp1":D
    div-double v35, v16, v1

    invoke-static/range {v35 .. v36}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v35

    .line 103
    .local v35, "s":D
    move-wide/from16 v37, v1

    .end local v1    # "jp1":D
    .local v37, "jp1":D
    int-to-double v1, v4

    div-double v1, v1, v37

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    .line 104
    .local v1, "sm":D
    mul-double v39, v35, v33

    mul-double v39, v39, v26

    mul-double v41, v1, v22

    sub-double v39, v39, v41

    .line 105
    .local v39, "hpa":D
    mul-double v41, v35, v20

    mul-double v41, v41, v30

    mul-double v43, v1, v28

    sub-double v41, v41, v43

    .line 106
    .local v41, "hpb":D
    move-wide/from16 v22, v26

    .line 107
    move-wide/from16 v26, v39

    .line 108
    move-wide/from16 v28, v30

    .line 109
    move-wide/from16 v30, v41

    .line 99
    .end local v1    # "sm":D
    .end local v35    # "s":D
    .end local v37    # "jp1":D
    .end local v39    # "hpa":D
    .end local v41    # "hpb":D
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v1, v33

    goto :goto_3

    .end local v33    # "a":D
    .local v1, "a":D
    :cond_3
    move-wide/from16 v33, v1

    .line 114
    .end local v1    # "a":D
    .end local v4    # "j":I
    .restart local v33    # "a":D
    add-double v1, v33, v20

    const-wide/high16 v35, 0x3fe0000000000000L    # 0.5

    mul-double v1, v1, v35

    .line 116
    .local v1, "c":D
    const-wide v37, 0x3fe8093870155910L    # 0.7511255444649425

    .line 118
    .local v37, "hmc":D
    mul-double v39, v1, v24

    .line 119
    .local v39, "hc":D
    const/4 v4, 0x0

    .line 120
    .local v4, "done":Z
    :goto_4
    if-nez v4, :cond_8

    .line 121
    sub-double v41, v20, v33

    invoke-static {v1, v2}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v43

    cmpg-double v41, v41, v43

    if-gtz v41, :cond_4

    const/16 v41, 0x1

    goto :goto_5

    :cond_4
    const/16 v41, 0x0

    :goto_5
    move/from16 v4, v41

    .line 122
    const-wide v37, 0x3fe8093870155910L    # 0.7511255444649425

    .line 123
    mul-double v39, v1, v24

    .line 124
    const/16 v41, 0x1

    move/from16 v52, v41

    move-object/from16 v41, v3

    move/from16 v3, v52

    .local v3, "j":I
    :goto_6
    if-ge v3, v0, :cond_5

    .line 126
    move/from16 v42, v4

    .end local v4    # "done":Z
    .local v42, "done":Z
    add-int/lit8 v4, v3, 0x1

    move/from16 v43, v5

    .end local v5    # "lastNumPoints":I
    .local v43, "lastNumPoints":I
    int-to-double v4, v4

    .line 127
    .local v4, "jp1":D
    div-double v44, v16, v4

    invoke-static/range {v44 .. v45}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v44

    .line 128
    .local v44, "s":D
    move-wide/from16 v46, v4

    .end local v4    # "jp1":D
    .local v46, "jp1":D
    int-to-double v4, v3

    div-double v4, v4, v46

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    .line 129
    .local v4, "sm":D
    mul-double v48, v44, v1

    mul-double v48, v48, v39

    mul-double v50, v4, v37

    sub-double v48, v48, v50

    .line 130
    .local v48, "hpc":D
    move-wide/from16 v37, v39

    .line 131
    move-wide/from16 v39, v48

    .line 124
    .end local v4    # "sm":D
    .end local v44    # "s":D
    .end local v46    # "jp1":D
    .end local v48    # "hpc":D
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v42

    move/from16 v5, v43

    goto :goto_6

    .end local v42    # "done":Z
    .end local v43    # "lastNumPoints":I
    .local v4, "done":Z
    .restart local v5    # "lastNumPoints":I
    :cond_5
    move/from16 v42, v4

    move/from16 v43, v5

    .line 134
    .end local v3    # "j":I
    .end local v4    # "done":Z
    .end local v5    # "lastNumPoints":I
    .restart local v42    # "done":Z
    .restart local v43    # "lastNumPoints":I
    if-nez v42, :cond_7

    .line 135
    mul-double v3, v26, v39

    cmpg-double v3, v3, v18

    if-gez v3, :cond_6

    .line 136
    move-wide v3, v1

    .line 137
    .end local v20    # "b":D
    .local v3, "b":D
    move-wide/from16 v20, v37

    .line 138
    .end local v28    # "hmb":D
    .local v20, "hmb":D
    move-wide/from16 v28, v39

    move-wide/from16 v30, v28

    move-wide/from16 v28, v20

    move-wide/from16 v20, v3

    .end local v30    # "hb":D
    .local v28, "hb":D
    goto :goto_7

    .line 140
    .end local v3    # "b":D
    .local v20, "b":D
    .local v28, "hmb":D
    .restart local v30    # "hb":D
    :cond_6
    move-wide v3, v1

    .line 141
    .end local v33    # "a":D
    .local v3, "a":D
    move-wide/from16 v22, v37

    .line 142
    move-wide/from16 v26, v39

    move-wide/from16 v33, v3

    .line 144
    .end local v3    # "a":D
    .restart local v33    # "a":D
    :goto_7
    add-double v3, v33, v20

    mul-double v1, v3, v35

    move-object/from16 v3, v41

    move/from16 v4, v42

    move/from16 v5, v43

    goto :goto_4

    .line 134
    :cond_7
    move-object/from16 v3, v41

    move/from16 v4, v42

    move/from16 v5, v43

    goto :goto_4

    .line 147
    .end local v42    # "done":Z
    .end local v43    # "lastNumPoints":I
    .restart local v4    # "done":Z
    .restart local v5    # "lastNumPoints":I
    :cond_8
    move-object/from16 v41, v3

    move/from16 v43, v5

    .end local v5    # "lastNumPoints":I
    .restart local v43    # "lastNumPoints":I
    mul-double v24, v12, v37

    .line 148
    .local v24, "d":D
    mul-double v35, v24, v24

    div-double v16, v16, v35

    .line 150
    .local v16, "w":D
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v8, v15

    .line 151
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v9, v15

    .line 153
    sub-int v5, v43, v15

    .line 154
    .local v5, "idx":I
    move/from16 v35, v4

    .end local v4    # "done":Z
    .local v35, "done":Z
    neg-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v8, v5

    .line 155
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v9, v5

    .line 85
    .end local v1    # "c":D
    .end local v5    # "idx":I
    .end local v16    # "w":D
    .end local v20    # "b":D
    .end local v22    # "hma":D
    .end local v24    # "d":D
    .end local v26    # "ha":D
    .end local v28    # "hmb":D
    .end local v30    # "hb":D
    .end local v33    # "a":D
    .end local v35    # "done":Z
    .end local v37    # "hmc":D
    .end local v39    # "hc":D
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v1, v18

    move-object/from16 v3, v41

    move/from16 v5, v43

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v43    # "lastNumPoints":I
    .local v5, "lastNumPoints":I
    :cond_9
    move-object/from16 v41, v3

    move/from16 v43, v5

    .line 162
    .end local v5    # "lastNumPoints":I
    .end local v15    # "i":I
    .restart local v43    # "lastNumPoints":I
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_b

    .line 163
    const-wide v1, 0x3fe8093870155910L    # 0.7511255444649425

    .line 164
    .local v1, "hm":D
    const/4 v3, 0x1

    .local v3, "j":I
    :goto_8
    if-ge v3, v0, :cond_a

    .line 165
    add-int/lit8 v4, v3, 0x1

    int-to-double v4, v4

    .line 166
    .local v4, "jp1":D
    move-wide/from16 v18, v1

    .end local v1    # "hm":D
    .local v18, "hm":D
    int-to-double v0, v3

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    neg-double v0, v0

    mul-double v1, v0, v18

    .line 164
    .end local v4    # "jp1":D
    .end local v18    # "hm":D
    .restart local v1    # "hm":D
    add-int/lit8 v3, v3, 0x2

    move/from16 v0, p1

    goto :goto_8

    :cond_a
    move-wide/from16 v18, v1

    .line 168
    .end local v1    # "hm":D
    .end local v3    # "j":I
    .restart local v18    # "hm":D
    mul-double v1, v12, v18

    .line 169
    .local v1, "d":D
    mul-double v3, v1, v1

    div-double v16, v16, v3

    .line 171
    .restart local v16    # "w":D
    aput-object v41, v8, v14

    .line 172
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v9, v14

    .line 175
    .end local v1    # "d":D
    .end local v16    # "w":D
    .end local v18    # "hm":D
    :cond_b
    new-instance v0, Lorg/apache/commons/math3/util/Pair;

    invoke-direct {v0, v8, v9}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
