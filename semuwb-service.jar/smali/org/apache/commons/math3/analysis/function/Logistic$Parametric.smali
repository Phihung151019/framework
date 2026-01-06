.class public Lorg/apache/commons/math3/analysis/function/Logistic$Parametric;
.super Ljava/lang/Object;
.source "Logistic.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/function/Logistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parametric"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private validateParameters([D)V
    .locals 5
    .param p1, "param"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 191
    if-eqz p1, :cond_2

    .line 194
    array-length v0, p1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 197
    const/4 v0, 0x5

    aget-wide v1, p1, v0

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-lez v1, :cond_0

    .line 200
    return-void

    .line 198
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    aget-wide v2, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1

    .line 195
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, p1

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 192
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public varargs gradient(D[D)[D
    .locals 41
    .param p1, "x"    # D
    .param p3, "param"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 151
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/analysis/function/Logistic$Parametric;->validateParameters([D)V

    .line 153
    const/4 v2, 0x2

    aget-wide v7, v0, v2

    .line 154
    .local v7, "b":D
    const/4 v15, 0x3

    aget-wide v9, v0, v15

    .line 156
    .local v9, "q":D
    const/16 v16, 0x1

    aget-wide v3, v0, v16

    sub-double v3, v3, p1

    .line 157
    .local v3, "mMinusX":D
    const/16 v17, 0x5

    aget-wide v5, v0, v17

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    div-double v13, v11, v5

    .line 158
    .local v13, "oneOverN":D
    mul-double v5, v7, v3

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v18

    .line 159
    .local v18, "exp":D
    mul-double v20, v9, v18

    .line 160
    .local v20, "qExp":D
    add-double v5, v20, v11

    .line 161
    .local v5, "qExp1":D
    const/16 v22, 0x0

    aget-wide v11, v0, v22

    const/16 v23, 0x4

    aget-wide v24, v0, v23

    sub-double v11, v11, v24

    mul-double/2addr v11, v13

    invoke-static {v5, v6, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v24

    div-double v11, v11, v24

    .line 162
    .local v11, "factor1":D
    move/from16 v24, v2

    move-wide/from16 v25, v3

    .end local v3    # "mMinusX":D
    .local v25, "mMinusX":D
    neg-double v2, v11

    div-double v27, v2, v5

    .line 165
    .local v27, "factor2":D
    move-wide v2, v5

    .end local v5    # "qExp1":D
    .local v2, "qExp1":D
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v29, v11

    .end local v11    # "factor1":D
    .local v29, "factor1":D
    const-wide/16 v11, 0x0

    move-wide/from16 v39, v25

    move-wide/from16 v25, v2

    move-wide/from16 v3, v39

    .end local v2    # "qExp1":D
    .restart local v3    # "mMinusX":D
    .local v25, "qExp1":D
    invoke-static/range {v3 .. v14}, Lorg/apache/commons/math3/analysis/function/Logistic;->access$000(DDDDDD)D

    move-result-wide v31

    .line 166
    .local v31, "gk":D
    mul-double v5, v27, v7

    mul-double v33, v5, v20

    .line 167
    .local v33, "gm":D
    mul-double v5, v27, v3

    mul-double v35, v5, v20

    .line 168
    .local v35, "gb":D
    mul-double v37, v27, v18

    .line 169
    .local v37, "gq":D
    const-wide/16 v5, 0x0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v3 .. v14}, Lorg/apache/commons/math3/analysis/function/Logistic;->access$000(DDDDDD)D

    move-result-wide v5

    .line 170
    .local v5, "ga":D
    invoke-static/range {v25 .. v26}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v11

    mul-double v11, v11, v29

    mul-double/2addr v11, v13

    .line 172
    .local v11, "gn":D
    const/4 v2, 0x6

    new-array v2, v2, [D

    aput-wide v31, v2, v22

    aput-wide v33, v2, v16

    aput-wide v35, v2, v24

    aput-wide v37, v2, v15

    aput-wide v5, v2, v23

    aput-wide v11, v2, v17

    return-object v2
.end method

.method public varargs value(D[D)D
    .locals 16
    .param p1, "x"    # D
    .param p3, "param"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 126
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/analysis/function/Logistic$Parametric;->validateParameters([D)V

    .line 127
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    sub-double v4, v2, p1

    const/4 v2, 0x0

    aget-wide v6, v0, v2

    const/4 v2, 0x2

    aget-wide v8, v0, v2

    const/4 v2, 0x3

    aget-wide v10, v0, v2

    const/4 v2, 0x4

    aget-wide v12, v0, v2

    const/4 v2, 0x5

    aget-wide v2, v0, v2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    div-double/2addr v14, v2

    invoke-static/range {v4 .. v15}, Lorg/apache/commons/math3/analysis/function/Logistic;->access$000(DDDDDD)D

    move-result-wide v2

    return-wide v2
.end method
