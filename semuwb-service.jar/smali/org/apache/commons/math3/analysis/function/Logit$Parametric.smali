.class public Lorg/apache/commons/math3/analysis/function/Logit$Parametric;
.super Ljava/lang/Object;
.source "Logit.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/function/Logit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parametric"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private validateParameters([D)V
    .locals 3
    .param p1, "param"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 141
    if-eqz p1, :cond_1

    .line 144
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 147
    return-void

    .line 145
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, p1

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 142
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public varargs gradient(D[D)[D
    .locals 12
    .param p1, "x"    # D
    .param p3, "param"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 120
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/analysis/function/Logit$Parametric;->validateParameters([D)V

    .line 122
    const/4 v0, 0x0

    aget-wide v1, p3, v0

    .line 123
    .local v1, "lo":D
    const/4 v3, 0x1

    aget-wide v4, p3, v3

    .line 125
    .local v4, "hi":D
    sub-double v6, v1, p1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double v6, v8, v6

    sub-double v10, v4, p1

    div-double/2addr v8, v10

    const/4 v10, 0x2

    new-array v10, v10, [D

    aput-wide v6, v10, v0

    aput-wide v8, v10, v3

    return-object v10
.end method

.method public varargs value(D[D)D
    .locals 7
    .param p1, "x"    # D
    .param p3, "param"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 100
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/analysis/function/Logit$Parametric;->validateParameters([D)V

    .line 101
    const/4 v0, 0x0

    aget-wide v3, p3, v0

    const/4 v0, 0x1

    aget-wide v5, p3, v0

    move-wide v1, p1

    .end local p1    # "x":D
    .local v1, "x":D
    invoke-static/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/function/Logit;->access$000(DDD)D

    move-result-wide p1

    return-wide p1
.end method
