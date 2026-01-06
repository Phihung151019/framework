.class public Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;
.super Ljava/lang/Object;
.source "KendallsCorrelation.java"


# instance fields
.field private final correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 1
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 102
    return-void
.end method

.method public constructor <init>([[D)V
    .locals 1
    .param p1, "data"    # [[D

    .line 91
    invoke-static {p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 92
    return-void
.end method

.method private static sum(J)J
    .locals 4
    .param p0, "n"    # J

    .line 270
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 121
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v0

    .line 122
    .local v0, "nVars":I
    new-instance v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v1, v0, v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 123
    .local v1, "outMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 124
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 125
    invoke-interface {p1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v4

    invoke-interface {p1, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->correlation([D[D)D

    move-result-wide v4

    .line 126
    .local v4, "corr":D
    invoke-interface {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 127
    invoke-interface {v1, v3, v2, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 124
    .end local v4    # "corr":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 129
    .end local v3    # "j":I
    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-interface {v1, v2, v2, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public computeCorrelationMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .param p1, "matrix"    # [[D

    .line 143
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public correlation([D[D)D
    .locals 35
    .param p1, "xArray"    # [D
    .param p2, "yArray"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 157
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_d

    .line 161
    array-length v2, v0

    .line 162
    .local v2, "n":I
    add-int/lit8 v3, v2, -0x1

    int-to-long v3, v3

    invoke-static {v3, v4}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->sum(J)J

    move-result-wide v3

    .line 165
    .local v3, "numPairs":J
    new-array v5, v2, [Lorg/apache/commons/math3/util/Pair;

    .line 166
    .local v5, "pairs":[Lorg/apache/commons/math3/util/Pair;, "[Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_0

    .line 167
    new-instance v7, Lorg/apache/commons/math3/util/Pair;

    aget-wide v8, v0, v6

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aget-wide v9, v1, v6

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v5, v6

    .line 166
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 170
    .end local v6    # "i":I
    :cond_0
    new-instance v6, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation$1;

    move-object/from16 v7, p0

    invoke-direct {v6, v7}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation$1;-><init>(Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;)V

    invoke-static {v5, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 178
    const-wide/16 v8, 0x0

    .line 179
    .local v8, "tiedXPairs":J
    const-wide/16 v10, 0x0

    .line 180
    .local v10, "tiedXYPairs":J
    const-wide/16 v12, 0x1

    .line 181
    .local v12, "consecutiveXTies":J
    const-wide/16 v14, 0x1

    .line 182
    .local v14, "consecutiveXYTies":J
    const/4 v6, 0x0

    aget-object v16, v5, v6

    .line 183
    .local v16, "prev":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    const/16 v17, 0x1

    move/from16 v33, v17

    move/from16 v17, v6

    move/from16 v6, v33

    .restart local v6    # "i":I
    :goto_1
    const-wide/16 v18, 0x1

    if-ge v6, v2, :cond_3

    .line 184
    aget-object v20, v5, v6

    .line 185
    .local v20, "curr":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v21

    move-wide/from16 v22, v3

    .end local v3    # "numPairs":J
    .local v22, "numPairs":J
    move-object/from16 v3, v21

    check-cast v3, Ljava/lang/Double;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 186
    add-long v12, v12, v18

    .line 187
    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 188
    add-long v14, v14, v18

    goto :goto_2

    .line 190
    :cond_1
    sub-long v3, v14, v18

    invoke-static {v3, v4}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->sum(J)J

    move-result-wide v3

    add-long/2addr v10, v3

    .line 191
    const-wide/16 v3, 0x1

    move-wide v14, v3

    .end local v14    # "consecutiveXYTies":J
    .local v3, "consecutiveXYTies":J
    goto :goto_2

    .line 194
    .end local v3    # "consecutiveXYTies":J
    .restart local v14    # "consecutiveXYTies":J
    :cond_2
    sub-long v3, v12, v18

    invoke-static {v3, v4}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->sum(J)J

    move-result-wide v3

    add-long/2addr v8, v3

    .line 195
    const-wide/16 v3, 0x1

    .line 196
    .end local v12    # "consecutiveXTies":J
    .local v3, "consecutiveXTies":J
    sub-long v12, v14, v18

    invoke-static {v12, v13}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->sum(J)J

    move-result-wide v12

    add-long/2addr v10, v12

    .line 197
    const-wide/16 v12, 0x1

    move-wide v14, v12

    move-wide v12, v3

    .line 199
    .end local v3    # "consecutiveXTies":J
    .restart local v12    # "consecutiveXTies":J
    :goto_2
    move-object/from16 v16, v20

    .line 183
    .end local v20    # "curr":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v3, v22

    goto :goto_1

    .end local v22    # "numPairs":J
    .local v3, "numPairs":J
    :cond_3
    move-wide/from16 v22, v3

    .line 201
    .end local v3    # "numPairs":J
    .end local v6    # "i":I
    .restart local v22    # "numPairs":J
    sub-long v3, v12, v18

    invoke-static {v3, v4}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->sum(J)J

    move-result-wide v3

    add-long/2addr v8, v3

    .line 202
    sub-long v3, v14, v18

    invoke-static {v3, v4}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->sum(J)J

    move-result-wide v3

    add-long/2addr v10, v3

    .line 204
    const-wide/16 v3, 0x0

    .line 206
    .local v3, "swaps":J
    new-array v6, v2, [Lorg/apache/commons/math3/util/Pair;

    .line 207
    .local v6, "pairsDestination":[Lorg/apache/commons/math3/util/Pair;, "[Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    const/16 v20, 0x1

    move-wide/from16 v33, v3

    move/from16 v3, v20

    move-wide/from16 v20, v33

    .local v3, "segmentSize":I
    .local v20, "swaps":J
    :goto_3
    if-ge v3, v2, :cond_a

    .line 208
    const/4 v4, 0x0

    .local v4, "offset":I
    :goto_4
    if-ge v4, v2, :cond_9

    .line 209
    move/from16 v24, v4

    .line 210
    .local v24, "i":I
    move/from16 v25, v3

    .end local v3    # "segmentSize":I
    .local v25, "segmentSize":I
    add-int v3, v24, v25

    invoke-static {v3, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v3

    .line 211
    .local v3, "iEnd":I
    move/from16 v26, v3

    .line 212
    .local v26, "j":I
    move/from16 v27, v4

    .end local v4    # "offset":I
    .local v27, "offset":I
    add-int v4, v26, v25

    invoke-static {v4, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v4

    .line 214
    .local v4, "jEnd":I
    move/from16 v28, v27

    move/from16 v33, v24

    move-object/from16 v24, v5

    move/from16 v5, v33

    move/from16 v33, v26

    move-object/from16 v26, v6

    move/from16 v6, v33

    .line 215
    .local v5, "i":I
    .local v6, "j":I
    .local v24, "pairs":[Lorg/apache/commons/math3/util/Pair;, "[Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    .local v26, "pairsDestination":[Lorg/apache/commons/math3/util/Pair;, "[Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    .local v28, "copyLocation":I
    :goto_5
    if-lt v5, v3, :cond_5

    if-ge v6, v4, :cond_4

    goto :goto_6

    .line 208
    .end local v3    # "iEnd":I
    .end local v4    # "jEnd":I
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v28    # "copyLocation":I
    :cond_4
    mul-int/lit8 v3, v25, 0x2

    add-int v4, v27, v3

    move-object/from16 v5, v24

    move/from16 v3, v25

    move-object/from16 v6, v26

    .end local v27    # "offset":I
    .local v4, "offset":I
    goto :goto_4

    .line 216
    .restart local v3    # "iEnd":I
    .local v4, "jEnd":I
    .restart local v5    # "i":I
    .restart local v6    # "j":I
    .restart local v27    # "offset":I
    .restart local v28    # "copyLocation":I
    :cond_5
    :goto_6
    if-ge v5, v3, :cond_8

    .line 217
    if-ge v6, v4, :cond_7

    .line 218
    aget-object v29, v24, v5

    invoke-virtual/range {v29 .. v29}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v29

    move/from16 v30, v3

    .end local v3    # "iEnd":I
    .local v30, "iEnd":I
    move-object/from16 v3, v29

    check-cast v3, Ljava/lang/Double;

    aget-object v29, v24, v6

    invoke-virtual/range {v29 .. v29}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v29

    move/from16 v31, v4

    .end local v4    # "jEnd":I
    .local v31, "jEnd":I
    move-object/from16 v4, v29

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v3, v4}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v3

    if-gtz v3, :cond_6

    .line 219
    aget-object v3, v24, v5

    aput-object v3, v26, v28

    .line 220
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 222
    :cond_6
    aget-object v3, v24, v6

    aput-object v3, v26, v28

    .line 223
    add-int/lit8 v6, v6, 0x1

    .line 224
    sub-int v3, v30, v5

    int-to-long v3, v3

    add-long v20, v20, v3

    goto :goto_7

    .line 227
    .end local v30    # "iEnd":I
    .end local v31    # "jEnd":I
    .restart local v3    # "iEnd":I
    .restart local v4    # "jEnd":I
    :cond_7
    move/from16 v30, v3

    move/from16 v31, v4

    .end local v3    # "iEnd":I
    .end local v4    # "jEnd":I
    .restart local v30    # "iEnd":I
    .restart local v31    # "jEnd":I
    aget-object v3, v24, v5

    aput-object v3, v26, v28

    .line 228
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 231
    .end local v30    # "iEnd":I
    .end local v31    # "jEnd":I
    .restart local v3    # "iEnd":I
    .restart local v4    # "jEnd":I
    :cond_8
    move/from16 v30, v3

    move/from16 v31, v4

    .end local v3    # "iEnd":I
    .end local v4    # "jEnd":I
    .restart local v30    # "iEnd":I
    .restart local v31    # "jEnd":I
    aget-object v3, v24, v6

    aput-object v3, v26, v28

    .line 232
    add-int/lit8 v6, v6, 0x1

    .line 234
    :goto_7
    add-int/lit8 v28, v28, 0x1

    move/from16 v3, v30

    move/from16 v4, v31

    goto :goto_5

    .line 208
    .end local v24    # "pairs":[Lorg/apache/commons/math3/util/Pair;, "[Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v25    # "segmentSize":I
    .end local v26    # "pairsDestination":[Lorg/apache/commons/math3/util/Pair;, "[Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v27    # "offset":I
    .end local v28    # "copyLocation":I
    .end local v30    # "iEnd":I
    .end local v31    # "jEnd":I
    .local v3, "segmentSize":I
    .local v4, "offset":I
    .local v5, "pairs":[Lorg/apache/commons/math3/util/Pair;, "[Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    .local v6, "pairsDestination":[Lorg/apache/commons/math3/util/Pair;, "[Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    :cond_9
    move/from16 v25, v3

    move/from16 v27, v4

    move-object/from16 v24, v5

    move-object/from16 v26, v6

    .line 237
    .end local v3    # "segmentSize":I
    .end local v4    # "offset":I
    .end local v5    # "pairs":[Lorg/apache/commons/math3/util/Pair;, "[Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v6    # "pairsDestination":[Lorg/apache/commons/math3/util/Pair;, "[Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    .restart local v24    # "pairs":[Lorg/apache/commons/math3/util/Pair;, "[Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    .restart local v25    # "segmentSize":I
    .restart local v26    # "pairsDestination":[Lorg/apache/commons/math3/util/Pair;, "[Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    move-object/from16 v3, v24

    .line 238
    .local v3, "pairsTemp":[Lorg/apache/commons/math3/util/Pair;, "[Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    move-object/from16 v5, v26

    .line 239
    .end local v24    # "pairs":[Lorg/apache/commons/math3/util/Pair;, "[Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    .restart local v5    # "pairs":[Lorg/apache/commons/math3/util/Pair;, "[Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    move-object v6, v3

    .line 207
    .end local v3    # "pairsTemp":[Lorg/apache/commons/math3/util/Pair;, "[Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v26    # "pairsDestination":[Lorg/apache/commons/math3/util/Pair;, "[Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    .restart local v6    # "pairsDestination":[Lorg/apache/commons/math3/util/Pair;, "[Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    shl-int/lit8 v3, v25, 0x1

    .end local v25    # "segmentSize":I
    .local v3, "segmentSize":I
    goto/16 :goto_3

    :cond_a
    move/from16 v25, v3

    move-object/from16 v24, v5

    move-object/from16 v26, v6

    .line 242
    .end local v3    # "segmentSize":I
    .end local v5    # "pairs":[Lorg/apache/commons/math3/util/Pair;, "[Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v6    # "pairsDestination":[Lorg/apache/commons/math3/util/Pair;, "[Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    .restart local v24    # "pairs":[Lorg/apache/commons/math3/util/Pair;, "[Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    .restart local v26    # "pairsDestination":[Lorg/apache/commons/math3/util/Pair;, "[Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    const-wide/16 v3, 0x0

    .line 243
    .local v3, "tiedYPairs":J
    const-wide/16 v5, 0x1

    .line 244
    .local v5, "consecutiveYTies":J
    aget-object v16, v24, v17

    .line 245
    const/16 v17, 0x1

    move-wide/from16 v27, v3

    move/from16 v3, v17

    .local v3, "i":I
    .local v27, "tiedYPairs":J
    :goto_8
    if-ge v3, v2, :cond_c

    .line 246
    aget-object v4, v24, v3

    .line 247
    .local v4, "curr":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    invoke-virtual {v4}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v17

    move/from16 v25, v2

    .end local v2    # "n":I
    .local v25, "n":I
    move-object/from16 v2, v17

    check-cast v2, Ljava/lang/Double;

    move/from16 v17, v3

    .end local v3    # "i":I
    .local v17, "i":I
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 248
    add-long v5, v5, v18

    goto :goto_9

    .line 250
    :cond_b
    sub-long v2, v5, v18

    invoke-static {v2, v3}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->sum(J)J

    move-result-wide v2

    add-long v27, v27, v2

    .line 251
    const-wide/16 v2, 0x1

    move-wide v5, v2

    .line 253
    :goto_9
    move-object/from16 v16, v4

    .line 245
    .end local v4    # "curr":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    add-int/lit8 v3, v17, 0x1

    move/from16 v2, v25

    .end local v17    # "i":I
    .restart local v3    # "i":I
    goto :goto_8

    .end local v25    # "n":I
    .restart local v2    # "n":I
    :cond_c
    move/from16 v25, v2

    move/from16 v17, v3

    .line 255
    .end local v2    # "n":I
    .end local v3    # "i":I
    .restart local v25    # "n":I
    sub-long v2, v5, v18

    invoke-static {v2, v3}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->sum(J)J

    move-result-wide v2

    add-long v27, v27, v2

    .line 257
    sub-long v3, v22, v8

    sub-long v3, v3, v27

    add-long/2addr v3, v10

    const-wide/16 v17, 0x2

    mul-long v17, v17, v20

    sub-long v3, v3, v17

    .line 258
    .local v3, "concordantMinusDiscordant":J
    move-wide/from16 v17, v5

    .end local v5    # "consecutiveYTies":J
    .local v17, "consecutiveYTies":J
    sub-long v5, v22, v8

    long-to-double v5, v5

    move-wide/from16 v29, v5

    sub-long v5, v22, v27

    long-to-double v5, v5

    mul-double v5, v5, v29

    .line 259
    .local v5, "nonTiedPairsMultiplied":D
    move-wide/from16 v29, v5

    .end local v5    # "nonTiedPairsMultiplied":D
    .local v29, "nonTiedPairsMultiplied":D
    long-to-double v5, v3

    invoke-static/range {v29 .. v30}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v31

    div-double v5, v5, v31

    return-wide v5

    .line 158
    .end local v3    # "concordantMinusDiscordant":J
    .end local v8    # "tiedXPairs":J
    .end local v10    # "tiedXYPairs":J
    .end local v12    # "consecutiveXTies":J
    .end local v14    # "consecutiveXYTies":J
    .end local v16    # "prev":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v17    # "consecutiveYTies":J
    .end local v20    # "swaps":J
    .end local v22    # "numPairs":J
    .end local v24    # "pairs":[Lorg/apache/commons/math3/util/Pair;, "[Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v25    # "n":I
    .end local v26    # "pairsDestination":[Lorg/apache/commons/math3/util/Pair;, "[Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v27    # "tiedYPairs":J
    .end local v29    # "nonTiedPairsMultiplied":D
    :cond_d
    move-object/from16 v7, p0

    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, v0

    array-length v4, v1

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public getCorrelationMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method
