.class public Lorg/apache/commons/math3/analysis/function/Gaussian$Parametric;
.super Ljava/lang/Object;
.source "Gaussian.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/function/Gaussian;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parametric"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 114
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

    .line 184
    if-eqz p1, :cond_2

    .line 187
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 190
    const/4 v0, 0x2

    aget-wide v1, p1, v0

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-lez v1, :cond_0

    .line 193
    return-void

    .line 191
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    aget-wide v2, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1

    .line 188
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, p1

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 185
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public varargs gradient(D[D)[D
    .locals 20
    .param p1, "x"    # D
    .param p3, "param"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 155
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/analysis/function/Gaussian$Parametric;->validateParameters([D)V

    .line 157
    const/4 v2, 0x0

    aget-wide v3, v0, v2

    .line 158
    .local v3, "norm":D
    const/4 v5, 0x1

    aget-wide v6, v0, v5

    sub-double v8, p1, v6

    .line 159
    .local v8, "diff":D
    const/4 v6, 0x2

    aget-wide v14, v0, v6

    .line 160
    .local v14, "sigma":D
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v10, v14, v16

    mul-double/2addr v10, v14

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    div-double/2addr v12, v10

    .line 162
    .local v12, "i2s2":D
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v8 .. v13}, Lorg/apache/commons/math3/analysis/function/Gaussian;->access$000(DDD)D

    move-result-wide v10

    .line 163
    .local v10, "n":D
    mul-double v18, v3, v10

    mul-double v18, v18, v16

    mul-double v18, v18, v12

    mul-double v18, v18, v8

    .line 164
    .local v18, "m":D
    mul-double v16, v18, v8

    div-double v16, v16, v14

    .line 166
    .local v16, "s":D
    const/4 v7, 0x3

    new-array v7, v7, [D

    aput-wide v10, v7, v2

    aput-wide v18, v7, v5

    aput-wide v16, v7, v6

    return-object v7
.end method

.method public varargs value(D[D)D
    .locals 8
    .param p1, "x"    # D
    .param p3, "param"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 130
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/analysis/function/Gaussian$Parametric;->validateParameters([D)V

    .line 132
    const/4 v0, 0x1

    aget-wide v0, p3, v0

    sub-double v2, p1, v0

    .line 133
    .local v2, "diff":D
    const/4 v0, 0x2

    aget-wide v4, p3, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    aget-wide v0, p3, v0

    mul-double/2addr v4, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double v6, v0, v4

    .line 134
    .local v6, "i2s2":D
    const/4 v0, 0x0

    aget-wide v4, p3, v0

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/function/Gaussian;->access$000(DDD)D

    move-result-wide v0

    return-wide v0
.end method
